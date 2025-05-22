library ieee;
use ieee.std_logic_1164.all;

entity dec24 is
port( a,b,en: in std_logic;
		f: out std_logic_vector(3 downto 0)
		);
end dec24;

architecture decodificador of dec24 is

begin

f(0)<=(not a and not b and en);
f(1)<=(not a and  b and en);
f(2)<=( a and not b and en);
f(3)<=( a and  b and en);

end decodificador;