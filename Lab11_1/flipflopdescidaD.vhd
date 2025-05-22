library ieee;
use ieee.std_logic_1164.all;

entity flipflopdescidaD is
    port (
        D     : in  std_logic;  -- Entrada de dado a ser armazenado
        Clock : in  std_logic;  -- Sinal de clock para disparo na borda de descida
        Q     : out std_logic   -- Saída que reflete o valor capturado de D
    );
end flipflopdescidaD;


architecture behavior of flipflopdescidaD is
begin

    -- Processo sem sensibilidade explícita, reinicia após cada captura
    process
    begin
        -- Aguarda até que ocorra um evento em Clock e o sinal seja '0'
        wait until Clock'event and Clock = '0';
        -- Na transição de descida, atualiza Q com o valor presente em D
        Q <= D;
        -- Após a atribuição, o processo reinicia e volta a aguardar a próxima borda
    end process;

end behavior;
