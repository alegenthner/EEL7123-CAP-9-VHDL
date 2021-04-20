-- register for a 16 bits signals

library IEEE;
use IEEE.Std_Logic_1164.all;

entity shiftR is
  port (
    srlIn: in std_logic_vector (15 downto 0);
    srlOut: out std_logic_vector (15 downto 0)
    );
  end shiftR;

architecture behavior of shiftR is

  signal auxSignal: std_logic_vector(14 downto 0);

  begin
    auxSignal <= srlIn(15 downto 1);
    srlOut <= '0' & auxSignal;
end behavior;
