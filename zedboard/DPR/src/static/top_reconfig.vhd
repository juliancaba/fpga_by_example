library ieee;
use ieee.std_logic_1164.all;

entity top_reconfig is

  port (
    clk    : in  std_logic;
    rst    : in  std_logic;
    leds   : out std_logic_vector(7 downto 0));

end top_reconfig;

architecture STRUCTURE of top_reconfig is
  
  component rModule_leds
    port (
      clk    : in  std_logic;
      rst    : in  std_logic;
      leds   : out std_logic_vector(7 downto 0));
  end component;

  
begin

  
rm_leds : rModule_leds
  port map (
    clk    => clk,
    rst    => rst,
    leds   => leds);


end STRUCTURE;
