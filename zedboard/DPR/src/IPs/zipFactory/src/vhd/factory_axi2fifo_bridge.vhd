library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity factory_axi2fifo_bridge is
  generic (
    C_AXI_ID_WIDTH     : natural                       := 4;
    C_S_AXI_ADDR_WIDTH : natural                       := 32;
    C_S_AXI_DATA_WIDTH : natural                       := 32;
    C_BASE_ADDR        : std_logic_vector(31 downto 0) := X"40000000";
    C_HIGH_ADDR        : std_logic_vector(31 downto 0) := X"40000FFF");
  
  port(
    S_AXI_ACLK    : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;

    -- axi lite interface
    S_AXI_AWID    : in  std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
    S_AXI_AWVALID : in  std_logic;
    S_AXI_AWREADY : out std_logic;
    S_AXI_AWADDR  : in  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
    S_AXI_AWLEN   : in  std_logic_vector(7 downto 0);
    S_AXI_AWSIZE  : in  std_logic_vector(2 downto 0);
    S_AXI_AWBURST : in  std_logic_vector(1 downto 0);

    S_AXI_WID    : in  std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
    S_AXI_WVALID : in  std_logic;
    S_AXI_WDATA  : in  std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    S_AXI_WLAST  : in  std_logic;
    S_AXI_WSTRB  : in  std_logic_vector(3 downto 0);
    S_AXI_WREADY : out std_logic;

    S_AXI_ARID    : in  std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
    S_AXI_ARADDR  : in  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
    S_AXI_ARVALID : in  std_logic;
    S_AXI_ARREADY : out std_logic;
    S_AXI_ARLEN   : in  std_logic_vector(7 downto 0);
    S_AXI_ARSIZE  : in  std_logic_vector(2 downto 0);
    S_AXI_ARBURST : in  std_logic_vector(1 downto 0);

    S_AXI_RID    : out std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
    S_AXI_RREADY : in  std_logic;
    S_AXI_RDATA  : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    S_AXI_RLAST  : out std_logic;
    S_AXI_RRESP  : out std_logic_vector(1 downto 0);
    S_AXI_RVALID : out std_logic;

    S_AXI_BID    : out std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
    S_AXI_BRESP  : out std_logic_vector(1 downto 0);
    S_AXI_BVALID : out std_logic;
    S_AXI_BREADY : in  std_logic;

    -- FIFO Input
    FIFO_IN_data : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    FIFO_IN_wr   : out std_logic;
    FIFO_IN_full : in  std_logic;

    -- FIFO Output
    FIFO_OUT_data  : in  std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    FIFO_OUT_rd    : out std_logic;
    FIFO_OUT_valid : in  std_logic;
    FIFO_OUT_empty : in  std_logic);
  
end factory_axi2fifo_bridge;

architecture behavioral of factory_axi2fifo_bridge is

  type StateType is (stIDLE, stBURST_WRITE, stBURST_READ,
                     stBVALID, stWAIT_RREADY);
  signal state, nextState : StateType;
  
  signal id : std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
  
  signal auxRead : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
  signal rd  : std_logic;

  signal burstSize  : natural range 0 to 255 := 0;
  signal burstCnt   : natural range 0 to 255 := 0;
  signal burstCntEn : std_logic;
  
  signal auxValid : std_logic;
  signal rstValid : std_logic;

  signal inside_mem_addr_WR : std_logic;
  signal inside_mem_addr_RD : std_logic;
  
