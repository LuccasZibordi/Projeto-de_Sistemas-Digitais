LIBRARY ieee;
USE ieee.std_logic_1164.all;

package pacoteS is

    component flipflopS is
        PORT (
            D      : IN  STD_LOGIC;  -- Entrada de dados
            Resetn : IN  STD_LOGIC;  -- Sinal de reset ativo em '0'
            Clock  : IN  STD_LOGIC;  -- Sinal de clock (borda de subida)
            Q      : OUT STD_LOGIC   -- Saída armazenada do flip-flop
        );
    END component;

end package pacoteS;
