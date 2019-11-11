library ieee;
use ieee.std_logic_1164.all;
use work.readTypes.all;



entity fifo2axis_bridge is
  generic (
    ENDWORD_WIDTH       : natural                 := 64;
    C_M_AXIS_DATA_WIDTH : integer range 32 to 256 := 32);
  
  port (
    clk   : in  std_logic;
    rst   : in  std_logic;
    
    -- Fifo iface
    rd_en         : out std_logic;
    dout          : in  std_logic_vector(C_M_AXIS_DATA_WIDTH-1 DOWNTO 0);
    empty         : in  std_logic;
    full          : in  std_logic;
    valid         : in  std_logic;
    rdThresholdEn : in  std_logic;

        -- AXIS iface
    m_axis_tvalid : out std_logic;
    m_axis_tready : in  std_logic;
    m_axis_tdata  : out std_logic_vector(C_M_AXIS_DATA_WIDTH-1 DOWNTO 0));

end fifo2axis_bridge;


architecture rtl of fifo2axis_bridge is

  type stateType is (stIDLE, stWAIT_THRESHOLD, stSEND_DATA, stWAIT_READY);
  signal state : stateType;
  signal nextState : stateType;
  
  signal rd      : std_logic := '0';
  signal lastRD  : std_logic := '0';
  signal dataOut : std_logic_vector(C_M_AXIS_DATA_WIDTH-1 downto 0);
  signal validOut : std_logic;
  signal rstValid : std_logic;

  
  signal auxData : std_logic_vector(C_M_AXIS_DATA_WIDTH-1 downto 0);
  signal enAuxData : std_logic;
  
begin  -- rtl

  dataProc: process (clk)
  begin  -- process sFSM
    if clk'event and clk = '1' then  -- rising clock edge
      if rst = '1' then                   -- asynchronous reset (active low)
        dataOut <= (others => '0');
        auxData <= (others => '0');
        validOut <= '0';
      else
        if enAuxData = '1' then
          auxData <= dataOut;
        end if;
        if valid = '1' then
          dataOut <= dout;
          validOut <= '1';
        elsif rstValid = '1' then
          validOut <= '0';
        end if;
      end if;
    end if;
  end process dataProc;

  
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


  
  FSM: process (auxData, dataOut, empty, full, m_axis_tready, rdThresholdEn,
                state, validOut)
  begin  -- process FSM
    nextState <= state;

    rd_en <= '0';
    m_axis_tvalid <= '0';
    m_axis_tdata <= (others => '0');

    rstValid <= '0';
    enAuxData <= '0';
    
    case state is
      when stIDLE =>
        if empty = '1' and full = '0' then
          nextState <= stWAIT_THRESHOLD;
        end if;

                
      when stWAIT_THRESHOLD =>
        if rdThresholdEn = '1' then
          nextState <= stSEND_DATA;
        end if;

        
      when stSEND_DATA =>
        if validOut = '1' then
          if m_axis_tready = '1'  then
            m_axis_tvalid <= '1';
            m_axis_tdata <= dataOut;
            rstValid <= '1';
              rd_en <= '1';
          else
            enAuxData <= '1';
            nextState <= stWAIT_READY;
          end if;
        else
          rd_en <= '1';
        end if;

      when stWAIT_READY =>
        if m_axis_tready = '1' then
          m_axis_tvalid <= '1';
          m_axis_tdata <= auxData;
          nextState <= stSEND_DATA;
          rd_en <= '1';
        end if;
                
      when others => null;
    end case;
    
  end process FSM;

end rtl;

