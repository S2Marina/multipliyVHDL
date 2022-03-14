library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Topo is
	port(
			osc_clk : in std_logic;
			reset_n : in std_logic--;
			--m : in std_logic_vector(5 downto 0); 
			--mult : in std_logic_vector(5 downto 0);
			--result : out std_logic_vector(11 downto 0)
		);
end Topo;

architecture rtl of Topo is
signal go : std_logic;
signal prt : std_logic;
signal m : std_logic_vector(5 downto 0);
signal mult : std_logic_vector(5 downto 0);
signal res : std_logic_vector(11 downto 0);

component MySoc is
	port (
		clk_clk       : in  std_logic := '0'; --   clk.clk
		reset_reset_n : in  std_logic := '0'; -- reset.reset_n
		go_export     : out std_logic; --    go.export
		prt_export    : in  std_logic := '0'; --   prt.export
		res_export    : out std_logic_vector(11 downto 0); --   res.export
		mult_export   : in  std_logic_vector(5 downto 0)  := (others => '0'); --  mult.export
		m_export      : in  std_logic_vector(5 downto 0)  := (others => '0')  --     m.export
	);
end component MySoc;

component unsigned_multiply is
	port 
	(
		clock : in std_logic;
		go_mult : in std_logic;
		prt_mult : out std_logic;
		a	   : in std_logic_vector(5 downto 0);
		b	   : in std_logic_vector (5 downto 0);
		res_mult  : out std_logic_vector(11 downto 0)
	);

end component;

begin	
	Soc : MySoc port map (clk_clk => osc_clk, reset_reset_n => reset_n, go_export => go, prt_export => prt, res_export => res, mult_export => mult, m_export => m);
	multiplicador : unsigned_multiply port map (clock => osc_clk, a => m, b => mult, res_mult => res, go_mult => go, prt_mult => prt);
end rtl;