library ieee;
use ieee.std_logic_1164.all;


entity thresholdCtrl is
  
  generic (
    THRESHOLD_ACTIVATE : natural := 0;
    THRESHOLD_NEGATE   : natural := 0);
  
  port (
    clk           : in  std_logic;
    rst           : in  std_logic;
    rd_en         : in  std_logic;
    wr_en         : in  std_logic;
    rdThresholdEn : out std_logic);

end thresholdCtrl;


architecture behavior of thresholdCtrl is

  signal cntThreshold : natural;
    
begin  -- behavior

  cnt : process (CLK)
  begin  -- process sFSM
    if CLK'event and CLK = '1' then     -- rising clock edge
      if rst = '1' then             -- asynchronous reset (active low)
        cntThreshold <= 0;
      else

        if wr_en = '1' and rd_en = '1' then
          cntThreshold <= cntThreshold + 1;
        elsif wr_en = '1' and rd_en = '0' then
          cntThreshold <= cntThreshold + 2;
        elsif wr_en = '0' and rd_en = '1' then
          cntThreshold <= cntThreshold - 1;
        end if;          
        
      end if;
    end if;
  end process cnt;

  
  procThreshold : process (CLK)
  begin  -- process sFSM
    if CLK'event and CLK = '1' then     -- rising clock edge
      if rst = '1' then             -- asynchronous reset (active low)
        rdThresholdEn         <= '0';
      else

        if cntThreshold > THRESHOLD_ACTIVATE then
          rdThresholdEn <= '1';
        end if;
        
      end if;
    end if;
  end process procThreshold;
  

end behavior;
