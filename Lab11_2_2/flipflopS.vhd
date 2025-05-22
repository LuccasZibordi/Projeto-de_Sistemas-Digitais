LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY flipflopS IS
    PORT (
        D      : IN  STD_LOGIC;  -- Entrada de dado a ser armazenado
        Resetn : IN  STD_LOGIC;  -- Sinal de reset síncrono, ativo em '0'
        Clock  : IN  STD_LOGIC;  -- Sinal de clock (borda de subida)
        Q      : OUT STD_LOGIC   -- Saída que reflete o valor armazenado
    );
END flipflopS;

ARCHITECTURE Behavior OF flipflopS IS
BEGIN

    PROCESS
    BEGIN
        -- Aguarda até detectar borda de subida no sinal Clock
        WAIT UNTIL Clock'EVENT AND Clock = '1';

        -- Se Resetn estiver em nível '0', força Q a '0' (reset)
        IF Resetn = '0' THEN
            Q <= '0';
        ELSE
            -- Caso contrário, captura o valor de D na borda de subida
            Q <= D;
        END IF;
    END PROCESS;

END Behavior;
