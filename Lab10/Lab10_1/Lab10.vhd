library ieee;
use ieee.std_logic_1164.all;
use work.pacote.all;

entity Lab10 is
	port( sw : in std_logic_vector (10 downto 0);
			  LEDR : out std_logic_vector (1 downto 0)
		  );
end Lab10;

architecture muxnaplaca of Lab10 is

begin
   
	--implementando na placa--
	placa: oitoparaum port map ( sw(3 downto 0), sw(7 downto 4), sw(10 downto 8), LEDR(0));

	-- sw(3 downto 0 ) = A
	-- sw(7 downto 4 ) = B
	-- sw(10 downto 8) = S
end muxnaplaca;