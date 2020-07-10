library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity ClkDividerN is

	generic( N        :     positive := 10);
		port( clkIn    : in  std_logic;
			   clkOut   : out std_logic);
end ClkDividerN;

architecture Behavioral of ClkDividerN is

	subtype TCounter is natural range 0 to N - 1;  --não é necessário
	signal s_divCounter : TCounter := 0;
	
begin

	assert(N >= 2);  --senão acontecer dá msg de erro
	
CDN:	process(clkIn)

		begin
			if (rising_edge(clkIn)) then
				if (s_divCounter >= (N - 1)) then
					clkOut 		 <= '0';
					s_divCounter <= 0;
				else
					if (s_divCounter = (N / 2 - 1)) then
					clkOut <= '1';
					end if;
					s_divCounter <= s_divCounter + 1;
				end if;
			end if;
		end process;

end Behavioral;