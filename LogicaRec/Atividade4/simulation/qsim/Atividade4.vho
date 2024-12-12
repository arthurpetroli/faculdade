-- Copyright (C) 2019  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"

-- DATE "11/22/2024 09:57:55"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Atividade4 IS
    PORT (
	entradas : IN std_logic_vector(127 DOWNTO 0);
	sel : IN std_logic_vector(3 DOWNTO 0);
	y : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END Atividade4;

-- Design Ports Information
-- y[0]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[1]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[2]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[3]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[4]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[5]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[6]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[7]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[80]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[1]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[72]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[0]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[64]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[88]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[3]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[40]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[48]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[32]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[56]	=>  Location: PIN_P10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[2]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[16]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[8]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[0]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[24]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[104]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[112]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[96]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[120]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[49]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[81]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[17]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[113]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[73]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[41]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[9]	=>  Location: PIN_AA11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[105]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[33]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[65]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[1]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[97]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[89]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[57]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[25]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[121]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[50]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[42]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[34]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[58]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[74]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[82]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[66]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[90]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[10]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[18]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[2]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[26]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[114]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[106]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[98]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[122]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[43]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[75]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[11]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[107]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[83]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[51]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[19]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[115]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[67]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[35]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[3]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[99]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[59]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[91]	=>  Location: PIN_M14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[27]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[123]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[84]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[76]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[68]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[92]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[44]	=>  Location: PIN_N22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[52]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[36]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[60]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[20]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[12]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[4]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[28]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[108]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[116]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[100]	=>  Location: PIN_R20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[124]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[53]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[85]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[21]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[117]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[77]	=>  Location: PIN_P20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[45]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[13]	=>  Location: PIN_R18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[109]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[37]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[69]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[5]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[101]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[93]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[61]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[29]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[125]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[54]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[46]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[38]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[62]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[78]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[86]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[70]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[94]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[14]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[22]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[6]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[30]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[118]	=>  Location: PIN_L20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[110]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[102]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[126]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[47]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[79]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[15]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[111]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[87]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[55]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[23]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[119]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[71]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[39]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[7]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[103]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[63]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[95]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[31]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[127]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Atividade4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_entradas : std_logic_vector(127 DOWNTO 0);
SIGNAL ww_sel : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_y : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \y[0]~output_o\ : std_logic;
SIGNAL \y[1]~output_o\ : std_logic;
SIGNAL \y[2]~output_o\ : std_logic;
SIGNAL \y[3]~output_o\ : std_logic;
SIGNAL \y[4]~output_o\ : std_logic;
SIGNAL \y[5]~output_o\ : std_logic;
SIGNAL \y[6]~output_o\ : std_logic;
SIGNAL \y[7]~output_o\ : std_logic;
SIGNAL \sel[3]~input_o\ : std_logic;
SIGNAL \entradas[104]~input_o\ : std_logic;
SIGNAL \entradas[96]~input_o\ : std_logic;
SIGNAL \sel[0]~input_o\ : std_logic;
SIGNAL \sel[1]~input_o\ : std_logic;
SIGNAL \entradas[112]~input_o\ : std_logic;
SIGNAL \Mux0~7_combout\ : std_logic;
SIGNAL \entradas[120]~input_o\ : std_logic;
SIGNAL \Mux0~8_combout\ : std_logic;
SIGNAL \entradas[56]~input_o\ : std_logic;
SIGNAL \entradas[40]~input_o\ : std_logic;
SIGNAL \entradas[48]~input_o\ : std_logic;
SIGNAL \entradas[32]~input_o\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \sel[2]~input_o\ : std_logic;
SIGNAL \entradas[24]~input_o\ : std_logic;
SIGNAL \entradas[16]~input_o\ : std_logic;
SIGNAL \entradas[0]~input_o\ : std_logic;
SIGNAL \entradas[8]~input_o\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \Mux0~5_combout\ : std_logic;
SIGNAL \Mux0~6_combout\ : std_logic;
SIGNAL \entradas[88]~input_o\ : std_logic;
SIGNAL \entradas[80]~input_o\ : std_logic;
SIGNAL \entradas[64]~input_o\ : std_logic;
SIGNAL \entradas[72]~input_o\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux0~9_combout\ : std_logic;
SIGNAL \entradas[81]~input_o\ : std_logic;
SIGNAL \entradas[17]~input_o\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \entradas[113]~input_o\ : std_logic;
SIGNAL \entradas[49]~input_o\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \entradas[121]~input_o\ : std_logic;
SIGNAL \entradas[89]~input_o\ : std_logic;
SIGNAL \entradas[25]~input_o\ : std_logic;
SIGNAL \entradas[57]~input_o\ : std_logic;
SIGNAL \Mux1~7_combout\ : std_logic;
SIGNAL \Mux1~8_combout\ : std_logic;
SIGNAL \entradas[1]~input_o\ : std_logic;
SIGNAL \entradas[65]~input_o\ : std_logic;
SIGNAL \Mux1~4_combout\ : std_logic;
SIGNAL \entradas[97]~input_o\ : std_logic;
SIGNAL \entradas[33]~input_o\ : std_logic;
SIGNAL \Mux1~5_combout\ : std_logic;
SIGNAL \entradas[105]~input_o\ : std_logic;
SIGNAL \entradas[73]~input_o\ : std_logic;
SIGNAL \entradas[41]~input_o\ : std_logic;
SIGNAL \entradas[9]~input_o\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \Mux1~6_combout\ : std_logic;
SIGNAL \Mux1~9_combout\ : std_logic;
SIGNAL \entradas[114]~input_o\ : std_logic;
SIGNAL \entradas[98]~input_o\ : std_logic;
SIGNAL \entradas[106]~input_o\ : std_logic;
SIGNAL \Mux2~7_combout\ : std_logic;
SIGNAL \entradas[122]~input_o\ : std_logic;
SIGNAL \Mux2~8_combout\ : std_logic;
SIGNAL \entradas[26]~input_o\ : std_logic;
SIGNAL \entradas[10]~input_o\ : std_logic;
SIGNAL \entradas[18]~input_o\ : std_logic;
SIGNAL \entradas[2]~input_o\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \Mux2~5_combout\ : std_logic;
SIGNAL \entradas[82]~input_o\ : std_logic;
SIGNAL \entradas[66]~input_o\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \entradas[90]~input_o\ : std_logic;
SIGNAL \entradas[74]~input_o\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \Mux2~6_combout\ : std_logic;
SIGNAL \entradas[50]~input_o\ : std_logic;
SIGNAL \entradas[42]~input_o\ : std_logic;
SIGNAL \entradas[34]~input_o\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \entradas[58]~input_o\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~9_combout\ : std_logic;
SIGNAL \entradas[123]~input_o\ : std_logic;
SIGNAL \entradas[91]~input_o\ : std_logic;
SIGNAL \entradas[27]~input_o\ : std_logic;
SIGNAL \Mux3~7_combout\ : std_logic;
SIGNAL \entradas[59]~input_o\ : std_logic;
SIGNAL \Mux3~8_combout\ : std_logic;
SIGNAL \entradas[43]~input_o\ : std_logic;
SIGNAL \entradas[11]~input_o\ : std_logic;
SIGNAL \entradas[75]~input_o\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \entradas[107]~input_o\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \entradas[51]~input_o\ : std_logic;
SIGNAL \entradas[19]~input_o\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \entradas[115]~input_o\ : std_logic;
SIGNAL \entradas[83]~input_o\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \entradas[67]~input_o\ : std_logic;
SIGNAL \entradas[35]~input_o\ : std_logic;
SIGNAL \entradas[3]~input_o\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \entradas[99]~input_o\ : std_logic;
SIGNAL \Mux3~5_combout\ : std_logic;
SIGNAL \Mux3~6_combout\ : std_logic;
SIGNAL \Mux3~9_combout\ : std_logic;
SIGNAL \entradas[84]~input_o\ : std_logic;
SIGNAL \entradas[68]~input_o\ : std_logic;
SIGNAL \entradas[76]~input_o\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \entradas[92]~input_o\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \entradas[100]~input_o\ : std_logic;
SIGNAL \entradas[116]~input_o\ : std_logic;
SIGNAL \Mux4~7_combout\ : std_logic;
SIGNAL \entradas[108]~input_o\ : std_logic;
SIGNAL \entradas[124]~input_o\ : std_logic;
SIGNAL \Mux4~8_combout\ : std_logic;
SIGNAL \entradas[44]~input_o\ : std_logic;
SIGNAL \entradas[36]~input_o\ : std_logic;
SIGNAL \entradas[52]~input_o\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \entradas[60]~input_o\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \entradas[28]~input_o\ : std_logic;
SIGNAL \entradas[20]~input_o\ : std_logic;
SIGNAL \entradas[4]~input_o\ : std_logic;
SIGNAL \entradas[12]~input_o\ : std_logic;
SIGNAL \Mux4~4_combout\ : std_logic;
SIGNAL \Mux4~5_combout\ : std_logic;
SIGNAL \Mux4~6_combout\ : std_logic;
SIGNAL \Mux4~9_combout\ : std_logic;
SIGNAL \entradas[85]~input_o\ : std_logic;
SIGNAL \entradas[21]~input_o\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \entradas[53]~input_o\ : std_logic;
SIGNAL \entradas[117]~input_o\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \entradas[61]~input_o\ : std_logic;
SIGNAL \entradas[29]~input_o\ : std_logic;
SIGNAL \Mux5~7_combout\ : std_logic;
SIGNAL \entradas[93]~input_o\ : std_logic;
SIGNAL \entradas[125]~input_o\ : std_logic;
SIGNAL \Mux5~8_combout\ : std_logic;
SIGNAL \entradas[13]~input_o\ : std_logic;
SIGNAL \entradas[45]~input_o\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \entradas[109]~input_o\ : std_logic;
SIGNAL \entradas[77]~input_o\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \entradas[37]~input_o\ : std_logic;
SIGNAL \entradas[69]~input_o\ : std_logic;
SIGNAL \entradas[5]~input_o\ : std_logic;
SIGNAL \Mux5~4_combout\ : std_logic;
SIGNAL \entradas[101]~input_o\ : std_logic;
SIGNAL \Mux5~5_combout\ : std_logic;
SIGNAL \Mux5~6_combout\ : std_logic;
SIGNAL \Mux5~9_combout\ : std_logic;
SIGNAL \entradas[54]~input_o\ : std_logic;
SIGNAL \entradas[46]~input_o\ : std_logic;
SIGNAL \entradas[38]~input_o\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \entradas[62]~input_o\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \entradas[126]~input_o\ : std_logic;
SIGNAL \entradas[102]~input_o\ : std_logic;
SIGNAL \entradas[110]~input_o\ : std_logic;
SIGNAL \Mux6~7_combout\ : std_logic;
SIGNAL \entradas[118]~input_o\ : std_logic;
SIGNAL \Mux6~8_combout\ : std_logic;
SIGNAL \entradas[30]~input_o\ : std_logic;
SIGNAL \entradas[22]~input_o\ : std_logic;
SIGNAL \entradas[6]~input_o\ : std_logic;
SIGNAL \Mux6~4_combout\ : std_logic;
SIGNAL \entradas[14]~input_o\ : std_logic;
SIGNAL \Mux6~5_combout\ : std_logic;
SIGNAL \entradas[94]~input_o\ : std_logic;
SIGNAL \entradas[86]~input_o\ : std_logic;
SIGNAL \entradas[70]~input_o\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \entradas[78]~input_o\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \Mux6~6_combout\ : std_logic;
SIGNAL \Mux6~9_combout\ : std_logic;
SIGNAL \entradas[127]~input_o\ : std_logic;
SIGNAL \entradas[95]~input_o\ : std_logic;
SIGNAL \entradas[31]~input_o\ : std_logic;
SIGNAL \Mux7~7_combout\ : std_logic;
SIGNAL \entradas[63]~input_o\ : std_logic;
SIGNAL \Mux7~8_combout\ : std_logic;
SIGNAL \entradas[71]~input_o\ : std_logic;
SIGNAL \entradas[103]~input_o\ : std_logic;
SIGNAL \entradas[7]~input_o\ : std_logic;
SIGNAL \entradas[39]~input_o\ : std_logic;
SIGNAL \Mux7~4_combout\ : std_logic;
SIGNAL \Mux7~5_combout\ : std_logic;
SIGNAL \entradas[119]~input_o\ : std_logic;
SIGNAL \entradas[87]~input_o\ : std_logic;
SIGNAL \entradas[23]~input_o\ : std_logic;
SIGNAL \entradas[55]~input_o\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \Mux7~3_combout\ : std_logic;
SIGNAL \Mux7~6_combout\ : std_logic;
SIGNAL \entradas[47]~input_o\ : std_logic;
SIGNAL \entradas[15]~input_o\ : std_logic;
SIGNAL \entradas[79]~input_o\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \entradas[111]~input_o\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mux7~9_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_entradas <= entradas;
ww_sel <= sel;
y <= ww_y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y52_N16
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X22_Y0_N9
\y[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~9_combout\,
	devoe => ww_devoe,
	o => \y[0]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\y[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~9_combout\,
	devoe => ww_devoe,
	o => \y[1]~output_o\);

-- Location: IOOBUF_X34_Y0_N16
\y[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~9_combout\,
	devoe => ww_devoe,
	o => \y[2]~output_o\);

-- Location: IOOBUF_X36_Y39_N30
\y[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~9_combout\,
	devoe => ww_devoe,
	o => \y[3]~output_o\);

-- Location: IOOBUF_X78_Y24_N16
\y[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~9_combout\,
	devoe => ww_devoe,
	o => \y[4]~output_o\);

-- Location: IOOBUF_X78_Y18_N23
\y[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~9_combout\,
	devoe => ww_devoe,
	o => \y[5]~output_o\);

-- Location: IOOBUF_X78_Y30_N9
\y[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~9_combout\,
	devoe => ww_devoe,
	o => \y[6]~output_o\);

-- Location: IOOBUF_X46_Y54_N30
\y[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~9_combout\,
	devoe => ww_devoe,
	o => \y[7]~output_o\);

-- Location: IOIBUF_X24_Y39_N15
\sel[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(3),
	o => \sel[3]~input_o\);

-- Location: IOIBUF_X22_Y0_N29
\entradas[104]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(104),
	o => \entradas[104]~input_o\);

-- Location: IOIBUF_X20_Y0_N29
\entradas[96]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(96),
	o => \entradas[96]~input_o\);

