
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY tb_rf32 IS
END tb_rf32;
 
ARCHITECTURE behavior OF tb_rf32 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT rf32
    PORT(
         rst_n : IN  std_logic;
         write_en : IN  std_logic;
         read_addr_1 : IN  std_logic_vector(4 downto 0);
         read_addr_2 : IN  std_logic_vector(4 downto 0);
         write_addr : IN  std_logic_vector(4 downto 0);
         write_data : IN  std_logic_vector(31 downto 0);
         read_data_1 : OUT  std_logic_vector(31 downto 0);
         read_data_2 : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal rst_n : std_logic := '0';
   signal write_en : std_logic := '0';
   signal read_addr_1 : std_logic_vector(4 downto 0) := (others => '0');
   signal read_addr_2 : std_logic_vector(4 downto 0) := (others => '0');
   signal write_addr : std_logic_vector(4 downto 0) := (others => '0');
   signal write_data : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal read_data_1 : std_logic_vector(31 downto 0);
   signal read_data_2 : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 50 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: rf32 PORT MAP (
          rst_n  => rst_n,
          write_en  => write_en,
          read_addr_1 => read_addr_1,
          read_addr_2 => read_addr_2,
          write_addr => write_addr,
          write_data => write_data,
          read_data_1 => read_data_1,
          read_data_2 => read_data_2
        );

   
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.

      -- insert stimulus here
		
		rst_n<='1';
		
		wait for CLK_period;
		rst_n<='0';
		-- READ DATA FROM REGISTER 1
		write_en 			<= '1';
		read_addr_1(4 downto 0) 		<= "00000";
		read_addr_2(4 downto 0)		<= "00000";
		write_addr(4 downto 0)		<= "01100";
		write_data 	<= x"00000001";

		wait for CLK_period;
		
		-- INSERT DATA TO REGISTER 1
		write_en 			<= '0';
		read_addr_1(4 downto 0) 	<= "01011";
		read_addr_2(4 downto 0)		<= "01100";
		write_addr(4 downto 0)		<= "00000";
		write_data 	<= (others => '0');
		
		wait for CLK_period;
		
--		-- READ DATA FROM REGISTER 1
--		write_en 			<= '1';
--		read_addr_1(4 downto 0) 		<= "00001";
--		read_addr_2(4 downto 0)		<= "00001";
--		write_addr(4 downto 0)		<= "00001";
--		write_data 	<= "10101010101010101010101010101010";
-- 		
--		wait for CLK_period;
--		
--		-- INSERT DATA TO REGISTER 1
--		write_en 			<= '1';
--		read_addr_1(4 downto 0) 		<= "00001";
--		read_addr_2(4 downto 0)		<= "00001";
--		write_addr(4 downto 0)		<= "00011";
--		write_data 	<= (others => '1');
		
      wait;
   end process;

END;
