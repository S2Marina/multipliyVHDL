Library ieee;

use IEEE.std_logic_1164.all;  
use IEEE.std_logic_signed.all;
use ieee.numeric_std.all;


entity booth is
	generic
	(
		DATA_WIDTH_IN : natural := 6;
		DATA_WIDTH_OUT : natural := 12
	);


	port(
		clk		  : in std_logic;
		go  : in std_logic;
		prt : out std_logic;
		m		: in std_logic_vector((DATA_WIDTH_IN - 1) downto 0);
		mult	: in std_logic_vector((DATA_WIDTH_IN - 1) downto 0);
		res		: out std_logic_vector((DATA_WIDTH_OUT - 1) downto 0)
	);
end booth;

architecture rtl of booth is 	
	signal sel1 : std_logic_vector(2 downto 0); 
	signal sel2 : std_logic_vector(2 downto 0); 
	signal sel3 : std_logic_vector(2 downto 0); 
	signal r1 	: std_logic_vector((DATA_WIDTH_OUT - 1) downto 0);
	signal r2 	: std_logic_vector((DATA_WIDTH_OUT - 1) downto 0);
	signal r3 	: std_logic_vector((DATA_WIDTH_OUT - 1) downto 0);
	 	
	component decodificador is
	   generic
		(
			DATA_WIDTH : natural := 6
		);
		port(
			clock : in std_logic;
			m		: in std_logic_vector((DATA_WIDTH - 1) downto 0);
			sel  	: in std_logic_vector(2 downto 0);
			result	: out std_logic_vector(11 downto 0)
		);
	end component;
	
	component somador is
		generic
		(
			DATA_WIDTH : natural := 12
		);

		port 
		(
			clock : in std_logic;
			go  : in std_logic;
			prt : out std_logic;
			a	   : in std_logic_vector((DATA_WIDTH-1) downto 0);
			b	   : in std_logic_vector((DATA_WIDTH-1) downto 0);
			c	   : in std_logic_vector((DATA_WIDTH-1) downto 0);
			result : out std_logic_vector((DATA_WIDTH-1) downto 0)
		);
	end component;
	
begin

	sel1 <= mult(1) & mult(0) & '0';
	sel2 <= mult(3) & mult(2) & mult(1);
	sel3 <= mult(5) & mult(4) & mult(3);

decod1 : decodificador
	generic map (DATA_WIDTH => DATA_WIDTH_IN)
	port map (clock => clk, m => m, sel => sel1, result => r1);

decod2 : decodificador
	generic map (DATA_WIDTH => DATA_WIDTH_IN)
	port map (clock => clk, m => m, sel => sel2, result => r2);
	
decod3 : decodificador
	generic map (DATA_WIDTH => DATA_WIDTH_IN)
	port map (clock => clk, m => m, sel => sel3, result => r3);
	
soma : somador
	generic map (DATA_WIDTH => DATA_WIDTH_OUT)
	port map (clock => clk, go => go, prt => prt, a => r1, b => r2, c => r3, result => res);
end rtl;