-- Location: IOIBUF_X78_Y37_N8
\sel[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(0),
	o => \sel[0]~input_o\);

-- Location: IOIBUF_X26_Y39_N8
\sel[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(1),
	o => \sel[1]~input_o\);

-- Location: IOIBUF_X26_Y0_N15
\entradas[112]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(112),
	o => \entradas[112]~input_o\);

-- Location: LCCOMB_X23_Y2_N14
\Mux0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~7_combout\ = (\sel[0]~input_o\ & (((\sel[1]~input_o\)))) # (!\sel[0]~input_o\ & ((\sel[1]~input_o\ & ((\entradas[112]~input_o\))) # (!\sel[1]~input_o\ & (\entradas[96]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradas[96]~input_o\,
	datab => \sel[0]~input_o\,
	datac => \sel[1]~input_o\,
	datad => \entradas[112]~input_o\,
	combout => \Mux0~7_combout\);

-- Location: IOIBUF_X26_Y0_N1
\entradas[120]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(120),
	o => \entradas[120]~input_o\);

-- Location: LCCOMB_X23_Y2_N0
\Mux0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~8_combout\ = (\Mux0~7_combout\ & (((\entradas[120]~input_o\) # (!\sel[0]~input_o\)))) # (!\Mux0~7_combout\ & (\entradas[104]~input_o\ & (\sel[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradas[104]~input_o\,
	datab => \Mux0~7_combout\,
	datac => \sel[0]~input_o\,
	datad => \entradas[120]~input_o\,
	combout => \Mux0~8_combout\);

-- Location: IOIBUF_X26_Y0_N8
\entradas[56]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(56),
	o => \entradas[56]~input_o\);

-- Location: IOIBUF_X20_Y0_N22
\entradas[40]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(40),
	o => \entradas[40]~input_o\);

-- Location: IOIBUF_X24_Y0_N15
\entradas[48]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(48),
	o => \entradas[48]~input_o\);

-- Location: IOIBUF_X22_Y0_N15
\entradas[32]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(32),
	o => \entradas[32]~input_o\);

