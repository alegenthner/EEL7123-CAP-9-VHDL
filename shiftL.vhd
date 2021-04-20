-- register for a 16 bits signals

library IEEE;
use IEEE.Std_Logic_1164.all;

entity shiftL is
  port (
    sllIn: in std_logic_vector (15 downto 0);
    sllOut: out std_logic_vector (15 downto 0)
    );
  end shiftL;

architecture behavior of shiftL is

  signal auxSignal: std_logic_vector(14 downto 0);

  begin
    auxSignal <= sllIn(14 downto 0);
    sllOut <= auxSignal & '0';
end behavior;
