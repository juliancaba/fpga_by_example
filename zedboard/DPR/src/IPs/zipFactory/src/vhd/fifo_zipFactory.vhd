library ieee;
use ieee.std_logic_1164.all;

library UNISIM;
use UNISIM.vcomponents.all;


entity fifo_zipFactory is
  
  generic (
    LITTLE_ENDIAN : boolean    := True;
    DEVICE_ID     : bit_vector := X"04224093";
    ICAP_DWIDTH   : natural    := 32;
    ENDWORD_WIDTH : natural    := 64;
    AXIS_DWIDTH   : natural    := 32);
  
  port (
    clk  : in std_logic;
    rstn : in std_logic;

    -- AXI Memmory Read Driver
    memAXIdrv_addr           : out std_logic_vector(31 downto 0);
    memAXIdrv_addr_full_n    : in  std_logic;
    memAXIdrv_addr_write     : out std_logic;
    memAXIdrv_size           : out std_logic_vector(31 downto 0);
    memAXIdrv_size_full_n    : in  std_logic;
    memAXIdrv_size_write     : out std_logic;
    memAXIdrv_endWord        : out std_logic_vector(ENDWORD_WIDTH-1 downto 0);
    memAXIdrv_endWord_full_n : in  std_logic;
    memAXIdrv_endWord_write  : out std_logic;

    FIFO_IN_data : in  std_logic_vector(31 DOWNTO 0);
    FIFO_IN_wr   : in  std_logic;
    FIFO_IN_full : out std_logic;

    FIFO_OUT_rd    : in  std_logic;
    FIFO_OUT_data  : out std_logic_vector(31 DOWNTO 0);
    FIFO_OUT_empty : out std_logic;
    FIFO_OUT_valid : out std_logic;

    s_axis_tvalid : in  std_logic;
    s_axis_tready : out std_logic;
    s_axis_tdata  : in  std_logic_vector(AXIS_DWIDTH-1 DOWNTO 0));

end fifo_zipFactory;


