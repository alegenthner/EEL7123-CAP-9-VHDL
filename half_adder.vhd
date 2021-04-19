library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity half_adder is

	port(
    A: in std_logic;
    B: in std_logic;
    S: out std_logic;
    Cout: out std_logic
	 );
end half_adder;

architecture Structural of half_adder is

  begin
    S <= A xor B;
    Cout <= A and B;

end Structural;
