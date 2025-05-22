library IEEE;
use IEEE.std_logic_1164.all;

package pacotao is

  component comparador
    port (
      x    : in  std_logic_vector(3 downto 0);
      y    : in  std_logic_vector(3 downto 0);
      AeqB : out std_logic;
      AgtB : out std_logic;
      AltB : out std_logic
    );
  end component comparador;

end pacotao;