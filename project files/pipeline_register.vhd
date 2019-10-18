
library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.output_array_types.all;


entity pipeline_register is
	port(
		clk: in STD_LOGIC;
		mem_unit: in mem_array;
		mem_unit_out: inout mem_array
	);
end pipeline_register;

architecture behavioral of pipeline_register is
begin 
	mem_unit_out<=mem_unit when rising_edge(clk) ;
end behavioral;