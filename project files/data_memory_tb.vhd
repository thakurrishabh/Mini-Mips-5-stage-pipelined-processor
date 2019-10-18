
library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity data_memory_tb is
end data_memory_tb;

architecture structural of data_memory_tb is

	component data_memory is
	port(
		mem_rst: in STD_LOGIC;
		mem_write: in STD_LOGIC;
		mem_read: in STD_LOGIC;
		mem_enable: in STD_LOGIC;
		address: in STD_LOGIC_VECTOR(31 downto 0);
		write_data: in STD_LOGIC_VECTOR(31 downto 0);
		read_data: out STD_LOGIC_VECTOR(31 downto 0)
	);
	end component;


signal test_rst: STD_LOGIC;
signal test_write: STD_LOGIC;
signal test_read: STD_LOGIC;
signal test_enable: STD_LOGIC;
signal test_address: STD_LOGIC_VECTOR(31 downto 0);
signal test_write_data: STD_LOGIC_VECTOR(31 downto 0);
signal test_read_data: STD_LOGIC_VECTOR(31 downto 0);


begin 
	uut: data_memory port map(mem_rst => test_rst, mem_write => test_write, mem_read => test_read, mem_enable => test_enable, address => test_address, write_data => test_write_data, read_data => test_read_data);
	
	stim: process
	begin
		test_rst<='1'; test_write<='1'; test_read<='0'; test_address<="00000000000000000000000000000011"; test_write_data<="11111111111111111111111111111111"; test_enable<='1';
		wait for 50 ns;
		test_rst<='1'; test_write<='0'; test_read<='1'; test_address<="00000000000000000000000000000011"; test_write_data<="00000000000000000000000000000000"; test_enable<='1';
		wait for 50 ns;
		test_rst<='0'; test_write<='0'; test_read<='1'; test_address<="00000000000000000000000000000011"; test_write_data<="00000000000000000000000000000000"; test_enable<='1';
		wait for 50 ns;
		test_rst<='1'; test_write<='1'; test_read<='0'; test_address<="11000000000000000000000000000000"; test_write_data<="11111111111111111111111111111111"; test_enable<='1';
		wait for 50 ns;
		test_rst<='1'; test_write<='0'; test_read<='1'; test_address<="11000000000000000000000000000000"; test_write_data<="00000000000000000000000000000000"; test_enable<='1';
		wait for 50 ns;
		test_rst<='1'; test_write<='1'; test_read<='0'; test_address<="00000000000000000000000000000011"; test_write_data<="10101010101010101010101010101010"; test_enable<='1';
		wait for 50 ns;
		test_rst<='1'; test_write<='0'; test_read<='1'; test_address<="00000000000000000000000000000011"; test_write_data<="00000000000000000000000000000000"; test_enable<='1';
		wait for 50 ns;
	
	end process;
end structural;
