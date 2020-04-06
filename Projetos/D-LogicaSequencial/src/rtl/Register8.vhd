-- Elementos de Sistemas
-- by Luciano Soares
-- Register8.vhd

Library ieee;
use ieee.std_logic_1164.all;

entity Register8 is
	port(
		clock:   in STD_LOGIC;
		input:   in STD_LOGIC_VECTOR(7 downto 0);
		load:    in STD_LOGIC;
		output: out STD_LOGIC_VECTOR(7 downto 0)
	);
end entity;

architecture arch of Register8 is

	component BinaryDigit is
		port(
			clock:   in STD_LOGIC;
			input:   in STD_LOGIC;
			load:    in STD_LOGIC;
			output: out STD_LOGIC
		);
	end component;

begin

	p0: BinaryDigit port map(
		clock => clock,
		input => input(0),
		load => load,
		output => output(0)
);

	
	p1: BinaryDigit port map(
		clock => clock,
		input => input(1),
		load => load,
		output => output(1)
);


	p2: BinaryDigit port map(
		clock => clock,
		input => input(2),
		load => load,
		output => output(2)
);

	p3: BinaryDigit port map(
		clock => clock,
		input => input(3),
		load => load,
		output => output(3)
);

	p4: BinaryDigit port map(
		clock => clock,
		input => input(4),
		load => load,
		output => output(4)
);

	p5: BinaryDigit port map(
		clock => clock,
		input => input(5),
		load => load,
		output => output(5)
);

	p6: BinaryDigit port map(
		clock => clock,
		input => input(6),
		load => load,
		output => output(6)
);

	p7: BinaryDigit port map(
		clock => clock,
		input => input(7),
		load => load,
		output => output(7)
);


end architecture;
