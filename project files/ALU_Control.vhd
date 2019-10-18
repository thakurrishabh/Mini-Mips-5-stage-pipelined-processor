library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.numeric_std.all; 

entity ALU_Control is
port (
 funct: in std_logic_vector(5 downto 0);
 JMP: out std_logic;
 en: in std_logic;
 ACU: out  std_logic_vector(2 downto 0)
 );
end ALU_Control;

Architecture Behavioural of ALU_Control is
 begin
JMP<=not(funct(5));
process(funct(4 downto 0))
begin
if (en='1') then
case funct(4 downto 0) is
when "00000" => 
 ACU<="010";
when "00010" => 
ACU<="011";
when "00100" => 
 ACU<="110";
when "01000" => 
ACU<="001";
when others => ACU <= "000";
end case;
else
ACU <= "000";
end if;
end process;
			
end Behavioural;