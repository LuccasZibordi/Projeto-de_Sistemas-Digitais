LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
use work.backpack.all;

entity Lab12 is
port(

	SW: in std_logic_vector (2 downto 0);
	KEY: in std_logic_vector (1 downto 0);
	LEDR: out std_logic_vector (2 downto 0)
	);
	
end Lab12;

architecture flipflop of Lab12 is

begin

instanciando: muxdff port map (SW(0), SW(1), SW(2), KEY(0), LEDR(0));

LEDR(1)<= SW(1);
LEDR(2)<= SW(2);

end flipflop;	