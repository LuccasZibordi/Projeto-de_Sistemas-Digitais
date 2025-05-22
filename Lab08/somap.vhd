library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity parcial is
  Port (
    x  : in std_logic;
    y  : in std_logic;
    cin: in std_logic;
    soma: out std_logic;
    cout: out std_logic
  );
end parcial;

architecture funcionamento of parcial is
begin
  soma <= x xor y xor cin;
  cout <= (x and y) or (x and cin) or (y and cin);
end funcionamento;
