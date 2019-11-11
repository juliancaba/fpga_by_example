-------------------------------------------------------------------------------
-- Title      : AXI-Stream to PR module
-- Project    : 
-------------------------------------------------------------------------------
-- File       : axis2pr_bridge.vhd
-- Author     : julian  <julian@ichbiach>
-- Company    : 
-- Created    : 2015-02-06
-- Last update: 2017-03-03
-- Platform   : 
-- Standard   : VHDL'87
-------------------------------------------------------------------------------
-- Description: Buffering bitstreams
-------------------------------------------------------------------------------
-- Copyright (c) 2015 
-------------------------------------------------------------------------------
-- Revisions  :
-- Date        Version  Author  Description
-- 2015-02-06  1.0      julian	Created
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;


entity factory_axis2pr_bridge is
  
  generic (
    LITTLE_ENDIAN : boolean := True;
    ICAP_DWIDTH   : natural := 32;
    AXIS_DWIDTH   : natural := 32);

  port (
    clk : in std_logic;
    rst : in std_logic;
    
    s_axis_tvalid  : in  STD_LOGIC;
    s_axis_tready  : out STD_LOGIC;
    s_axis_tdata   : in  STD_LOGIC_VECTOR(AXIS_DWIDTH-1 DOWNTO 0);

    fifo_read    : in  std_logic;
    fifo_data    : out std_logic_vector(ICAP_DWIDTH-1 downto 0);
    fifo_empty_n : out std_logic);
    
    
end factory_axis2pr_bridge;


architecture rtl of factory_axis2pr_bridge is

  component factory_bufferBitstream
    port (
      m_aclk         : IN  STD_LOGIC;
      s_aclk         : IN  STD_LOGIC;
      s_aresetn      : IN  STD_LOGIC;
      s_axis_tvalid  : IN  STD_LOGIC;
      s_axis_tready  : OUT STD_LOGIC;
      s_axis_tdata   : IN  STD_LOGIC_VECTOR(AXIS_DWIDTH-1 DOWNTO 0);
      m_axis_tvalid  : OUT STD_LOGIC;
      m_axis_tready  : IN  STD_LOGIC;
      m_axis_tdata   : OUT STD_LOGIC_VECTOR(AXIS_DWIDTH-1 DOWNTO 0);
      axis_prog_full : OUT STD_LOGIC);
  end component;

  -----------------------------------------------------------------------------
  -- Functions
  -----------------------------------------------------------------------------
  function swapEndian (
    swapEndianVector : std_logic_vector(AXIS_DWIDTH-1 downto 0))
    return std_logic_vector is
    variable outSwapEndian : std_logic_vector(AXIS_DWIDTH-1 downto 0);
  begin
    for it in 0 to (AXIS_DWIDTH/8-1) loop
        outSwapEndian(((AXIS_DWIDTH/8)-it)*8-1 downto ((AXIS_DWIDTH/8)-(it+1))*8) := swapEndianVector(8*(it+1)-1 downto 8*it);
    end loop;
    return outSwapEndian;
  end swapEndian;
  -----------------------------------------------------------------------------

  --signal threshold : std_logic;
  signal nrst      : std_logic;

  signal m_axis_tvalid  : std_logic;
  signal m_axis_tready  : std_logic;
  signal m_axis_tdata   : std_logic_vector(AXIS_DWIDTH-1 downto 0);
  signal axis_prog_full : std_logic;

  type stateType is (stINIT, stIDLE, stPASS);
  signal state : stateType;
  signal nextState : stateType;
  
begin  -- rtl

  nrst <= not rst;
  
  factory_bufferBitstream_i: factory_bufferBitstream
    port map (
      m_aclk         => clk,
      s_aclk         => clk,
      s_aresetn      => nrst,
      s_axis_tvalid  => s_axis_tvalid,
      s_axis_tready  => s_axis_tready,
      s_axis_tdata   => s_axis_tdata,
      m_axis_tvalid  => m_axis_tvalid,
      m_axis_tready  => m_axis_tready,
      m_axis_tdata   => m_axis_tdata,
      axis_prog_full => axis_prog_full);

      
  --waitData : process (clk)
  --begin  
  --  if clk'event and clk = '1' then  -- rising clock edge
  --    if rst = '1' then
  --      threshold <= '0';
  --    else
  --      if axis_prog_full = '1' then
  --        threshold <= '1';
  --      end if;
  --    end if;
  --  end if;
  --end process waitData;
  
      
  
  prSeq: process (clk)
  begin 
    if clk'event and clk = '1' then  -- rising clock edge
      if Rst = '1' then              
        state <= stINIT;
      else
        state <= nextState;
      end if;
    end if;
  end process prSeq;

  
  prFSM : process (axis_prog_full, fifo_read, m_axis_tdata, m_axis_tvalid,
                   state)
  begin
    nextState <= state;

    m_axis_tready <= '0';
    fifo_empty_n <= '0';
    fifo_data <= (others => '0');

    
    case state is
      when stINIT =>
        if axis_prog_full = '0' then
          nextState <= stIDLE;
        end if;
        
      when stIDLE =>
        if axis_prog_full = '1' then
          m_axis_tready <= '1';
          nextState <= stPASS;
        end if;
        

      when stPASS =>
        --m_axis_tready <= '1';
        if m_axis_tvalid = '1' then
          fifo_empty_n <= '1';
          if LITTLE_ENDIAN then
            fifo_data <= swapEndian(m_axis_tdata);
          else
            fifo_data <= m_axis_tdata;            
          end if;
          if fifo_read = '1' then
            m_axis_tready <= '1';
          end if;
        end if;

        
      when others => null;
    end case;
  end process prFSM;

end rtl;
