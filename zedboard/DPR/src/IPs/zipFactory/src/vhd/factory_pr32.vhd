-------------------------------------------------------------------------------
-- Title      : pr
-- Project    : 
-------------------------------------------------------------------------------
-- File       : pr.vhd
-- Author     : julian  <julian@ichbiach>
-- Company    : 
-- Created    : 2015-01-16
-- Last update: 2017-03-01
-- Platform   : 
-- Standard   : VHDL'87
-------------------------------------------------------------------------------
-- Description: None
-------------------------------------------------------------------------------
-- Copyright (c) 2015 
-------------------------------------------------------------------------------
-- Revisions  :
-- Date        Version  Author  Description
-- 2015-01-16  1.0      julian	Created
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

library UNISIM;
use UNISIM.vcomponents.all;


entity factory_pr32 is

  generic (
    DEVICE_ID   : bit_vector            := X"04224093";
    ICAP_DWIDTH : natural range 0 to 32 := 32);

  port (
    Clk : in std_logic;
    Rst : in std_logic;
    
    eos : in std_logic;
    
    ---------------------------------------------------------------------------
    -- Object interface
    ---------------------------------------------------------------------------
    prReq        : in  std_logic;
    prAck        : out std_logic;
    busy         : out std_logic;
    fifo_read    : out std_logic;
    fifo_data    : in  std_logic_vector(ICAP_DWIDTH-1 downto 0);
    fifo_empty_n : in  std_logic
    );

end factory_pr32;

architecture synth of factory_pr32 is

  -----------------------------------------------------------------------------
  -- Constants
  -----------------------------------------------------------------------------
  constant CMD_WORD    : std_logic_vector(ICAP_DWIDTH-1 downto 0) := X"30008001";
  constant DESYNC_WORD : std_logic_vector(ICAP_DWIDTH-1 downto 0) := X"0000000d";
  constant NOOP_WORD    : std_logic_vector(ICAP_DWIDTH-1 downto 0) := X"20000000";
  constant NNOOPWORDS : natural := 16;
  
  -----------------------------------------------------------------------------
  -- Reconfiguration: States, Signals and Components
  ----------------------------------------------------------------------------- 
  -- States
  type   tStatePR is (stSTARTUP, stIDLE, stWAIT_DATA, stSEND_ICAP,
                      stSEND_ICAP_CMD, stFINISH, stNOOP_WORDS);
  signal state, nextState : tStatePR;

  -- Control signals
  signal startReconfig : boolean;
  signal doneReconfig  : boolean;
  signal ackPR         : boolean;

  signal incNOOPWords : std_logic;
  signal rstNOOPWords : std_logic;
  signal cntNOOPWords : natural;

  -----------------------------------------------------------------------------
  -- ICAP Signals
  -----------------------------------------------------------------------------
  signal IcapOut   : std_logic_vector(ICAP_DWIDTH-1 downto 0);
  signal IcapIn    : std_logic_vector(ICAP_DWIDTH-1 downto 0);
  signal IcapCe    : std_logic := '1';
  signal IcapWrite : std_logic := '1';
  
  signal IcapIn_ns    : std_logic_vector(ICAP_DWIDTH-1 downto 0);
  signal IcapCe_ns    : std_logic;
  signal IcapWrite_ns : std_logic;

  -----------------------------------------------------------------------------
  -- Components
  ----------------------------------------------------------------------------- 
  component ICAPE2
    generic (
      DEVICE_ID         : bit_vector;
      ICAP_WIDTH        : string);
    port (
      O     : out std_logic_vector(31 downto 0);
      CLK   : in  std_ulogic;
      CSIB  : in  std_ulogic;
      I     : in  std_logic_vector(31 downto 0);
      RDWRB : in  std_ulogic);
  end component;

  -----------------------------------------------------------------------------
  -- Functions
  -----------------------------------------------------------------------------
  function swap (
    swapVector : std_logic_vector(ICAP_DWIDTH-1 downto 0))
    return std_logic_vector is
    variable outSwap : std_logic_vector(ICAP_DWIDTH-1 downto 0);
  begin
    for byte in 0 to (ICAP_DWIDTH/8-1) loop
      for bit in 0 to 7 loop
        outSwap(byte*8 + (7-bit)) := swapVector(byte*8 + bit);
      end loop;  -- Bit
    end loop;  -- Byte
    return outSwap;
  end swap;
  
