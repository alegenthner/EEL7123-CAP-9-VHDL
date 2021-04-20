library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity usertop is

	port(
		CLOCK_50: in STD_LOGIC;
		CLK_500Hz: in STD_LOGIC;
		RKEY: in STD_LOGIC_VECTOR(3 downto 0);
		KEY: in STD_LOGIC_VECTOR(3 downto 0);
		RSW: in STD_LOGIC_VECTOR(17 downto 0);
		SW    : in STD_LOGIC_VECTOR(17 downto 0);
		LEDR : out STD_LOGIC_VECTOR(17 downto 0);
		HEX0,HEX1,HEX2,HEX3,HEX4,HEX5,HEX6,HEX7: out std_logic_vector(6 downto 0)
	 );
end usertop;

architecture Structural of usertop is

  signal controlCLK, controlRST, controlENA : std_logic;
  signal resultOut : std_logic_vector(15 downto 0);

  component multi_modo is
		port(
      mmCLK, mmRST, mmENA: in std_logic;
      mmSelect: in std_logic_vector(1 downto 0);
      mmIn: in std_logic_vector(15 downto 0);
      mmOut: out std_logic_vector(15 downto 0)
		);
  end component;

	component decod7seg is
		port(
			c : in  std_logic_vector(3 downto 0);
			f : out std_logic_vector(6 downto 0)
		);
	end component;

  begin

    controlCLK <= not(KEY(1));
    controlRST <= not(KEY(0));
    controlENA <= KEY(2);

		U0: multi_modo port map(  controlCLK,           -- clock
                              controlRST,           -- reset
                              controlENA,      -- enable/ always enabled
                              SW(17 downto 16), -- select
                              SW(15 downto 0),  -- input value
                              resultOut         -- output value
		);

		LEDR <= "00" & resultOut;

		U1: decod7seg port map(	c => resultOut(3 downto 0),
														f => HEX0
		);

		U2: decod7seg port map(	c => resultOut(7 downto 4),
														f => HEX1
		);

		U3: decod7seg port map(	c => resultOut(11 downto 8),
														f => HEX2
		);

		U4: decod7seg port map(	c => resultOut(15 downto 12),
														f => HEX3
		);
end Structural;
