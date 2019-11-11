library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use work.readTypes.all;



entity axi_read_memory_driver is
  generic (
    AXI_ID              : std_logic_vector(7 downto 0) := X"01";
    C_AXI_ID_WIDTH      : natural                      := 4;
    THRESHOLD_ACTIVATE  : natural                      := 0;
    THRESHOLD_NEGATE    : natural                      := 0;
    C_S_AXI_ADDR_WIDTH  : integer range 32 to 32       := 32;
    C_S_AXI_DATA_WIDTH  : integer range 32 to 256      := 32;
    C_M_AXI_ADDR_WIDTH  : integer range 32 to 32       := 32;
    C_M_AXI_DATA_WIDTH  : integer range 32 to 256      := 64;
    C_M_AXIS_DATA_WIDTH : integer range 32 to 256      := 32;
    C_MAX_BURST_LEN     : Integer range 16 to 256      := 16;
    AMRD_WIDTH          : natural                      := 32;
    ENDWORD_WIDTH       : natural                      := 64);
  
  port(
    M_AXI_ACLK    : in std_logic;
    M_AXIS_ACLK   : in std_logic;
    M_AXI_ARESETN : in std_logic;
    
    ----------------------------------------------------------------------------
    -- AXI4 Master Read Channel
    ----------------------------------------------------------------------------
    -- MMap Read Address Channel                                          -- AXI4
    m_axi_arid    : out std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
    m_axi_arready : in  std_logic;  -- AXI4
    m_axi_arvalid : out std_logic;  -- AXI4
    m_axi_araddr  : out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);  -- AXI4
    m_axi_arlen   : out std_logic_vector(7 downto 0);  -- AXI4
    m_axi_arsize  : out std_logic_vector(2 downto 0);  -- AXI4
    m_axi_arburst : out std_logic_vector(1 downto 0);  -- AXI4
    m_axi_arprot  : out std_logic_vector(2 downto 0);  -- AXI4
    m_axi_arcache : out std_logic_vector(3 downto 0);  -- AXI4
                                                                          -- AXI4
    -- MMap Read Data Channel       
    m_axi_rid     : in  std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);                                      -- AXI4
    m_axi_rready  : out std_logic;  -- AXI4
    m_axi_rvalid  : in  std_logic;  -- AXI4
    m_axi_rdata   : in  std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);  -- AXI4
    m_axi_rresp   : in  std_logic_vector(1 downto 0);  -- AXI4
    m_axi_rlast   : in  std_logic;  -- AXI4



    -----------------------------------------------------------------------------
    -- AXI4 Master Write Channel
    -----------------------------------------------------------------------------
    -- Write Address Channel         
    m_axi_awid    : out std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);    -- AXI4
    m_axi_awready : in  std_logic;      -- AXI4
    m_axi_awvalid : out std_logic;      -- AXI4
    m_axi_awaddr  : out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);  -- AXI4
    m_axi_awlen   : out std_logic_vector(7 downto 0);                   -- AXI4
    m_axi_awsize  : out std_logic_vector(2 downto 0);                   -- AXI4
    m_axi_awburst : out std_logic_vector(1 downto 0);                   -- AXI4
    m_axi_awprot  : out std_logic_vector(2 downto 0);                   -- AXI4
    m_axi_awcache : out std_logic_vector(3 downto 0);                   -- AXI4
                                                                        -- AXI4
    -- Write Data Channel                                                  -- AXI4    
    m_axi_wid     : out std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
    m_axi_wready  : in  std_logic;      -- AXI4
    m_axi_wvalid  : out std_logic;      -- AXI4
    m_axi_wdata   : out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);  -- AXI4
    m_axi_wstrb : out std_logic_vector((C_M_AXI_DATA_WIDTH/8)-1 downto 0);  -- AXI4
    m_axi_wlast  : out std_logic;       -- AXI4
                                        -- AXI4
    -- Write Response Channel    
    m_axi_bid    : in  std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);     -- AXI4
    m_axi_bready : out std_logic;       -- AXI4
    m_axi_bvalid : in  std_logic;       -- AXI4
    m_axi_bresp  : in  std_logic_vector(1 downto 0);                    -- AXI4


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

    -- Axi Stream
    m_axis_tvalid : out std_logic;
    m_axis_tready : in  std_logic;
    m_axis_tdata  : out std_logic_vector(C_M_AXIS_DATA_WIDTH-1 DOWNTO 0));
  
end axi_read_memory_driver;