begin  -- synth
  
  -----------------------------------------------------------------------------
  -- Instances
  -----------------------------------------------------------------------------
  ICAPE2_i: ICAPE2
    generic map (
      DEVICE_ID         => DEVICE_ID,
      ICAP_WIDTH        => "X32")
    port map (
      O     => IcapOut,
      CLK   => clk,
      CSIB  => IcapCe,
      I     => IcapIn,
      RDWRB => IcapWrite);

  -----------------------------------------------------------------------------
  -- Reconfiguration RTL
  -----------------------------------------------------------------------------  
  prCom : process (IcapCe, IcapIn, IcapWrite, cntNOOPWords, eos, fifo_data,
                   fifo_empty_n, prReq, state)
  begin
    nextState <= state;

    IcapIn_ns    <= IcapIn;
    IcapCe_ns    <= IcapCe;
    IcapWrite_ns <= IcapWrite;

    startReconfig <= false;
    doneReconfig  <= false;
    ackPR         <= false;

    fifo_read <= '0';

    incNOOPWords <= '0';
    rstNOOPWords <= '0';

    
    case state is
      when stSTARTUP =>
        if eos = '1' then
          nextState <= stIDLE;
        end if;
        
      when stIDLE =>
        IcapWrite_ns <= '1';
        IcapCe_ns    <= '1'; 
        if prReq = '1' then
          ackPR <= true;
          if fifo_empty_n = '0' then
            nextState    <= stWAIT_DATA;
          else
            startReconfig <= true;
            nextState <= stSEND_ICAP;
          end if;
        end if;

        
      when stWAIT_DATA =>
        IcapWrite_ns <= '1';
        IcapCe_ns    <= '1'; 
        if fifo_empty_n = '1' then
          startReconfig <= true;
          IcapWrite_ns    <= '0'; 
          nextState <= stSEND_ICAP;
        end if;
          
                        
      when stSEND_ICAP =>
        if fifo_empty_n = '1' then
          IcapWrite_ns <= '0';
          IcapCe_ns    <= '0';
          IcapIn_ns    <= swap(fifo_data);
          fifo_read    <= '1';
          if fifo_data = CMD_WORD then
            nextState <= stSEND_ICAP_CMD;
          end if;
        else
          -- This case should never happen
          IcapWrite_ns <= '1';
          IcapCe_ns    <= '1';
          nextState    <= stWAIT_DATA;
        end if;
          
                        
      when stSEND_ICAP_CMD =>
        if fifo_empty_n = '1' then
          IcapWrite_ns <= '0';
          IcapCe_ns    <= '0';
          IcapIn_ns    <= swap(fifo_data);
          fifo_read    <= '1';
          if fifo_data = DESYNC_WORD then
            rstNOOPWords <= '1';
            nextState <= stNOOP_WORDS;
          else
            nextState <= stSEND_ICAP;
          end if;
        else
          -- This case should never happen
          IcapWrite_ns <= '1';
          IcapCe_ns    <= '1';
          nextState    <= stWAIT_DATA;
        end if;

      when stNOOP_WORDS =>
        if cntNOOPWords = NNOOPWORDS-1 then
          IcapCe_ns    <= '1';
          nextState <= stFINISH;
        else
          incNOOPWords <= '1';
          IcapWrite_ns <= '0';
          IcapCe_ns    <= '0';
          IcapIn_ns    <= swap(NOOP_WORD);          
        end if;       
        
        
      when stFINISH =>
        doneReconfig <= true;
        IcapWrite_ns <= '1';
        IcapCe_ns <= '1';
        nextState <= stIDLE;
    
        
      when others => null;
    end case;
  end process prCom;
    
  
  prNOOPW: process (clk)
  begin 
    if clk'event and clk = '1' then  -- rising clock edge
      if Rst = '1' then              
        cntNOOPWords <= 0;
      else
        if rstNOOPWords = '1' then
          cntNOOPWords <= 0;
        elsif incNOOPWords = '1' then
          cntNOOPWords <= cntNOOPWords + 1;
        end if;       
      end if;
    end if;
  end process prNOOPW;

  
  prSeq: process (clk)
  begin 
    if clk'event and clk = '1' then  -- rising clock edge
      if Rst = '1' then              
        state <= stSTARTUP;
      else
        state <= nextState;
      end if;
    end if;
  end process prSeq;

    
  prFlags: process (Clk)
  begin  
    if Clk'event and Clk = '1' then  -- rising clock edge
      if rst = '1' then                     
        busy <= '0';
        prAck <= '0';
      else      
        prAck <= '0';
        
        if doneReconfig then
          busy <= '0';
        elsif startReconfig then
          busy <= '1';
        end if;

        if ackPR then
          prAck <= '1';
        end if;
      end if;
    end if;
  end process prFlags;

      
  icapFlags : process (clk)
  begin  
    if clk'event and clk = '1' then  -- rising clock edge
      if Rst = '1' then
        IcapCe    <= '1';
        IcapWrite <= '1';
        IcapIn    <= (others => '0');
      else
        IcapCe    <= IcapCe_ns;
        IcapWrite <= IcapWrite_ns;
        IcapIn    <= IcapIn_ns;
      end if;
    end if;
  end process icapFlags;

  
end synth;
