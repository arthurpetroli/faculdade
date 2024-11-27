library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Atividade5 is
    generic (
        clk_freq : integer := 50_000_000 -- Frequência do clock em Hz
    );
    port (
        clk       : in std_logic;               -- Clock
        reset     : in std_logic;               -- Botão de reset (ativo em 0)
        enable    : in std_logic;               -- Chave de enable
        speed_sel : in std_logic;               -- Seleção de velocidade (0 = lenta, 1 = rápida)
        leds      : out std_logic_vector(9 downto 0) -- LEDs de saída
    );
end entity;

architecture Atividade5 of Atividade5 is
    -- Constantes para as velocidades
    constant speed_slow  : integer := clk_freq / 2;  -- Velocidade lenta (2 Hz)
    constant speed_fast  : integer := clk_freq / 10; -- Velocidade rápida (10 Hz)

    -- Sinais internos
    signal clk_counter   : integer range 0 to clk_freq - 1 := 0; -- Contador de clock
    signal led_index     : integer range 0 to 9 := 0;            -- Índice do LED atual
    signal direction     : std_logic := '1';                    -- Direção (1 = crescente, 0 = decrescente)
    signal current_speed : integer := speed_slow;               -- Velocidade atual
begin

    process(clk, reset)
    begin
        if reset = '0' then -- Resetar o circuito
            clk_counter <= 0;
            led_index   <= 0;
            direction   <= '1';
            leds <= (others => '0'); -- Apaga todos os LEDs
            leds(0) <= '1';          -- Acende o LED 0
        elsif rising_edge(clk) then
            if enable = '1' then -- Verifica se o enable está ativo
                -- Seleção de velocidade
                if speed_sel = '0' then
                    current_speed <= speed_slow;
                else
                    current_speed <= speed_fast;
                end if;

                -- Incrementa o contador do clock
                if clk_counter < current_speed - 1 then
                    clk_counter <= clk_counter + 1;
                else
                    clk_counter <= 0;

                    -- Sequenciamento dos LEDs
                    leds <= (others => '0'); -- Apaga todos os LEDs
                    leds(led_index) <= '1'; -- Acende o LED atual

                    -- Atualiza o índice e a direção
                    if direction = '1' then
                        if led_index = 9 then
                            direction <= '0'; -- Inverte a direção para decrescente
                            led_index <= 8;
                        else
                            led_index <= led_index + 1;
                        end if;
                    else
                        if led_index = 0 then
                            direction <= '1'; -- Inverte a direção para crescente
                            led_index <= 1;
                        else
                            led_index <= led_index - 1;
                        end if;
                    end if;
                end if;
            end if;
        end if;
    end process;

end architecture;
