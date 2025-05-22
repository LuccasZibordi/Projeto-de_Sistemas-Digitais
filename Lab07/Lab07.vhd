	library ieee;
use ieee.std_logic_1164.all;
use work.all;

entity lab07 is 

port (

		SW: in std_logic_vector(8 downto 0);
		HEX7: out std_logic_vector(0 to 6);
		HEX5: out std_logic_vector(0 to 6);
		HEX3: out std_logic_vector(0 to 6);
		HEX1: out std_logic_vector(0 to 6);
		HEX0: out std_logic_vector(0 to 6)
);

end lab07;

architecture arc_lab07 of lab07 is
	
	signal cout: std_logic;
	signal soma: std_logic_vector (3 downto 0);
	signal c : std_logic_vector (2 downto 0);
	signal a : std_logic_vector (3 downto 0);
	signal b : std_logic_vector (3 downto 0);
	
begin 

	soma(0) <= SW(0) XOR SW(1) XOR SW(5);
	c(0) <= (SW(0) AND SW(1)) OR (SW(0) AND SW(5)) OR (SW(1) AND SW(5));
	
	
	soma(1) <= c(0) XOR SW(2) XOR SW(6);
	c(1) <= (c(0) AND SW(2)) OR (c(0) AND SW(6)) OR (SW(2) AND SW(6));
	
	soma(2) <= c(1) XOR SW(3) XOR SW(7);
	c(2) <= (c(1) AND SW(3)) OR (c(1) AND SW(7)) OR (SW(3) AND SW(7));
	
	soma(3) <= c(2) XOR SW(4) XOR SW(8);
	cout <= (c(2) AND SW(4)) OR (c(2) AND SW(8)) OR (SW(4) AND SW(8));
	
	a <= SW (8 downto 5);
	b <= SW (4 downto 1);
	
	with cout select 
		HEX7 <=  "0000001" when '0',
					"1001111" when '1',
					"1111111" when others;
					
	with soma select 
		HEX5 <=  "0000001" when "0000",
					"1001111" when "0001",
					"0010010" when "0010",
					"0000110" when "0011",
					"1001100" when "0100",
					"0100100" when "0101",
					"0100000" when "0110",
					"0001111" when "0111",
					"0000000" when "1000",
					"0001100" when "1001",
					"0001000" when "1010",
					"1100000" when "1011",
					"0110001" when "1100",
					"1000010" when "1101",
					"0110000" when "1110",
					"0111000" when "1111",
					"1111111" when others;
					
	with a select 
		HEX3 <=  "0000001" when "0000",
					"1001111" when "0001",
					"0010010" when "0010",
					"0000110" when "0011",
					"1001100" when "0100",
					"0100100" when "0101",
					"0100000" when "0110",
					"0001111" when "0111",
					"0000000" when "1000",
					"0001100" when "1001",
					"0001000" when "1010",
					"1100000" when "1011",
					"0110001" when "1100",
					"1000010" when "1101",
					"0110000" when "1110",
					"0111000" when "1111",
					"1111111" when others;
					
	with b select 
		HEX1 <=  "0000001" when "0000",
					"1001111" when "0001",
					"0010010" when "0010",
					"0000110" when "0011",
					"1001100" when "0100",
					"0100100" when "0101",
					"0100000" when "0110",
					"0001111" when "0111",
					"0000000" when "1000",
					"0001100" when "1001",
					"0001000" when "1010",
					"1100000" when "1011",
					"0110001" when "1100",
					"1000010" when "1101",
					"0110000" when "1110",
					"0111000" when "1111",
					"1111111" when others;
					
	with SW(0) select 
		HEX0 <=  "0000001" when '0',
					"1001111" when '1',
					"1111111" when others;
	
	end architecture;