architecture rtl of axi_read_memory_driver is

  
  component thresholdCtrl
    generic (
      THRESHOLD_ACTIVATE : natural;
      THRESHOLD_NEGATE   : natural);
    port (
      clk           : in  std_logic;
      rst           : in  std_logic;
      rd_en         : in  std_logic;
      wr_en         : in  std_logic;
      rdThresholdEn : out std_logic);
  end component;
  
  component axi_protocol_ctrl
    generic (
      AXI_ID             : std_logic_vector(7 downto 0);
      C_AXI_ID_WIDTH     : natural;
      BURST_SIZE         : natural;
      AMRD_WIDTH         : natural;
      C_M_AXI_ADDR_WIDTH : integer range 32 to 32;
      C_M_AXI_DATA_WIDTH : integer range 32 to 256;
      ENDWORD_WIDTH      : natural);
    port (
      clk                      : in  std_logic;
      rst                      : in  std_logic;
      newReading               : out std_logic;
      memAXIdrv_addr           : in  std_logic_vector (AMRD_WIDTH-1 downto 0);
      memAXIdrv_addr_full_n    : out std_logic;
      memAXIdrv_addr_write     : in  std_logic;
      memAXIdrv_size           : in  std_logic_vector (AMRD_WIDTH-1 downto 0);
      memAXIdrv_size_full_n    : out std_logic;
      memAXIdrv_size_write     : in  std_logic;
      memAXIdrv_endWord        : in  std_logic_vector (ENDWORD_WIDTH-1 downto 0);
      memAXIdrv_endWord_full_n : out std_logic;
      memAXIdrv_endWord_write  : in  std_logic;
      lastWordFlag             : out std_logic;
      endReadType              : out endType;
      prog_full                : in  std_logic;
      m_axi_arready            : in  std_logic;
      m_axi_arvalid            : out std_logic;
      m_axi_araddr             : out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
      m_axi_arlen              : out std_logic_vector(7 downto 0);
      m_axi_arsize             : out std_logic_vector(2 downto 0);
      m_axi_arburst            : out std_logic_vector(1 downto 0);
      m_axi_arprot             : out std_logic_vector(2 downto 0);
      m_axi_arcache            : out std_logic_vector(3 downto 0);
      m_axi_rid                : in  std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
      m_axi_rvalid             : in  std_logic;
      m_axi_rdata              : in  std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
      m_axi_rlast              : in  std_logic);
  end component;
  
  component dataBuffer
    port (
      rst       : IN  STD_LOGIC;
      wr_clk    : IN  STD_LOGIC;
      rd_clk    : IN  STD_LOGIC;
      din       : IN  STD_LOGIC_VECTOR(63 DOWNTO 0);
      wr_en     : IN  STD_LOGIC;
      rd_en     : IN  STD_LOGIC;
      dout      : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      full      : OUT STD_LOGIC;
      empty     : OUT STD_LOGIC;
      valid     : OUT STD_LOGIC;
      prog_full : OUT STD_LOGIC);
  end component;

  component fifo2axis_bridge
    generic (
      ENDWORD_WIDTH       : natural;
      C_M_AXIS_DATA_WIDTH : integer range 32 to 256);
    port (
      clk           : in  std_logic;
      rst           : in  std_logic;
      rd_en         : out std_logic;
      dout          : in  std_logic_vector(C_M_AXIS_DATA_WIDTH-1 DOWNTO 0);
      empty         : in  std_logic;
      full          : in  std_logic;
      valid         : in  std_logic;
      rdThresholdEn : in  std_logic;
      m_axis_tvalid : out std_logic;
      m_axis_tready : in  std_logic;
      m_axis_tdata  : out std_logic_vector(C_M_AXIS_DATA_WIDTH-1 DOWNTO 0));
  end component;

  signal endReadType : endType;
  
  signal newReading : std_logic;
  signal rstFIFO    : std_logic;
  signal rstRD      : std_logic;
  signal rst_n      : std_logic;
  signal rst_i      : std_logic;

  signal din       : std_logic_vector(C_M_AXI_DATA_WIDTH-1 DOWNTO 0);
  signal wr_en     : std_logic;
  signal rd_en     : std_logic;
  signal dout      : std_logic_vector(C_M_AXIS_DATA_WIDTH-1 DOWNTO 0);
  signal full      : std_logic;
  signal empty     : std_logic;
  signal valid     : std_logic;
  signal prog_full : std_logic;
  
  signal lastWordFlag  : std_logic;
  signal rdThresholdEn : std_logic;
  
