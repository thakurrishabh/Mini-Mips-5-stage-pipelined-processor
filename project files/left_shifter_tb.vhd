LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY left_shifter_tb IS
END left_shifter_tb;
 
ARCHITECTURE behavior OF left_shifter_tb IS 
 
    -- Component Declaration for Shifter
    COMPONENT left_shifter
    PORT(
         A : IN  std_logic_vector(31 downto 0);
         en: in std_logic;
         SHIFTED : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
   
   --Inputs
   signal A : std_logic_vector(31 downto 0) := (others => '0');
   signal en: std_logic;
   signal SHIFTED : std_logic_vector(31 downto 0);
 
BEGIN
 
 -- Instantiate the Shifter
   uut: left_shifter PORT MAP (
          A => A,
          en=> en,  
          SHIFTED => SHIFTED
        );

   -- Stimulus process for shifter
   stim_proc: process
   begin  
      A <= x"00000044";
	en<='1';
      wait for 100 ns; 
  
      
   end process;

END;