
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.numeric_std.all; 

entity control_unit is
port (
 opcode: in std_logic_vector(5 downto 0);
 control_signals_out: out  std_logic_vector(7 downto 0)
 );
end control_unit;

-- RegDst,Branch,MW,AluOp,AluSrc,MTR,MR,,RW

-- 1 RegDst
-- 2 Branch
-- 3 MemRead
-- 4 MemToReg (MTR)
-- 5 ALU op
-- 6 MemWrite
-- 7 ALU Src
-- 8 RW
Architecture Behavioural of control_unit is
 begin
	process(opcode)
	begin
	case opcode is
	when "000001" =>  control_signals_out<="10010101";
	when "000100" =>  control_signals_out<="00010110";
	when "001000" =>  control_signals_out<="11010100";
	when "001100" =>  control_signals_out<="11010100";
	when "100011" =>  control_signals_out<="11011100";
	when "101011" =>  control_signals_out<="01111001"; 
	when others => control_signals_out <= "00000000";
end case;
end process;
			
end Behavioural;