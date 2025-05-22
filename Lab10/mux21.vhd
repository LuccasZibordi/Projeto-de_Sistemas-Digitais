library ieee;
use ieee.std_logic_1164.all;

entity doisparaum is
port ( a,b,s: in std_logic;
         f: out std_logic
			);
end doisparaum;

architecture mux of doisparaum is

begin
f<=( a and not s) or (b and s);
end mux;