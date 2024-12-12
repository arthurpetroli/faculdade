library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Atividade5 is
    port (
        clk         : in  std_logic;               -- Clock
        reset       : in  std_logic;               -- Botão de reset (ativo em '0')
        enable      : in  std_logic;               -- Habilitar (ativo em '1')
        speed_ctrl  : in  std_logic_vector(1 downto 0); -- Controle de velocidade (2 opções)
        leds        : out std_logic_vector(9 downto 0)  -- LEDs (ativos em 0 na DE10-Lite)
    );
end entity;

architecture Atividade5 of Atividade5 is
    signal counter     : integer := 0;                     -- Contador para controle de tempo
    signal led_index   : integer range 0 to 9 := 0;        -- Índice do LED ativo
    signal direction   : std_logic := '1';                -- Direção ('1' para subir, '0' para descer)
    signal delay       : integer := 25000000;              -- Valor do atraso (ajustável pela velocidade)
    constant slow_speed : integer := 50000000;             -- Velocidade lenta
    constant fast_speed : integer := 25000000;             -- Velocidade rápida
begin

    process(clk, reset)
    begin
        if reset = '0' then
            -- Resetar circuito
            counter <= 0;
            led_index <= 0;
            direction <= '1'; -- Reinicia com direção para "subir"
            leds <= (others => '1'); -- Apagar todos os LEDs (ativo em '0' na DE10-Lite)
        elsif rising_edge(clk) then
            if enable = '1' then
                -- Selecionar velocidade com base no controle
                case speed_ctrl is
                    when "00" => delay <= slow_speed; -- Velocidade lenta
                    when "01" => delay <= fast_speed; -- Velocidade rápida
                    when others => delay <= slow_speed; -- Valor padrão
                end case;

                -- Incrementar contador
                if counter < delay then
                    counter <= counter + 1;
                else
                    counter <= 0;

                    -- Atualizar LEDs
                    leds <= (others => '0');       -- Apagar todos os LEDs
                    leds(led_index) <= '1';       -- Acender LED atual (ativo em '0')

                    -- Alternar LED ativo com base na direção
                    if direction = '1' then
                        -- Direção "subir"
                        if led_index = 9 then
                            direction <= '0'; -- Mudar para "descer"
                            led_index <= led_index - 1;
                        else
                            led_index <= led_index + 1;
                        end if;
                    else
                        -- Direção "descer"
                        if led_index = 0 then
                            direction <= '1'; -- Mudar para "subir"
                            led_index <= led_index + 1;
                        else
                            led_index <= led_index - 1;
                        end if;
                    end if;
                end if;
            end if;
        end if;
    end process;

end architecture;
