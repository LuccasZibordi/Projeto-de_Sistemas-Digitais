library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

package pacote is
  component parcial
    Port (
      x  : in std_logic;
      y  : in std_logic;
      cin: in std_logic;
      soma: out std_logic;
      cout: out std_logic
    );
  end component;
end package pacote;
