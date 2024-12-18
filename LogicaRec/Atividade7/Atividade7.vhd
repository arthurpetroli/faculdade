library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Definição da entidade
entity Atividade7 is
    Port (
        clk     : in  STD_LOGIC;
        reset   : in  STD_LOGIC;
        pause   : in  STD_LOGIC;
        led     : out STD_LOGIC;
        ssd_a   : out STD_LOGIC_VECTOR (6 downto 0);
        ssd_b   : out STD_LOGIC_VECTOR (6 downto 0);
        ssd_c   : out STD_LOGIC_VECTOR (6 downto 0);
        ssd_d   : out STD_LOGIC_VECTOR (6 downto 0)
    );
end Atividade7;

architecture Atividade7 of Atividade7 is
    signal count    : INTEGER range 0 to 9999 := 60;
    signal clk_div  : INTEGER := 0;
    signal paused   : STD_LOGIC := '0';

    -- Definição do tipo para os dígitos BCD
    type integer_array is array (0 to 3) of INTEGER;
    signal bcd : integer_array := (others => 0);

-- Função para converter um valor em dígitos BCD
function to_bcd(val : INTEGER) return integer_array is
    variable temp   : INTEGER := val;
    variable result : integer_array := (others => 0);
begin
    result(0) := temp mod 10;      -- Unidade
    temp := temp / 10;
    result(1) := temp mod 10;      -- Dezena
    temp := temp / 10;
    result(2) := temp mod 10;      -- Centena
    temp := temp / 10;
    result(3) := temp;             -- Milhar
    return result;
end function;

-- Função para mapear dígitos BCD em sinais do display de 7 segmentos
function ssd_map(bcd : INTEGER) return STD_LOGIC_VECTOR is
begin
    case bcd is
        when 0 => return "0000001";
        when 1 => return "1001111";
        when 2 => return "0010010";
        when 3 => return "0000110";
        when 4 => return "1001100";
        when 5 => return "0100100";
        when 6 => return "0100000";
        when 7 => return "0001111";
        when 8 => return "0000000";
        when 9 => return "0000100";
        when others => return "1111111";
    end case;
end function;

begin
    -- Processo principal: Clock, pausa e reset
    process(clk, reset)
    begin
        if reset = '1' then
            count <= 60;
            paused <= '0';
            clk_div <= 0;
        elsif rising_edge(clk) then
            if pause = '1' then
                paused <= not paused;
            elsif clk_div = 49999999 then
                clk_div <= 0;
                if paused = '0' and count > 0 then
                    count <= count - 1;
                end if;
            else
                clk_div <= clk_div + 1;
            end if;
        end if;
    end process;

    -- Atualização do LED
    led <= '1' when count = 0 else '0';

    -- Conversão para BCD
    bcd <= to_bcd(count);

    -- Mapeamento para os displays
    ssd_a <= ssd_map(bcd(0)); -- Unidades
    ssd_b <= ssd_map(bcd(1)); -- Dezenas
    ssd_c <= ssd_map(bcd(2)); -- Centenas
    ssd_d <= ssd_map(bcd(3)); -- Milhares

end Atividade7;
