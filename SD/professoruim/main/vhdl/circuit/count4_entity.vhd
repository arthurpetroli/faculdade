--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : professoruim                                                 ==
--== Component : count4                                                       ==
--==                                                                          ==
--==============================================================================


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;


ENTITY count4 IS
   PORT ( clk  : IN  std_logic;
          rst  : IN  std_logic;
          carr : OUT std_logic;
          q    : OUT std_logic_vector( 3 DOWNTO 0 ) );
END ENTITY count4;
