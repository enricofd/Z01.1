---
-- Elementos de Sistemas - Aula 5 - Logica Combinacional
-- Rafael . Corsi @ insper . edu . br
--
-- Arquivo exemplo para acionar os LEDs e ler os bottoes
-- da placa DE0-CV utilizada no curso de elementos de
-- sistemas do 3s da eng. da computacao

----------------------------
-- Bibliotecas ieee       --
----------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use work.all;

entity TopLevel is
	port (
			sw : in  STD_LOGIC_VECTOR(9 downto 0);
			HEX0: out STD_LOGIC_VECTOR(6 downto 0);
			HEX1: out STD_LOGIC_VECTOR(6 downto 0);
			HEX2: out STD_LOGIC_VECTOR(6 downto 0);
			LEDR: buffer std_logic_vector(11 downto 0);
			Clock_50: in std_logic
			);
end entity;

architecture arch of TopLevel is
begin
   u1 : work.binarioToBcd port map(clk   => CLOCK_50,
                                   reset => '0',
                                   binary_in => SW,
                                   bcd0  => LEDR(3 downto 0),
                                   bcd1  => LEDR(7 downto 4),
                                   bcd2  => LEDR(11 downto 8),
                                   bcd3  => open,
                                   bcd4  => open);


with LEDR (3 downto 0) select
    
    HEX0 <= "1000000" when "0000", --0
            "1111001" when "0001", --1
            "0100100" when "0010", --2
            "0110000" when "0011", --3
            "0011001" when "0100", --4
            "0010010" when "0101", --5
            "0000010" when "0110", --6
            "1111000" when "0111", --7
            "0000000" when "1000", --8
            "0010000" when "1001", --9
            "1111111" when others;
				
with LEDR (7 downto 4) select
    
    HEX1 <= "1000000" when "0000", --0
            "1111001" when "0001", --1
            "0100100" when "0010", --2
            "0110000" when "0011", --3
            "0011001" when "0100", --4
            "0010010" when "0101", --5
            "0000010" when "0110", --6
            "1111000" when "0111", --7
            "0000000" when "1000", --8
            "0010000" when "1001", --9
            "1111111" when others;
				
with LEDR (11 downto 8) select
    
    HEX2 <= "1000000" when "0000", --0
            "1111001" when "0001", --1
            "0100100" when "0010", --2
            "0110000" when "0011", --3
            "0011001" when "0100", --4
            "0010010" when "0101", --5
            "0000010" when "0110", --6
            "1111000" when "0111", --7
            "0000000" when "1000", --8
            "0010000" when "1001", --9
            "1111111" when others;
				
				
end architecture;
