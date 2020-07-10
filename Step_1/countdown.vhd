library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity countdown is
	port(	clk  : in std_logic;
			start: in std_logic;
			reset: in std_logic;
			fim  : out std_logic;
			--como o valor maximo de segundos é 59 e também é considerado que o valor  
			--maximo de minutos é 59, entao o numero de bits necessarios para cada é 6
			s: out std_logic_vector(5 downto 0);
			m: out std_logic_vector(5 downto 0));
end countdown;

architecture behavioral1 of countdown is
	signal start_i : std_logic:='0';
	signal s_i: std_logic_vector(5 downto 0):="111011";
	signal m_i: std_logic_vector(5 downto 0):="111011";
	signal fim_i: std_logic:='0';
begin

	process(start)
	begin
		if (reset='1' or (s_i="000000" and m_i="000000")) then
			start_i<='0';
			
		elsif rising_edge(start) then
				start_i<= not start_i;	
		end if;
	end process;
	
	process(clk,reset,s_i,m_i)
	begin
		
		if reset='1' then
			s_i<="111011";
			m_i<="111011";
			fim_i<='1';
		else 
			if rising_edge(clk) then
				if (s_i="000000" and m_i="000000") then
						fim_i<='1';
				elsif start_i='1' then	
					
						
						if s_i="000000" then
							m_i<= m_i-'1';
							s_i<="111011";
						else 
							s_i<= s_i-'1';
						end if;
						fim_i<='0';
				end if;
			end if;
		end if;	
	end process;

fim<=fim_i;
s<= s_i;
m<=m_i;

end behavioral1;
			
				
		
	
	