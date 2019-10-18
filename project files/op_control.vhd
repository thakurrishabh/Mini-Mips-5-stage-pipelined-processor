
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.numeric_std.all; 

entity op_control is
port (
 opcode: in std_logic_vector(5 downto 0);
 en: in std_logic;
 OCU: out  std_logic_vector(2 downto 0)
 );
end op_control;

Architecture Behavioural of op_control is
 begin
process(opcode)
begin
if (en='1') then
case opcode is
when "001000" => 
 OCU<="010";
when "001100" => 
OCU<="110";
when "001001" => 
 OCU<="011";
when "001110" => 
OCU<="001";
when "100011" => 
OCU<="010";
when "101011" => 
OCU<="010";
when others => OCU <= "000";
end case;
else
OCU <= "000";
end if;
end process;
			
end Behavioural;