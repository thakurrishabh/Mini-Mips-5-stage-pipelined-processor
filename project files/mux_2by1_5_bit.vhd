
library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mux_2by1_5_bit is
	port(
		data_in_lsb: in STD_LOGIC_VECTOR(4 downto 0);
		data_in_msb: in STD_LOGIC_VECTOR(4 downto 0);
		sel: in STD_LOGIC;
		data_out: out STD_LOGIC_VECTOR(4 downto 0)
	);
end mux_2by1_5_bit;

architecture behavioral of mux_2by1_5_bit is
begin
	data_out <= data_in_msb when (sel = '1') else data_in_lsb;
end behavioral;