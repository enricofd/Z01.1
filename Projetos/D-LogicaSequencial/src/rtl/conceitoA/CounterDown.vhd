-- Elementos de Sistemas
-- CounterDown.vhd

library ieee;
use ieee.std_logic_1164.all;

entity CounterDown is
	port(
		clock:  in std_logic;
		q:      out std_logic_vector(2 downto 0) :=(others => '0')
	);
end entity;

architecture arch of CounterDown is

	signal q0: std_logic_vector(2 downto 0) := q;

begin
	process(clock, q)
		begin 
			-- 000 001 010 011 100 101 110 111
			if (rising_edge(clock)) then
				if (q0="111") then		-- if 7
					q0 <= "110";			-- then 6
				elsif (q0="110") then	-- if 6
					q0 <= "101";			-- then 5
				elsif (q0="101") then	-- if 5
					q0 <= "100";			-- then 4
				elsif (q0="100") then	-- if 4
					q0 <= "011";			-- then 3
				elsif (q0="011") then	-- if 3
					q0 <= "010";			-- then 2
				elsif (q0="010") then	-- if 2
					q0 <= "001";			-- then 1
				elsif (q0="001") then	-- if 1
					q0 <= "000";			-- then 0
				elsif (q0="000") then	-- if 0
					q0 <= "111";			-- then 7

				end if;

			end if;

	end process;

	q <= q0;

end architecture;
