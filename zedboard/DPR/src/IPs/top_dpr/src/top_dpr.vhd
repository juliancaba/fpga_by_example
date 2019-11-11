library ieee;
use ieee.std_logic_1164.all;

entity top_dpr is

  port (
    clk    : in  std_logic;
    rst_n  : in  std_logic;
    leds   : out std_logic_vector(7 downto 0));

end top_dpr;

architecture STRUCTURE of top_dpr is
  
  component rModule_leds
    port (
      clk    : in  std_logic;
      rst    : in  std_logic;
      leds   : out std_logic_vector(7 downto 0));
  end component;

  signal rst_i : std_logic;
  
begin

  rst_i <= not  rst_n;
  
rm_leds : rModule_leds
  port map (
    clk    => clk,
    rst    => rst_i,
    leds   => leds);

end STRUCTURE;
