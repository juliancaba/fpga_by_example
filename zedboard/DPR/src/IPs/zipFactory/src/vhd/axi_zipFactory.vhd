library ieee;
use ieee.std_logic_1164.all;

entity axi_zipFactory is
  generic (
    LITTLE_ENDIAN        : boolean                       := True;
    C_BASE_ADDR          : std_logic_vector(31 downto 0) := X"75000000";
    C_HIGH_ADDR          : std_logic_vector(31 downto 0) := X"7500FFFF";
    DEVICE_ID            : bit_vector                    := X"03651093";
    ICAP_DWIDTH          : natural                       := 32;
    ENDWORD_WIDTH        : natural                       := 64;
    C_AXI_ID_WIDTH       : natural                       := 4;
    C_S_AXI_ADDR_WIDTH   : natural                       := 32;
    C_S_AXI_DATA_WIDTH   : natural                       := 32;
    C_S_AXIS_TDATA_WIDTH : natural                       := 32);
  
  port(
    S_AXI_ACLK    : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;

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

    -- Axi Stream
    s_axis_tvalid : in  std_logic;
    s_axis_tready : out std_logic;
    s_axis_tdata  : in  std_logic_vector(C_S_AXIS_TDATA_WIDTH-1 DOWNTO 0));
  
end axi_zipFactory;

architecture rtl of axi_zipFactory is

  component fifo_zipFactory is
    generic (
      LITTLE_ENDIAN : boolean;
      DEVICE_ID     : bit_vector;
      ICAP_DWIDTH   : natural;
      ENDWORD_WIDTH : natural;
      AXIS_DWIDTH   : natural);
    port (
      clk                      : in  std_logic;
      rstn                     : in  std_logic;
      memAXIdrv_addr           : out std_logic_vector(31 downto 0);
      memAXIdrv_addr_full_n    : in  std_logic;
      memAXIdrv_addr_write     : out std_logic;
      memAXIdrv_size           : out std_logic_vector(31 downto 0);
      memAXIdrv_size_full_n    : in  std_logic;
      memAXIdrv_size_write     : out std_logic;
      memAXIdrv_endWord        : out std_logic_vector(ENDWORD_WIDTH-1 downto 0);
      memAXIdrv_endWord_full_n : in  std_logic;
      memAXIdrv_endWord_write  : out std_logic;
      FIFO_IN_data             : in  std_logic_vector(31 DOWNTO 0);
      FIFO_IN_wr               : in  std_logic;
      FIFO_IN_full             : out std_logic;
      FIFO_OUT_rd              : in  std_logic;
      FIFO_OUT_data            : out std_logic_vector(31 DOWNTO 0);
      FIFO_OUT_empty           : out std_logic;
      FIFO_OUT_valid           : out std_logic;
      s_axis_tvalid            : in  std_logic;
      s_axis_tready            : out std_logic;
      s_axis_tdata             : in  std_logic_vector(AXIS_DWIDTH-1 DOWNTO 0));
  end component fifo_zipFactory;

  
  component factory_axi2fifo_bridge is
    generic (
      C_AXI_ID_WIDTH     : natural;
      C_S_AXI_ADDR_WIDTH : natural;
      C_S_AXI_DATA_WIDTH : natural;
      C_BASE_ADDR        : std_logic_vector(31 downto 0);
      C_HIGH_ADDR        : std_logic_vector(31 downto 0));
    port (
      S_AXI_ACLK     : in  STD_LOGIC;
      S_AXI_ARESETN  : in  STD_LOGIC;
      S_AXI_AWID     : in  std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
      S_AXI_AWVALID  : in  std_logic;
      S_AXI_AWREADY  : out std_logic;
      S_AXI_AWADDR   : in  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
      S_AXI_AWLEN    : in  std_logic_vector(7 downto 0);
      S_AXI_AWSIZE   : in  std_logic_vector(2 downto 0);
      S_AXI_AWBURST  : in  std_logic_vector(1 downto 0);
      S_AXI_WID      : in  std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
      S_AXI_WVALID   : in  std_logic;
      S_AXI_WDATA    : in  std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
      S_AXI_WLAST    : in  std_logic;
      S_AXI_WSTRB    : in  std_logic_vector(3 downto 0);
      S_AXI_WREADY   : out std_logic;
      S_AXI_ARID     : in  std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
      S_AXI_ARADDR   : in  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
      S_AXI_ARVALID  : in  std_logic;
      S_AXI_ARREADY  : out std_logic;
      S_AXI_ARLEN    : in  std_logic_vector(7 downto 0);
      S_AXI_ARSIZE   : in  std_logic_vector(2 downto 0);
      S_AXI_ARBURST  : in  std_logic_vector(1 downto 0);
      S_AXI_RID      : out std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
      S_AXI_RREADY   : in  std_logic;
      S_AXI_RDATA    : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
      S_AXI_RLAST    : out std_logic;
      S_AXI_RRESP    : out std_logic_vector(1 downto 0);
      S_AXI_RVALID   : out std_logic;
      S_AXI_BID      : out std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
      S_AXI_BRESP    : out std_logic_vector(1 downto 0);
      S_AXI_BVALID   : out std_logic;
      S_AXI_BREADY   : in  std_logic;
      FIFO_IN_data   : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
      FIFO_IN_wr     : out std_logic;
      FIFO_IN_full   : in  std_logic;
      FIFO_OUT_data  : in  std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
      FIFO_OUT_rd    : out std_logic;
      FIFO_OUT_valid : in  std_logic;
      FIFO_OUT_empty : in  std_logic);
  end component factory_axi2fifo_bridge;
  
  signal din   : std_logic_vector(31 DOWNTO 0);
  signal wr_en : std_logic;
  signal full  : std_logic;
  signal rd_en : std_logic;
  signal dout  : std_logic_vector(31 DOWNTO 0);
  signal empty : std_logic;
  signal valid : std_logic;

