-- Multiplexador 4.1

library IEEE;
use IEEE.Std_Logic_1164.all;

entity mux_4_1 is
  port (A: in std_logic_vector (15 downto 0);
    B: in std_logic_vector (15 downto 0);
    C: in std_logic_vector (15 downto 0);
    D: in std_logic_vector (15 downto 0);
    s: in std_logic_vector(1 downto 0);
    F: out std_logic_vector (15 downto 0)
    );
  end mux_4_1;

 -- ARQUITETURA ESTRUTURAL
architecture mux_estr of mux_4_1 is

  begin
    F <=  A when s = "00" else
          B when s = "01" else
          C when s = "10" else
          D;
end mux_estr;
