
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY tb02 IS
END tb02;

ARCHITECTURE ALU_CLK OF tb02 IS 

  
   signal A,B,R : std_logic_vector(31 downto 0) := (others => '0');
   signal Op : std_logic_vector(2 downto 0) := (others => '0');
   constant Clk_period : time := 10 ns;

BEGIN
   uut: entity work.ALU_CLK PORT MAP (
          InRegA => A,
          InRegB => B,
          InOp => Op,
          OutReg => R
        );

   
    -- Stimulus process
   stim_proc: process
   begin        
      wait for Clk_period*1;
          --test normal operations
	
        A  <= "00000000000000000000000000000111"; --19 in decimal
        B  <= "00000000000000000000000000000011"; --12 in decimal
        Op <= "000"; wait for Clk_period/1;
		A  <= "00000000000000000000000000001000"; --19 in decimal
        B  <= "00000000000000000000000000001111"; --12 in decimal
        Op <= "001"; wait for Clk_period/1;
		A  <= "00000000000000000000000000001111"; --19 in decimal
        B  <= "00000000000000000000000000001000"; --12 in decimal
        Op <= "010"; wait for Clk_period/1;
		B  <= "00000000000000000000000000001001"; --19 in decimal
        A  <= "00000000000000000000000000001001"; --12 in decimal
        Op <= "011"; wait for Clk_period/1;
		A  <= "00000000000000000000000000000111"; --19 in decimal
        B  <= "00000000000000000000000000000011"; --12 in decimal
        Op <= "000"; wait for Clk_period/1;
		A  <= "00000000000000000000000000001000"; --19 in decimal
        B  <= "00000000000000000000000000001111"; --12 in decimal
        Op <= "001"; wait for Clk_period/1;
		A  <= "00000000000000000000000000001111"; --19 in decimal
        B  <= "00000000000000000000000000001000"; --12 in decimal
        Op <= "010"; wait for Clk_period/1;
		A  <= "00000000000000000000000000001001"; --19 in decimal
        B  <= "00000000000000000000000000000010"; --12 in decimal
        Op <= "011"; wait for Clk_period/1;
		
		
	wait for Clk_period; --Bitwise and A and B
	 --addition A nad B  
      wait; 
      
   end process;   
END;