library ieee ;

[...]
-- ------------------------------- ----------------------
entity atividade_6 is
	generic (
		[...]
	port (
		--x: in unsigned_array (0 to num_inputs -1)( num_bits -1 downto 0); -- Causar  ́a errose  tentarmos compilar e simular
		entrada1 , entrada2 , entrada3 , entrada4 : in unsigned ( num_bits -1 downto 0) ; --Sinais " intermedi  ́a rios "
		[...]) ;
-- ------------------------------- ----------------------
architecture atividade_6 of atividade_6 is
	signal x : unsigned_array (0 to num_inputs -1) ( num_bits -1 downto 0) ; -- Sinal com otipo definido por n ́os
begin
 -- Para evitar o erro , criamos portas do tipo unsigned e as atribu  ́ı mos ao sinal dotipo que criamos
	x <= ( entrada1 , entrada2 , entrada3 , entrada4 ) ;
[...]