-- Location: LCCOMB_X23_Y2_N20
\Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (\sel[1]~input_o\ & ((\entradas[48]~input_o\) # ((\sel[0]~input_o\)))) # (!\sel[1]~input_o\ & (((!\sel[0]~input_o\ & \entradas[32]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \entradas[48]~input_o\,
	datac => \sel[0]~input_o\,
	datad => \entradas[32]~input_o\,
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X23_Y2_N6
\Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (\sel[0]~input_o\ & ((\Mux0~2_combout\ & (\entradas[56]~input_o\)) # (!\Mux0~2_combout\ & ((\entradas[40]~input_o\))))) # (!\sel[0]~input_o\ & (((\Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradas[56]~input_o\,
	datab => \entradas[40]~input_o\,
	datac => \sel[0]~input_o\,
	datad => \Mux0~2_combout\,
	combout => \Mux0~3_combout\);

-- Location: IOIBUF_X78_Y31_N1
\sel[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(2),
	o => \sel[2]~input_o\);

-- Location: IOIBUF_X16_Y0_N29
\entradas[24]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(24),
	o => \entradas[24]~input_o\);

-- Location: IOIBUF_X26_Y0_N22
\entradas[16]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(16),
	o => \entradas[16]~input_o\);

-- Location: IOIBUF_X18_Y0_N1
\entradas[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(0),
	o => \entradas[0]~input_o\);

-- Location: IOIBUF_X22_Y0_N22
\entradas[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(8),
	o => \entradas[8]~input_o\);

-- Location: LCCOMB_X23_Y2_N24
\Mux0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = (\sel[1]~input_o\ & (((\sel[0]~input_o\)))) # (!\sel[1]~input_o\ & ((\sel[0]~input_o\ & ((\entradas[8]~input_o\))) # (!\sel[0]~input_o\ & (\entradas[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \entradas[0]~input_o\,
	datac => \sel[0]~input_o\,
	datad => \entradas[8]~input_o\,
	combout => \Mux0~4_combout\);

-- Location: LCCOMB_X23_Y2_N10
\Mux0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~5_combout\ = (\sel[1]~input_o\ & ((\Mux0~4_combout\ & (\entradas[24]~input_o\)) # (!\Mux0~4_combout\ & ((\entradas[16]~input_o\))))) # (!\sel[1]~input_o\ & (((\Mux0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradas[24]~input_o\,
	datab => \entradas[16]~input_o\,
	datac => \sel[1]~input_o\,
	datad => \Mux0~4_combout\,
	combout => \Mux0~5_combout\);

-- Location: LCCOMB_X23_Y2_N4
\Mux0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~6_combout\ = (\sel[3]~input_o\ & (((\sel[2]~input_o\)))) # (!\sel[3]~input_o\ & ((\sel[2]~input_o\ & (\Mux0~3_combout\)) # (!\sel[2]~input_o\ & ((\Mux0~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~3_combout\,
	datab => \sel[3]~input_o\,
	datac => \sel[2]~input_o\,
	datad => \Mux0~5_combout\,
	combout => \Mux0~6_combout\);

-- Location: IOIBUF_X18_Y0_N8
\entradas[88]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(88),
	o => \entradas[88]~input_o\);

-- Location: IOIBUF_X18_Y0_N29
\entradas[80]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(80),
	o => \entradas[80]~input_o\);

-- Location: IOIBUF_X20_Y0_N1
\entradas[64]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(64),
	o => \entradas[64]~input_o\);

-- Location: IOIBUF_X20_Y0_N15
\entradas[72]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(72),
	o => \entradas[72]~input_o\);

-- Location: LCCOMB_X23_Y2_N16
\Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\sel[1]~input_o\ & (((\sel[0]~input_o\)))) # (!\sel[1]~input_o\ & ((\sel[0]~input_o\ & ((\entradas[72]~input_o\))) # (!\sel[0]~input_o\ & (\entradas[64]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \entradas[64]~input_o\,
	datac => \sel[0]~input_o\,
	datad => \entradas[72]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X23_Y2_N18
\Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\sel[1]~input_o\ & ((\Mux0~0_combout\ & (\entradas[88]~input_o\)) # (!\Mux0~0_combout\ & ((\entradas[80]~input_o\))))) # (!\sel[1]~input_o\ & (((\Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradas[88]~input_o\,
	datab => \entradas[80]~input_o\,
	datac => \sel[1]~input_o\,
	datad => \Mux0~0_combout\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X23_Y2_N2
\Mux0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~9_combout\ = (\sel[3]~input_o\ & ((\Mux0~6_combout\ & (\Mux0~8_combout\)) # (!\Mux0~6_combout\ & ((\Mux0~1_combout\))))) # (!\sel[3]~input_o\ & (((\Mux0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[3]~input_o\,
	datab => \Mux0~8_combout\,
	datac => \Mux0~6_combout\,
	datad => \Mux0~1_combout\,
	combout => \Mux0~9_combout\);

-- Location: IOIBUF_X24_Y0_N1
\entradas[81]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(81),
	o => \entradas[81]~input_o\);

-- Location: IOIBUF_X18_Y0_N22
\entradas[17]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(17),
	o => \entradas[17]~input_o\);

-- Location: LCCOMB_X23_Y2_N12
\Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\sel[2]~input_o\ & (((\sel[3]~input_o\)))) # (!\sel[2]~input_o\ & ((\sel[3]~input_o\ & (\entradas[81]~input_o\)) # (!\sel[3]~input_o\ & ((\entradas[17]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradas[81]~input_o\,
	datab => \entradas[17]~input_o\,
	datac => \sel[2]~input_o\,
	datad => \sel[3]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: IOIBUF_X29_Y0_N1
\entradas[113]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(113),
	o => \entradas[113]~input_o\);

-- Location: IOIBUF_X26_Y0_N29
\entradas[49]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(49),
	o => \entradas[49]~input_o\);

-- Location: LCCOMB_X23_Y2_N22
\Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\Mux1~0_combout\ & ((\entradas[113]~input_o\) # ((!\sel[2]~input_o\)))) # (!\Mux1~0_combout\ & (((\sel[2]~input_o\ & \entradas[49]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~0_combout\,
	datab => \entradas[113]~input_o\,
	datac => \sel[2]~input_o\,
	datad => \entradas[49]~input_o\,
	combout => \Mux1~1_combout\);

-- Location: IOIBUF_X22_Y0_N1
\entradas[121]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(121),
	o => \entradas[121]~input_o\);

-- Location: IOIBUF_X20_Y0_N8
\entradas[89]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(89),
	o => \entradas[89]~input_o\);

-- Location: IOIBUF_X29_Y0_N29
\entradas[25]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(25),
	o => \entradas[25]~input_o\);

-- Location: IOIBUF_X24_Y0_N8
\entradas[57]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(57),
	o => \entradas[57]~input_o\);

-- Location: LCCOMB_X23_Y2_N8
\Mux1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~7_combout\ = (\sel[2]~input_o\ & (((\entradas[57]~input_o\) # (\sel[3]~input_o\)))) # (!\sel[2]~input_o\ & (\entradas[25]~input_o\ & ((!\sel[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradas[25]~input_o\,
	datab => \entradas[57]~input_o\,
	datac => \sel[2]~input_o\,
	datad => \sel[3]~input_o\,
	combout => \Mux1~7_combout\);

-- Location: LCCOMB_X23_Y2_N26
\Mux1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~8_combout\ = (\Mux1~7_combout\ & ((\entradas[121]~input_o\) # ((!\sel[3]~input_o\)))) # (!\Mux1~7_combout\ & (((\entradas[89]~input_o\ & \sel[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradas[121]~input_o\,
	datab => \entradas[89]~input_o\,
	datac => \Mux1~7_combout\,
	datad => \sel[3]~input_o\,
	combout => \Mux1~8_combout\);

-- Location: IOIBUF_X46_Y0_N1
\entradas[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(1),
	o => \entradas[1]~input_o\);

-- Location: IOIBUF_X38_Y0_N8
\entradas[65]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(65),
	o => \entradas[65]~input_o\);

-- Location: LCCOMB_X36_Y1_N12
\Mux1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~4_combout\ = (\sel[3]~input_o\ & (((\entradas[65]~input_o\) # (\sel[2]~input_o\)))) # (!\sel[3]~input_o\ & (\entradas[1]~input_o\ & ((!\sel[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradas[1]~input_o\,
	datab => \sel[3]~input_o\,
	datac => \entradas[65]~input_o\,
	datad => \sel[2]~input_o\,
	combout => \Mux1~4_combout\);

-- Location: IOIBUF_X36_Y0_N8
\entradas[97]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(97),
	o => \entradas[97]~input_o\);

-- Location: IOIBUF_X40_Y0_N1
\entradas[33]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(33),
	o => \entradas[33]~input_o\);

-- Location: LCCOMB_X36_Y1_N30
\Mux1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~5_combout\ = (\Mux1~4_combout\ & ((\entradas[97]~input_o\) # ((!\sel[2]~input_o\)))) # (!\Mux1~4_combout\ & (((\entradas[33]~input_o\ & \sel[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~4_combout\,
	datab => \entradas[97]~input_o\,
	datac => \entradas[33]~input_o\,
	datad => \sel[2]~input_o\,
	combout => \Mux1~5_combout\);

-- Location: IOIBUF_X31_Y0_N8
\entradas[105]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(105),
	o => \entradas[105]~input_o\);

-- Location: IOIBUF_X40_Y0_N29
\entradas[73]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(73),
	o => \entradas[73]~input_o\);

-- Location: IOIBUF_X38_Y0_N29
\entradas[41]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(41),
	o => \entradas[41]~input_o\);

