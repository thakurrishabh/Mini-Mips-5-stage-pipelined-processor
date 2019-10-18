 LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY Instruction_tb IS

END Instruction_tb;

ARCHITECTURE behavior OF Instruction_tb IS

COMPONENT Instruction_Memory
PORT(
pc: in std_logic_vector(31 downto 0);
instruction: out std_logic_vector(31 downto 0));
END COMPONENT;

signal pc: std_logic_vector(31 downto 0);
signal instruction:std_logic_vector(31 downto 0);

BEGIN

uut: Instruction_Memory PORT MAP(
pc=>pc,
instruction=>instruction);



stim_proc:process
begin
pc<="00000000000000000000000000000000";
wait for 50 ns;
pc<="00000000000000000000000000000001";
wait for 50 ns;

end process;
END;