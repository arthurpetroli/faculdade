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
USE ieee.std_logic_unsigned.all;


ARCHITECTURE trans OF count4 IS
SIGNAL count : STD_LOGIC_VECTOR(3 DOWNTO 0);
BEGIN

PROCESS (clk, rst)
BEGIN
IF (rst = '1') THEN
count <= "0000";
ELSE
IF (clk'EVENT AND clk = '1') THEN
IF (count ="1001") THEN
carr<='1';
ELSE
carr<='0';
END IF;
IF (count >= "1001") THEN
count <= "0000";
ELSE
count <= count + "0001";
END IF;
END IF;
END IF;
END PROCESS;
q <= count;
END ARCHITECTURE trans;
