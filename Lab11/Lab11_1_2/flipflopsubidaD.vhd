library ieee;
use ieee.std_logic_1164.all;

entity flipflopsubidaD is
    port (
        D     : in  std_logic;  -- Entrada de dado a ser armazenado
        Clock : in  std_logic;  -- Sinal de clock usado para disparo na borda de subida
        Q     : out std_logic   -- Saída que reflete o valor capturado de D
    );
end flipflopsubidaD;


architecture behavior of flipflopsubidaD is
begin

    -- Processo que aguarda indefinidamente por uma borda de subida em Clock
    process
    begin
        -- Espera até ocorrer um evento em Clock e o sinal passar para '1'
        wait until Clock'event and Clock = '1';
        -- Na borda de subida, captura o valor de D em Q
        Q <= D;
        -- Após atribuir, o processo reinicia e volta a aguardar a próxima borda
    end process;

end behavior;