-- Location: IOIBUF_X40_Y0_N8
\entradas[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(9),
	o => \entradas[9]~input_o\);

-- Location: LCCOMB_X36_Y1_N24
\Mux1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (\sel[3]~input_o\ & (((\sel[2]~input_o\)))) # (!\sel[3]~input_o\ & ((\sel[2]~input_o\ & (\entradas[41]~input_o\)) # (!\sel[2]~input_o\ & ((\entradas[9]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradas[41]~input_o\,
	datab => \sel[3]~input_o\,
	datac => \entradas[9]~input_o\,
	datad => \sel[2]~input_o\,
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X36_Y1_N18
\Mux1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = (\sel[3]~input_o\ & ((\Mux1~2_combout\ & (\entradas[105]~input_o\)) # (!\Mux1~2_combout\ & ((\entradas[73]~input_o\))))) # (!\sel[3]~input_o\ & (((\Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradas[105]~input_o\,
	datab => \sel[3]~input_o\,
	datac => \entradas[73]~input_o\,
	datad => \Mux1~2_combout\,
	combout => \Mux1~3_combout\);

-- Location: LCCOMB_X36_Y1_N0
\Mux1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~6_combout\ = (\sel[1]~input_o\ & (((\sel[0]~input_o\)))) # (!\sel[1]~input_o\ & ((\sel[0]~input_o\ & ((\Mux1~3_combout\))) # (!\sel[0]~input_o\ & (\Mux1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~5_combout\,
	datab => \Mux1~3_combout\,
	datac => \sel[1]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Mux1~6_combout\);

-- Location: LCCOMB_X23_Y2_N28
\Mux1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~9_combout\ = (\sel[1]~input_o\ & ((\Mux1~6_combout\ & ((\Mux1~8_combout\))) # (!\Mux1~6_combout\ & (\Mux1~1_combout\)))) # (!\sel[1]~input_o\ & (((\Mux1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~1_combout\,
	datab => \Mux1~8_combout\,
	datac => \sel[1]~input_o\,
	datad => \Mux1~6_combout\,
	combout => \Mux1~9_combout\);

-- Location: IOIBUF_X34_Y0_N1
\entradas[114]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(114),
	o => \entradas[114]~input_o\);

-- Location: IOIBUF_X31_Y0_N15
\entradas[98]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(98),
	o => \entradas[98]~input_o\);

-- Location: IOIBUF_X49_Y0_N1
\entradas[106]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(106),
	o => \entradas[106]~input_o\);

-- Location: LCCOMB_X36_Y1_N14
\Mux2~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~7_combout\ = (\sel[1]~input_o\ & (((\sel[0]~input_o\)))) # (!\sel[1]~input_o\ & ((\sel[0]~input_o\ & ((\entradas[106]~input_o\))) # (!\sel[0]~input_o\ & (\entradas[98]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \entradas[98]~input_o\,
	datac => \entradas[106]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Mux2~7_combout\);

-- Location: IOIBUF_X40_Y0_N15
\entradas[122]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(122),
	o => \entradas[122]~input_o\);

-- Location: LCCOMB_X36_Y1_N16
\Mux2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~8_combout\ = (\Mux2~7_combout\ & (((\entradas[122]~input_o\) # (!\sel[1]~input_o\)))) # (!\Mux2~7_combout\ & (\entradas[114]~input_o\ & (\sel[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradas[114]~input_o\,
	datab => \Mux2~7_combout\,
	datac => \sel[1]~input_o\,
	datad => \entradas[122]~input_o\,
	combout => \Mux2~8_combout\);

-- Location: IOIBUF_X29_Y0_N22
\entradas[26]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(26),
	o => \entradas[26]~input_o\);

-- Location: IOIBUF_X29_Y0_N8
\entradas[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(10),
	o => \entradas[10]~input_o\);

-- Location: IOIBUF_X24_Y0_N22
\entradas[18]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(18),
	o => \entradas[18]~input_o\);

-- Location: IOIBUF_X24_Y0_N29
\entradas[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(2),
	o => \entradas[2]~input_o\);

-- Location: LCCOMB_X23_Y2_N30
\Mux2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = (\sel[0]~input_o\ & (((\sel[1]~input_o\)))) # (!\sel[0]~input_o\ & ((\sel[1]~input_o\ & (\entradas[18]~input_o\)) # (!\sel[1]~input_o\ & ((\entradas[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradas[18]~input_o\,
	datab => \sel[0]~input_o\,
	datac => \sel[1]~input_o\,
	datad => \entradas[2]~input_o\,
	combout => \Mux2~4_combout\);

-- Location: LCCOMB_X36_Y1_N26
\Mux2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~5_combout\ = (\Mux2~4_combout\ & ((\entradas[26]~input_o\) # ((!\sel[0]~input_o\)))) # (!\Mux2~4_combout\ & (((\entradas[10]~input_o\ & \sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradas[26]~input_o\,
	datab => \entradas[10]~input_o\,
	datac => \Mux2~4_combout\,
	datad => \sel[0]~input_o\,
	combout => \Mux2~5_combout\);

-- Location: IOIBUF_X31_Y0_N22
\entradas[82]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(82),
	o => \entradas[82]~input_o\);

-- Location: IOIBUF_X38_Y0_N1
\entradas[66]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(66),
	o => \entradas[66]~input_o\);

-- Location: LCCOMB_X36_Y1_N6
\Mux2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\sel[1]~input_o\ & ((\entradas[82]~input_o\) # ((\sel[0]~input_o\)))) # (!\sel[1]~input_o\ & (((\entradas[66]~input_o\ & !\sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \entradas[82]~input_o\,
	datac => \entradas[66]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Mux2~2_combout\);

-- Location: IOIBUF_X36_Y0_N1
\entradas[90]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(90),
	o => \entradas[90]~input_o\);

-- Location: IOIBUF_X31_Y0_N29
\entradas[74]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(74),
	o => \entradas[74]~input_o\);

-- Location: LCCOMB_X36_Y1_N8
\Mux2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (\Mux2~2_combout\ & ((\entradas[90]~input_o\) # ((!\sel[0]~input_o\)))) # (!\Mux2~2_combout\ & (((\entradas[74]~input_o\ & \sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~2_combout\,
	datab => \entradas[90]~input_o\,
	datac => \entradas[74]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Mux2~3_combout\);

-- Location: LCCOMB_X36_Y1_N20
\Mux2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~6_combout\ = (\sel[3]~input_o\ & (((\Mux2~3_combout\) # (\sel[2]~input_o\)))) # (!\sel[3]~input_o\ & (\Mux2~5_combout\ & ((!\sel[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~5_combout\,
	datab => \sel[3]~input_o\,
	datac => \Mux2~3_combout\,
	datad => \sel[2]~input_o\,
	combout => \Mux2~6_combout\);

-- Location: IOIBUF_X38_Y0_N22
\entradas[50]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(50),
	o => \entradas[50]~input_o\);

-- Location: IOIBUF_X34_Y0_N22
\entradas[42]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(42),
	o => \entradas[42]~input_o\);

-- Location: IOIBUF_X49_Y0_N22
\entradas[34]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(34),
	o => \entradas[34]~input_o\);

-- Location: LCCOMB_X36_Y1_N2
\Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\sel[1]~input_o\ & (((\sel[0]~input_o\)))) # (!\sel[1]~input_o\ & ((\sel[0]~input_o\ & (\entradas[42]~input_o\)) # (!\sel[0]~input_o\ & ((\entradas[34]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradas[42]~input_o\,
	datab => \entradas[34]~input_o\,
	datac => \sel[1]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: IOIBUF_X40_Y0_N22
\entradas[58]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(58),
	o => \entradas[58]~input_o\);

-- Location: LCCOMB_X36_Y1_N4
\Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\Mux2~0_combout\ & (((\entradas[58]~input_o\) # (!\sel[1]~input_o\)))) # (!\Mux2~0_combout\ & (\entradas[50]~input_o\ & (\sel[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradas[50]~input_o\,
	datab => \Mux2~0_combout\,
	datac => \sel[1]~input_o\,
	datad => \entradas[58]~input_o\,
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X36_Y1_N10
\Mux2~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~9_combout\ = (\Mux2~6_combout\ & ((\Mux2~8_combout\) # ((!\sel[2]~input_o\)))) # (!\Mux2~6_combout\ & (((\Mux2~1_combout\ & \sel[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~8_combout\,
	datab => \Mux2~6_combout\,
	datac => \Mux2~1_combout\,
	datad => \sel[2]~input_o\,
	combout => \Mux2~9_combout\);

-- Location: IOIBUF_X78_Y33_N22
\entradas[123]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(123),
	o => \entradas[123]~input_o\);

-- Location: IOIBUF_X78_Y33_N15
\entradas[91]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(91),
	o => \entradas[91]~input_o\);

-- Location: IOIBUF_X78_Y33_N1
\entradas[27]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(27),
	o => \entradas[27]~input_o\);

