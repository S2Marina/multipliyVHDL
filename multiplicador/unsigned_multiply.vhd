-- Quartus II VHDL Template
-- Unsigned Multiply

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity unsigned_multiply is
	port 
	(
		clock : in std_logic;
		go_mult : in std_logic;
		prt_mult : out std_logic;
		a	   : in std_logic_vector (5 downto 0);
		b	   : in std_logic_vector (5 downto 0);
		res_mult  : out std_logic_vector (11 downto 0)
	);

end entity;

architecture rtl of unsigned_multiply is
begin
   process (clock) begin	
		if (rising_edge(clock)) then
			if(go_mult = '1') then
				res_mult <= std_logic_vector(unsigned(a) * unsigned(b));
				prt_mult <= '1';
			end if;
		end if;
	end process;
end rtl;
