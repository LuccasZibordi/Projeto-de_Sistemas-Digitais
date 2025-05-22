library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity completo is
Port (
x  : in std_logic;
y  : in std_logic;
cin: in std_logic;
soma: out std_logic;
cout: out std_logic
);
end completo;

architecture funcionamento of completo is -- soma 2 num de 1 bit
begin
soma <= x xor y xor cin;
cout <= (x and y) or (x and cin) or (y and cin);
end funcionamento;