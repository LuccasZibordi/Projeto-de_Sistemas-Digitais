library ieee;
use ieee.std_logic_1164.all;

entity late is
    port (
        D     : in  std_logic;  -- Entrada de dado a ser armazenado no latch
        CLOCK : in  std_logic;  -- Sinal de habilitação; enquanto estiver em '1', o latch acompanha D
        Q     : out std_logic   -- Saída que reflete D enquanto CLOCK = '1'
    );
end late;

architecture behavior of late is
begin

    -- Processo que monitora D e CLOCK
    process (D, CLOCK)
    begin
        -- Se CLOCK estiver em nível lógico alto, atualiza Q com o valor de D
        if CLOCK = '1' then
            Q <= D;
        end if;
        -- Se CLOCK = '0', o latch mantém o último valor de Q (latch fechado)
    end process;

end behavior;