begin  -- behavioral 

  -----------------------------------------------------------------------------
  -- Combinational assignment
  -----------------------------------------------------------------------------
  S_AXI_RRESP <= "00";

  S_AXI_AWREADY <= '1' when state = stIDLE and FIFO_IN_full = '0' else
                   '0';
  S_AXI_WREADY  <= not FIFO_IN_full;
  S_AXI_ARREADY <= '1' when state = stIDLE else
                   '0';
  
  FIFO_IN_data <= S_AXI_WDATA;
  FIFO_OUT_rd <= rd;

  
  inside_mem_addr_WR <= '1' when S_AXI_AWADDR >= C_BASE_ADDR and S_AXI_AWADDR <= C_HIGH_ADDR else
                     '0';
  inside_mem_addr_RD <= '1' when S_AXI_ARADDR >= C_BASE_ADDR and S_AXI_ARADDR <= C_HIGH_ADDR else
                     '0';
  -----------------------------------------------------------------------------

  
  -----------------------------------------------------------------------------
  -- FSM
  -----------------------------------------------------------------------------
  seq: process (S_AXI_ACLK)
  begin  -- process fsmSeq    
    if S_AXI_ACLK'event and S_AXI_ACLK = '1' then  -- rising clock edge
      if S_AXI_ARESETN = '0' then                   -- asynchronous reset (active low)
        state <= stIDLE;
      else
        state <= nextState;
      end if;
    end if;     
  end process seq;

  
  fsm: process (S_AXI_ARVALID, S_AXI_AWVALID, S_AXI_BREADY, S_AXI_RREADY,
                S_AXI_WLAST, S_AXI_WVALID, auxRead, auxValid, burstCnt,
                burstSize, id, inside_mem_addr_RD, inside_mem_addr_WR, state)
  begin  -- process fsmComb
    nextState <= state;
    
    S_AXI_BVALID <= '0';
    S_AXI_RVALID <= '0';

    S_AXI_BRESP <= "00";
    
    burstCntEn <= '0';
    
    rd <= '0';
    FIFO_IN_wr <= '0';
    rstValid <= '0';
    
    S_AXI_RID <= (others => '0');
    S_AXI_RLAST <= '0';
    S_AXI_RDATA <= (others => '0');

    S_AXI_BID <= (others => '0');

    
    case state is        
      when stIDLE =>
        if S_AXI_AWVALID = '1' and inside_mem_addr_WR = '1' then
          if S_AXI_WVALID = '1' then
            FIFO_IN_wr <= '1'; 
            if S_AXI_WLAST = '1' then
              nextState <= stBVALID;
            else
              nextState <= stBURST_WRITE;
            end if;           
          else
            nextState <= stBURST_WRITE;            
          end if;

        elsif S_AXI_ARVALID = '1' and inside_mem_addr_RD = '1' then        
          rd <= '1';
          nextState <= stBURST_READ;          
        end if;

        
      when stBURST_WRITE =>
        if S_AXI_WVALID = '1' then
          FIFO_IN_wr <= '1'; 
          if S_AXI_WLAST = '1' then
            nextState <= stBVALID;              
          end if;      
        end if;


      when stBURST_READ =>   
        if auxValid = '1' then
          if S_AXI_RREADY = '1' then
            burstCntEn <= '1';
            S_AXI_RDATA <= auxRead; --FIFO_OUT_data;
            S_AXI_RID <= id;
            S_AXI_RVALID <= '1';
            rstValid <= '1';
            if burstCnt = burstSize or burstSize = 0 then
              S_AXI_RLAST <= '1';
              nextState <= stIDLE; 
            else
              rd <= '1';
            end if; 
          else
            nextState <= stWAIT_RREADY;            
          end if;
        else
          rd <= '1';    
        end if;

        
      when stBVALID =>
        if S_AXI_BREADY = '1' then
          S_AXI_BID <= id;
          S_AXI_BRESP <= "01";
          S_AXI_BVALID <= '1';
          nextState <= stIDLE;          
        end if;

        
      when stWAIT_RREADY =>
        if S_AXI_RREADY = '1' then
          S_AXI_RDATA <= auxRead;
          S_AXI_RVALID <= '1';
          rstValid <= '1';
          burstCntEn <= '1';
          if burstCnt = burstSize or burstSize = 0 then
            S_AXI_RLAST <= '1';
            nextState <= stIDLE; 
          else            
            rd <= '1';
            nextState <= stBURST_READ;
          end if;  
        end if;
        
                
      when others => null;
    end case;
  end process fsm;
  -----------------------------------------------------------------------------


  -----------------------------------------------------------------------------
  -- Burst Process
  -----------------------------------------------------------------------------
  burstProc: process (S_AXI_ACLK)
  begin  -- process fsmSeq    
    if S_AXI_ACLK'event and S_AXI_ACLK = '1' then  -- rising clock edge
      if S_AXI_ARESETN = '0' then                   -- asynchronous reset (active low)
        burstSize <= 0;
        burstCnt <= 0;
      else
        if S_AXI_AWVALID = '1' and inside_mem_addr_WR = '1' and state = stIDLE then
          burstCnt <= 0;
          burstSize <= conv_integer(unsigned(S_AXI_AWLEN));
        elsif S_AXI_ARVALID = '1' and inside_mem_addr_RD = '1' and state = stIDLE then
          burstCnt <= 0;
          burstSize <= conv_integer(unsigned(S_AXI_ARLEN));
        elsif burstCntEn = '1' then
          burstCnt <= burstCnt + 1;          
        end if;
      end if;
    end if;     
  end process burstProc;
  -----------------------------------------------------------------------------


  -----------------------------------------------------------------------------
  -- Read data buffer
  -----------------------------------------------------------------------------
  dataBuffer: process (S_AXI_ACLK)
  begin  -- process fsmSeq    
    if S_AXI_ACLK'event and S_AXI_ACLK = '1' then  -- rising clock edge
      if S_AXI_ARESETN = '0' then                   -- asynchronous reset (active low)
        auxRead <= (others => '0');
        auxValid <= '0';
      else
        if rd = '1' and FIFO_OUT_valid = '1' then
          auxRead <= FIFO_OUT_data;
          auxValid <= '1';
        elsif rstValid = '1' then
          auxValid <= '0';
        end if;
      end if;
    end if;     
  end process dataBuffer;
  -----------------------------------------------------------------------------


  -----------------------------------------------------------------------------
  -- ID
  -----------------------------------------------------------------------------
  idProc: process (S_AXI_ACLK)
  begin  -- process fsmSeq    
    if S_AXI_ACLK'event and S_AXI_ACLK = '1' then  -- rising clock edge
      if S_AXI_ARESETN = '0' then                   -- asynchronous reset (active low)
        id <= (others => '0');
      else
        if S_AXI_AWVALID = '1' and inside_mem_addr_WR = '1' then
          id <= S_AXI_AWID;
        elsif S_AXI_ARVALID = '1' and inside_mem_addr_RD = '1' then
          id <= S_AXI_ARID;
        end if;
      end if;
    end if;     
  end process idProc;
  -----------------------------------------------------------------------------

end behavioral;