-- Location: LCCOMB_X77_Y33_N24
\Mux3~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~7_combout\ = (\sel[2]~input_o\ & (((\sel[3]~input_o\)))) # (!\sel[2]~input_o\ & ((\sel[3]~input_o\ & (\entradas[91]~input_o\)) # (!\sel[3]~input_o\ & ((\entradas[27]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradas[91]~input_o\,
	datab => \sel[2]~input_o\,
	datac => \sel[3]~input_o\,
	datad => \entradas[27]~input_o\,
	combout => \Mux3~7_combout\);

-- Location: IOIBUF_X78_Y30_N1
\entradas[59]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(59),
	o => \entradas[59]~input_o\);

-- Location: LCCOMB_X77_Y33_N2
\Mux3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~8_combout\ = (\Mux3~7_combout\ & ((\entradas[123]~input_o\) # ((!\sel[2]~input_o\)))) # (!\Mux3~7_combout\ & (((\entradas[59]~input_o\ & \sel[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradas[123]~input_o\,
	datab => \Mux3~7_combout\,
	datac => \entradas[59]~input_o\,
	datad => \sel[2]~input_o\,
	combout => \Mux3~8_combout\);

-- Location: IOIBUF_X29_Y0_N15
\entradas[43]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(43),
	o => \entradas[43]~input_o\);

-- Location: IOIBUF_X34_Y0_N8
\entradas[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(11),
	o => \entradas[11]~input_o\);

-- Location: IOIBUF_X34_Y0_N29
\entradas[75]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(75),
	o => \entradas[75]~input_o\);

-- Location: LCCOMB_X36_Y1_N28
\Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\sel[3]~input_o\ & (((\entradas[75]~input_o\) # (\sel[2]~input_o\)))) # (!\sel[3]~input_o\ & (\entradas[11]~input_o\ & ((!\sel[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradas[11]~input_o\,
	datab => \sel[3]~input_o\,
	datac => \entradas[75]~input_o\,
	datad => \sel[2]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: IOIBUF_X31_Y0_N1
\entradas[107]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(107),
	o => \entradas[107]~input_o\);

-- Location: LCCOMB_X36_Y1_N22
\Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\Mux3~0_combout\ & (((\entradas[107]~input_o\) # (!\sel[2]~input_o\)))) # (!\Mux3~0_combout\ & (\entradas[43]~input_o\ & ((\sel[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradas[43]~input_o\,
	datab => \Mux3~0_combout\,
	datac => \entradas[107]~input_o\,
	datad => \sel[2]~input_o\,
	combout => \Mux3~1_combout\);

-- Location: IOIBUF_X31_Y39_N1
\entradas[51]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(51),
	o => \entradas[51]~input_o\);

-- Location: IOIBUF_X34_Y39_N22
\entradas[19]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(19),
	o => \entradas[19]~input_o\);

-- Location: LCCOMB_X34_Y38_N24
\Mux3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\sel[3]~input_o\ & (((\sel[2]~input_o\)))) # (!\sel[3]~input_o\ & ((\sel[2]~input_o\ & (\entradas[51]~input_o\)) # (!\sel[2]~input_o\ & ((\entradas[19]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[3]~input_o\,
	datab => \entradas[51]~input_o\,
	datac => \entradas[19]~input_o\,
	datad => \sel[2]~input_o\,
	combout => \Mux3~2_combout\);

-- Location: IOIBUF_X29_Y39_N8
\entradas[115]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(115),
	o => \entradas[115]~input_o\);

-- Location: IOIBUF_X49_Y54_N22
\entradas[83]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(83),
	o => \entradas[83]~input_o\);

-- Location: LCCOMB_X34_Y38_N18
\Mux3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (\sel[3]~input_o\ & ((\Mux3~2_combout\ & (\entradas[115]~input_o\)) # (!\Mux3~2_combout\ & ((\entradas[83]~input_o\))))) # (!\sel[3]~input_o\ & (\Mux3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[3]~input_o\,
	datab => \Mux3~2_combout\,
	datac => \entradas[115]~input_o\,
	datad => \entradas[83]~input_o\,
	combout => \Mux3~3_combout\);

-- Location: IOIBUF_X31_Y39_N15
\entradas[67]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(67),
	o => \entradas[67]~input_o\);

-- Location: IOIBUF_X26_Y39_N15
\entradas[35]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(35),
	o => \entradas[35]~input_o\);

-- Location: IOIBUF_X29_Y39_N15
\entradas[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(3),
	o => \entradas[3]~input_o\);

-- Location: LCCOMB_X34_Y38_N4
\Mux3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = (\sel[3]~input_o\ & (((\sel[2]~input_o\)))) # (!\sel[3]~input_o\ & ((\sel[2]~input_o\ & (\entradas[35]~input_o\)) # (!\sel[2]~input_o\ & ((\entradas[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[3]~input_o\,
	datab => \entradas[35]~input_o\,
	datac => \entradas[3]~input_o\,
	datad => \sel[2]~input_o\,
	combout => \Mux3~4_combout\);

-- Location: IOIBUF_X34_Y39_N1
\entradas[99]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(99),
	o => \entradas[99]~input_o\);

-- Location: LCCOMB_X34_Y38_N6
\Mux3~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~5_combout\ = (\sel[3]~input_o\ & ((\Mux3~4_combout\ & ((\entradas[99]~input_o\))) # (!\Mux3~4_combout\ & (\entradas[67]~input_o\)))) # (!\sel[3]~input_o\ & (((\Mux3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[3]~input_o\,
	datab => \entradas[67]~input_o\,
	datac => \Mux3~4_combout\,
	datad => \entradas[99]~input_o\,
	combout => \Mux3~5_combout\);

-- Location: LCCOMB_X34_Y38_N8
\Mux3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~6_combout\ = (\sel[1]~input_o\ & ((\Mux3~3_combout\) # ((\sel[0]~input_o\)))) # (!\sel[1]~input_o\ & (((\Mux3~5_combout\ & !\sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \Mux3~3_combout\,
	datac => \Mux3~5_combout\,
	datad => \sel[0]~input_o\,
	combout => \Mux3~6_combout\);

-- Location: LCCOMB_X34_Y38_N10
\Mux3~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~9_combout\ = (\Mux3~6_combout\ & ((\Mux3~8_combout\) # ((!\sel[0]~input_o\)))) # (!\Mux3~6_combout\ & (((\Mux3~1_combout\ & \sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~8_combout\,
	datab => \Mux3~1_combout\,
	datac => \Mux3~6_combout\,
	datad => \sel[0]~input_o\,
	combout => \Mux3~9_combout\);

-- Location: IOIBUF_X78_Y18_N1
\entradas[84]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(84),
	o => \entradas[84]~input_o\);

-- Location: IOIBUF_X78_Y21_N1
\entradas[68]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(68),
	o => \entradas[68]~input_o\);

-- Location: IOIBUF_X78_Y21_N8
\entradas[76]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(76),
	o => \entradas[76]~input_o\);

-- Location: LCCOMB_X77_Y20_N16
\Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\sel[1]~input_o\ & (((\sel[0]~input_o\)))) # (!\sel[1]~input_o\ & ((\sel[0]~input_o\ & ((\entradas[76]~input_o\))) # (!\sel[0]~input_o\ & (\entradas[68]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradas[68]~input_o\,
	datab => \sel[1]~input_o\,
	datac => \entradas[76]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: IOIBUF_X78_Y20_N15
\entradas[92]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(92),
	o => \entradas[92]~input_o\);

-- Location: LCCOMB_X77_Y20_N26
\Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\Mux4~0_combout\ & (((\entradas[92]~input_o\) # (!\sel[1]~input_o\)))) # (!\Mux4~0_combout\ & (\entradas[84]~input_o\ & (\sel[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradas[84]~input_o\,
	datab => \Mux4~0_combout\,
	datac => \sel[1]~input_o\,
	datad => \entradas[92]~input_o\,
	combout => \Mux4~1_combout\);

-- Location: IOIBUF_X78_Y20_N1
\entradas[100]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(100),
	o => \entradas[100]~input_o\);

-- Location: IOIBUF_X78_Y21_N22
\entradas[116]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(116),
	o => \entradas[116]~input_o\);

