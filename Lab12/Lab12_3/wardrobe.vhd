LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
USE ieee.std_logic_unsigned.all ;

package wardrobe is

component upcount IS
PORT (
			Clock, Resetn, E : IN STD_LOGIC ;
			Q : OUT STD_LOGIC_VECTOR (3 DOWNTO 0)
		) ;
END component ;

end package;
