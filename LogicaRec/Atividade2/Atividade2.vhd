-- ------------------------------------
library ieee ;
 use ieee . std_logic_1164 . all ;
 -- ------------------------------------
 entity Atividade2 is
 port (
 a , b, c, d: in bit ;
 s: out bit
 );
 end entity ;
 -- ------------------------------------
 architecture Atividade2 of Atividade2 is
 begin
 s <= ((not a) and (not c)) or ((not b) and (not c)) or ((not c) and (not d)) or ((not a) and (not b)) or ((not b) and (not d));
 end architecture ;
-- ------------------------------------S