-- Location: LCCOMB_X77_Y20_N30
\Mux4~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~7_combout\ = (\sel[1]~input_o\ & (((\entradas[116]~input_o\) # (\sel[0]~input_o\)))) # (!\sel[1]~input_o\ & (\entradas[100]~input_o\ & ((!\sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradas[100]~input_o\,
	datab => \entradas[116]~input_o\,
	datac => \sel[1]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Mux4~7_combout\);

-- Location: IOIBUF_X78_Y23_N8
\entradas[108]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(108),
	o => \entradas[108]~input_o\);

-- Location: IOIBUF_X78_Y18_N8
\entradas[124]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(124),
	o => \entradas[124]~input_o\);

-- Location: LCCOMB_X77_Y20_N8
\Mux4~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~8_combout\ = (\Mux4~7_combout\ & (((\entradas[124]~input_o\) # (!\sel[0]~input_o\)))) # (!\Mux4~7_combout\ & (\entradas[108]~input_o\ & ((\sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~7_combout\,
	datab => \entradas[108]~input_o\,
	datac => \entradas[124]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Mux4~8_combout\);

-- Location: IOIBUF_X78_Y23_N1
\entradas[44]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(44),
	o => \entradas[44]~input_o\);

-- Location: IOIBUF_X78_Y21_N15
\entradas[36]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(36),
	o => \entradas[36]~input_o\);

-- Location: IOIBUF_X78_Y24_N8
\entradas[52]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(52),
	o => \entradas[52]~input_o\);

-- Location: LCCOMB_X77_Y20_N4
\Mux4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (\sel[1]~input_o\ & (((\entradas[52]~input_o\) # (\sel[0]~input_o\)))) # (!\sel[1]~input_o\ & (\entradas[36]~input_o\ & ((!\sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradas[36]~input_o\,
	datab => \sel[1]~input_o\,
	datac => \entradas[52]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Mux4~2_combout\);

-- Location: IOIBUF_X78_Y17_N1
\entradas[60]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(60),
	o => \entradas[60]~input_o\);

-- Location: LCCOMB_X77_Y20_N22
\Mux4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = (\Mux4~2_combout\ & (((\entradas[60]~input_o\) # (!\sel[0]~input_o\)))) # (!\Mux4~2_combout\ & (\entradas[44]~input_o\ & ((\sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradas[44]~input_o\,
	datab => \Mux4~2_combout\,
	datac => \entradas[60]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Mux4~3_combout\);

-- Location: IOIBUF_X78_Y17_N15
\entradas[28]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(28),
	o => \entradas[28]~input_o\);

-- Location: IOIBUF_X78_Y16_N8
\entradas[20]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(20),
	o => \entradas[20]~input_o\);

-- Location: IOIBUF_X78_Y20_N8
\entradas[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(4),
	o => \entradas[4]~input_o\);

-- Location: IOIBUF_X78_Y23_N15
\entradas[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(12),
	o => \entradas[12]~input_o\);

-- Location: LCCOMB_X77_Y20_N24
\Mux4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~4_combout\ = (\sel[1]~input_o\ & (((\sel[0]~input_o\)))) # (!\sel[1]~input_o\ & ((\sel[0]~input_o\ & ((\entradas[12]~input_o\))) # (!\sel[0]~input_o\ & (\entradas[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradas[4]~input_o\,
	datab => \entradas[12]~input_o\,
	datac => \sel[1]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Mux4~4_combout\);

-- Location: LCCOMB_X77_Y20_N10
\Mux4~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~5_combout\ = (\sel[1]~input_o\ & ((\Mux4~4_combout\ & (\entradas[28]~input_o\)) # (!\Mux4~4_combout\ & ((\entradas[20]~input_o\))))) # (!\sel[1]~input_o\ & (((\Mux4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradas[28]~input_o\,
	datab => \sel[1]~input_o\,
	datac => \entradas[20]~input_o\,
	datad => \Mux4~4_combout\,
	combout => \Mux4~5_combout\);

-- Location: LCCOMB_X77_Y20_N20
\Mux4~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~6_combout\ = (\sel[2]~input_o\ & ((\Mux4~3_combout\) # ((\sel[3]~input_o\)))) # (!\sel[2]~input_o\ & (((!\sel[3]~input_o\ & \Mux4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~3_combout\,
	datab => \sel[2]~input_o\,
	datac => \sel[3]~input_o\,
	datad => \Mux4~5_combout\,
	combout => \Mux4~6_combout\);

-- Location: LCCOMB_X77_Y20_N2
\Mux4~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~9_combout\ = (\sel[3]~input_o\ & ((\Mux4~6_combout\ & ((\Mux4~8_combout\))) # (!\Mux4~6_combout\ & (\Mux4~1_combout\)))) # (!\sel[3]~input_o\ & (((\Mux4~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~1_combout\,
	datab => \Mux4~8_combout\,
	datac => \sel[3]~input_o\,
	datad => \Mux4~6_combout\,
	combout => \Mux4~9_combout\);

-- Location: IOIBUF_X78_Y34_N15
\entradas[85]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(85),
	o => \entradas[85]~input_o\);

-- Location: IOIBUF_X78_Y35_N1
\entradas[21]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(21),
	o => \entradas[21]~input_o\);

-- Location: LCCOMB_X77_Y33_N12
\Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\sel[2]~input_o\ & (((\sel[3]~input_o\)))) # (!\sel[2]~input_o\ & ((\sel[3]~input_o\ & (\entradas[85]~input_o\)) # (!\sel[3]~input_o\ & ((\entradas[21]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradas[85]~input_o\,
	datab => \sel[2]~input_o\,
	datac => \sel[3]~input_o\,
	datad => \entradas[21]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: IOIBUF_X78_Y34_N23
\entradas[53]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(53),
	o => \entradas[53]~input_o\);

-- Location: IOIBUF_X78_Y36_N15
\entradas[117]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(117),
	o => \entradas[117]~input_o\);

-- Location: LCCOMB_X77_Y33_N14
\Mux5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\Mux5~0_combout\ & (((\entradas[117]~input_o\)) # (!\sel[2]~input_o\))) # (!\Mux5~0_combout\ & (\sel[2]~input_o\ & (\entradas[53]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~0_combout\,
	datab => \sel[2]~input_o\,
	datac => \entradas[53]~input_o\,
	datad => \entradas[117]~input_o\,
	combout => \Mux5~1_combout\);

-- Location: IOIBUF_X78_Y20_N23
\entradas[61]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(61),
	o => \entradas[61]~input_o\);

-- Location: IOIBUF_X78_Y18_N15
\entradas[29]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(29),
	o => \entradas[29]~input_o\);

-- Location: LCCOMB_X77_Y20_N18
\Mux5~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~7_combout\ = (\sel[3]~input_o\ & (((\sel[2]~input_o\)))) # (!\sel[3]~input_o\ & ((\sel[2]~input_o\ & (\entradas[61]~input_o\)) # (!\sel[2]~input_o\ & ((\entradas[29]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradas[61]~input_o\,
	datab => \entradas[29]~input_o\,
	datac => \sel[3]~input_o\,
	datad => \sel[2]~input_o\,
	combout => \Mux5~7_combout\);

-- Location: IOIBUF_X78_Y17_N22
\entradas[93]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(93),
	o => \entradas[93]~input_o\);

-- Location: IOIBUF_X78_Y23_N22
\entradas[125]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(125),
	o => \entradas[125]~input_o\);

-- Location: LCCOMB_X77_Y20_N28
\Mux5~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~8_combout\ = (\sel[3]~input_o\ & ((\Mux5~7_combout\ & ((\entradas[125]~input_o\))) # (!\Mux5~7_combout\ & (\entradas[93]~input_o\)))) # (!\sel[3]~input_o\ & (\Mux5~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[3]~input_o\,
	datab => \Mux5~7_combout\,
	datac => \entradas[93]~input_o\,
	datad => \entradas[125]~input_o\,
	combout => \Mux5~8_combout\);

-- Location: IOIBUF_X78_Y24_N23
\entradas[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(13),
	o => \entradas[13]~input_o\);

-- Location: IOIBUF_X78_Y16_N1
\entradas[45]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(45),
	o => \entradas[45]~input_o\);

-- Location: LCCOMB_X77_Y20_N12
\Mux5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (\sel[3]~input_o\ & (((\sel[2]~input_o\)))) # (!\sel[3]~input_o\ & ((\sel[2]~input_o\ & ((\entradas[45]~input_o\))) # (!\sel[2]~input_o\ & (\entradas[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradas[13]~input_o\,
	datab => \entradas[45]~input_o\,
	datac => \sel[3]~input_o\,
	datad => \sel[2]~input_o\,
	combout => \Mux5~2_combout\);

