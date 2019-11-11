library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;


entity rModule_leds is
  
  port (
    clk    : in  std_logic;
    rst    : in  std_logic;
    --bStart : in  std_logic;
    --bStop  : in  std_logic;
    leds   : out std_logic_vector(7 downto 0));

end rModule_leds;


architecture behaviour of rModule_leds is

  constant WAIT_SIZE : natural := 50000000;

  signal slowClk : std_logic;
  signal enable : std_logic;
  signal leds_reg : std_logic_vector(7 downto 0);

begin  -- behaviour

  leds <= leds_reg;

  ledsShift: process (slowClk)
  begin  -- process ledsShift
    if slowClk'event and slowClk = '1' then  -- rising clock edge
      if rst = '1' then                  -- asynchronous reset (active low)
        leds_reg <= "10000000";
      else        
        if enable = '1' then        
          case leds_reg is
            when "00000001" => leds_reg <= "10000000";
            when "10000000" => leds_reg <= "01000000";
            when "01000000" => leds_reg <= "00100000";
            when "00100000" => leds_reg <= "00010000";
            when "00010000" => leds_reg <= "00001000";
            when "00001000" => leds_reg <= "00000100";
            when "00000100" => leds_reg <= "00000010";
            when "00000010" => leds_reg <= "00000001";
            when others => leds_reg <= "10000000";
          end case;
        end if;
      end if;
    end if;
  end process ledsShift;
  

  clkCtrl: process (clk)
    variable cnt : natural := 0;
  begin  -- process 
    if clk'event and clk = '1' then  -- rising clock edge
      if rst = '1' then                  -- asynchronous reset (active low)
        slowClk <= '0';
        cnt := 0;
      else
        cnt := cnt + 1;
        slowClk <= '0';
        if cnt = WAIT_SIZE-1 then
          cnt := 0;
          slowClk <= '1';
        end if;
      end if;
    end if;
  end process clkCtrl;
  

  enCtrl: process (clk)
    variable cnt : natural;
  begin  -- process 
    if clk'event and clk = '1' then  -- rising clock edge
      if rst = '1' then                  -- asynchronous reset (active low)
        enable <= '0';
      else
        enable <= '1';
        --if bStop = '1' then
        --  enable <= '0';
        --elsif bStart = '1' then
        --  enable <= '1';
        --end if;
      end if;
    end if;
  end process enCtrl;
  

end behaviour;
