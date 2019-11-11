-------------------------------------------------------------------------------
-- Title      : Testbench for design "top_dpr"
-- Project    : 
-------------------------------------------------------------------------------
-- File       : manager_tb.vhd
-- Author     : julian  <julian@noyce.uclm.es>
-- Company    : 
-- Created    : 2016-02-26
-- Last update: 2017-03-01
-- Platform   : 
-- Standard   : VHDL'93/02
-------------------------------------------------------------------------------
-- Description: 
-------------------------------------------------------------------------------
-- Copyright (c) 2016 
-------------------------------------------------------------------------------
-- Revisions  :
-- Date        Version  Author  Description
-- 2016-02-24  1.0      julian	Created
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

-------------------------------------------------------------------------------

entity zipFactory_tb is

end entity zipFactory_tb;

-------------------------------------------------------------------------------

architecture test of zipFactory_tb is

  -- component generics
  constant LITTLE_ENDIAN        : boolean                       := True;
  constant C_BASE_ADDR          : std_logic_vector(31 downto 0) := X"40000000";
  constant DEVICE_ID            : bit_vector                    := X"03651093";
  constant ICAP_DWIDTH          : natural                       := 32;
  constant ENDWORD_WIDTH        : natural                       := 64;
  constant C_AXI_ID_WIDTH       : natural                       := 4;
  constant C_S_AXI_ADDR_WIDTH   : natural                       := 32;
  constant C_S_AXI_DATA_WIDTH   : natural                       := 32;
  constant C_S_AXIS_TDATA_WIDTH : natural                       := 32;
  
  -- component ports
  signal memAXIdrv_addr           : std_logic_vector(31 downto 0);
  signal memAXIdrv_addr_full_n    : std_logic;
  signal memAXIdrv_addr_write     : std_logic;
  signal memAXIdrv_size           : std_logic_vector(31 downto 0);
  signal memAXIdrv_size_full_n    : std_logic;
  signal memAXIdrv_size_write     : std_logic;
  signal memAXIdrv_endWord        : std_logic_vector(ENDWORD_WIDTH-1 downto 0);
  signal memAXIdrv_endWord_full_n : std_logic;
  signal memAXIdrv_endWord_write  : std_logic;
  signal S_AXI_AWID               : std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
  signal S_AXI_AWVALID            : std_logic;
  signal S_AXI_AWREADY            : std_logic;
  signal S_AXI_AWADDR             : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
  signal S_AXI_AWLEN              : std_logic_vector(7 downto 0);
  signal S_AXI_AWSIZE             : std_logic_vector(2 downto 0);
  signal S_AXI_AWBURST            : std_logic_vector(1 downto 0);
  signal S_AXI_WID                : std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
  signal S_AXI_WVALID             : std_logic;
  signal S_AXI_WDATA              : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
  signal S_AXI_WLAST              : std_logic;
  signal S_AXI_WSTRB              : std_logic_vector(3 downto 0);
  signal S_AXI_WREADY             : std_logic;
  signal S_AXI_ARID               : std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
  signal S_AXI_ARADDR             : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
  signal S_AXI_ARVALID            : std_logic;
  signal S_AXI_ARREADY            : std_logic;
  signal S_AXI_ARLEN              : std_logic_vector(7 downto 0);
  signal S_AXI_ARSIZE             : std_logic_vector(2 downto 0);
  signal S_AXI_ARBURST            : std_logic_vector(1 downto 0);
  signal S_AXI_RID                : std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
  signal S_AXI_RREADY             : std_logic;
  signal S_AXI_RDATA              : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
  signal S_AXI_RLAST              : std_logic;
  signal S_AXI_RRESP              : std_logic_vector(1 downto 0);
  signal S_AXI_RVALID             : std_logic;
  signal S_AXI_BID                : std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
  signal S_AXI_BRESP              : std_logic_vector(1 downto 0);
  signal S_AXI_BVALID             : std_logic;
  signal S_AXI_BREADY             : std_logic;
  signal s_axis_tvalid            : std_logic;
  signal s_axis_tready            : std_logic;
  signal s_axis_tdata             : std_logic_vector(C_S_AXIS_TDATA_WIDTH-1 DOWNTO 0);
  
  -- clock
  signal Clk : std_logic := '1';
  signal rst : std_logic := '1';