-- Location: IOIBUF_X78_Y17_N8
\entradas[109]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(109),
	o => \entradas[109]~input_o\);

-- Location: IOIBUF_X78_Y24_N1
\entradas[77]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(77),
	o => \entradas[77]~input_o\);

-- Location: LCCOMB_X77_Y20_N14
\Mux5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = (\Mux5~2_combout\ & ((\entradas[109]~input_o\) # ((!\sel[3]~input_o\)))) # (!\Mux5~2_combout\ & (((\sel[3]~input_o\ & \entradas[77]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~2_combout\,
	datab => \entradas[109]~input_o\,
	datac => \sel[3]~input_o\,
	datad => \entradas[77]~input_o\,
	combout => \Mux5~3_combout\);

-- Location: IOIBUF_X78_Y31_N15
\entradas[37]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(37),
	o => \entradas[37]~input_o\);

-- Location: IOIBUF_X78_Y35_N8
\entradas[69]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(69),
	o => \entradas[69]~input_o\);

-- Location: IOIBUF_X78_Y30_N22
\entradas[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(5),
	o => \entradas[5]~input_o\);

-- Location: LCCOMB_X77_Y33_N0
\Mux5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~4_combout\ = (\sel[3]~input_o\ & ((\entradas[69]~input_o\) # ((\sel[2]~input_o\)))) # (!\sel[3]~input_o\ & (((\entradas[5]~input_o\ & !\sel[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradas[69]~input_o\,
	datab => \entradas[5]~input_o\,
	datac => \sel[3]~input_o\,
	datad => \sel[2]~input_o\,
	combout => \Mux5~4_combout\);

-- Location: IOIBUF_X78_Y30_N15
\entradas[101]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(101),
	o => \entradas[101]~input_o\);

-- Location: LCCOMB_X77_Y33_N10
\Mux5~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~5_combout\ = (\Mux5~4_combout\ & (((\entradas[101]~input_o\) # (!\sel[2]~input_o\)))) # (!\Mux5~4_combout\ & (\entradas[37]~input_o\ & ((\sel[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradas[37]~input_o\,
	datab => \Mux5~4_combout\,
	datac => \entradas[101]~input_o\,
	datad => \sel[2]~input_o\,
	combout => \Mux5~5_combout\);

-- Location: LCCOMB_X77_Y20_N0
\Mux5~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~6_combout\ = (\sel[0]~input_o\ & ((\sel[1]~input_o\) # ((\Mux5~3_combout\)))) # (!\sel[0]~input_o\ & (!\sel[1]~input_o\ & ((\Mux5~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datab => \sel[1]~input_o\,
	datac => \Mux5~3_combout\,
	datad => \Mux5~5_combout\,
	combout => \Mux5~6_combout\);

-- Location: LCCOMB_X77_Y20_N6
\Mux5~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~9_combout\ = (\sel[1]~input_o\ & ((\Mux5~6_combout\ & ((\Mux5~8_combout\))) # (!\Mux5~6_combout\ & (\Mux5~1_combout\)))) # (!\sel[1]~input_o\ & (((\Mux5~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~1_combout\,
	datab => \Mux5~8_combout\,
	datac => \sel[1]~input_o\,
	datad => \Mux5~6_combout\,
	combout => \Mux5~9_combout\);

-- Location: IOIBUF_X78_Y34_N8
\entradas[54]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(54),
	o => \entradas[54]~input_o\);

-- Location: IOIBUF_X78_Y31_N8
\entradas[46]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(46),
	o => \entradas[46]~input_o\);

-- Location: IOIBUF_X78_Y33_N8
\entradas[38]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(38),
	o => \entradas[38]~input_o\);

-- Location: LCCOMB_X77_Y33_N4
\Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\sel[1]~input_o\ & (((\sel[0]~input_o\)))) # (!\sel[1]~input_o\ & ((\sel[0]~input_o\ & (\entradas[46]~input_o\)) # (!\sel[0]~input_o\ & ((\entradas[38]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradas[46]~input_o\,
	datab => \entradas[38]~input_o\,
	datac => \sel[1]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: IOIBUF_X78_Y35_N22
\entradas[62]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(62),
	o => \entradas[62]~input_o\);

-- Location: LCCOMB_X77_Y33_N22
\Mux6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\Mux6~0_combout\ & (((\entradas[62]~input_o\) # (!\sel[1]~input_o\)))) # (!\Mux6~0_combout\ & (\entradas[54]~input_o\ & (\sel[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradas[54]~input_o\,
	datab => \Mux6~0_combout\,
	datac => \sel[1]~input_o\,
	datad => \entradas[62]~input_o\,
	combout => \Mux6~1_combout\);

-- Location: IOIBUF_X78_Y29_N15
\entradas[126]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(126),
	o => \entradas[126]~input_o\);

-- Location: IOIBUF_X78_Y31_N22
\entradas[102]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(102),
	o => \entradas[102]~input_o\);

-- Location: IOIBUF_X78_Y41_N15
\entradas[110]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(110),
	o => \entradas[110]~input_o\);

-- Location: LCCOMB_X77_Y33_N18
\Mux6~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~7_combout\ = (\sel[0]~input_o\ & (((\sel[1]~input_o\) # (\entradas[110]~input_o\)))) # (!\sel[0]~input_o\ & (\entradas[102]~input_o\ & (!\sel[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datab => \entradas[102]~input_o\,
	datac => \sel[1]~input_o\,
	datad => \entradas[110]~input_o\,
	combout => \Mux6~7_combout\);

-- Location: IOIBUF_X78_Y37_N1
\entradas[118]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(118),
	o => \entradas[118]~input_o\);

-- Location: LCCOMB_X77_Y33_N28
\Mux6~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~8_combout\ = (\Mux6~7_combout\ & ((\entradas[126]~input_o\) # ((!\sel[1]~input_o\)))) # (!\Mux6~7_combout\ & (((\sel[1]~input_o\ & \entradas[118]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradas[126]~input_o\,
	datab => \Mux6~7_combout\,
	datac => \sel[1]~input_o\,
	datad => \entradas[118]~input_o\,
	combout => \Mux6~8_combout\);

-- Location: IOIBUF_X78_Y36_N8
\entradas[30]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(30),
	o => \entradas[30]~input_o\);

-- Location: IOIBUF_X78_Y36_N1
\entradas[22]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(22),
	o => \entradas[22]~input_o\);

-- Location: IOIBUF_X78_Y34_N1
\entradas[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(6),
	o => \entradas[6]~input_o\);

-- Location: LCCOMB_X77_Y33_N20
\Mux6~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~4_combout\ = (\sel[1]~input_o\ & ((\entradas[22]~input_o\) # ((\sel[0]~input_o\)))) # (!\sel[1]~input_o\ & (((\entradas[6]~input_o\ & !\sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradas[22]~input_o\,
	datab => \entradas[6]~input_o\,
	datac => \sel[1]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Mux6~4_combout\);

-- Location: IOIBUF_X78_Y37_N15
\entradas[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(14),
	o => \entradas[14]~input_o\);

-- Location: LCCOMB_X77_Y33_N30
\Mux6~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~5_combout\ = (\Mux6~4_combout\ & ((\entradas[30]~input_o\) # ((!\sel[0]~input_o\)))) # (!\Mux6~4_combout\ & (((\entradas[14]~input_o\ & \sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradas[30]~input_o\,
	datab => \Mux6~4_combout\,
	datac => \entradas[14]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Mux6~5_combout\);

-- Location: IOIBUF_X78_Y35_N15
\entradas[94]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(94),
	o => \entradas[94]~input_o\);

-- Location: IOIBUF_X78_Y29_N1
\entradas[86]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(86),
	o => \entradas[86]~input_o\);

-- Location: IOIBUF_X78_Y36_N23
\entradas[70]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(70),
	o => \entradas[70]~input_o\);

-- Location: LCCOMB_X77_Y33_N16
\Mux6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (\sel[0]~input_o\ & (((\sel[1]~input_o\)))) # (!\sel[0]~input_o\ & ((\sel[1]~input_o\ & (\entradas[86]~input_o\)) # (!\sel[1]~input_o\ & ((\entradas[70]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datab => \entradas[86]~input_o\,
	datac => \sel[1]~input_o\,
	datad => \entradas[70]~input_o\,
	combout => \Mux6~2_combout\);

-- Location: IOIBUF_X78_Y29_N22
\entradas[78]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(78),
	o => \entradas[78]~input_o\);

