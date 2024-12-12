-- ---------------------------------------------------------
package my_package is
	procedure sort_data ( signal x: in integer ;
								signal maior , menor : out integer );
end my_package ;
-- ---------------------------------------------------------
package body my_package is
	procedure sort_data ( signal x: in integer ;
								signal maior , menor : out integer ) is
	begin

		menor = 0;
		maior = 0;
		for i in x'range loop
			if (x(i) > maior) then
				maior = x(i);
			elsif (x(i) < menor) then
				menor = x(i);
			end if;
		end loop;
	end sort_data ;
end my_package ;
-- ---------------------------------------------------------