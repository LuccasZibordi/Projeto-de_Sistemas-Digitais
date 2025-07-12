LIBRARY ieee;  
USE ieee.std_logic_1164.all;  
USE work.pacoteS.all;  

ENTITY atividade2_2 IS
    PORT (
        D      : IN  STD_LOGIC;  -- Entrada de dados do flip-flop
        Resetn : IN  STD_LOGIC;  -- Sinal de reset assíncrono ativo em nível '0'
        Clock  : IN  STD_LOGIC;  -- Sinal de clock que dispara a borda de subida
        Q      : OUT STD_LOGIC   -- Saída armazenada pelo flip-flop
    );
END atividade2_2;
ARCHITECTURE behavior OF atividade2_2 IS
BEGIN

    sincrono: flipflopS
        PORT MAP (
            D      => D,       -- conecta a porta D do componente à porta D da entidade
            Resetn => Resetn,  -- conecta o reset ativo baixo
            Clock  => Clock,   -- conecta o sinal de clock
            Q      => Q        -- conecta a saída Q
        );

END behavior;
