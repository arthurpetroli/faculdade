library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Atividad8 is
    Port (
        clk : in STD_LOGIC; -- Clock
        rst : in STD_LOGIC; -- Reset
        modo : in STD_LOGIC_VECTOR(1 downto 0); -- Modo: 00 = Normal, 01 = Standby, 10 = Teste
        led1_verde : out STD_LOGIC;
        led1_amarelo : out STD_LOGIC;
        led1_vermelho : out STD_LOGIC;
        led2_verde : out STD_LOGIC;
        led2_amarelo : out STD_LOGIC;
        led2_vermelho : out STD_LOGIC
    );
end Atividad8;

architecture Atividad8 of Atividad8 is
    -- Definição dos estados
    type state_type is (S1, S2, S3, S4, Standby);
    signal current_state, next_state : state_type := S1;

    -- Contador de tempo e divisor de clock
    signal clk_div : INTEGER := 0;
    signal count : INTEGER := 0;

    -- Temporizador base
    constant TIMER_NORMAL : INTEGER := 10; -- Tempo normal
    constant TIMER_TESTE : INTEGER := 5;   -- Tempo no modo teste
    signal timer : INTEGER := TIMER_NORMAL;

    -- Sinal de controle para piscar LEDs no modo Standby
    signal blink : STD_LOGIC := '0';

begin

    -- Processo para dividir o clock e controlar o contador
    process(clk, rst)
    begin
        if rst = '1' then
            clk_div <= 0;
            count <= 0;
            current_state <= S1;
            blink <= '0';
        elsif rising_edge(clk) then
            if clk_div = 49999999 then -- Divisor para 1 segundo, baseado em 50 MHz
                clk_div <= 0;

                -- Piscar LEDs no modo Standby
                if modo = "01" then
                    blink <= not blink;
                end if;

                -- Contar apenas no modo Normal ou Teste
                if modo /= "01" then
                    if count < timer then
                        count <= count + 1;
                    else
                        count <= 0;
                        current_state <= next_state;
                    end if;
                end if;
            else
                clk_div <= clk_div + 1;
            end if;
        end if;
    end process;

    -- Processo para definir os estados e as saídas
    process(current_state, modo, count, blink)
    begin
        -- Desativar todos os LEDs por padrão
        led1_verde <= '0';
        led1_amarelo <= '0';
        led1_vermelho <= '0';
        led2_verde <= '0';
        led2_amarelo <= '0';
        led2_vermelho <= '0';

        -- Ajustar o valor do temporizador com base no modo
        if modo = "10" then
            timer <= TIMER_TESTE; -- Modo Teste
        else
            timer <= TIMER_NORMAL; -- Tempo normal
        end if;

        -- Lógica do modo Standby
        if modo = "01" then
            -- Ambos os semáforos piscam amarelo no modo Standby
            led1_amarelo <= blink;
            led2_amarelo <= blink;
            next_state <= Standby;
        else
            -- Definir próximo estado e LEDs ativos no modo Normal/Teste
            case current_state is
                when S1 =>
                    led1_verde <= '1';
                    led2_vermelho <= '1';
                    next_state <= S2;

                when S2 =>
                    led1_amarelo <= '1';
                    led2_vermelho <= '1';
                    next_state <= S3;

                when S3 =>
                    led1_vermelho <= '1';
                    led2_verde <= '1';
                    next_state <= S4;

                when S4 =>
                    led1_vermelho <= '1';
                    led2_amarelo <= '1';
                    next_state <= S1;

                when Standby =>
                    next_state <= S1;

                when others =>
                    next_state <= S1;
            end case;
        end if;
    end process;

end Atividad8;
