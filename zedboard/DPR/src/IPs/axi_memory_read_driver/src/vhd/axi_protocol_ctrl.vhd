library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use work.readTypes.all;



entity axi_protocol_ctrl is
  
  generic (
    AXI_ID             : std_logic_vector(7 downto 0) := X"01";
    C_AXI_ID_WIDTH     : natural                      := 4;
    BURST_SIZE         : natural                      := 16;
    AMRD_WIDTH         : natural                      := 32;
    C_M_AXI_ADDR_WIDTH : integer range 32 to 32       := 32;
    C_M_AXI_DATA_WIDTH : integer range 32 to 256      := 64;
    ENDWORD_WIDTH      : natural                      := 64);
  
  port (
    clk : in std_logic;
    rst : in std_logic;

    newReading : out std_logic;

   -- debug : out std_logic_vector(3 downto 0);

    -- memoryAXIdrv bus    
    memAXIdrv_addr           : in  std_logic_vector (AMRD_WIDTH-1 downto 0);
    memAXIdrv_addr_full_n    : out std_logic;
    memAXIdrv_addr_write     : in  std_logic;
    memAXIdrv_size           : in  std_logic_vector (AMRD_WIDTH-1 downto 0);
    memAXIdrv_size_full_n    : out std_logic;
    memAXIdrv_size_write     : in  std_logic;
    memAXIdrv_endWord        : in  std_logic_vector (ENDWORD_WIDTH-1 downto 0);
    memAXIdrv_endWord_full_n : out std_logic;
    memAXIdrv_endWord_write  : in  std_logic;

    -- Admin Ctrl
    lastWordFlag : out std_logic;
    --sizeRD       : out natural;
    --endWord      : out std_logic_vector (ENDWORD_WIDTH-1 downto 0);
    endReadType  : out endType;

    -- FIFO (buffer)
    prog_full : in std_logic;
    --readDone  : in std_logic;

   -- s_axi_arid : in std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
    
    -- MMap Read Address Channel                                          
    m_axi_arready : in  std_logic;
    m_axi_arvalid : out std_logic;
    m_axi_araddr  : out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
    m_axi_arlen   : out std_logic_vector(7 downto 0);
    m_axi_arsize  : out std_logic_vector(2 downto 0);
    m_axi_arburst : out std_logic_vector(1 downto 0);
    m_axi_arprot  : out std_logic_vector(2 downto 0);
    m_axi_arcache : out std_logic_vector(3 downto 0);

    -- MMap Read Data Channel   
    m_axi_rid    : in std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
    m_axi_rvalid : in std_logic;
    m_axi_rdata  : in std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
    m_axi_rlast  : in std_logic);

end axi_protocol_ctrl;



architecture rtl of axi_protocol_ctrl is
  
  constant BURST_INC_ADDR_SIZE : natural := BURST_SIZE * (C_M_AXI_DATA_WIDTH/8);
  constant ARLEN : std_logic_vector(7 downto 0) := conv_std_logic_vector(BURST_SIZE-1, 8);

  signal endReadTypeReg : endType;
  
  type stateType is (stIDLE, stINITIALIZE, stADDR_READ, stWAIT_LAST, stWAIT_READING);
  signal state : stateType;
  signal nextState : stateType;
  
  signal lastWord      : std_logic_vector (C_M_AXI_DATA_WIDTH/2-1 downto 0);
  signal addr          : std_logic_vector (AMRD_WIDTH-1 downto 0);
  signal size64b       : natural;
  signal oddSize       : natural range 0 to 1;
  signal burstSize     : std_logic_vector (7 downto 0);
  signal endWordReg     : std_logic_vector (ENDWORD_WIDTH-1 downto 0);
  signal lastBurstSize : std_logic;
  signal lastBurstRead : std_logic;

  signal prevWord : std_logic_vector(AMRD_WIDTH-1 downto 0);

  signal incAddr : boolean;
  signal incSize : boolean;

  signal newRead : std_logic;

