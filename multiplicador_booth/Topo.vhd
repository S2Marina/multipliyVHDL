library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Topo is
	port(
			osc_clk : in std_logic;
			reset_n : in std_logic
		);
end Topo;

architecture rtl of Topo is
signal go_sig : std_logic;
signal prt_sig : std_logic;
signal m_sig : std_logic_vector(5 downto 0);
signal mult_sig : std_logic_vector(5 downto 0);
signal res_sig : std_logic_vector(11 downto 0);

component MySoc is
	port (
		clk_clk       : in  std_logic                     := '0';             --   clk.clk
		reset_reset_n : in  std_logic                     := '0';             -- reset.reset_n
		go_export     : out std_logic;                                        --    go.export
		prt_export    : in  std_logic                     := '0';             --   prt.export
		res_export    : in  std_logic_vector(11 downto 0) := (others => '0'); --   res.export
		mult_export   : out std_logic_vector(5 downto 0);                     --  mult.export
		m_export      : out std_logic_vector(5 downto 0)                      --     m.export
	);
end component MySoc;

component booth is
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
end component booth;

begin	
	Soc : MySoc port map (clk_clk => osc_clk, reset_reset_n => reset_n, go_export => go_sig, prt_export => prt_sig, res_export => res_sig, mult_export => mult_sig, m_export => m_sig);
	multiplicador : booth port map (clk => osc_clk, m => m_sig, mult => mult_sig, res => res_sig, go => go_sig, prt => prt_sig);
end rtl;