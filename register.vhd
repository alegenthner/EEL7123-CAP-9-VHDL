-- register for a 16 bits signals

library IEEE;
use IEEE.Std_Logic_1164.all;

entity register is
  port (
    registerENA: in std_logic;
    registerRST: in std_logic;
    registerCLK: in std_logic;
    registerIn: in std_logic_vector (15 downto 0);
    registerOut: out std_logic_vector (15 downto 0)
    );
  end register;

architecture behavior of register is

  begin
    process
      begin
      wait until registerCLK'event and registerCLK = '1';

      if registerRST = '1' or registerENA = '0' then
        registerOut <= "0000000000000000";
      else
        registerOut <= registerIn
      end if;
    end process;
end behavior;
