library ieee ;
use work.my_package.all;
use IEEE.STD_LOGIC_1164.ALL; 
use IEEE.NUMERIC_STD.ALL;
-- ------------------------------- ----------------------
entity Atividade6 is
    generic (
        N : integer := 4
    );

    port (
    --x: in unsigned_array (0 to num_inputs -1)( num_bits -1 downto 0); -- Causar  ́a erro se tentarmos compilar e simular
        entrada1 : in unsigned( N - 1 downto 0); 
        entrada2 : in unsigned( N - 1 downto 0); 
        entrada3 : in unsigned( N - 1 downto 0); 
        entrada4 : in unsigned( N - 1 downto 0); -- Sinais " intermediarios "
        output1  : out integer;
        output2  : out integer
    );
end Atividade6;
-- ------------------------------- ----------------------
architecture Atividade6 of Atividade6 is
    -- signal x : unsigned_array (0 to N -1) ( N -1 downto 0) ; -- Sinal com o tipo definido por nos
    signal my_array : Inputs := (0, 0, 0, 0);
    signal min_value : integer; 
    signal max_value : integer;
    
    begin
        process(entrada1, entrada2, entrada3, entrada4)
        begin 
            my_array(0) <= to_integer(entrada1); 
            my_array(1) <= to_integer(entrada2); 
            my_array(2) <= to_integer(entrada3); 
            my_array(3) <= to_integer(entrada4);

    -- Para evitar o erro , criamos portas do tipo unsigned e as atribu  ́ı mos ao sinal do tipo que criamos
            min_max(my_array, min_value, max_value);
            output1 <= min_value;
            output2 <= max_value;
        end process;
end architecture;