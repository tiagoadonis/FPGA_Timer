library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Bin7SegDecoder is
	port( binInput : in std_logic_vector(5 downto 0);
			decOut_n : out std_logic_vector(6 downto 0));
end Bin7SegDecoder;

architecture Behavioral of Bin7SegDecoder is
begin
	decOut_n <= "1111001" when (binInput = "000001") else --1
					"0100100" when (binInput = "000010") else --2
					"0110000" when (binInput = "000011") else --3
					"0011001" when (binInput = "000100") else --4
					"0010010" when (binInput = "000101") else --5
					"0000010" when (binInput = "000110") else --6
					"1111000" when (binInput = "000111") else --7
					"0000000" when (binInput = "001000") else --8
					"0010000" when (binInput = "001001") else --9
					"0001000" when (binInput = "001010") else --A
					"0000011" when (binInput = "001011") else --B
					"1000110" when (binInput = "001100") else --C
					"0100001" when (binInput = "001101") else --D
					"0000110" when (binInput = "001110") else --E
					"0001110" when (binInput = "001111") else --F
					"1000000";										 --0
end Behavioral;