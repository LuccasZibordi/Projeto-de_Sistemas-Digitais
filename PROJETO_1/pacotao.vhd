library IEEE;
use IEEE.std_logic_1164.all;

package pacotao is -- Pacote com todos os componentes do projeto

component comparador
port (
x    : in  std_logic_vector(3 downto 0); -- componente comparador
y    : in  std_logic_vector(3 downto 0);
AeqB : out std_logic;
AgtB : out std_logic;
AltB : out std_logic
);

end component comparador;

component completo
Port (
x  : in std_logic;
y  : in std_logic;
cin: in std_logic;
soma: out std_logic; -- componente somador de 2 num  de 1 bit
cout: out std_logic
);

end component completo;

component somador4 
port (
   a,b: in std_logic_vector(3 downto 0);
	cin: in std_logic;                        -- componente somador de 2 num de 4 bits
	soma: out std_logic_vector(3 downto 0);
	cout: out std_logic
);

end component somador4;

component mult
Port (
a,b: in std_logic_vector(1 downto 0);  -- componente multiplicador
produto : out std_logic_vector(3 downto 0)
);

end component mult;

end pacotao;