begin  -- rtl

  --debug <= X"1" when state = stIDLE else
  --         X"2" when state = stINITIALIZE else
  --         X"3" when state = stADDR_READ else
  --         X"4" when state = stWAIT_LAST else
  --         X"0";

  
  m_axi_arprot  <= "000";
  m_axi_arcache <= "0011";
  newRead <= '1' when memAXIdrv_addr_write = '1' and
                memAXIdrv_size_write = '1' and
                memAXIdrv_endWord_write = '1' else
                '0';
  --endWord <= endWordReg;
  endReadType <= endReadTypeReg;
  

  sFSM: process (clk)
  begin  -- process sFSM
    if clk'event and clk = '1' then  -- rising clock edge
      if rst = '1' then                   -- asynchronous reset (active low)
        state <= stIDLE;
      else
        state <= nextState;
      end if;
    end if;
  end process sFSM;


  FSM: process (addr, burstSize, lastBurstRead, m_axi_arready, m_axi_rlast,
                newRead, prog_full, state)
  begin  -- process sFSM
    nextState <= state;

    m_axi_arvalid <= '0';
    m_axi_araddr  <= (others => '0');
    m_axi_arlen   <= (others => '0');
    m_axi_arsize  <= (others => '0');
    m_axi_arburst <= (others => '0');
    
    memAXIdrv_addr_full_n    <= '0';
    memAXIdrv_size_full_n    <= '0';
    memAXIdrv_endWord_full_n <= '0';

    incAddr <= false;
    incSize <= false;

    newReading <= '0';
    
    case state is
      when stIDLE =>
        memAXIdrv_addr_full_n    <= '1';
        memAXIdrv_size_full_n    <= '1';
        memAXIdrv_endWord_full_n <= '1';
        if newRead = '1' then
          nextState <= stINITIALIZE;
        end if;


      when stINITIALIZE =>
        newReading <= '1';
        incSize <= true;
        nextState <= stADDR_READ;


      when stADDR_READ =>
        if m_axi_arready = '1' and prog_full = '0' then
          m_axi_arvalid <= '1';
          m_axi_araddr <= addr;
          m_axi_arlen <= burstSize;
          m_axi_arsize <= "011";
          m_axi_arburst <= "01";
          incAddr <= true;
          nextState <= stWAIT_LAST;
        end if;


      when stWAIT_LAST =>
        if m_axi_rlast = '1' then
          if lastBurstRead = '1' then
            --nextState <= stWAIT_READING;
            nextState <= stIDLE;
          else
            incSize <= true;            
            nextState <= stADDR_READ;               
          end if;
        end if;

      --when stWAIT_READING =>
      --  if readDone = '1' then
      --    nextState <= stIDLE;
      --  end if;

        
      when others => null;
    end case;
    
  end process FSM;
  
  

  typeReadProc : process (clk)
  begin  -- process sFSM
    if clk'event and clk = '1' then     -- rising clock edge
      if rst = '1' then                 -- asynchronous reset (active low)
        endReadTypeReg <= etNONE;
      else
        if newRead = '1' then          
          if memAXIdrv_size = X"00000000" then
            endReadTypeReg <= etENDWORD;
          else
            endReadTypeReg <= etSIZE;
          end if;
        end if;        
      end if;
    end if;
  end process typeReadProc;

  
  params : process (clk)
  begin  -- process sFSM
    if clk'event and clk = '1' then     -- rising clock edge
      if rst = '1' then                 -- asynchronous reset (active low)
        addr    <= (others => '0');
        size64b <= 0;
        --sizeRD  <= 0;
        oddSize <= 0;
        endWordReg <= (others => '0');
      else
        if newRead = '1' then
          addr    <= memAXIdrv_addr;
          endWordReg <= memAXIdrv_endWord;
          --sizeRD  <= conv_integer(unsigned(memAXIdrv_size));
          size64b <= conv_integer(unsigned(memAXIdrv_size(31 downto 1)));
          if memAXIdrv_size(0) = '0' then
            oddSize <= 0;
          else
            oddSize <= 1;
          end if;
        end if;

        if incAddr then
          addr <= unsigned(addr) + BURST_INC_ADDR_SIZE;
        end if;
        
      end if;
    end if;
  end process params;

  
  burstSizeProc : process (clk)
    variable cntSize : natural := 0;
  begin  -- process sFSM
    if clk'event and clk = '1' then     -- rising clock edge
      if rst = '1' then                 -- asynchronous reset (active low)
        cntSize := 0;
        lastBurstSize <= '0';
        burstSize <= (others => '0');
      else
        if newRead = '1' then
          cntSize := 0;
          lastBurstSize <= '0';
          burstSize <= (others => '0');
        end if;
        
        if endReadTypeReg = etSIZE and incSize then
          if size64b - cntSize > BURST_SIZE then
            burstSize <= ARLEN;
            cntSize := cntSize + BURST_SIZE;
          else
            lastBurstSize <= '1';
            cntSize := size64b - cntSize + oddSize - 1;
            burstSize <= conv_std_logic_vector(cntSize, 8);
          end if;
        elsif endReadTypeReg = etENDWORD then          
          burstSize <= ARLEN;
        end if;
      end if;
    end if;
  end process burstSizeProc;
  
  
  lastWordProc : process (clk)
  begin  -- process sFSM
    if clk'event and clk = '1' then     -- rising clock edge
      if rst = '1' then                 -- asynchronous reset (active low)
        lastWord <= (others => '0');
      else
        if newRead = '1' then
          lastWord <= (others => '0');
        elsif m_axi_rvalid = '1' and m_axi_rid = AXI_ID(C_AXI_ID_WIDTH-1 downto 0) then
          lastWord <= m_axi_rdata(63 downto 32);
        end if;
      end if;
    end if;
  end process lastWordProc;
  
  
  endReadProc : process (clk)
    variable cntSize : natural range 0 to 256 := 0;
    variable auxEndWord : std_logic_vector(ENDWORD_WIDTH-1 downto 0);
    variable auxRDATA : std_logic_vector(ENDWORD_WIDTH-1 downto 0);
  begin  -- process sFSM
    if clk'event and clk = '1' then     -- rising clock edge
      if rst = '1' then                 -- asynchronous reset (active low)
        cntSize := 0;
        lastBurstRead <= '0';
        lastWordFlag <= '0';
        auxEndWord := (others => '0');
      else
        if newRead = '1' then
          lastWordFlag <= '0';
          lastBurstRead <= '0';
          auxEndWord := (others => '0');
        end if;

        if incAddr then
          cntSize := 0;          
        elsif lastBurstSize = '1' then
          cntSize := cntSize + 1;
          if conv_std_logic_vector(cntSize,8) = burstSize then
            lastWordFlag <= '1';              
          end if;       
        end if;
        
        if endReadTypeReg = etSIZE and lastBurstSize = '1' then
          lastBurstRead <= '1';
        elsif endReadTypeReg = etENDWORD and m_axi_rvalid = '1' and m_axi_rid = AXI_ID(C_AXI_ID_WIDTH-1 downto 0) then
          auxEndWord := lastWord & m_axi_rdata(31 downto 0);
          auxRDATA := m_axi_rdata(31 downto 0) & m_axi_rdata(63 downto 32);
          if auxRDATA = endWordReg or auxEndWord = endWordReg then  -- Valid for
              lastBurstRead <= '1';                                   -- aligned
              lastWordFlag <= '1';
          end if;                                                -- 32bit words
        else
          lastBurstRead <= '0';
        end if;
      end if;
    end if;
  end process endReadProc;
 

end rtl;