begin  -- rtl


  fifo_zipFactory_1: entity work.fifo_zipFactory
    generic map (
      LITTLE_ENDIAN => LITTLE_ENDIAN,
      DEVICE_ID     => DEVICE_ID,
      ICAP_DWIDTH   => ICAP_DWIDTH,
      ENDWORD_WIDTH => ENDWORD_WIDTH,
      AXIS_DWIDTH   => C_S_AXIS_TDATA_WIDTH)
    port map (
      clk                      => S_AXI_ACLK,
      rstn                     => S_AXI_ARESETN,
      memAXIdrv_addr           => memAXIdrv_addr,
      memAXIdrv_addr_full_n    => memAXIdrv_addr_full_n,
      memAXIdrv_addr_write     => memAXIdrv_addr_write,
      memAXIdrv_size           => memAXIdrv_size,
      memAXIdrv_size_full_n    => memAXIdrv_size_full_n,
      memAXIdrv_size_write     => memAXIdrv_size_write,
      memAXIdrv_endWord        => memAXIdrv_endWord,
      memAXIdrv_endWord_full_n => memAXIdrv_endWord_full_n,
      memAXIdrv_endWord_write  => memAXIdrv_endWord_write,
      FIFO_IN_data             => din,
      FIFO_IN_wr               => wr_en,
      FIFO_IN_full             => full,
      FIFO_OUT_rd              => rd_en,
      FIFO_OUT_data            => dout,
      FIFO_OUT_empty           => empty,
      FIFO_OUT_valid           => valid,
      s_axis_tvalid            => s_axis_tvalid,
      s_axis_tready            => s_axis_tready,
      s_axis_tdata             => s_axis_tdata);
  

  factory_axi2fifo_bridge_i: entity work.factory_axi2fifo_bridge
    generic map (
      C_AXI_ID_WIDTH     => C_AXI_ID_WIDTH,
      C_S_AXI_ADDR_WIDTH => C_S_AXI_ADDR_WIDTH,
      C_S_AXI_DATA_WIDTH => C_S_AXI_DATA_WIDTH,
      C_BASE_ADDR        => C_BASE_ADDR,
      C_HIGH_ADDR        => C_HIGH_ADDR)
    port map (
      S_AXI_ACLK     => S_AXI_ACLK,
      S_AXI_ARESETN  => S_AXI_ARESETN,
      S_AXI_AWID     => S_AXI_AWID,
      S_AXI_AWVALID  => S_AXI_AWVALID,
      S_AXI_AWREADY  => S_AXI_AWREADY,
      S_AXI_AWADDR   => S_AXI_AWADDR,
      S_AXI_AWLEN    => S_AXI_AWLEN,
      S_AXI_AWSIZE   => S_AXI_AWSIZE,
      S_AXI_AWBURST  => S_AXI_AWBURST,
      S_AXI_WID      => S_AXI_WID,
      S_AXI_WVALID   => S_AXI_WVALID,
      S_AXI_WDATA    => S_AXI_WDATA,
      S_AXI_WLAST    => S_AXI_WLAST,
      S_AXI_WSTRB    => S_AXI_WSTRB,
      S_AXI_WREADY   => S_AXI_WREADY,
      S_AXI_ARID     => S_AXI_ARID,
      S_AXI_ARADDR   => S_AXI_ARADDR,
      S_AXI_ARVALID  => S_AXI_ARVALID,
      S_AXI_ARREADY  => S_AXI_ARREADY,
      S_AXI_ARLEN    => S_AXI_ARLEN,
      S_AXI_ARSIZE   => S_AXI_ARSIZE,
      S_AXI_ARBURST  => S_AXI_ARBURST,
      S_AXI_RID      => S_AXI_RID,
      S_AXI_RREADY   => S_AXI_RREADY,
      S_AXI_RDATA    => S_AXI_RDATA,
      S_AXI_RLAST    => S_AXI_RLAST,
      S_AXI_RRESP    => S_AXI_RRESP,
      S_AXI_RVALID   => S_AXI_RVALID,
      S_AXI_BID      => S_AXI_BID,
      S_AXI_BRESP    => S_AXI_BRESP,
      S_AXI_BVALID   => S_AXI_BVALID,
      S_AXI_BREADY   => S_AXI_BREADY,
      FIFO_IN_data   => din,
      FIFO_IN_wr     => wr_en,
      FIFO_IN_full   => full,
      FIFO_OUT_data  => dout,
      FIFO_OUT_rd    => rd_en,
      FIFO_OUT_valid => valid,
      FIFO_OUT_empty => empty);

end rtl;