begin  -- rtl
  
  -----------------------------------------------------------------------------
  -- Write AXI iface (No supported in this driver)
  -----------------------------------------------------------------------------
  m_axi_awvalid <= '0';
  m_axi_awaddr <= (others => '0');
  m_axi_awlen <= (others => '0');
  m_axi_awsize <= (others => '0');
  m_axi_awburst <= (others => '0');
  m_axi_awprot <= (others => '0');
  m_axi_awcache <= (others => '0');
  m_axi_wvalid <= '0';
  m_axi_wdata <= (others => '0');
  m_axi_wstrb <= (others => '0');
  m_axi_wlast <= '0';
  m_axi_bready <= '0';
  m_axi_awid   <= AXI_ID(C_AXI_ID_WIDTH-1 downto 0);
  m_axi_wid    <= AXI_ID(C_AXI_ID_WIDTH-1 downto 0);
  -----------------------------------------------------------------------------
   

  -----------------------------------------------------------------------------
  -- Resets
  -----------------------------------------------------------------------------
  rst_n   <= not M_AXI_ARESETN;
  rst_i   <= rst_n or newReading;
  -----------------------------------------------------------------------------

  -----------------------------------------------------------------------------
  -- Combinational assigment
  -----------------------------------------------------------------------------
  m_axi_arid <= AXI_ID(C_AXI_ID_WIDTH-1 downto 0);
  -----------------------------------------------------------------------------

  
  -----------------------------------------------------------------------------
  -- Threshold
  -----------------------------------------------------------------------------
  thresholdCtrl_1: thresholdCtrl
    generic map (
      THRESHOLD_ACTIVATE => THRESHOLD_ACTIVATE,
      THRESHOLD_NEGATE   => THRESHOLD_NEGATE)
    port map (
      clk           => M_AXI_ACLK,
      rst           => rst_i,
   --   rstFIFO       => rst_i,
      rd_en         => rd_en,
      wr_en         => wr_en,
      rdThresholdEn => rdThresholdEn);
  -----------------------------------------------------------------------------


  axi_protocol_ctrl_1 : axi_protocol_ctrl
    generic map (
      AXI_ID             => AXI_ID,
      C_AXI_ID_WIDTH     => C_AXI_ID_WIDTH,
      BURST_SIZE         => C_MAX_BURST_LEN,
      AMRD_WIDTH         => AMRD_WIDTH,
      C_M_AXI_ADDR_WIDTH => C_M_AXI_ADDR_WIDTH,
      C_M_AXI_DATA_WIDTH => C_M_AXI_DATA_WIDTH,
      ENDWORD_WIDTH      => ENDWORD_WIDTH)
    port map (
      clk                      => M_AXI_ACLK,
      rst                      => rst_n,
      newReading               => newReading,
      memAXIdrv_addr           => memAXIdrv_addr,
      memAXIdrv_addr_full_n    => memAXIdrv_addr_full_n,
      memAXIdrv_addr_write     => memAXIdrv_addr_write,
      memAXIdrv_size           => memAXIdrv_size,
      memAXIdrv_size_full_n    => memAXIdrv_size_full_n,
      memAXIdrv_size_write     => memAXIdrv_size_write,
      memAXIdrv_endWord        => memAXIdrv_endWord,
      memAXIdrv_endWord_full_n => memAXIdrv_endWord_full_n,
      memAXIdrv_endWord_write  => memAXIdrv_endWord_write,
      lastWordFlag             => lastWordFlag,
      endReadType              => endReadType,
      prog_full                => prog_full,
      m_axi_arready            => m_axi_arready,
      m_axi_arvalid            => m_axi_arvalid,
      m_axi_araddr             => m_axi_araddr,
      m_axi_arlen              => m_axi_arlen,
      m_axi_arsize             => m_axi_arsize,
      m_axi_arburst            => m_axi_arburst,
      m_axi_arprot             => m_axi_arprot,
      m_axi_arcache            => m_axi_arcache,
      m_axi_rid                => m_axi_rid,
      m_axi_rvalid             => m_axi_rvalid,
      m_axi_rdata              => m_axi_rdata,
      m_axi_rlast              => m_axi_rlast);


  -----------------------------------------------------------------------------
  -- AXI to FIFO
  -----------------------------------------------------------------------------
  m_axi_rready <= not full;
  wr_en <= '1' when m_axi_rvalid = '1' and m_axi_rid = AXI_ID(C_AXI_ID_WIDTH-1 downto 0) and full = '0' and
           endReadType = etSIZE else
           '1' when m_axi_rvalid = '1' and m_axi_rid = AXI_ID(C_AXI_ID_WIDTH-1 downto 0) and full = '0' and
           endReadType = etENDWORD and lastWordFlag = '0' else
           '0';
  din <= m_axi_rdata(31 downto 0) & m_axi_rdata(63 downto 32);
  -----------------------------------------------------------------------------
  

  dataBuffer_i: dataBuffer
    port map (
      rst       => rst_i,
      wr_clk    => M_AXI_ACLK,
      rd_clk    => M_AXIS_ACLK,
      din       => din,
      wr_en     => wr_en,
      rd_en     => rd_en,
      dout      => dout,
      full      => full,
      empty     => empty,
      valid     => valid,
      prog_full => prog_full);
  
  
  
  fifo2axis_bridge_i : fifo2axis_bridge
    generic map (
      ENDWORD_WIDTH       => ENDWORD_WIDTH,
      C_M_AXIS_DATA_WIDTH => C_M_AXIS_DATA_WIDTH)
    port map (
      clk           => M_AXIS_ACLK,
      rst           => rst_i,
      rd_en         => rd_en,
      dout          => dout,
      empty         => empty,
      full          => full,
      valid         => valid,
      rdThresholdEn => rdThresholdEn,
      m_axis_tvalid => m_axis_tvalid,
      m_axis_tready => m_axis_tready,
      m_axis_tdata  => m_axis_tdata);

end rtl;
