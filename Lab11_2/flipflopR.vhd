LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY flipflopR IS
    PORT (
        D      : IN  STD_LOGIC;  -- Entrada de dado a ser armazenado no flip-flop
        Resetn : IN  STD_LOGIC;  -- Sinal de reset assíncrono, ativo em '0'
        Clock  : IN  STD_LOGIC;  -- Sinal de clock que dispara a captura na borda de subida
        Q      : OUT STD_LOGIC   -- Saída que reflete o valor armazenado
    );
END flipflopR;

ARCHITECTURE Behavior OF flipflopR IS
BEGIN

    -- Processo que reage tanto ao reset quanto às mudanças de clock
    PROCESS (Resetn, Clock)
    BEGIN
        -- Se Resetn estiver em nível lógico '0', força Q a '0' imediatamente
        IF Resetn = '0' THEN
            Q <= '0';
        -- Caso contrário, quando ocorrer borda de subida em Clock, captura D em Q
        ELSIF Clock'EVENT AND Clock = '1' THEN
            Q <= D;
        END IF;
    END PROCESS;

END Behavior;
