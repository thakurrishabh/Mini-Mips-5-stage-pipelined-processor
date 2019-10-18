
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_signed.all;

entity zero_tb is
end zero_tb;

architecture behavioural of zero_tb is
signal A: STD_LOGIC_VECTOR(31 downto 0);
signal B: STD_LOGIC_VECTOR(31 downto 0);
signal oz: STD_LOGIC;
	component zero_detect
	Port( A : in STD_LOGIC_VECTOR(31 downto 0);
	B : in STD_LOGIC_VECTOR(31 downto 0);
	outzero: out STD_LOGIC);
	end component;

begin 
	uut: zero_detect port map(A => A, B => B , outzero => oz);
	process
	begin
		A  <= "00000000000000000000000000001001"; --19 in decimal
        	B  <= "00000000000000000000000000001001";
		wait for 50 ns;
		A  <= "00000000000000000000000000000000"; --19 in decimal
        	B  <= "00000000000000000000000000001001";
		wait for 50 ns;
	end process;
end behavioural;