
library ieee;
use ieee.std_logic_1164.all;


entity tb_sign16x32 is
end tb_sign16x32;

architecture tb of tb_sign16x32 is

    COMPONENT sign16x32
    PORT(
         signal s16: In std_logic_vector(15 downto 0);
         signal s32: OUT std_logic_vector(31 downto 0)
        );
    END COMPONENT;

        --Input
   signal s16 : std_logic_vector(15 downto 0); 

 	--Output
   signal s32 : std_logic_vector(31 downto 0) := (others => '0');

begin
    
    UUT : sign16x32 port map (
	s16 => s16,
	s32 => s32
    );
	stim_proc: process
   begin  
      s16 <= x"000A";
     
 	 wait for 100 ns;

    end process;


       
end tb ;