begin  -- architecture test

  DUT: entity work.axi_zipFactory
    generic map (
      LITTLE_ENDIAN        => LITTLE_ENDIAN,
      C_BASE_ADDR          => C_BASE_ADDR,
      DEVICE_ID            => DEVICE_ID,
      ICAP_DWIDTH          => ICAP_DWIDTH,
      ENDWORD_WIDTH        => ENDWORD_WIDTH,
      C_AXI_ID_WIDTH       => C_AXI_ID_WIDTH,
      C_S_AXI_ADDR_WIDTH   => C_S_AXI_ADDR_WIDTH,
      C_S_AXI_DATA_WIDTH   => C_S_AXI_DATA_WIDTH,
      C_S_AXIS_TDATA_WIDTH => C_S_AXIS_TDATA_WIDTH)
    port map (
      S_AXI_ACLK               => CLK,
      S_AXI_ARESETN            => rst,
      memAXIdrv_addr           => memAXIdrv_addr,
      memAXIdrv_addr_full_n    => memAXIdrv_addr_full_n,
      memAXIdrv_addr_write     => memAXIdrv_addr_write,
      memAXIdrv_size           => memAXIdrv_size,
      memAXIdrv_size_full_n    => memAXIdrv_size_full_n,
      memAXIdrv_size_write     => memAXIdrv_size_write,
      memAXIdrv_endWord        => memAXIdrv_endWord,
      memAXIdrv_endWord_full_n => memAXIdrv_endWord_full_n,
      memAXIdrv_endWord_write  => memAXIdrv_endWord_write,
      S_AXI_AWID               => S_AXI_AWID,
      S_AXI_AWVALID            => S_AXI_AWVALID,
      S_AXI_AWREADY            => S_AXI_AWREADY,
      S_AXI_AWADDR             => S_AXI_AWADDR,
      S_AXI_AWLEN              => S_AXI_AWLEN,
      S_AXI_AWSIZE             => S_AXI_AWSIZE,
      S_AXI_AWBURST            => S_AXI_AWBURST,
      S_AXI_WID                => S_AXI_WID,
      S_AXI_WVALID             => S_AXI_WVALID,
      S_AXI_WDATA              => S_AXI_WDATA,
      S_AXI_WLAST              => S_AXI_WLAST,
      S_AXI_WSTRB              => S_AXI_WSTRB,
      S_AXI_WREADY             => S_AXI_WREADY,
      S_AXI_ARID               => S_AXI_ARID,
      S_AXI_ARADDR             => S_AXI_ARADDR,
      S_AXI_ARVALID            => S_AXI_ARVALID,
      S_AXI_ARREADY            => S_AXI_ARREADY,
      S_AXI_ARLEN              => S_AXI_ARLEN,
      S_AXI_ARSIZE             => S_AXI_ARSIZE,
      S_AXI_ARBURST            => S_AXI_ARBURST,
      S_AXI_RID                => S_AXI_RID,
      S_AXI_RREADY             => S_AXI_RREADY,
      S_AXI_RDATA              => S_AXI_RDATA,
      S_AXI_RLAST              => S_AXI_RLAST,
      S_AXI_RRESP              => S_AXI_RRESP,
      S_AXI_RVALID             => S_AXI_RVALID,
      S_AXI_BID                => S_AXI_BID,
      S_AXI_BRESP              => S_AXI_BRESP,
      S_AXI_BVALID             => S_AXI_BVALID,
      S_AXI_BREADY             => S_AXI_BREADY,
      s_axis_tvalid            => s_axis_tvalid,
      s_axis_tready            => s_axis_tready,
      s_axis_tdata             => s_axis_tdata);
  
  -- clock generation
  Clk <= not Clk after 10 ns;
  rst <= '0', '1' after 20 ns;

  -- waveform generation
  WaveGen_Proc: process
  begin 
    -- insert signal assignments here
    S_AXI_AWID    <= (others => '0');
    S_AXI_AWVALID <= '0';
    S_AXI_AWADDR  <= (others => '0');
    S_AXI_AWLEN   <= (others => '0');
    S_AXI_AWSIZE  <= (others => '0');
    S_AXI_AWBURST <= (others => '0');
    S_AXI_WID     <= (others => '0');
    S_AXI_WVALID  <= '0';
    S_AXI_WDATA   <= (others => '0');
    S_AXI_WLAST   <= '0';
    S_AXI_WSTRB   <= (others => '0');
    S_AXI_ARID    <= (others => '0');
    S_AXI_ARADDR  <= (others => '0');
    S_AXI_ARVALID <= '0';
    S_AXI_ARLEN   <= (others => '0');
    S_AXI_ARSIZE  <= (others => '0');
    S_AXI_ARBURST <= (others => '0');
    S_AXI_RREADY  <= '0';
    S_AXI_BREADY  <= '1';

    wait for 50 ns;
    wait until Clk = '1' and Clk'event;

    if S_AXI_AWREADY = '0' then
      wait until S_AXI_AWREADY = '1';
    end if;
    
    S_AXI_AWID    <= X"1";
    S_AXI_AWVALID <= '1';
    S_AXI_AWADDR  <= X"40000000";
    S_AXI_AWLEN   <= (others => '0');
    S_AXI_AWSIZE  <= (others => '0');
    S_AXI_AWBURST <= (others => '0');

    wait until Clk = '1' and Clk'event;
    
    S_AXI_AWID    <= (others => '0');
    S_AXI_AWVALID <= '0';
    S_AXI_AWADDR  <= (others => '0');
    S_AXI_AWLEN   <= (others => '0');
    S_AXI_AWSIZE  <= (others => '0');
    S_AXI_AWBURST <= (others => '0');

    if S_AXI_WREADY = '0' then
      wait until S_AXI_WREADY = '1';
    end if;
    
    S_AXI_WID     <= X"1";
    S_AXI_WVALID  <= '1';
    S_AXI_WDATA   <= X"00020104";
    S_AXI_WLAST   <= '1';
    S_AXI_WSTRB   <= (others => '0');
    
    wait until Clk = '1' and Clk'event;

    S_AXI_WID     <= (others => '0');
    S_AXI_WVALID  <= '0';
    S_AXI_WDATA   <= (others => '0');
    S_AXI_WLAST   <= '0';
    S_AXI_WSTRB   <= (others => '0');

    if S_AXI_AWREADY = '0' then
      wait until S_AXI_AWREADY = '1';
    end if;
    
    S_AXI_AWID    <= X"1";
    S_AXI_AWVALID <= '1';
    S_AXI_AWADDR  <= X"40000000";
    S_AXI_AWLEN   <= (others => '0');
    S_AXI_AWSIZE  <= (others => '0');
    S_AXI_AWBURST <= (others => '0');

    wait until Clk = '1' and Clk'event;
    
    S_AXI_AWID    <= (others => '0');
    S_AXI_AWVALID <= '0';
    S_AXI_AWADDR  <= (others => '0');
    S_AXI_AWLEN   <= (others => '0');
    S_AXI_AWSIZE  <= (others => '0');
    S_AXI_AWBURST <= (others => '0');

    
    if S_AXI_WREADY = '0' then
      wait until S_AXI_WREADY = '1';
    end if;
    
    S_AXI_WID     <= X"1";
    S_AXI_WVALID  <= '1';
    S_AXI_WDATA   <= X"CA110002";
    S_AXI_WLAST   <= '1';
    S_AXI_WSTRB   <= (others => '0');
    
    wait until Clk = '1' and Clk'event;

    S_AXI_WID     <= (others => '0');
    S_AXI_WVALID  <= '0';
    S_AXI_WDATA   <= (others => '0');
    S_AXI_WLAST   <= '0';
    S_AXI_WSTRB   <= (others => '0');

    if S_AXI_AWREADY = '0' then
      wait until S_AXI_AWREADY = '1';
    end if;
    
    S_AXI_AWID    <= X"1";
    S_AXI_AWVALID <= '1';
    S_AXI_AWADDR  <= X"40000000";
    S_AXI_AWLEN   <= (others => '0');
    S_AXI_AWSIZE  <= (others => '0');
    S_AXI_AWBURST <= (others => '0');

    wait until Clk = '1' and Clk'event;
    
    S_AXI_AWID    <= (others => '0');
    S_AXI_AWVALID <= '0';
    S_AXI_AWADDR  <= (others => '0');
    S_AXI_AWLEN   <= (others => '0');
    S_AXI_AWSIZE  <= (others => '0');
    S_AXI_AWBURST <= (others => '0');

    
    if S_AXI_WREADY = '0' then
      wait until S_AXI_WREADY = '1';
    end if;
    
    S_AXI_WID     <= X"1";
    S_AXI_WVALID  <= '1';
    S_AXI_WDATA   <= X"ADD51234";
    S_AXI_WLAST   <= '1';
    S_AXI_WSTRB   <= (others => '0');
    
    wait until Clk = '1' and Clk'event;

    S_AXI_WID     <= (others => '0');
    S_AXI_WVALID  <= '0';
    S_AXI_WDATA   <= (others => '0');
    S_AXI_WLAST   <= '0';
    S_AXI_WSTRB   <= (others => '0');


    if S_AXI_AWREADY = '0' then
      wait until S_AXI_AWREADY = '1';
    end if;
    
    S_AXI_AWID    <= X"1";
    S_AXI_AWVALID <= '1';
    S_AXI_AWADDR  <= X"40000000";
    S_AXI_AWLEN   <= (others => '0');
    S_AXI_AWSIZE  <= (others => '0');
    S_AXI_AWBURST <= (others => '0');

    wait until Clk = '1' and Clk'event;
    
    S_AXI_AWID    <= (others => '0');
    S_AXI_AWVALID <= '0';
    S_AXI_AWADDR  <= (others => '0');
    S_AXI_AWLEN   <= (others => '0');
    S_AXI_AWSIZE  <= (others => '0');
    S_AXI_AWBURST <= (others => '0');

    
    if S_AXI_WREADY = '0' then
      wait until S_AXI_WREADY = '1';
    end if;
    
    S_AXI_WID     <= X"1";
    S_AXI_WVALID  <= '1';
    S_AXI_WDATA   <= X"00010000";
    S_AXI_WLAST   <= '1';
    S_AXI_WSTRB   <= (others => '0');
    
    wait until Clk = '1' and Clk'event;

    S_AXI_WID     <= (others => '0');
    S_AXI_WVALID  <= '0';
    S_AXI_WDATA   <= (others => '0');
    S_AXI_WLAST   <= '0';
    S_AXI_WSTRB   <= (others => '0');





    
    wait for 50 ns;
    wait until Clk = '1' and Clk'event;

    
    if S_AXI_ARREADY = '0' then
      wait until S_AXI_ARREADY = '1';
    end if;
    
    S_AXI_ARID    <= X"1";
    S_AXI_ARADDR  <= X"40000000";
    S_AXI_ARVALID <= '1';
    S_AXI_ARLEN   <= (others => '0');
    S_AXI_ARSIZE  <= (others => '0');
    S_AXI_ARBURST <= (others => '0');

    wait until Clk = '1' and Clk'event;
    
    S_AXI_ARID    <= (others => '0');
    S_AXI_ARADDR  <= (others => '0');
    S_AXI_ARVALID <= '0';
    S_AXI_ARLEN   <= (others => '0');
    S_AXI_ARSIZE  <= (others => '0');
    S_AXI_ARBURST <= (others => '0');

    S_AXI_RREADY  <= '1';
    wait until S_AXI_RVALID = '1';
    wait until Clk = '1' and Clk'event;
    S_AXI_RREADY  <= '0';

    

    
    ---------------------------------------------------------------------------
    wait for 500 ns;
    wait until Clk = '1' and Clk'event;
    ---------------------------------------------------------------------------


    if S_AXI_AWREADY = '0' then
      wait until S_AXI_AWREADY = '1';
    end if;
    
    S_AXI_AWID    <= X"1";
    S_AXI_AWVALID <= '1';
    S_AXI_AWADDR  <= X"40000000";
    S_AXI_AWLEN   <= (others => '0');
    S_AXI_AWSIZE  <= (others => '0');
    S_AXI_AWBURST <= (others => '0');

    wait until Clk = '1' and Clk'event;
    
    S_AXI_AWID    <= (others => '0');
    S_AXI_AWVALID <= '0';
    S_AXI_AWADDR  <= (others => '0');
    S_AXI_AWLEN   <= (others => '0');
    S_AXI_AWSIZE  <= (others => '0');
    S_AXI_AWBURST <= (others => '0');

    
    if S_AXI_WREADY = '0' then
      wait until S_AXI_WREADY = '1';
    end if;
    
    S_AXI_WID     <= X"1";
    S_AXI_WVALID  <= '1';
    S_AXI_WDATA   <= X"00020200";
    S_AXI_WLAST   <= '1';
    S_AXI_WSTRB   <= (others => '0');
    
    wait until Clk = '1' and Clk'event;

    S_AXI_WID     <= (others => '0');
    S_AXI_WVALID  <= '0';
    S_AXI_WDATA   <= (others => '0');
    S_AXI_WLAST   <= '0';
    S_AXI_WSTRB   <= (others => '0');


    if S_AXI_AWREADY = '0' then
      wait until S_AXI_AWREADY = '1';
    end if;
    
    S_AXI_AWID    <= X"1";
    S_AXI_AWVALID <= '1';
    S_AXI_AWADDR  <= X"40000000";
    S_AXI_AWLEN   <= (others => '0');
    S_AXI_AWSIZE  <= (others => '0');
    S_AXI_AWBURST <= (others => '0');

    wait until Clk = '1' and Clk'event;
    
    S_AXI_AWID    <= (others => '0');
    S_AXI_AWVALID <= '0';
    S_AXI_AWADDR  <= (others => '0');
    S_AXI_AWLEN   <= (others => '0');
    S_AXI_AWSIZE  <= (others => '0');
    S_AXI_AWBURST <= (others => '0');

    
    if S_AXI_WREADY = '0' then
      wait until S_AXI_WREADY = '1';
    end if;
    
    S_AXI_WID     <= X"1";
    S_AXI_WVALID  <= '1';
    S_AXI_WDATA   <= X"CA110000";
    S_AXI_WLAST   <= '1';
    S_AXI_WSTRB   <= (others => '0');
    
    wait until Clk = '1' and Clk'event;

    S_AXI_WID     <= (others => '0');
    S_AXI_WVALID  <= '0';
    S_AXI_WDATA   <= (others => '0');
    S_AXI_WLAST   <= '0';
    S_AXI_WSTRB   <= (others => '0');

    
    wait for 50 ns;
    wait until Clk = '1' and Clk'event;

    
    if S_AXI_ARREADY = '0' then
      wait until S_AXI_ARREADY = '1';
    end if;
    
    S_AXI_ARID    <= X"1";
    S_AXI_ARADDR  <= X"40000000";
    S_AXI_ARVALID <= '1';
    S_AXI_ARLEN   <= (others => '0');
    S_AXI_ARSIZE  <= (others => '0');
    S_AXI_ARBURST <= (others => '0');

    wait until Clk = '1' and Clk'event;
    
    S_AXI_ARID    <= (others => '0');
    S_AXI_ARADDR  <= (others => '0');
    S_AXI_ARVALID <= '0';
    S_AXI_ARLEN   <= (others => '0');
    S_AXI_ARSIZE  <= (others => '0');
    S_AXI_ARBURST <= (others => '0');

    S_AXI_RREADY  <= '1';
    wait until S_AXI_RVALID = '1';
    wait until Clk = '1' and Clk'event;
    S_AXI_RREADY  <= '0';


    
    if S_AXI_ARREADY = '0' then
      wait until S_AXI_ARREADY = '1';
    end if;
    
    S_AXI_ARID    <= X"1";
    S_AXI_ARADDR  <= X"40000000";
    S_AXI_ARVALID <= '1';
    S_AXI_ARLEN   <= (others => '0');
    S_AXI_ARSIZE  <= (others => '0');
    S_AXI_ARBURST <= (others => '0');

    wait until Clk = '1' and Clk'event;
    
    S_AXI_ARID    <= (others => '0');
    S_AXI_ARADDR  <= (others => '0');
    S_AXI_ARVALID <= '0';
    S_AXI_ARLEN   <= (others => '0');
    S_AXI_ARSIZE  <= (others => '0');
    S_AXI_ARBURST <= (others => '0');

    S_AXI_RREADY  <= '1';
    wait until S_AXI_RVALID = '1';
    wait until Clk = '1' and Clk'event;
    S_AXI_RREADY  <= '0';


    
    if S_AXI_ARREADY = '0' then
      wait until S_AXI_ARREADY = '1';
    end if;
    
    S_AXI_ARID    <= X"1";
    S_AXI_ARADDR  <= X"40000000";
    S_AXI_ARVALID <= '1';
    S_AXI_ARLEN   <= (others => '0');
    S_AXI_ARSIZE  <= (others => '0');
    S_AXI_ARBURST <= (others => '0');

    wait until Clk = '1' and Clk'event;
    
    S_AXI_ARID    <= (others => '0');
    S_AXI_ARADDR  <= (others => '0');
    S_AXI_ARVALID <= '0';
    S_AXI_ARLEN   <= (others => '0');
    S_AXI_ARSIZE  <= (others => '0');
    S_AXI_ARBURST <= (others => '0');

    S_AXI_RREADY  <= '1';
    wait until S_AXI_RVALID = '1';
    wait until Clk = '1' and Clk'event;
    S_AXI_RREADY  <= '0';



    
    ---------------------------------------------------------------------------
    wait for 23000 ns;
    wait until Clk = '1' and Clk'event;
    ---------------------------------------------------------------------------


    if S_AXI_AWREADY = '0' then
      wait until S_AXI_AWREADY = '1';
    end if;
    
    S_AXI_AWID    <= X"1";
    S_AXI_AWVALID <= '1';
    S_AXI_AWADDR  <= X"40000000";
    S_AXI_AWLEN   <= (others => '0');
    S_AXI_AWSIZE  <= (others => '0');
    S_AXI_AWBURST <= (others => '0');

    wait until Clk = '1' and Clk'event;
    
    S_AXI_AWID    <= (others => '0');
    S_AXI_AWVALID <= '0';
    S_AXI_AWADDR  <= (others => '0');
    S_AXI_AWLEN   <= (others => '0');
    S_AXI_AWSIZE  <= (others => '0');
    S_AXI_AWBURST <= (others => '0');

    
    if S_AXI_WREADY = '0' then
      wait until S_AXI_WREADY = '1';
    end if;
    
    S_AXI_WID     <= X"1";
    S_AXI_WVALID  <= '1';
    S_AXI_WDATA   <= X"00020200";
    S_AXI_WLAST   <= '1';
    S_AXI_WSTRB   <= (others => '0');
    
    wait until Clk = '1' and Clk'event;

    S_AXI_WID     <= (others => '0');
    S_AXI_WVALID  <= '0';
    S_AXI_WDATA   <= (others => '0');
    S_AXI_WLAST   <= '0';
    S_AXI_WSTRB   <= (others => '0');


    if S_AXI_AWREADY = '0' then
      wait until S_AXI_AWREADY = '1';
    end if;
    
    S_AXI_AWID    <= X"1";
    S_AXI_AWVALID <= '1';
    S_AXI_AWADDR  <= X"40000000";
    S_AXI_AWLEN   <= (others => '0');
    S_AXI_AWSIZE  <= (others => '0');
    S_AXI_AWBURST <= (others => '0');

    wait until Clk = '1' and Clk'event;
    
    S_AXI_AWID    <= (others => '0');
    S_AXI_AWVALID <= '0';
    S_AXI_AWADDR  <= (others => '0');
    S_AXI_AWLEN   <= (others => '0');
    S_AXI_AWSIZE  <= (others => '0');
    S_AXI_AWBURST <= (others => '0');

    
    if S_AXI_WREADY = '0' then
      wait until S_AXI_WREADY = '1';
    end if;
    
    S_AXI_WID     <= X"1";
    S_AXI_WVALID  <= '1';
    S_AXI_WDATA   <= X"CA110000";
    S_AXI_WLAST   <= '1';
    S_AXI_WSTRB   <= (others => '0');
    
    wait until Clk = '1' and Clk'event;

    S_AXI_WID     <= (others => '0');
    S_AXI_WVALID  <= '0';
    S_AXI_WDATA   <= (others => '0');
    S_AXI_WLAST   <= '0';
    S_AXI_WSTRB   <= (others => '0');

    
    wait for 50 ns;
    wait until Clk = '1' and Clk'event;

    
    if S_AXI_ARREADY = '0' then
      wait until S_AXI_ARREADY = '1';
    end if;
    
    S_AXI_ARID    <= X"1";
    S_AXI_ARADDR  <= X"40000000";
    S_AXI_ARVALID <= '1';
    S_AXI_ARLEN   <= (others => '0');
    S_AXI_ARSIZE  <= (others => '0');
    S_AXI_ARBURST <= (others => '0');

    wait until Clk = '1' and Clk'event;
    
    S_AXI_ARID    <= (others => '0');
    S_AXI_ARADDR  <= (others => '0');
    S_AXI_ARVALID <= '0';
    S_AXI_ARLEN   <= (others => '0');
    S_AXI_ARSIZE  <= (others => '0');
    S_AXI_ARBURST <= (others => '0');

    S_AXI_RREADY  <= '1';
    wait until S_AXI_RVALID = '1';
    wait until Clk = '1' and Clk'event;
    S_AXI_RREADY  <= '0';


    
    if S_AXI_ARREADY = '0' then
      wait until S_AXI_ARREADY = '1';
    end if;
    
    S_AXI_ARID    <= X"1";
    S_AXI_ARADDR  <= X"40000000";
    S_AXI_ARVALID <= '1';
    S_AXI_ARLEN   <= (others => '0');
    S_AXI_ARSIZE  <= (others => '0');
    S_AXI_ARBURST <= (others => '0');

    wait until Clk = '1' and Clk'event;
    
    S_AXI_ARID    <= (others => '0');
    S_AXI_ARADDR  <= (others => '0');
    S_AXI_ARVALID <= '0';
    S_AXI_ARLEN   <= (others => '0');
    S_AXI_ARSIZE  <= (others => '0');
    S_AXI_ARBURST <= (others => '0');

    S_AXI_RREADY  <= '1';
    wait until S_AXI_RVALID = '1';
    wait until Clk = '1' and Clk'event;
    S_AXI_RREADY  <= '0';


    
    if S_AXI_ARREADY = '0' then
      wait until S_AXI_ARREADY = '1';
    end if;
    
    S_AXI_ARID    <= X"1";
    S_AXI_ARADDR  <= X"40000000";
    S_AXI_ARVALID <= '1';
    S_AXI_ARLEN   <= (others => '0');
    S_AXI_ARSIZE  <= (others => '0');
    S_AXI_ARBURST <= (others => '0');

    wait until Clk = '1' and Clk'event;
    
    S_AXI_ARID    <= (others => '0');
    S_AXI_ARADDR  <= (others => '0');
    S_AXI_ARVALID <= '0';
    S_AXI_ARLEN   <= (others => '0');
    S_AXI_ARSIZE  <= (others => '0');
    S_AXI_ARBURST <= (others => '0');

    S_AXI_RREADY  <= '1';
    wait until S_AXI_RVALID = '1';
    wait until Clk = '1' and Clk'event;
    S_AXI_RREADY  <= '0';
    
    wait for 25000 ns;
    wait until Clk = '1' and Clk'event;

  end process WaveGen_Proc;

  WaveGen_Proc2: process
  begin
    memAXIdrv_addr_full_n    <= '1';
    memAXIdrv_size_full_n    <= '1';
    memAXIdrv_endWord_full_n <= '1';
    
    wait until memAXIdrv_addr_write = '1';
    wait until Clk = '1' and Clk'event;
    memAXIdrv_addr_full_n    <= '0';
    memAXIdrv_size_full_n    <= '0';
    memAXIdrv_endWord_full_n <= '0';

    wait for 200 ns;
    wait until Clk = '1' and Clk'event;

  end process WaveGen_Proc2;


  
  WaveGen_Proc3: process
    variable cnt : natural := 0;
  begin    
    s_axis_tvalid            <= '0';
    s_axis_tdata             <= (others => '0');
    
    wait for 50 ns;
    wait until Clk = '1' and Clk'event;
    
    wait until memAXIdrv_addr_write = '1';
    
    wait for 500 ns;
    wait until Clk = '1' and Clk'event;

    if s_axis_tready = '0' then
      wait until s_axis_tready = '1';
    end if;

      s_axis_tvalid <= '1';
    s_axis_tdata <= X"FFFFFFFF";
    wait until clk'event and clk = '1';
    if s_axis_tready = '0' then
      wait until s_axis_tready = '1';
    end if;
    s_axis_tvalid <= '1';
    s_axis_tdata <= X"000000BB";
    wait until clk'event and clk = '1';
    if s_axis_tready = '0' then
      wait until s_axis_tready = '1';
    end if;
    s_axis_tvalid <= '1';
    s_axis_tdata <= X"11220044";
    wait until clk'event and clk = '1';
    if s_axis_tready = '0' then
      wait until s_axis_tready = '1';
    end if;
    s_axis_tvalid <= '1';
    s_axis_tdata <= X"FFFFFFFF";
    wait until clk'event and clk = '1';
    if s_axis_tready = '0' then
      wait until s_axis_tready = '1';
    end if;
    s_axis_tvalid <= '1';
    s_axis_tdata <= X"AA995566";

    cnt := 0;
    for it in 0 to 1000 loop
      wait until clk'event and clk = '1';
      if s_axis_tready = '0' then
        wait until s_axis_tready = '1';
      end if;
      s_axis_tvalid <= '1';
      s_axis_tdata <= conv_std_logic_vector(it, 32);
      cnt := cnt + 1;
    end loop;  -- cnt
    
    wait until clk'event and clk = '1';
    if s_axis_tready = '0' then
      wait until s_axis_tready = '1';
    end if;
    s_axis_tvalid <= '1';
    s_axis_tdata <= X"30008001";
    wait until clk'event and clk = '1';
    if s_axis_tready = '0' then
      wait until s_axis_tready = '1';
    end if;
    s_axis_tvalid <= '1';
    s_axis_tdata <= X"0000000D";
    wait until clk'event and clk = '1';
    if s_axis_tready = '0' then
      wait until s_axis_tready = '1';
    end if;
    s_axis_tvalid <= '1';
    s_axis_tdata <= X"01800030";
    wait until clk'event and clk = '1';
    if s_axis_tready = '0' then
      wait until s_axis_tready = '1';
    end if;
    s_axis_tvalid <= '1';
    s_axis_tdata <= X"0D000000";

    wait until clk'event and clk = '1';
    
    s_axis_tvalid <= '0';
    s_axis_tdata <= (others => '0');    
    
    --wait;
  end process WaveGen_Proc3;
    
  

end architecture test;

-------------------------------------------------------------------------------

configuration zipFactory_tb_test_cfg of zipFactory_tb is
  for test
  end for;
end zipFactory_tb_test_cfg;

-------------------------------------------------------------------------------