-- Location: LCCOMB_X77_Y33_N26
\Mux6~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = (\Mux6~2_combout\ & ((\entradas[94]~input_o\) # ((!\sel[0]~input_o\)))) # (!\Mux6~2_combout\ & (((\entradas[78]~input_o\ & \sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradas[94]~input_o\,
	datab => \Mux6~2_combout\,
	datac => \entradas[78]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Mux6~3_combout\);

-- Location: LCCOMB_X77_Y33_N8
\Mux6~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~6_combout\ = (\sel[3]~input_o\ & (((\Mux6~3_combout\) # (\sel[2]~input_o\)))) # (!\sel[3]~input_o\ & (\Mux6~5_combout\ & ((!\sel[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~5_combout\,
	datab => \sel[3]~input_o\,
	datac => \Mux6~3_combout\,
	datad => \sel[2]~input_o\,
	combout => \Mux6~6_combout\);

-- Location: LCCOMB_X77_Y33_N6
\Mux6~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~9_combout\ = (\Mux6~6_combout\ & (((\Mux6~8_combout\) # (!\sel[2]~input_o\)))) # (!\Mux6~6_combout\ & (\Mux6~1_combout\ & ((\sel[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~1_combout\,
	datab => \Mux6~8_combout\,
	datac => \Mux6~6_combout\,
	datad => \sel[2]~input_o\,
	combout => \Mux6~9_combout\);

-- Location: IOIBUF_X31_Y39_N8
\entradas[127]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(127),
	o => \entradas[127]~input_o\);

-- Location: IOIBUF_X31_Y39_N22
\entradas[95]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(95),
	o => \entradas[95]~input_o\);

-- Location: IOIBUF_X36_Y39_N22
\entradas[31]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(31),
	o => \entradas[31]~input_o\);

-- Location: LCCOMB_X34_Y38_N2
\Mux7~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~7_combout\ = (\sel[3]~input_o\ & ((\entradas[95]~input_o\) # ((\sel[2]~input_o\)))) # (!\sel[3]~input_o\ & (((\entradas[31]~input_o\ & !\sel[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[3]~input_o\,
	datab => \entradas[95]~input_o\,
	datac => \entradas[31]~input_o\,
	datad => \sel[2]~input_o\,
	combout => \Mux7~7_combout\);

-- Location: IOIBUF_X34_Y39_N8
\entradas[63]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(63),
	o => \entradas[63]~input_o\);

-- Location: LCCOMB_X34_Y38_N12
\Mux7~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~8_combout\ = (\Mux7~7_combout\ & ((\entradas[127]~input_o\) # ((!\sel[2]~input_o\)))) # (!\Mux7~7_combout\ & (((\entradas[63]~input_o\ & \sel[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradas[127]~input_o\,
	datab => \Mux7~7_combout\,
	datac => \entradas[63]~input_o\,
	datad => \sel[2]~input_o\,
	combout => \Mux7~8_combout\);

-- Location: IOIBUF_X31_Y39_N29
\entradas[71]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(71),
	o => \entradas[71]~input_o\);

-- Location: IOIBUF_X46_Y54_N15
\entradas[103]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(103),
	o => \entradas[103]~input_o\);

-- Location: IOIBUF_X36_Y39_N15
\entradas[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(7),
	o => \entradas[7]~input_o\);

-- Location: IOIBUF_X46_Y54_N22
\entradas[39]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(39),
	o => \entradas[39]~input_o\);

-- Location: LCCOMB_X34_Y38_N28
\Mux7~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~4_combout\ = (\sel[3]~input_o\ & (((\sel[2]~input_o\)))) # (!\sel[3]~input_o\ & ((\sel[2]~input_o\ & ((\entradas[39]~input_o\))) # (!\sel[2]~input_o\ & (\entradas[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[3]~input_o\,
	datab => \entradas[7]~input_o\,
	datac => \entradas[39]~input_o\,
	datad => \sel[2]~input_o\,
	combout => \Mux7~4_combout\);

-- Location: LCCOMB_X34_Y38_N14
\Mux7~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~5_combout\ = (\sel[3]~input_o\ & ((\Mux7~4_combout\ & ((\entradas[103]~input_o\))) # (!\Mux7~4_combout\ & (\entradas[71]~input_o\)))) # (!\sel[3]~input_o\ & (((\Mux7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[3]~input_o\,
	datab => \entradas[71]~input_o\,
	datac => \entradas[103]~input_o\,
	datad => \Mux7~4_combout\,
	combout => \Mux7~5_combout\);

-- Location: IOIBUF_X34_Y39_N15
\entradas[119]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(119),
	o => \entradas[119]~input_o\);

-- Location: IOIBUF_X34_Y39_N29
\entradas[87]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(87),
	o => \entradas[87]~input_o\);

-- Location: IOIBUF_X38_Y0_N15
\entradas[23]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(23),
	o => \entradas[23]~input_o\);

-- Location: IOIBUF_X46_Y54_N8
\entradas[55]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(55),
	o => \entradas[55]~input_o\);

-- Location: LCCOMB_X34_Y38_N0
\Mux7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = (\sel[3]~input_o\ & (((\sel[2]~input_o\)))) # (!\sel[3]~input_o\ & ((\sel[2]~input_o\ & ((\entradas[55]~input_o\))) # (!\sel[2]~input_o\ & (\entradas[23]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[3]~input_o\,
	datab => \entradas[23]~input_o\,
	datac => \entradas[55]~input_o\,
	datad => \sel[2]~input_o\,
	combout => \Mux7~2_combout\);

-- Location: LCCOMB_X34_Y38_N26
\Mux7~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~3_combout\ = (\sel[3]~input_o\ & ((\Mux7~2_combout\ & (\entradas[119]~input_o\)) # (!\Mux7~2_combout\ & ((\entradas[87]~input_o\))))) # (!\sel[3]~input_o\ & (((\Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[3]~input_o\,
	datab => \entradas[119]~input_o\,
	datac => \entradas[87]~input_o\,
	datad => \Mux7~2_combout\,
	combout => \Mux7~3_combout\);

-- Location: LCCOMB_X34_Y38_N16
\Mux7~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~6_combout\ = (\sel[1]~input_o\ & (((\Mux7~3_combout\) # (\sel[0]~input_o\)))) # (!\sel[1]~input_o\ & (\Mux7~5_combout\ & ((!\sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \Mux7~5_combout\,
	datac => \Mux7~3_combout\,
	datad => \sel[0]~input_o\,
	combout => \Mux7~6_combout\);

-- Location: IOIBUF_X24_Y39_N1
\entradas[47]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(47),
	o => \entradas[47]~input_o\);

-- Location: IOIBUF_X29_Y39_N1
\entradas[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(15),
	o => \entradas[15]~input_o\);

-- Location: IOIBUF_X49_Y54_N29
\entradas[79]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(79),
	o => \entradas[79]~input_o\);

-- Location: LCCOMB_X34_Y38_N20
\Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\sel[3]~input_o\ & (((\entradas[79]~input_o\) # (\sel[2]~input_o\)))) # (!\sel[3]~input_o\ & (\entradas[15]~input_o\ & ((!\sel[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[3]~input_o\,
	datab => \entradas[15]~input_o\,
	datac => \entradas[79]~input_o\,
	datad => \sel[2]~input_o\,
	combout => \Mux7~0_combout\);

-- Location: IOIBUF_X46_Y54_N1
\entradas[111]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(111),
	o => \entradas[111]~input_o\);

-- Location: LCCOMB_X34_Y38_N30
\Mux7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\Mux7~0_combout\ & (((\entradas[111]~input_o\) # (!\sel[2]~input_o\)))) # (!\Mux7~0_combout\ & (\entradas[47]~input_o\ & ((\sel[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradas[47]~input_o\,
	datab => \Mux7~0_combout\,
	datac => \entradas[111]~input_o\,
	datad => \sel[2]~input_o\,
	combout => \Mux7~1_combout\);

-- Location: LCCOMB_X34_Y38_N22
\Mux7~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~9_combout\ = (\Mux7~6_combout\ & ((\Mux7~8_combout\) # ((!\sel[0]~input_o\)))) # (!\Mux7~6_combout\ & (((\Mux7~1_combout\ & \sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~8_combout\,
	datab => \Mux7~6_combout\,
	datac => \Mux7~1_combout\,
	datad => \sel[0]~input_o\,
	combout => \Mux7~9_combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_y(0) <= \y[0]~output_o\;

ww_y(1) <= \y[1]~output_o\;

ww_y(2) <= \y[2]~output_o\;

ww_y(3) <= \y[3]~output_o\;

ww_y(4) <= \y[4]~output_o\;

ww_y(5) <= \y[5]~output_o\;

ww_y(6) <= \y[6]~output_o\;

ww_y(7) <= \y[7]~output_o\;
END structure;


