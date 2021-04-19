library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity full_adder is

	port(
    A: in std_logic;
    B: in std_logic;
    Cin: in std_logic;
    S: out std_logic;
    Cout: out std_logic
	 );
end full_adder;

architecture Structural of full_adder is

  begin
    S <= Cin xor (A xor B);
    Cout <= (A and B) or ((A xor B) and Cin);

end Structural;
