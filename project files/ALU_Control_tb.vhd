
library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ALU_Control_tb is
end ALU_Control_tb;


Architecture behavioural of ALU_Control_tb is
	component ALU_Control is
	port(
		funct: in std_logic_vector(5 downto 0);
		 en: in std_logic;
 		ACU: out  std_logic_vector(2 downto 0);
 		JMP: out std_logic);
	end component;

signal funct: std_logic_vector(5 downto 0);
 signal en:  std_logic;
 signal ACU:  std_logic_vector(2 downto 0);
 signal JMP:  std_logic;
Begin

uut: ALU_Control PORT MAP(
funct=>funct,
en=>en,
JMP=>JMP,
ACU=>ACU);

stim_proc:process
begin
funct<="100000";en<='1';
wait for 50 ns;
funct<="100100";en<='0';
wait for 50 ns;

end process;
END;
