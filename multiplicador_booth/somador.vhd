library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use ieee.numeric_std.all;

entity somador is

	generic
	(
		DATA_WIDTH : natural := 12
	);

	port 
	(
		clock : in std_logic;
		go : in std_logic;
		prt   : out std_logic;
		a	   : in std_logic_vector	((DATA_WIDTH-1) downto 0);
		b	   : in std_logic_vector	((DATA_WIDTH-1) downto 0);
		c	   : in std_logic_vector	((DATA_WIDTH-1) downto 0);
		result : out std_logic_vector ((DATA_WIDTH-1) downto 0)
	);

end entity;

architecture rtl of somador is
	signal sb : std_logic_vector	((DATA_WIDTH-1) downto 0);
	signal sc : std_logic_vector	((DATA_WIDTH-1) downto 0);
begin
	sb <= std_logic_vector(shift_left(signed(b), 2));
	sc <= std_logic_vector(shift_left(signed(c), 4));
	
	process (clock) begin	
		if (rising_edge(clock)) then
			if(go = '1') then
				result <= a + sb + sc;
				prt <= '1';
			end if;
		end if;
	end process;
end rtl;
