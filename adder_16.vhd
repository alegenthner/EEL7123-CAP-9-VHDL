library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity adder_16 is
	port(
    operand_a, operand_b: in std_logic_vector(15 downto 0);
    result: out std_logic_vector(15 downto 0)
	 );
end adder_16;

architecture Structural of adder_16 is

	signal overflow : std_logic;
  signal aux: std_logic_vector(14 downto 0);

  component full_adder is
    port(
      A: in std_logic;
      B: in std_logic;
      Cin: in std_logic;
      S: out std_logic;
      Cout: out std_logic
    );
  end component;

  component half_adder is
    port(
      A: in std_logic;
      B: in std_logic;
      S: out std_logic;
      Cout: out std_logic
     );
   end component;
	 -- lol
  begin
		U00: half_adder port map(A => operand_a(0), B=> operand_b(0), S=> result(0), Cout=> aux(0));
    U01: full_adder port map(A => operand_a(1), B=> operand_b(1), Cin=> aux(0), S=> result(1), Cout=> aux(1));
    U02: full_adder port map(A => operand_a(2), B=> operand_b(2), Cin=> aux(1), S=> result(2), Cout=> aux(2));
    U03: full_adder port map(A => operand_a(3), B=> operand_b(3), Cin=> aux(2), S=> result(3), Cout=> aux(3));
    U04: full_adder port map(A => operand_a(4), B=> operand_b(4), Cin=> aux(3), S=> result(4), Cout=> aux(4));
		U05: full_adder port map(A => operand_a(5), B=> operand_b(5), Cin=> aux(4), S=> result(5), Cout=> aux(5));
    U06: full_adder port map(A => operand_a(6), B=> operand_b(6), Cin=> aux(5), S=> result(6), Cout=> aux(6));
    U07: full_adder port map(A => operand_a(7), B=> operand_b(7), Cin=> aux(6), S=> result(7), Cout=> aux(7));
    U08: full_adder port map(A => operand_a(8), B=> operand_b(8), Cin=> aux(7), S=> result(8), Cout=> aux(8));
		U09: full_adder port map(A => operand_a(9), B=> operand_b(9), Cin=> aux(8), S=> result(9), Cout=> aux(9));
    U10: full_adder port map(A => operand_a(10), B=> operand_b(10), Cin=> aux(9), S=> result(10), Cout=> aux(10));
    U11: full_adder port map(A => operand_a(11), B=> operand_b(11), Cin=> aux(10), S=> result(11), Cout=> aux(11));
    U12: full_adder port map(A => operand_a(12), B=> operand_b(12), Cin=> aux(11), S=> result(12), Cout=> aux(12));
		U13: full_adder port map(A => operand_a(13), B=> operand_b(13), Cin=> aux(12), S=> result(13), Cout=> aux(13));
    U14: full_adder port map(A => operand_a(14), B=> operand_b(14), Cin=> aux(13), S=> result(14), Cout=> aux(14));
    U15: full_adder port map(A => operand_a(15), B=> operand_b(15), Cin=> aux(14), S=> result(15), Cout=> overflow);
end Structural;
