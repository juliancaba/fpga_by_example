library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity top is
  
  port (
    clk          : in  std_logic;
    rst          : in  std_logic;
    dips         : in  std_logic_vector(7 downto 0);
    leds         : out std_logic_vector(7 downto 0));

end top;


architecture synth of top is
  
  signal clk_slow       : std_logic;
  signal leds_i         : std_logic_vector(7 downto 0);
  
begin  -- synth

  pclk: process (clk)
    variable cnt : std_logic_vector(23 downto 0);
  begin  -- process count
    if clk'event and clk = '1' then  -- rising clock edge
      if rst = '1' then                   -- asynchronous reset (active low)
        clk_slow <= '0';
      else        
        clk_slow <= '0';
        cnt := unsigned(cnt) + 1;

        if cnt = X"100000" then
          clk_slow <= '1';
        end if;
      end if;
    end if;
  end process pclk;


  pcount: process (clk_slow)
  begin  -- process pcount
    if clk_slow'event and clk_slow = '1' then  -- rising clock edge
      if rst = '1' then                   -- asynchronous reset (active low)
        leds_i <= (others => '0');
      else        
        if dips /= "00000000" then
          leds_i <= dips;
        else        
          case leds_i is
            when "00000000" => leds_i <= "00000001";
            when "00000001" => leds_i <= "00000011";
            when "00000011" => leds_i <= "00000111";
            when "00000111" => leds_i <= "00001111";
            when "00001111" => leds_i <= "00011111";
            when "00011111" => leds_i <= "00111111";
            when "00111111" => leds_i <= "01111111";
            when "01111111" => leds_i <= "11111111";
            when "11111111" => leds_i <= "00000000";
            when others => leds_i <= "00000000";
          end case;
        end if;
      end if;
    end if;
  end process pcount;
  
  leds <= leds_i;

end synth;
