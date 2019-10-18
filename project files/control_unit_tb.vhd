

library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity control_unit_tb is
end control_unit_tb;


Architecture behavioural of control_unit_tb is
	component control_unit is
	port (
 		opcode: in std_logic_vector(5 downto 0);
 		control_signals_out: out  std_logic_vector(7 downto 0)
	 );
	end component;

signal opcode: std_logic_vector(5 downto 0);
 signal control_signals_out:  std_logic_vector(7 downto 0);
 
Begin

uut: control_unit PORT MAP(
opcode=>opcode,
control_signals_out=>control_signals_out);

stim_proc:process
begin
opcode<="000000";
wait for 50 ns;
opcode<="000001";
wait for 50 ns;
opcode<="000100";
wait for 50 ns;
opcode<="001000";
wait for 50 ns;
opcode<="001100";
wait for 50 ns;
opcode<="100011";
wait for 50 ns;
opcode<="101011";
wait for 50 ns;
end process;
END;