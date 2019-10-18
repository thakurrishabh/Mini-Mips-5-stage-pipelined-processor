library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.output_array_types.all;


entity pipeline_register_tb is
end pipeline_register_tb;

architecture behavioral of pipeline_register_tb is
	component pipeline_register is 
	port(
		clk: in STD_LOGIC;
		mem_unit: in mem_array;
		mem_unit_out: inout mem_array
	);
	end component;
	signal test_mem_unit: mem_array;
	signal test_mem_unit_out: mem_array;
	signal test_clk: STD_LOGIC:= '0';
begin 
	uut: pipeline_register port map (
	clk=> test_clk,
	mem_unit=> test_mem_unit,
	mem_unit_out=> test_mem_unit_out
	);

	process
	begin 
		test_clk<='0';
		test_mem_unit(0)<= x"FFFFFFFF";
	
		wait  for 50 ns;
		test_clk<='1';
		test_mem_unit(0)<= x"FFFFFFFF";
		
		wait  for 50 ns;
		test_clk<='0';
		test_mem_unit(0)<= x"FFFFFFFF";
		
		wait  for 50 ns;
		test_clk<='1';
		test_mem_unit(0)<= x"FFFFFFFF";
		
		wait  for 50 ns;

	end process;
end behavioral;
