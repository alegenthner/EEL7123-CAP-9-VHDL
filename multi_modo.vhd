library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity multi_modo is
	port(
    mmCLK, mmRST, mmENA: in std_logic;
    mmSelect: in std_logic_vector(1 downto 0);
    mmIn: in std_logic_vector(15 downto 0);
    mmOut: out std_logic_vector(15 downto 0)
	 );
end multi_modo;

architecture Structural of multi_modo is

  signal mm_muxA, mm_muxB, mm_muxC, mm_muxD : std_logic_vector(15 downto 0);
  signal mm_registerIn : std_logic_vector(15 downto 0);
  signal mmPreOut : std_logic_vector(15 downto 0);

  component adder_16 is
    port(
      operand_a, operand_b: in std_logic_vector(15 downto 0);
      result: out std_logic_vector(15 downto 0)
    );
  end component;

  component sll is
    port(
      sllIn: in std_logic_vector (15 downto 0);
      sllOut: out std_logic_vector (15 downto 0)
    );
  end component;

  component srl is
    port(
      srlIn: in std_logic_vector (15 downto 0);
      srlOut: out std_logic_vector (15 downto 0)
    );
  end component;

  component mux_4_1 is
    port(
      A: in std_logic_vector (15 downto 0);
      B: in std_logic_vector (15 downto 0);
      C: in std_logic_vector (15 downto 0);
      D: in std_logic_vector (15 downto 0);
      s: in std_logic_vector(1 downto 0);
      F: out std_logic_vector (15 downto 0)
    );
  end component;

  component register is
    port(
      registerENA: in std_logic;
      registerRST: in std_logic;
      registerCLK: in std_logic;
      registerIn: in std_logic_vector (15 downto 0);
      registerOut: out std_logic_vector (15 downto 0)
    );
  end component;

  begin

    mm_muxB <= mmIn;

		U00: adder_16 port map( operand_a => mmIn ,
                            operand_b => mmPreOut ,
                            result => mm_muxA
    );
    U01: srl port map(srlIn => mmPreOut, srlOut => mm_muxC);
    U02: sll port map(sllIn => mmPreOut, sllOut => mm_muxD);
    -- create mm_muxA --checked
    --        mm_muxB --checked
    --        mm_muxC --checked
    --        mm_muxD --checked
    U03: mux_4_1 port map(  A => mm_muxA ,
                            B => mm_muxB ,
                            C => mm_muxC ,
                            D => mm_muxD ,
                            s => mmSelect,
                            F => mm_registerIn );
    -- create mm_registerIn
    --    ||  mmPreOut
    U04: register port map( registerENA => mmENA,
                            registerRST => mmRST,
                            registerCLK => mmCLK,
                            registerIn => mm_registerIn,
                            registerOut => mmPreOut);

    mmOut <= mmPreOut;
end Structural;
