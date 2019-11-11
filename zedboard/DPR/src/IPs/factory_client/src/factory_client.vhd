library ieee;
use ieee.std_logic_1164.all;


entity factory_client is

  generic (
    ADDR_BITSTREAM_1 : std_logic_vector(31 downto 0) := X"10000000";
    ADDR_BITSTREAM_2 : std_logic_vector(31 downto 0) := X"11000000");

  port (
    clk : in std_logic;
    rstn : in std_logic;

    bUp   : in std_logic;
    bDown : in std_logic;

    FIFO_OUT_data : out std_logic_vector(31 DOWNTO 0);
    FIFO_OUT_wr   : out std_logic;
    FIFO_OUT_full : in  std_logic;
    FIFO_IN_rd    : out std_logic;
    FIFO_IN_data  : in  std_logic_vector(31 DOWNTO 0);
    FIFO_IN_empty : in  std_logic;
    FIFO_IN_valid : in  std_logic);

end factory_client;

architecture behaviour of factory_client is

  constant WAIT_SIZE : natural := 1000000;
  
  type   typeState is (stIDLE, stHEADER, stADDR_ONE, stADDR_TWO,
                       stAREA, stNO_REBOUND, stWAIT_RESPONSE,
                       stWAIT_RESPONSE_2, stHEADER_ONE, stHEADER_TWO,
                       stHEADER_ONE_2, stHEADER_TWO_2, stSTATUS,
                       stSTATUS_RESPONSE, stSTATUS_RESPONSE_2,
                       stSTATUS_RESPONSE_3, stSTATUS_HEADER);
  signal state     : typeState;
  signal nextSTate : typeState;

  type typeBit is (NONE, ONE, TWO);
  signal bitFile : typeBit;
  signal enBit1 : std_logic;
  signal enBit2 : std_logic;

  signal incCnt  : std_logic;
  signal rstCnt  : std_logic;
  signal cntWait : natural;
  
  signal rst    : std_logic;
  
