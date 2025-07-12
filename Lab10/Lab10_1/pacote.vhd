library ieee;
use ieee.std_logic_1164.all;

package pacote is

component oitoparaum is
	port( a,b : in std_logic_vector (3 downto 0);
	        s : in std_logic_vector (2 downto 0);
			  g : out std_logic
		  );
end component;

end package;