architecture structural of fifo_zipFactory is

  component factory_fifo
    port (
      rst    : IN  STD_LOGIC;
      wr_clk : IN  STD_LOGIC;
      rd_clk : IN  STD_LOGIC;
      din    : IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
      wr_en  : IN  STD_LOGIC;
      rd_en  : IN  STD_LOGIC;
      dout   : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      full   : OUT STD_LOGIC;
      empty  : OUT STD_LOGIC;
      valid  : OUT STD_LOGIC);
  end component;

  component wrapperAdmin
    port (
      din_V_dout         : IN  STD_LOGIC_VECTOR (31 downto 0);
      din_V_empty_n      : IN  STD_LOGIC;
      din_V_read         : OUT STD_LOGIC;
      dout_V_din         : OUT STD_LOGIC_VECTOR (31 downto 0);
      dout_V_full_n      : IN  STD_LOGIC;
      dout_V_write       : OUT STD_LOGIC;
      pr_V_addr_din      : OUT STD_LOGIC_VECTOR (31 downto 0);
      pr_V_addr_full_n   : IN  STD_LOGIC;
      pr_V_addr_write    : OUT STD_LOGIC;
      pr_V_areaID_din    : OUT STD_LOGIC_VECTOR (15 downto 0);
      pr_V_areaID_full_n : IN  STD_LOGIC;
      pr_V_areaID_write  : OUT STD_LOGIC;
      prDone_V_dout      : IN  STD_LOGIC;
      prDone_V_empty_n   : IN  STD_LOGIC;
      prDone_V_read      : OUT STD_LOGIC;
      ap_clk             : IN  STD_LOGIC;
      ap_rst             : IN  STD_LOGIC);
  end component;

  component factory_adminPR
    generic (
      LITTLE_ENDIAN : boolean;
      ENDWORD_WIDTH : natural);
    port (
      clk                      : in  std_logic;
      rst                      : in  std_logic;
      rst_admin                : out std_logic;
      pr_V_addr_din            : in  std_logic_vector (31 downto 0);
      pr_V_addr_full_n         : out std_logic;
      pr_V_addr_write          : in  std_logic;
      pr_V_areaID_din          : in  std_logic_vector (15 downto 0);
      pr_V_areaID_full_n       : out std_logic;
      pr_V_areaID_write        : in  std_logic;
      prDone_V_dout            : out std_logic;
      prDone_V_empty_n         : out std_logic;
      prDone_V_read            : in  std_logic;
      memAXIdrv_addr           : out std_logic_vector (31 downto 0);
      memAXIdrv_addr_full_n    : in  std_logic;
      memAXIdrv_addr_write     : out std_logic;
      memAXIdrv_size           : out std_logic_vector (31 downto 0);
      memAXIdrv_size_full_n    : in  std_logic;
      memAXIdrv_size_write     : out std_logic;
      memAXIdrv_endWord        : out std_logic_vector(ENDWORD_WIDTH-1 downto 0);
      memAXIdrv_endWord_full_n : in  std_logic;
      memAXIdrv_endWord_write  : out std_logic;
      prReq                    : out std_logic;
      prAck                    : in  std_logic;
      busy                     : in  std_logic);
  end component;
  

  component factory_pr32
    generic (
      DEVICE_ID   : bit_vector;
      ICAP_DWIDTH : natural range 0 to 32);
    port (
      Clk          : in  std_logic;
      Rst          : in  std_logic;
      eos          : in  std_logic;
      prReq        : in  std_logic;
      prAck        : out std_logic;
      busy         : out std_logic;
      fifo_read    : out std_logic;
      fifo_data    : in  std_logic_vector(ICAP_DWIDTH-1 downto 0);
      fifo_empty_n : in  std_logic);
  end component;
  

  component unzip
    generic (
      ICAP_DWIDTH : natural;
      AXIS_DWIDTH : natural);
    port (
      clk                      : in  std_logic;
      rst                      : in  std_logic;
      fifoData_read            : out std_logic;
      fifoData_data            : in  std_logic_vector(AXIS_DWIDTH-1 downto 0);
      fifoData_empty_n         : in  std_logic;
      fifoDataUnzipped_read    : in  std_logic;
      fifoDataUnzipped_data    : out std_logic_vector(ICAP_DWIDTH-1 downto 0);
      fifoDataUnzipped_empty_n : out std_logic);
  end component;


  component factory_axis2pr_bridge
    generic (
      LITTLE_ENDIAN : boolean;
      ICAP_DWIDTH   : natural;
      AXIS_DWIDTH   : natural);
    port (
      clk           : in  std_logic;
      rst           : in  std_logic;
      s_axis_tvalid : in  STD_LOGIC;
      s_axis_tready : out STD_LOGIC;
      s_axis_tdata  : in  STD_LOGIC_VECTOR(AXIS_DWIDTH-1 DOWNTO 0);
      fifo_read     : in  std_logic;
      fifo_data     : out std_logic_vector(ICAP_DWIDTH-1 downto 0);
      fifo_empty_n  : out std_logic);
  end component;


  signal din_V_dout    : STD_LOGIC_VECTOR (31 downto 0);
  signal din_V_empty_n : STD_LOGIC;
  signal din_V_read    : STD_LOGIC;
  signal dout_V_din    : STD_LOGIC_VECTOR (31 downto 0);
  signal dout_V_full_n : STD_LOGIC;
  signal dout_V_write  : STD_LOGIC;
  
  signal empty_in : STD_LOGIC;
  signal valid_in : STD_LOGIC;
  signal full_out : STD_LOGIC;

  signal pr_V_addr_din      : STD_LOGIC_VECTOR (31 downto 0);
  signal pr_V_addr_full_n   : STD_LOGIC;
  signal pr_V_addr_write    : STD_LOGIC;
  signal pr_V_areaID_din    : STD_LOGIC_VECTOR (15 downto 0);
  signal pr_V_areaID_full_n : STD_LOGIC;
  signal pr_V_areaID_write  : STD_LOGIC;
  signal prDone_V_dout      : STD_LOGIC;
  signal prDone_V_empty_n   : STD_LOGIC;
  signal prDone_V_read      : STD_LOGIC;

  signal rst_admin : std_logic;
  signal prReq     : std_logic;
  signal prAck     : std_logic;
  signal busy      : std_logic;

  signal fifoData_read            : std_logic;
  signal fifoData_data            : std_logic_vector(AXIS_DWIDTH-1 downto 0);
  signal fifoData_empty_n         : std_logic;
  signal fifoDataUnzipped_read    : std_logic;
  signal fifoDataUnzipped_data    : std_logic_vector(ICAP_DWIDTH-1 downto 0);
  signal fifoDataUnzipped_empty_n : std_logic;
  
  signal eos_int : std_logic;
  
  signal rst   : std_logic;
  signal rst_i : std_logic;
  
