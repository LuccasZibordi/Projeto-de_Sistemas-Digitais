library ieee;
use ieee.std_logic_1164.all;

package Pacotedeff is

    component late is
        port (
            D     : in  std_logic;  -- Entrada de dado
            CLOCK : in  std_logic;  -- Enable level-sensitive (latch)
            Q     : out std_logic   -- Saída que acompanha D quando habilitado
        );
    end component;

    component flipflopsubida is
        port(
            D     : in  std_logic;  -- Entrada de dado
            Clock : in  std_logic;  -- Clock para disparo na borda de subida
            Q     : out std_logic   -- Saída capturada na borda de subida
        );
    end component;

    component flipflopdescida is
        port(
            D     : in  std_logic;  -- Entrada de dado
            Clock : in  std_logic;  -- Clock para disparo na borda de descida
            Q     : out std_logic   -- Saída capturada na borda de descida
        );
    end component;

end package Pacotedeff;
