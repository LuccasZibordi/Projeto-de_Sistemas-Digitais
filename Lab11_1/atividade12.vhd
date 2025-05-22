library ieee;
use ieee.std_logic_1164.all;
use work.Pacoteffd.all;

entity atividade12 is
    port(
        D     : in  std_logic;                       -- Entrada de dado comum a todos
        clock : in  std_logic;                       -- Sinal de clock para disparo
        Q     : out std_logic_vector(2 downto 0)     -- Vetor de saídas: Q(0), Q(1) e Q(2)
    );
end atividade12;

architecture behavior of atividade12 is
begin

    -- Instancia um latch tipo D (comporta-se enquanto CLOCK = '1')
    latchd: late
        port map (
            D     => D,           -- Conecta a entrada D ao latch
            clock => clock,       -- Conecta o sinal de clock como enable
            Q     => Q(0)         -- Saída armazenada no bit 0 de Q
        );

    -- Instancia um flip-flop tipo D sensível à borda de subida do clock
    FlipFlopprocess: flipflopsubidaD
        port map (
            D     => D,           -- Entrada de dado
            clock => clock,       -- Clock para captura na subida
            Q     => Q(1)         -- Saída armazenada no bit 1 de Q
        );

    -- Instancia um flip-flop tipo D que usa WAIT UNTIL para detectar borda de descida
    Flipflopwaituntil: flipflopdescidaD
        port map (
            D     => D,           -- Entrada de dado
            clock => clock,       -- Clock para captura na descida
            Q     => Q(2)         -- Saída armazenada no bit 2 de Q
        );

end behavior;
