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

begin
	process(clock)
		begin 
			-- 000 001 010 011 100 101 110 111
			if (rising_edge(clock)) then
				
				if (q="111") then		-- if 7
					q <= "110";			-- then 6
				elsif (q="110") then	-- if 6
					q <= "101";			-- then 5
				elsif (q="101") then	-- if 5
					q <= "100";			-- then 4
				elsif (q="100") then	-- if 4
					q <= "011";			-- then 3
				elsif (q="011") then	-- if 3
					q <= "010";			-- then 2
				elsif (q="010") then	-- if 2
					q <= "001";			-- then 1
				elsif (q="001") then	-- if 1
					q <= "000";			-- then 0
				elsif (q="000") then	-- if 0
					q <= "111";			-- then 7

				end if;

			end if;

	end process;
end architecture;
