library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity Clock is
	port(	clk_50mhz:  in std_logic; -- entrada- clock de 50 mhz
			clk_1hz:    out std_logic); -- saída- clock de 1 hz
end Clock;

architecture behavioral of Clock is
	signal halfway: std_logic_vector(24 downto 0) :="1011111010111100001000000";
	signal counter: std_logic_vector(24 downto 0) :=(others=>'0');	
	signal newClk : std_logic :='0';
begin 
	
	process(clk_50mhz)
	begin
	
		if rising_edge(clk_50mhz) then
			if counter=halfway-'1' then
				counter <= (others=>'0');
				newClk <= not newClk;
			else
				counter<= counter + "1";
			end if;
		end if;
	
	end process;
	clk_1hz<= newClk;
end behavioral;
			

	
			