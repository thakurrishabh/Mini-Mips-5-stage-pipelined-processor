library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity Left_Shifter is
port (
 A: in std_logic_vector(31 downto 0);
 en: in std_logic;
 shifted: out  std_logic_vector(31 downto 0));
end Left_Shifter;

Architecture Behavioural of Left_shifter is
 begin
	
--IMPORTANT this file has NOT been used as a shifter and 
--is used simply as a buffer because shifting causes 4*offset
--which is necessary for a memory which is 8bit wide with each 
--instruction 32 bit long causing a jump of 4 to be required.In
--our case instead of PC+4 ourimplementation does PC+1 as each 
--word is 32 bit in instruction memory. if each word was 8 bit
--then PC+4 would be correct for a jump to next instruction
--considering each instruction to be 32 bit.
	shifted<=A when en ='1' else x"00000000";
	--(29 downto 0)&"00" should be used for 8bit wide memory 
--not 32 bit wide
	
end Behavioural;
