library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.pacotao.all;

entity mult is
Port (
a,b: in std_logic_vector(1 downto 0);
produto : out std_logic_vector(3 downto 0)
);
end mult;

architecture multiplica of mult is
signal s: std_logic_vector(2 downto 0);
signal c: std_logic;
signal p: std_logic_vector(3 downto 0);
signal cin: std_logic;

begin

cin<='0';

p(0) <= a(0) and b(0); -- produto p(0)
s(0) <= a(1) and b(0);
s(1) <= a(0) and b(1);
somador1: completo port map (
x => s(0),
y => s(1),
cin => cin,
soma => p(1), -- produto p(1) soma dos ands de m1q0 e m0q1
cout => c
);

s(2) <= a(1) and b(1);

somador2: completo port map (
x => s(2),
y => '0',--- o cin tem q ser zero no somador
cin => c,
soma => p(2), -- produto p(2) soma do and m1q1 com o carry out da soma anterior
cout => p(3)  -- produto p(3) o carry out do sistema de multiplicação
);

produto <= p; -- junção de todos os p's para formar o produto final

end multiplica;