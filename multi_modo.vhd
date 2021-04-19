library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity multi_modo is
	port(
    mmCLK, mmRST: in std_logic;
    mmSelect: in std_logic_vector(1 downto 0);
    mmIn: in std_logic_vector(15 downto 0);
    mmOut: out std_logic_vector(15 downto 0)
	 );
end multi_modo;

architecture Structural of multi_modo is

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
      registerRST: in std_logic;
      registerCLK: in std_logic;
      registerIn: in std_logic_vector (15 downto 0);
      registerOut: out std_logic_vector (15 downto 0)
    );
  end component;
	 -- create mm_resgiterIn
  begin
		U00: adder_16 port map();
    U01: srl port map();
    U02: sll port map();
    U03: mux_4_1 port map(  A => mm_muxA ,
                            B => mm_muxB ,
                            C => mm_muxC ,
                            D => mm_muxD ,
                            s => mmSelect,
                            F => mm_registerIn );
    U04: register port map( registerRST => mmRST,
                            registerCLK => mmCLK,
                            registerIn => mm_registerIn,
                            registerOut => mmOut);
end Structural;
