
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY CPU_tb IS
END CPU_tb;
 
ARCHITECTURE behavior OF CPU_tB IS 
   
    COMPONENT CPU_final
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
	   enable : IN  std_logic;
         pc_out: out std_logic_vector(31 downto 0);
         alu_out : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
   
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
    signal enable : std_logic := '1';
   
   signal pc_out : std_logic_vector(31 downto 0);
   signal alu_out : std_logic_vector(31 downto 0);
   
   constant clk_period : time := 20 ns;
BEGIN
 
   uut: CPU_final PORT MAP (
          clk => clk,
          reset => reset,
	 enable=>enable,
          pc_out => pc_out,
          alu_out => alu_out
        );

   -- Clock process definitions
   clk_process :process
   begin
  clk <= '0';
  wait for clk_period/2;
  clk <= '1';
  wait for clk_period/2;
   end process;
   -- Stimulus process
   stim_proc: process
   begin  
      reset <= '1';
      wait for clk_period;
  	reset <= '0';
      -- insert stimulus here 
      wait;
   end process;

END;