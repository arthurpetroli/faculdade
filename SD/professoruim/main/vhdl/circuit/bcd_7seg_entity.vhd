--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : professoruim                                                 ==
--== Component : bcd_7seg                                                     ==
--==                                                                          ==
--==============================================================================


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;


ENTITY bcd_7seg IS
   PORT ( entra : IN  std_logic_vector( 3 DOWNTO 0 );
          sai   : OUT std_logic_vector( 6 DOWNTO 0 ) );
END ENTITY bcd_7seg;
