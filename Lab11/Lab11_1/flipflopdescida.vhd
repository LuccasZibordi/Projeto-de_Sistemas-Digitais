Library ieee;
use ieee.std_logic_1164.all;

entity flipflopdescida is
    port(
        D     : in  std_logic;  -- Entrada de dado a ser capturado
        Clock : in  std_logic;  -- Sinal de clock, transição 1->0 dispara a captura
        Q     : out std_logic   -- Saída que reflete o valor capturado de D
    );
end flipflopdescida;

architecture behavior of flipflopdescida is
begin

    -- Processo que verifica mudanças no sinal Clock
    process (Clock)
    begin
        -- Se ocorrer um evento em Clock e o valor for '0' (borda de descida)
        if Clock'event and Clock = '0' then
            Q <= D;  -- Captura o valor presente em D e armazena em Q
        end if;
        -- Entre as bordas, Q mantém seu valor anterior (comportamento de flip-flop)
    end process;

end behavior;
