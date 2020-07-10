library IEEE;
use IEEE.STD_LOGIC_1164.all; 
use IEEE.STD_LOGIC_UNSIGNED.all; 
use IEEE.NUMERIC_STD.all;

entity temporizador is 
	
	port (	clk     :  in  std_logic;
				start   :  in  std_logic;
				reset   :  in  std_logic;
				s       :  out std_logic_vector(5 downto 0);
				m       :  out std_logic_vector(5 downto 0);
				fim     :  out std_logic);

end temporizador;	

architecture Behavioral of temporizador is

begin

process (clk)

variable seg : integer := 59;
variable min : integer := 59;

begin
	
	if rising_edge(clk) then
		if (reset = '1') then
			min := 59;
			seg := 59;
		else
			if (start ='1') then
				fim <= '0';
				if (seg > 0) then
					seg := seg - 1;
				elsif (seg = 0 and min > 0) then
					min := min - 1;
					seg := 60;
					seg := seg - 1;
				elsif (min = 0 and seg = 0) then
					fim <= '1';
			else
				min := min;
				seg := seg;
				end if;
			end if;
		end if;
	end if;
	
s <= std_logic_vector(to_unsigned(seg, 6));
m <= std_logic_vector(to_unsigned(min, 6));
	
end process;	
	
end Behavioral;