begin  -- rtl

  rst <= not rstn;
  

  factory_fifoIN: factory_fifo
    port map (
      rst    => rst,
      wr_clk => clk,
      rd_clk => clk,
      din    => FIFO_IN_data,
      wr_en  => FIFO_IN_wr,
      rd_en  => din_V_read,
      dout   => din_V_dout,
      full   => FIFO_IN_full,
      empty  => empty_in,
      valid  => valid_in);

  din_V_empty_n <= not empty_in;


  factory_fifoOUT: factory_fifo
    port map (
      rst    => rst,
      wr_clk => clk,
      rd_clk => clk,
      din    => dout_V_din,
      wr_en  => dout_V_write,
      rd_en  => FIFO_OUT_rd,
      dout   => FIFO_OUT_data,
      full   => full_out,
      empty  => FIFO_OUT_empty,
      valid  => FIFO_OUT_valid);

  dout_V_full_n <= not full_out;

  
  wrapperAdmin_i: wrapperAdmin
    port map (
      din_V_dout         => din_V_dout,
      din_V_empty_n      => din_V_empty_n,
      din_V_read         => din_V_read,
      dout_V_din         => dout_V_din,
      dout_V_full_n      => dout_V_full_n,
      dout_V_write       => dout_V_write,
      pr_V_addr_din      => pr_V_addr_din,
      pr_V_addr_full_n   => pr_V_addr_full_n,
      pr_V_addr_write    => pr_V_addr_write,
      pr_V_areaID_din    => pr_V_areaID_din,
      pr_V_areaID_full_n => pr_V_areaID_full_n,
      pr_V_areaID_write  => pr_V_areaID_write,
      prDone_V_dout      => prDone_V_dout,
      prDone_V_empty_n   => prDone_V_empty_n,
      prDone_V_read      => prDone_V_read,
      ap_clk             => clk,
      ap_rst             => rst);


  factory_adminPR_i : factory_adminPR
    generic map (
      LITTLE_ENDIAN => LITTLE_ENDIAN,
      ENDWORD_WIDTH => ENDWORD_WIDTH)
    port map (
      clk                      => clk,
      rst                      => rst,
      rst_admin                => rst_admin,
      pr_V_addr_din            => pr_V_addr_din,
      pr_V_addr_full_n         => pr_V_addr_full_n,
      pr_V_addr_write          => pr_V_addr_write,
      pr_V_areaID_din          => pr_V_areaID_din,
      pr_V_areaID_full_n       => pr_V_areaID_full_n,
      pr_V_areaID_write        => pr_V_areaID_write,
      prDone_V_dout            => prDone_V_dout,
      prDone_V_empty_n         => prDone_V_empty_n,
      prDone_V_read            => prDone_V_read,
      memAXIdrv_addr           => memAXIdrv_addr,
      memAXIdrv_addr_full_n    => memAXIdrv_addr_full_n,
      memAXIdrv_addr_write     => memAXIdrv_addr_write,
      memAXIdrv_size           => memAXIdrv_size,
      memAXIdrv_size_full_n    => memAXIdrv_size_full_n,
      memAXIdrv_size_write     => memAXIdrv_size_write,
      memAXIdrv_endWord        => memAXIdrv_endWord,
      memAXIdrv_endWord_full_n => memAXIdrv_endWord_full_n,
      memAXIdrv_endWord_write  => memAXIdrv_endWord_write,
      prReq                    => prReq,
      prAck                    => prAck,
      busy                     => busy);


  STARTUPE2_inst : STARTUPE2
    generic map (
      PROG_USR => "FALSE", 
      SIM_CCLK_FREQ => 0.0 
      )
    port map (
      CFGCLK => open,
      CFGMCLK => open,
      EOS => eos_int,
      PREQ => open,
      CLK => '0',
      GSR => '0',
      GTS => '0',
      KEYCLEARB => '0',
      PACK => '0',
      USRCCLKO => '0',
      USRCCLKTS => '0',
      USRDONEO => '1',
      USRDONETS => '0');

  factory_pr32_1 : factory_pr32
    generic map (
      DEVICE_ID   => DEVICE_ID,
      ICAP_DWIDTH => ICAP_DWIDTH)
    port map (
      Clk          => Clk,
      Rst          => rst_i,
      eos          => eos_int,
      prReq        => prReq,
      prAck        => prAck,
      busy         => busy,
      fifo_read    => fifoDataUnzipped_read,
      fifo_data    => fifoDataUnzipped_data,
      fifo_empty_n => fifoDataUnzipped_empty_n);


  unzip_1: unzip
    generic map (
      ICAP_DWIDTH => ICAP_DWIDTH,
      AXIS_DWIDTH => AXIS_DWIDTH)
    port map (
      clk                      => clk,
      rst                      => rst_i,
      fifoData_read            => fifoData_read,
      fifoData_data            => fifoData_data,
      fifoData_empty_n         => fifoData_empty_n,
      fifoDataUnzipped_read    => fifoDataUnzipped_read,
      fifoDataUnzipped_data    => fifoDataUnzipped_data,
      fifoDataUnzipped_empty_n => fifoDataUnzipped_empty_n);
    

  rst_i <= rst or rst_admin;
  factory_axis2pr_bridge_1 : factory_axis2pr_bridge
    generic map (
      LITTLE_ENDIAN => LITTLE_ENDIAN,
      ICAP_DWIDTH   => ICAP_DWIDTH,
      AXIS_DWIDTH   => AXIS_DWIDTH)
    port map (
      clk           => clk,
      rst           => rst_i,
      s_axis_tvalid => s_axis_tvalid,
      s_axis_tready => s_axis_tready,
      s_axis_tdata  => s_axis_tdata,
      fifo_read     => fifoData_read,
      fifo_data     => fifoData_data,
      fifo_empty_n  => fifoData_empty_n);

end structural;
