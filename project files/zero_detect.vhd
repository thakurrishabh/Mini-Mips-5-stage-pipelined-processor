library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_signed.all;
use IEEE.numeric_std.all;

entity zero_detect is
Port( A : in STD_LOGIC_VECTOR(31 downto 0);
B : in STD_LOGIC_VECTOR(31 downto 0);
outzero: out STD_LOGIC);
end zero_detect;

architecture behavioural of zero_detect is
signal temp: STD_LOGIC_VECTOR(31 downto 0);

begin 
OutZero <= '1' when temp  = x"00000000" else '0';
process(A,B)
begin
if(A>B) then
temp <= A - B;
else
temp <= B - A;
end if;
end process;
end behavioural;
