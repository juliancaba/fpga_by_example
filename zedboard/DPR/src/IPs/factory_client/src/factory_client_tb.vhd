-------------------------------------------------------------------------------
-- Title      : Testbench for design "factory_client"
-- Project    : 
-------------------------------------------------------------------------------
-- File       : factory_client_tb.vhd
-- Author     : julian  <julian@ichbiach>
-- Company    : 
-- Created    : 2015-04-28
-- Last update: 2017-02-27
-- Platform   : 
-- Standard   : VHDL'87
-------------------------------------------------------------------------------
-- Description: 
-------------------------------------------------------------------------------
-- Copyright (c) 2015 
-------------------------------------------------------------------------------
-- Revisions  :
-- Date        Version  Author  Description
-- 2015-04-28  1.0      julian	Created
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

-------------------------------------------------------------------------------

entity factory_client_tb is

end factory_client_tb;

-------------------------------------------------------------------------------

architecture test of factory_client_tb is

  component factory_client
    generic (
      ADDR_BITSTREAM_1 : std_logic_vector(31 downto 0);
      ADDR_BITSTREAM_2 : std_logic_vector(31 downto 0));
    port (
      clk           : in  std_logic;
      rstn          : in  std_logic;
      bUp           : in  std_logic;
      bDown         : in  std_logic;
      FIFO_OUT_data : out std_logic_vector(31 DOWNTO 0);
      FIFO_OUT_wr   : out std_logic;
      FIFO_OUT_full : in  std_logic;
      FIFO_IN_rd    : out std_logic;
      FIFO_IN_data  : in  std_logic_vector(31 DOWNTO 0);
      FIFO_IN_empty : in  std_logic;
      FIFO_IN_valid : in  std_logic);
  end component;

  -- component generics
  constant ADDR_BITSTREAM_1 : std_logic_vector(31 downto 0) := X"10000000";
  constant ADDR_BITSTREAM_2 : std_logic_vector(31 downto 0) := X"11000000";

  -- component ports
  signal rstn          : std_logic;
  signal bUp           : std_logic;
  signal bDown         : std_logic;
  signal FIFO_OUT_data : std_logic_vector(31 DOWNTO 0);
  signal FIFO_OUT_wr   : std_logic;
  signal FIFO_OUT_full : std_logic;
  signal FIFO_IN_rd    : std_logic;
  signal FIFO_IN_data  : std_logic_vector(31 DOWNTO 0);
  signal FIFO_IN_empty : std_logic;
  signal FIFO_IN_valid : std_logic;

  -- clock
  signal Clk : std_logic := '1';

begin  -- test

  -- component instantiation
  DUT: factory_client
    generic map (
      ADDR_BITSTREAM_1 => ADDR_BITSTREAM_1,
      ADDR_BITSTREAM_2 => ADDR_BITSTREAM_2)
    port map (
      clk           => clk,
      rstn          => rstn,
      bUp           => bUp,
      bDown         => bDown,
      FIFO_OUT_data => FIFO_OUT_data,
      FIFO_OUT_wr   => FIFO_OUT_wr,
      FIFO_OUT_full => FIFO_OUT_full,
      FIFO_IN_rd    => FIFO_IN_rd,
      FIFO_IN_data  => FIFO_IN_data,
      FIFO_IN_empty => FIFO_IN_empty,
      FIFO_IN_valid => FIFO_IN_valid);

  -- clock generation
  Clk <= not Clk after 10 ns;
  rstn <= '0', '1' after 20 ns;

  -- waveform generation
  WaveGen_Proc: process
  begin
    -- insert signal assignments here
    bUp           <= '0';
    bDown         <= '0';
    FIFO_OUT_full <= '0';
    FIFO_IN_data  <= (others => '0');
    FIFO_IN_empty <= '1';
    FIFO_IN_valid <= '0';

    wait for 50 ns;
    wait until clk'event and clk = '1';

    assert false report "[INIT] Factory client" severity note;

    bUp <= '1';
    wait until clk'event and clk = '1';
    bUp <= '0';

    if FIFO_OUT_wr = '0' then
      wait until FIFO_OUT_wr = '1';
    end if;
    assert FIFO_OUT_data = X"00020101" report "[FAIL] HEAD 1" severity error;
    wait until clk'event and clk = '1';
    if FIFO_OUT_wr = '0' then
      wait until FIFO_OUT_wr = '1';
    end if;
    wait until clk = '0';
    assert FIFO_OUT_data = X"00020002" report "[FAIL] HEAD 2" severity error;
    wait until clk'event and clk = '1';
    if FIFO_OUT_wr = '0' then
      wait until FIFO_OUT_wr = '1';
    end if;
    wait until clk = '0';
    assert FIFO_OUT_data = X"10000000" report "[FAIL] Addr" severity error;
    wait until clk'event and clk = '1';
    if FIFO_OUT_wr = '0' then
      wait until FIFO_OUT_wr = '1';
    end if;
    wait until clk = '0';
    assert FIFO_OUT_data = X"00010000" report "[FAIL] Area" severity error;
    
    wait for 500 ns;
    wait until clk'event and clk = '1';

    FIFO_IN_data  <= X"00020001";
    FIFO_IN_empty <= '0';
    FIFO_IN_valid <= '1';
    if FIFO_IN_rd = '0' then
      wait until FIFO_IN_rd = '1';
    end if;
    wait until clk'event and clk = '1';
    FIFO_IN_data  <= (others => '0');
    FIFO_IN_empty <= '1';
    FIFO_IN_valid <= '0';
    

    if FIFO_OUT_wr = '0' then
      wait until FIFO_OUT_wr = '1';
    end if;
    assert FIFO_OUT_data = X"00020201" report "[FAIL] HEAD 1" severity error;
    wait until clk'event and clk = '1';
    if FIFO_OUT_wr = '0' then
      wait until FIFO_OUT_wr = '1';
    end if;
    wait until clk = '0';
    assert FIFO_OUT_data = X"00020000" report "[FAIL] HEAD 2" severity error;
    wait until clk'event and clk = '1';
    

    FIFO_IN_data  <= X"00020004";
    FIFO_IN_empty <= '0';
    FIFO_IN_valid <= '1';
    if FIFO_IN_rd = '0' then
      wait until FIFO_IN_rd = '1';
    end if;
    wait until clk'event and clk = '1';
    FIFO_IN_data  <= X"00020001";
    FIFO_IN_empty <= '0';
    FIFO_IN_valid <= '1';
    if FIFO_IN_rd = '0' then
      wait until FIFO_IN_rd = '1';
    end if;
    wait until clk'event and clk = '1';
    FIFO_IN_data  <= X"00000001";
    FIFO_IN_empty <= '0';
    FIFO_IN_valid <= '1';
    if FIFO_IN_rd = '0' then
      wait until FIFO_IN_rd = '1';
    end if;
    wait until clk'event and clk = '1';
    FIFO_IN_data  <= (others => '0');
    FIFO_IN_empty <= '1';
    FIFO_IN_valid <= '0';
    assert false report "[DONE] Factory client" severity note;

    wait;
  end process WaveGen_Proc;

  

end test;

-------------------------------------------------------------------------------

configuration factory_client_tb_test_cfg of factory_client_tb is
  for test
  end for;
end factory_client_tb_test_cfg;

-------------------------------------------------------------------------------
