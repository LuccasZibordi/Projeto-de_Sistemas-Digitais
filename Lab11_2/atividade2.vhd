library ieee;
use ieee.std_logic_1164.all;
use work.pacoteffA.all;

entity atividade2 is
    port (
        D      : IN  STD_LOGIC;  -- Entrada de dado a ser armazenado
        Resetn : IN  STD_LOGIC;  -- Sinal de reset assíncrono, ativo em '0'
        Clock  : IN  STD_LOGIC;  -- Sinal de clock (bordas usadas para disparo)
        Q      : OUT STD_LOGIC   -- Saída que reflete o valor armazenado
    );
end atividade2;

architecture behavior of atividade2 is
begin

    assincrono: flipflopR
        port map (
            D      => D,       -- Conecta a porta D do componente à entrada D
            Resetn => Resetn,  -- Conecta o reset assíncrono (ativo em '0')
            Clock  => Clock,   -- Conecta o sinal de clock
            Q      => Q        -- Conecta a saída Q do componente à porta Q
        );

end behavior;
