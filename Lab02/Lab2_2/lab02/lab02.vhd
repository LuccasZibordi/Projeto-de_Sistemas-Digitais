LIBRARY IEEE;

ENTITY Lab02 is
port(x1,x2 : in bit;
		f,g  : out bit);
END Lab02;

ARCHITECTURE Logica of Lab02 is
BEGIN
	f<= ((x1 and x2) or (not x1 and not x2)) or ((x1 and not x2) or (not x1 and x2));
	g<= (x1 xnor x2) or (x1 xor x2);
END Logica;