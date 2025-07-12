library ieee;
use ieee.std_logic_1164.all;

package pacoteffA is

    component flipflopR is
        port (
            D      : in  std_logic;  -- Entrada de dado a ser capturado
            Resetn : in  std_logic;  -- Reset assíncrono, ativo em '0'
            Clock  : in  std_logic;  -- Clock para disparo do flip-flop
            Q      : out std_logic   -- Saída do flip-flop
        );
    end component;

end package pacoteffA;
