-- Elementos de Sistemas
-- FlipFlopJK.vhd

library ieee;
use ieee.std_logic_1164.all;

entity FlipFlopJK is
	port(
		clock:  in std_logic;
		J:      in std_logic;
		K:      in std_logic;
		q:      out std_logic:= '0';
		notq:   out std_logic:= '1'
	);
end entity;

architecture arch of FlipFlopJK is

	signal Q0, NOTQ0 :std_logic;

begin
	process(clock)
		begin

			if(rising_edge(clock)) then
				if(J='0' and K='0') then
					Q0 <= Q0;
					NOTQ0 <= NOTQ0;
				elsif(J='0' and K='1') then
					Q0 <= '0'; NOTQ0 <= '1';
				elsif(J='1' and K='0') then
					Q0 <= '1'; NOTQ0 <= '0';
				elsif(J='1' and K='1') then
					Q0 <= NOTQ0; NOTQ0 <= Q0;
				end if;	
			end if;
			
	end process;

	q <= Q0;
	notq <= NOTQ0;

end architecture;
