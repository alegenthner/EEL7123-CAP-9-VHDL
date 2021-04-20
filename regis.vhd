-- register for a 16 bits signals

library IEEE;
use IEEE.Std_Logic_1164.all;

entity regis is
  port (
    registerENA: in std_logic;
    registerRST: in std_logic;
    registerCLK: in std_logic;
    registerIn: in std_logic_vector (15 downto 0);
    registerOut: out std_logic_vector (15 downto 0)
    );
  end regis;

architecture behavior of regis is

  begin
    process
      begin
      wait until registerCLK'event and registerCLK = '1';

      if registerRST = '1' then
        registerOut <= "0000000000000000";
      elsif registerENA = '1' then
        registerOut <= registerIn;
      end if;
    end process;
end behavior;
