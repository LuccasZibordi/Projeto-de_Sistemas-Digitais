library ieee;
use ieee.std_logic_1164.all;

entity flipflopsubida is
    port(
        D     : in  std_logic;  -- Entrada de dado a ser armazenado no flip-flop
        Clock : in  std_logic;  -- Sinal de clock para disparo na borda de subida
        Q     : out std_logic   -- Saída que reflete o valor capturado de D
    );
end flipflopsubida;

architecture behavior of flipflopsubida is
begin

    -- Processo sensível apenas ao sinal de clock
    process (Clock)
    begin
        -- Detecta borda de subida: evento em Clock e valor igual a '1'
        if Clock'event and Clock = '1' then
            Q <= D;  -- Na borda de subida, armazena D em Q
        end if;
        -- Entre bordas, Q mantém seu valor (comportamento de flip-flop)
    end process;

end behavior;
