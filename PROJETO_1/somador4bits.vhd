library ieee;
use ieee.std_logic_1164.all;
use work.all;

entity somador4 is
port (
   a,b: in std_logic_vector(3 downto 0);
	cin: in std_logic;
	soma: out std_logic_vector(3 downto 0);
	cout: out std_logic
);

end somador4;

architecture soma of somador4 is
signal c : std_logic_vector (2 downto 0);
signal ov: std_logic;

begin  -- somador carry look ahead, ou seja, ele pega o carry out de uma soma e joga como carry in da próxima soma

soma(0) <= cin XOR a(0) XOR b(0);
c(0) <= (cin AND a(0)) OR (cin AND b(0)) OR (a(0) AND b(0));

soma(1) <= c(0) XOR a(1) XOR b(1);
c(1) <= (c(0) AND a(1)) OR (c(0) AND b(1)) OR (a(1) AND b(1));

soma(2) <= c(1) XOR a(2) XOR b(2);
c(2) <= (c(1) AND a(2)) OR (c(1) AND b(2)) OR (a(2) AND b(2));

soma(3) <= c(2) XOR a(3) XOR b(3);
cout <= (c(2) AND a(3)) OR (c(2) AND b(3)) OR (a(3) AND b(3));



end architecture;
