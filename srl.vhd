-- register for a 16 bits signals

library IEEE;
use IEEE.Std_Logic_1164.all;

entity srl is
  port (
    srlIn: in std_logic_vector (15 downto 0);
    srlOut: out std_logic_vector (15 downto 0)
    );
  end srl;

architecture behavior of srl is

  signal auxSignal: std_logic_vector(14 downto 0);

  begin
    auxSignal <= srlIn(14 downto 0);
    srlOut <= auxSignal & '0';
end behavior;