begin  -- behaviour
  
  rst <= not rstn;

  bitCtrl: process (clk)
  begin  
    if clk'event and clk = '1' then  -- rising clock edge
      if rst = '1' then                   -- asynchronous reset (active low)
        bitFile <= NONE;
      else
        if enBit1 = '1' then
          bitFile <= ONE;
        elsif enBit2 = '1' then
          bitFile <= TWO;
        end if;
      end if;
    end if;
  end process bitCtrl;
  

  seqFSM: process (clk)
  begin  
    if clk'event and clk = '1' then  -- rising clock edge
      if rst = '1' then                   -- asynchronous reset (active low)
        state <= stIDLE;
      else
        state <= nextState;
      end if;
    end if;
  end process seqFSM;
  
  
  FSM: process (FIFO_IN_data, FIFO_IN_empty, FIFO_IN_valid, FIFO_OUT_full,
                bDown, bUp, cntWait, state)
  begin  
    nextState <= state;

    incCnt <= '0';
    rstCnt <= '0';

    enBit1 <= '0';
    enBit2 <= '0';

    FIFO_IN_rd <= '0';

    FIFO_OUT_wr <= '0';
    FIFO_OUT_data <= (others => '0');
    
    case state is
      when stIDLE =>
        if bUp = '1' then
          rstCnt <= '1';
          enBit1 <= '1';
          nextState <= stHEADER_ONE;
        end if;
        if bDown = '1' then
          rstCnt <= '1';
          enBit2 <= '1';
          nextState <= stHEADER_TWO;
        end if;

        
      when stHEADER_ONE =>
        if FIFO_OUT_full = '0' then
          FIFO_OUT_wr <= '1';
          FIFO_OUT_data <= X"00020104";
          nextState <= stHEADER_ONE_2;
        end if;

        
      when stHEADER_TWO =>
        if FIFO_OUT_full = '0' then
          FIFO_OUT_wr <= '1';
          FIFO_OUT_data <= X"00020104";
          nextState <= stHEADER_TWO_2;
        end if;

        
      when stHEADER_ONE_2 =>
        if FIFO_OUT_full = '0' then
          FIFO_OUT_wr <= '1';
          FIFO_OUT_data <= X"00020002";
          nextState <= stADDR_ONE;
        end if;

        
      when stHEADER_TWO_2 =>
        if FIFO_OUT_full = '0' then
          FIFO_OUT_wr <= '1';
          FIFO_OUT_data <= X"00020002";
          nextState <= stADDR_TWO;
        end if;

        
      --when stHEADER =>
      --  if FIFO_OUT_full = '0' then
      --    FIFO_OUT_wr <= '1';
      --    FIFO_OUT_data <= X"00020001";
      --    if bitFile = ONE then
      --      nextState <= stADDR_ONE;
      --    elsif bitFile = TWO then
      --      nextState <= stADDR_TWO;
      --    end if;
      --  end if;


      when stADDR_ONE =>
        if FIFO_OUT_full = '0' then
          FIFO_OUT_wr <= '1';
          FIFO_OUT_data <= ADDR_BITSTREAM_1;
          nextState <= stAREA;          
        end if;


      when stADDR_TWO =>
        if FIFO_OUT_full = '0' then
          FIFO_OUT_wr <= '1';
          FIFO_OUT_data <= ADDR_BITSTREAM_2;
          nextState <= stAREA;          
        end if;


      when stAREA =>
        if FIFO_OUT_full = '0' then
          FIFO_OUT_wr <= '1';
          FIFO_OUT_data <= X"00010000";
          nextState <= stWAIT_RESPONSE;          
        end if;

        
      when stNO_REBOUND =>
        if bUp = '0' and bDown = '0' then
          incCnt <= '1';
          if cntWait = WAIT_SIZE then
            nextState <= stSTATUS;
          end if;          
        end if;
        

      when stWAIT_RESPONSE =>
        if FIFO_IN_empty = '0' then
          if FIFO_IN_valid = '1' then
            FIFO_IN_rd <= '1';
            nextState <= stNO_REBOUND;
          end if;
        end if;
        
      --when stWAIT_RESPONSE_2 =>
      --  if FIFO_IN_empty = '0' then
      --    if FIFO_IN_valid = '1' then
      --      FIFO_IN_rd <= '1';
      --      nextState <= stNO_REBOUND;
      --    end if;
      --  end if;
        

      when stSTATUS =>
        if FIFO_OUT_full = '0' then
          FIFO_OUT_wr <= '1';
          FIFO_OUT_data <= X"00020200";
          nextState <= stSTATUS_HEADER;
        end if;

      when stSTATUS_HEADER =>
        if FIFO_OUT_full = '0' then
          FIFO_OUT_wr <= '1';
          FIFO_OUT_data <= X"00020000";
          nextState <= stSTATUS_RESPONSE;
        end if;


      when stSTATUS_RESPONSE =>        
        if FIFO_IN_empty = '0' then
          if FIFO_IN_valid = '1' then
            FIFO_IN_rd <= '1';
            nextState <= stSTATUS_RESPONSE_2;
          end if;
        end if;


      when stSTATUS_RESPONSE_2 =>        
        if FIFO_IN_empty = '0' then
          if FIFO_IN_valid = '1' then
            FIFO_IN_rd <= '1';
            nextState <= stSTATUS_RESPONSE_3;
          end if;
        end if;
        
      when stSTATUS_RESPONSE_3 =>   
        if FIFO_IN_empty = '0' then
          if FIFO_IN_valid = '1' then
            FIFO_IN_rd <= '1';
            if FIFO_IN_data = X"00000002" then
              nextState <= stNO_REBOUND;
            else
              nextState <= stIDLE;
            end if;            
          end if;
        end if;

        
                
      when others => null;
    end case; 

  end process FSM;
  
  
  cntProc: process (CLK)
  begin  -- process fsmSeq    
    if CLK'event and CLK = '1' then  -- rising clock edge
      if RST = '1' then                   -- asynchronous reset (active low)
        cntWait <= 0;
      else
        if rstCnt = '1' then
          cntWait <= 0;          
        elsif incCnt = '1' then
          cntWait <= cntWait + 1;
        end if;
      end if;
    end if;     
  end process cntProc;

  
end behaviour;

