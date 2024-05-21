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


ARCHITECTURE trans OF bcd_7seg IS
BEGIN
PROCESS (entra)
BEGIN
CASE entra IS
WHEN "0000" =>
sai <= NOT("1111110");
WHEN "0001" =>
sai <= NOT("0110000");
WHEN "0010" =>
sai <= NOT("1101101");
WHEN "0011" =>
sai <= NOT("1111001");
WHEN "0100" =>
sai <= NOT("0110011");
WHEN "0101" =>
sai <= NOT("1011011");
WHEN "0110" =>
sai <= NOT("1011111");
WHEN "0111" =>
sai <= NOT("1110000");
WHEN "1000" =>
sai <= NOT("1111111");
WHEN "1001" =>
sai <= NOT("1111011");
WHEN OTHERS =>
sai <= NOT("0000000");
END CASE;
END PROCESS;

END trans;
