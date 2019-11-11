-------------------------------------------------------------------------------
-- Title      : adminPR
-- Project    : 
-------------------------------------------------------------------------------
-- File       : adminPR.vhd
-- Author     : julian  <julian@ichbiach>
-- Company    : 
-- Created    : 2015-01-26
-- Last update: 2017-03-03
-- Platform   : 
-- Standard   : VHDL'87
-------------------------------------------------------------------------------
-- Description: 
-------------------------------------------------------------------------------
-- Copyright (c) 2015 
-------------------------------------------------------------------------------
-- Revisions  :
-- Date        Version  Author  Description
-- 2015-01-26  1.0      julian	Created
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity factory_adminPR is
  
  generic (
    LITTLE_ENDIAN : boolean := true;
    ENDWORD_WIDTH : natural := 64);
  
  port (
    clk : in std_logic;
    rst : in std_logic;
    rst_admin : out std_logic;

    -- admin (wrapperAdmin)
    pr_V_addr_din      : in  std_logic_vector (31 downto 0);
    pr_V_addr_full_n   : out std_logic;
    pr_V_addr_write    : in  std_logic;
    pr_V_areaID_din    : in  std_logic_vector (15 downto 0);
    pr_V_areaID_full_n : out std_logic;
    pr_V_areaID_write  : in  std_logic;
    prDone_V_dout      : out std_logic;
    prDone_V_empty_n   : out std_logic;
    prDone_V_read      : in  std_logic;

    -- memoryAXIdrv bus    
    memAXIdrv_addr           : out std_logic_vector (31 downto 0);
    memAXIdrv_addr_full_n    : in  std_logic;
    memAXIdrv_addr_write     : out std_logic;
    memAXIdrv_size           : out std_logic_vector (31 downto 0);
    memAXIdrv_size_full_n    : in  std_logic;
    memAXIdrv_size_write     : out std_logic;
    memAXIdrv_endWord        : out std_logic_vector(ENDWORD_WIDTH-1 downto 0);
    memAXIdrv_endWord_full_n : in  std_logic;
    memAXIdrv_endWord_write  : out std_logic;

    -- pr
    prReq : out std_logic;
    prAck : in  std_logic;
    busy  : in  std_logic);

end factory_adminPR;



architecture rtl of factory_adminPR is

  constant ENDWORD_LE : std_logic_vector(ENDWORD_WIDTH-1 downto 0) := X"018000300D000000";
  constant ENDWORD_BE : std_logic_vector(ENDWORD_WIDTH-1 downto 0) := X"300080010000000D";
  
  type typeState is (stIDLE, stINIT_MEMORY, stINIT_PR,
                     stWAIT_BUSY_PR, stWAIT_PR, stSEND_DONE_PR);
  signal state : typeState := stIDLE;
  signal nextState : typeState;

  signal addr : std_logic_vector(31 downto 0);
  signal saveParameters : boolean;

begin  -- rtl

  pFSM: process (addr, busy, memAXIdrv_addr_full_n, memAXIdrv_endWord_full_n,
                 memAXIdrv_size_full_n, prAck, prDone_V_read, pr_V_addr_write,
                 pr_V_areaID_write, state)
  begin  -- process pFSM
    nextState <= state;

    saveParameters <= false;
    
    pr_V_addr_full_n   <= '0';
    pr_V_areaID_full_n <= '0';

    memAXIdrv_addr          <= (others => '0');
    memAXIdrv_addr_write    <= '0';
    memAXIdrv_size          <= (others => '0');
    memAXIdrv_size_write    <= '0';
    memAXIdrv_endWord       <= (others => '0');
    memAXIdrv_endWord_write <= '0';

    prDone_V_dout    <= '0';
    prDone_V_empty_n <= '0';

    rst_admin <= '0';
    prReq <= '0';

    case state is
      when stIDLE =>        
        pr_V_addr_full_n <= '1';
        pr_V_areaID_full_n <= '1';
        if pr_V_addr_write = '1' and pr_V_areaID_write = '1' then
          saveParameters <= true;
          nextState <= stINIT_MEMORY;
        end if;

        
      when stINIT_MEMORY =>
        if memAXIdrv_addr_full_n = '1' and memAXIdrv_size_full_n = '1' and memAXIdrv_endWord_full_n = '1' then
          memAXIdrv_addr       <= addr;
          memAXIdrv_addr_write <= '1';
          memAXIdrv_size       <= (others => '0');
          memAXIdrv_size_write <= '1';
          if LITTLE_ENDIAN then
            memAXIdrv_endWord <= ENDWORD_LE;
          else
            memAXIdrv_endWord <= ENDWORD_BE;
          end if;
          memAXIdrv_endWord_write <= '1';
          rst_admin <= '1';
          nextState               <= stINIT_PR;
        end if;


      when stINIT_PR =>
        prReq <= '1';
        if prAck = '1' then
          nextState <= stWAIT_BUSY_PR;
        end if;
        

      when stWAIT_BUSY_PR =>
        if busy = '1' then
          nextState <= stWAIT_PR;
        end if;


      when stWAIT_PR =>
        if busy = '0' then
          nextState <= stSEND_DONE_PR;
        end if;


      when stSEND_DONE_PR =>
        prDone_V_dout <= '1';
        prDone_V_empty_n <= '1';
        if prDone_V_read = '1' then
          nextState <= stIDLE;
        end if;
        
        
      when others => null;
    end case;
  end process pFSM;

  
  pFSM_seq: process (clk)
  begin  -- process      
    if clk'event and clk = '1' then  -- rising clock edge
      if rst = '1' then              -- asynchronous reset (active high)
        state <= stIDLE;
      else
        state <= nextState;
      end if;
    end if;
  end process pFSM_seq;  

  
  params: process (clk)
  begin  -- process      
    if clk'event and clk = '1' then  -- rising clock edge
      if rst = '1' then              -- asynchronous reset (active high)
        addr <= (others => '0');
      else
        if saveParameters then
          addr <= pr_V_addr_din;
        end if;
      end if;
    end if;
  end process params;  

end rtl;



