library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity unzip is
  
  generic (
    ICAP_DWIDTH : natural := 32;
    AXIS_DWIDTH : natural := 32);

  port (
    clk : in std_logic;
    rst : in std_logic;
    
    fifoData_read    : out  std_logic;
    fifoData_data    : in std_logic_vector(AXIS_DWIDTH-1 downto 0);
    fifoData_empty_n : in std_logic;

    fifoDataUnzipped_read    : in  std_logic;
    fifoDataUnzipped_data    : out std_logic_vector(ICAP_DWIDTH-1 downto 0);
    fifoDataUnzipped_empty_n : out std_logic);

end unzip;


architecture behavior of unzip is
  
  constant ZEROS_CMD_WORD : std_logic_vector(AXIS_DWIDTH-1 downto 0) := X"30036001";
  constant ZEROS_WORD     : std_logic_vector(AXIS_DWIDTH-1 downto 0) := X"00000000";

  --component factory_fifoDataUnzipped
  --  port (
  --    rst    : IN  STD_LOGIC;
  --    wr_clk : IN  STD_LOGIC;
  --    rd_clk : IN  STD_LOGIC;
  --    din    : IN  STD_LOGIC_VECTOR(AXIS_DWIDTH-1 DOWNTO 0);
  --    wr_en  : IN  STD_LOGIC;
  --    rd_en  : IN  STD_LOGIC;
  --    dout   : OUT STD_LOGIC_VECTOR(ICAP_DWIDTH-1 DOWNTO 0);
  --    full   : OUT STD_LOGIC;
  --    empty  : OUT STD_LOGIC;
  --    valid  : OUT STD_LOGIC);
  --end component;

  --signal fifo_din   : STD_LOGIC_VECTOR(AXIS_DWIDTH-1 DOWNTO 0);
  --signal fifo_wr    : STD_LOGIC;
  --signal fifo_full  : STD_LOGIC;
  --signal fifo_empty : STD_LOGIC;
  --signal fifo_valid : STD_LOGIC;

  type stateType is (stIDLE, stCOPY, stZEROS_SIZE, stZEROS);
  signal state : stateType;
  signal nextState : stateType;

  signal enSize    : std_logic;
  signal incSize   : std_logic;
  signal cntSize   : natural;
  signal zerosSize : natural;
  
  
begin  -- behavior

  --fifoDataUnzipped_empty_n <= not fifo_empty;

  --factory_fifoDataUnzipped_1: factory_fifoDataUnzipped
  --  port map (
  --    rst    => rst,
  --    wr_clk => clk,
  --    rd_clk => clk,
  --    din    => fifo_din,
  --    wr_en  => fifo_wr,
  --    rd_en  => fifoDataUnzipped_read,
  --    dout   => fifoDataUnzipped_data,
  --    full   => fifo_full,
  --    empty  => fifo_empty,
  --    valid  => fifo_valid);

  
  
  procCnt: process (clk)
  begin 
    if clk'event and clk = '1' then  -- rising clock edge
      if rst = '1' then              
        cntSize <= 0;
        zerosSize <= 0;
      else
        if enSize = '1' then
          cntSize <= 0;
          zerosSize <= conv_integer(unsigned(fifoData_data)) - 2;
        elsif incSize = '1' then
          cntSize <= cntSize + 1;
        end if;
      end if;
    end if;
  end process procCnt;

  
  
  prSeq: process (clk)
  begin 
    if clk'event and clk = '1' then  -- rising clock edge
      if rst = '1' then              
        state <= stIDLE;
      else
        state <= nextState;
      end if;
    end if;
  end process prSeq;
  

  prFSM : process (cntSize, fifoDataUnzipped_read, fifoData_data,
                   fifoData_empty_n, state, zerosSize)
  begin
    nextState <= state;

    enSize <= '0';
    incSize <= '0';
    
    fifoData_read <= '0';

    --fifo_wr <= '0';
    --fifo_din <= (others => '0');

    fifoDataUnzipped_empty_n <= '0';
    fifoDataUnzipped_data <= (others => '0');

    case state is
      when stIDLE =>
        if fifoData_empty_n = '1' then
          nextState <= stCOPY;
        end if;

      when stCOPY =>   
        if fifoData_empty_n = '1' then
          fifoDataUnzipped_empty_n <= '1';
          if fifoData_data = ZEROS_CMD_WORD then
            fifoDataUnzipped_data <= ZEROS_WORD;
          else
            fifoDataUnzipped_data <= fifoData_data;            
          end if;
          
          if fifoDataUnzipped_read = '1' then
            fifoData_read <= '1';
            if fifoData_data = ZEROS_CMD_WORD then
              nextState <= stZEROS_SIZE;              
            end if;
          end if;    
        end if;
        

      when stZEROS_SIZE =>
        if fifoData_empty_n = '1' then
          enSize <= '1';
          fifoDataUnzipped_empty_n <= '1';
          fifoDataUnzipped_data <= ZEROS_WORD;          
          if fifoDataUnzipped_read = '1' then
            nextState <= stZEROS;          
          end if;     
        end if;
        

      when stZEROS =>
          fifoDataUnzipped_empty_n <= '1';
          fifoDataUnzipped_data <= ZEROS_WORD;  
          if fifoDataUnzipped_read = '1' then
            incSize <= '1';
          end if;    
          if cntSize = zerosSize-1 then
            fifoData_read <= '1';
            nextState <= stCOPY;            
          end if; 
          
        
      when others => null;
    end case;
  end process prFSM;

  

end behavior;


