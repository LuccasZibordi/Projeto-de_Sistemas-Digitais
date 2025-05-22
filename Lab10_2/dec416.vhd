library ieee;
use ieee.std_logic_1164.all;
use work.pkg.all;

entity dec416 is
port( 
		  a,b: in std_logic_vector(1 downto 0);
		  en: in std_logic;
		  f: out std_logic_vector(15 downto 0)
		);
end dec416;

architecture decodifica of dec416 is
	signal i: std_logic_vector (3 downto 0);
	
begin

	-- primeiro decodificador que vai gerar os enables do resto--
	decMaster: dec24 port map (a(0), b(0), en, i);
	
	-- 4 decodificadores que geram as 16 saídas --
	decslave1: dec24 port map(a(1), b(1), i(0),f(3 downto 0));
	decslave2: dec24 port map(a(1), b(1), i(1),f(7 downto 4));
	decslave3: dec24 port map(a(1), b(1), i(2),f(11 downto 8));
	decslave4: dec24 port map(a(1), b(1), i(3),f(15 downto 12));
	
end decodifica;