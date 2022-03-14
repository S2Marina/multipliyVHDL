library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity multiplicador_software is
	port(
			osc_clk : in std_logic;
			reset_n : in std_logic
		);
end multiplicador_software;

architecture rtl of multiplicador_software is

component MySoc is
	port (
		clk_clk       : in std_logic := '0'; --   clk.clk
		reset_reset_n : in std_logic := '0'  -- reset.reset_n
	);
end component MySoc;

begin	
	Soc : MySoc port map (clk_clk => osc_clk, reset_reset_n => reset_n);
end rtl;