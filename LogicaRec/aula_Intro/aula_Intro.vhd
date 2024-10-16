-- ------------------------------------
library ieee ;
 use ieee . std_logic_1164 . all ;
 -- ------------------------------------
 entity aula_Intro is
 port (
 a , b: in bit ;
 s, t, u , v , w, x, y, z : out bit
 );
 end entity ;
 -- ------------------------------------
 architecture aula_Intro of aula_Intro is
 begin
 s <= not a;
 t <= not b;
 u <= a and b;
 v <= a or b;
 w <= a nand b;
 x <= a nor b;
 y <= a xor b;
 z <= a xnor b;
 end architecture ;
-- ------------------------------------