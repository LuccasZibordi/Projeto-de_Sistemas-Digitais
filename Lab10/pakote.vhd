library ieee;
use ieee.std_logic_1164.all;

package pakote is

component doisparaum is
port ( a,b,s: in std_logic;
         f: out std_logic
			);
end component;

end package;