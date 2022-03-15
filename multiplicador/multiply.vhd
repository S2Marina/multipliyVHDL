-- Quartus II VHDL Template
-- Unsigned Multiply

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity multiply is
	port 
	(
		clock : in std_logic;
		go    : in std_logic;
		prt   : out std_logic;
		m	   : in std_logic_vector (5 downto 0);
		mult	   : in std_logic_vector (5 downto 0);
		res   : out std_logic_vector (11 downto 0)
	);

end entity;

architecture rtl of multiply is
begin
   process (clock) begin	
		if (rising_edge(clock)) then
			if(go = '1') then
				res <= std_logic_vector(unsigned(m) * unsigned(mult));
				prt <= '1';
			end if;
		end if;
	end process;
end rtl;
