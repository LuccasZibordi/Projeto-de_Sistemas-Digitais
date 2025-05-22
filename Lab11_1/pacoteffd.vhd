library ieee;
use ieee.std_logic_1164.all;

package Pacoteffd is
-
    component late is
        port (
            D     : in  std_logic;  -- Entrada de dado a ser armazenado
            CLOCK : in  std_logic;  -- Sinal de habilitação (enable level-sensitive)
            Q     : out std_logic   -- Saída que reflete D enquanto CLOCK = '1'
        );
    end component;

    component flipflopsubidaD is
        port (
            D     : in  std_logic;  -- Entrada de dado
            Clock : in  std_logic;  -- Clock borda de subida
            Q     : out std_logic   -- Saída capturada na borda de subida
        );
    end component;

    component flipflopdescidaD is
        port (
            D     : in  std_logic;  -- Entrada de dado
            Clock : in  std_logic;  -- Clock borda de descida
            Q     : out std_logic   -- Saída capturada na borda de descida
        );
    end component;

end package Pacoteffd;
