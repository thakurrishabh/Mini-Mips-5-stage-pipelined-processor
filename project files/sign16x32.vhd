library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.numeric_std.all; 

ENTITY sign16x32 IS
port(
    signal s16: in std_logic_vector(15 downto 0);
    signal s32: out std_logic_vector(31 downto 0)
);
END sign16x32;

architecture RTL of sign16x32 is
     
begin
   s32 <= std_logic_vector(resize(unsigned(s16), s32'length));
end;

