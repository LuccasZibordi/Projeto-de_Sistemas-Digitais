Library ieee;
use ieee.std_logic_1164.all;
use work.Pacotedeff.all;

entity Atividade1 is
    port(
        D     : in  std_logic;                   -- Entrada de dado comum a todos os estágios
        clock : in  std_logic;                   -- Sinal de clock que controla latch e FFs
        Q     : out std_logic_vector(2 downto 0) -- Vetor de saídas: Q(0), Q(1) e Q(2)
    );
end Atividade1;

architecture behavior of Atividade1 is
begin

    -- Instancia um latch (componente 'late') que atualiza Q(0) enquanto clock = '1'
    latchd: late
        port map (
            D     => D,        -- Conecta a entrada de dado ao latch
            clock => clock,    -- Usa clock como sinal de enable (level-sensitive)
            Q     => Q(0)      -- Saída armazenada no bit 0 de Q
        );

    -- Instancia um flip-flop tipo D sensível à borda de subida (componente 'flipflopsubida')
    FlipFlopprocess: flipflopsubida
        port map (
            D     => D,        -- Entrada de dado
            clock => clock,    -- Clock para disparo na transição 0→1
            Q     => Q(1)      -- Saída armazenada no bit 1 de Q
        );

    -- Instancia um flip-flop tipo D sensível à borda de descida (componente 'flipflopdescida')
    Flipflopwaituntil: flipflopdescida
        port map (
            D     => D,        -- Entrada de dado
            clock => clock,    -- Clock para disparo na transição 1→0
            Q     => Q(2)      -- Saída armazenada no bit 2 de Q
        );

end behavior;
