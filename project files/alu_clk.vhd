
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_signed.all;

entity ALU_CLK is
port(   
        InRegA,InRegB : in std_logic_vector(31 downto 0); --input operands
        InOp : in std_logic_vector(2 downto 0); --Operation to be performed
        OutReg : out std_logic_vector(31 downto 0)  --output of ALU
        );
end ALU_CLK;

architecture Behavioral of ALU_CLK is

--signal Reg1,Reg2,Reg3 : std_logic_vector(31 downto 0) := (others => '0');
-- signal temp: std_logic_vector(31 downto 0);
begin
--Reg1 <= InRegA;
--Reg2 <= InRegB;
--OutReg <= Reg3;
process(InRegA,InRegB,InOp)
   
begin
 

      case InOp is
           
            when "110" => 
                 OutReg <= InRegA and InRegB;  --AND gate  
            when "001" => 
                 OutReg <= InRegA xor InRegB;   --XOR gate  
	    when "010" => 
                 OutReg <= InRegA + InRegB;    --addition
	    when "011" => 
                 OutReg <= InRegA - InRegB;    --Subtraction	 
            when others => NULL;
      end case;   
 
end process;    
end Behavioral; 