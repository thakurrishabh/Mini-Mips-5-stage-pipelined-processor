
library ieee;

use ieee.std_logic_1164.all;

package output_array_types is
	type mem_array is array(0 to (2**5)-1) of STD_LOGIC_VECTOR(31 downto 0);
end package output_array_types;
