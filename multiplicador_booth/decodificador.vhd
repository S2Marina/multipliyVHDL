library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use ieee.numeric_std.all;  

entity decodificador is

	generic
	(
		DATA_WIDTH : natural := 6
	);

	port 
	(
		clock : in std_logic;
	   m : in std_logic_vector ((DATA_WIDTH-1) downto 0);
		sel   : in std_logic_vector  (2 downto 0);
		result : out std_logic_vector (11 downto 0)
	);

end entity;

architecture rtl of decodificador is
	
	signal not_m : std_logic_vector ((DATA_WIDTH-1) downto 0);
	signal m2 : std_logic_vector ((DATA_WIDTH-1) downto 0);
   signal not_m2 : std_logic_vector ((DATA_WIDTH-1) downto 0);
	
begin

	not_m <= not m + "000001";
	m2 <= std_logic_vector(shift_left(signed(m), 1));
	not_m2 <= not m2 + "000001";
	
	result <= (others	=> '0') when (sel = "000") or (sel = "111") else
				 "000000" & m 		 when (sel = "001") else
				 "000000" & m 	    when (sel = "010") else
				 "000000" & m2 when (sel = "011") else
				 "111111" & not_m2 when (sel = "100") else
				 "111111" & not_m when (sel = "101") else
				 "111111" & not_m when (sel = "110");

end rtl;
