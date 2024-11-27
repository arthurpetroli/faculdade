---------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
---------------------------------------
entity Atividade4 is
    generic (
        S : integer := 2;  -- Número de bits de seleção
        M : integer := 2   -- Quantidade de bits de cada entrada
    );
    port (
        entradas : in bit_vector((2**S * M) - 1 downto 0); -- Vetor de entradas
        sel      : in integer range (2**S - 1) to 0;   -- Sinal de seleção
        y        : out bit_vector(M - 1 downto 0)          -- Saída de M bits
    );
end entity Atividade4;
---------------------------------------
architecture Atividade4 of Atividade4 is
    begin
        -- Para cada bit de `y`, calculamos explicitamente a posição no vetor `entradas`
        gen: for j in 0 to M - 1 generate
            y(j) <= entradas(sel * M + j);
    end generate;
end architecture ;
----------------------------------------	