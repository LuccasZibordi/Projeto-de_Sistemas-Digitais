library ieee;
use ieee.std_logic_1164.all;

package paquote is

component dec416 is
port( a,b: in std_logic_vector(1 downto 0);
		 en: in std_logic;
		  f: out std_logic_vector(15 downto 0)
		);
end component;
end package;