-- register for a 16 bits signals

library IEEE;
use IEEE.Std_Logic_1164.all;

entity sll is
  port (
    sllIn: in std_logic_vector (15 downto 0);
    sllOut: out std_logic_vector (15 downto 0)
    );
  end sll;

architecture behavior of sll is

  signal auxSignal: std_logic_vector(14 downto 0);

  begin
    auxSignal <= sllIn(15 downto 1);
    sllOut <= '0' & auxSignal;
end behavior;
