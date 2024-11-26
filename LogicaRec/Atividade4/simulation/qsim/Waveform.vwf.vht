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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "11/22/2024 09:57:54"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Atividade4
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Atividade4_vhd_vec_tst IS
END Atividade4_vhd_vec_tst;
ARCHITECTURE Atividade4_arch OF Atividade4_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL entradas : STD_LOGIC_VECTOR(127 DOWNTO 0);
SIGNAL sel : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL y : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT Atividade4
	PORT (
	entradas : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
	sel : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	y : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Atividade4
	PORT MAP (
-- list connections between master ports and signals
	entradas => entradas,
	sel => sel,
	y => y
	);
-- entradas[127]
t_prcs_entradas_127: PROCESS
BEGIN
	entradas(127) <= '1';
WAIT;
END PROCESS t_prcs_entradas_127;
-- entradas[126]
t_prcs_entradas_126: PROCESS
BEGIN
	entradas(126) <= '1';
WAIT;
END PROCESS t_prcs_entradas_126;
-- entradas[125]
t_prcs_entradas_125: PROCESS
BEGIN
	entradas(125) <= '1';
WAIT;
END PROCESS t_prcs_entradas_125;
-- entradas[124]
t_prcs_entradas_124: PROCESS
BEGIN
	entradas(124) <= '1';
WAIT;
END PROCESS t_prcs_entradas_124;
-- entradas[123]
t_prcs_entradas_123: PROCESS
BEGIN
	entradas(123) <= '1';
WAIT;
END PROCESS t_prcs_entradas_123;
-- entradas[122]
t_prcs_entradas_122: PROCESS
BEGIN
	entradas(122) <= '1';
WAIT;
END PROCESS t_prcs_entradas_122;
-- entradas[121]
t_prcs_entradas_121: PROCESS
BEGIN
	entradas(121) <= '0';
WAIT;
END PROCESS t_prcs_entradas_121;
-- entradas[120]
t_prcs_entradas_120: PROCESS
BEGIN
	entradas(120) <= '1';
WAIT;
END PROCESS t_prcs_entradas_120;
-- entradas[119]
t_prcs_entradas_119: PROCESS
BEGIN
	entradas(119) <= '1';
WAIT;
END PROCESS t_prcs_entradas_119;
-- entradas[118]
t_prcs_entradas_118: PROCESS
BEGIN
	entradas(118) <= '0';
WAIT;
END PROCESS t_prcs_entradas_118;
-- entradas[117]
t_prcs_entradas_117: PROCESS
BEGIN
	entradas(117) <= '0';
WAIT;
END PROCESS t_prcs_entradas_117;
-- entradas[116]
t_prcs_entradas_116: PROCESS
BEGIN
	entradas(116) <= '0';
WAIT;
END PROCESS t_prcs_entradas_116;
-- entradas[115]
t_prcs_entradas_115: PROCESS
BEGIN
	entradas(115) <= '0';
WAIT;
END PROCESS t_prcs_entradas_115;
-- entradas[114]
t_prcs_entradas_114: PROCESS
BEGIN
	entradas(114) <= '0';
WAIT;
END PROCESS t_prcs_entradas_114;
-- entradas[113]
t_prcs_entradas_113: PROCESS
BEGIN
	entradas(113) <= '1';
WAIT;
END PROCESS t_prcs_entradas_113;
-- entradas[112]
t_prcs_entradas_112: PROCESS
BEGIN
	entradas(112) <= '0';
WAIT;
END PROCESS t_prcs_entradas_112;
-- entradas[111]
t_prcs_entradas_111: PROCESS
BEGIN
	entradas(111) <= '0';
WAIT;
END PROCESS t_prcs_entradas_111;
-- entradas[110]
t_prcs_entradas_110: PROCESS
BEGIN
	entradas(110) <= '1';
WAIT;
END PROCESS t_prcs_entradas_110;
-- entradas[109]
t_prcs_entradas_109: PROCESS
BEGIN
	entradas(109) <= '0';
WAIT;
END PROCESS t_prcs_entradas_109;
-- entradas[108]
t_prcs_entradas_108: PROCESS
BEGIN
	entradas(108) <= '1';
WAIT;
END PROCESS t_prcs_entradas_108;
-- entradas[107]
t_prcs_entradas_107: PROCESS
BEGIN
	entradas(107) <= '1';
WAIT;
END PROCESS t_prcs_entradas_107;
-- entradas[106]
t_prcs_entradas_106: PROCESS
BEGIN
	entradas(106) <= '0';
WAIT;
END PROCESS t_prcs_entradas_106;
-- entradas[105]
t_prcs_entradas_105: PROCESS
BEGIN
	entradas(105) <= '1';
WAIT;
END PROCESS t_prcs_entradas_105;
-- entradas[104]
t_prcs_entradas_104: PROCESS
BEGIN
	entradas(104) <= '0';
WAIT;
END PROCESS t_prcs_entradas_104;
-- entradas[103]
t_prcs_entradas_103: PROCESS
BEGIN
	entradas(103) <= '1';
WAIT;
END PROCESS t_prcs_entradas_103;
-- entradas[102]
t_prcs_entradas_102: PROCESS
BEGIN
	entradas(102) <= '1';
WAIT;
END PROCESS t_prcs_entradas_102;
-- entradas[101]
t_prcs_entradas_101: PROCESS
BEGIN
	entradas(101) <= '0';
WAIT;
END PROCESS t_prcs_entradas_101;
-- entradas[100]
t_prcs_entradas_100: PROCESS
BEGIN
	entradas(100) <= '0';
WAIT;
END PROCESS t_prcs_entradas_100;
-- entradas[99]
t_prcs_entradas_99: PROCESS
BEGIN
	entradas(99) <= '1';
WAIT;
END PROCESS t_prcs_entradas_99;
-- entradas[98]
t_prcs_entradas_98: PROCESS
BEGIN
	entradas(98) <= '1';
WAIT;
END PROCESS t_prcs_entradas_98;
-- entradas[97]
t_prcs_entradas_97: PROCESS
BEGIN
	entradas(97) <= '0';
WAIT;
END PROCESS t_prcs_entradas_97;
-- entradas[96]
t_prcs_entradas_96: PROCESS
BEGIN
	entradas(96) <= '0';
WAIT;
END PROCESS t_prcs_entradas_96;
-- entradas[95]
t_prcs_entradas_95: PROCESS
BEGIN
	entradas(95) <= '0';
WAIT;
END PROCESS t_prcs_entradas_95;
-- entradas[94]
t_prcs_entradas_94: PROCESS
BEGIN
	entradas(94) <= '0';
WAIT;
END PROCESS t_prcs_entradas_94;
-- entradas[93]
t_prcs_entradas_93: PROCESS
BEGIN
	entradas(93) <= '1';
WAIT;
END PROCESS t_prcs_entradas_93;
-- entradas[92]
t_prcs_entradas_92: PROCESS
BEGIN
	entradas(92) <= '1';
WAIT;
END PROCESS t_prcs_entradas_92;
-- entradas[91]
t_prcs_entradas_91: PROCESS
BEGIN
	entradas(91) <= '0';
WAIT;
END PROCESS t_prcs_entradas_91;
-- entradas[90]
t_prcs_entradas_90: PROCESS
BEGIN
	entradas(90) <= '1';
WAIT;
END PROCESS t_prcs_entradas_90;
-- entradas[89]
t_prcs_entradas_89: PROCESS
BEGIN
	entradas(89) <= '0';
WAIT;
END PROCESS t_prcs_entradas_89;
-- entradas[88]
t_prcs_entradas_88: PROCESS
BEGIN
	entradas(88) <= '1';
WAIT;
END PROCESS t_prcs_entradas_88;
-- entradas[87]
t_prcs_entradas_87: PROCESS
BEGIN
	entradas(87) <= '0';
WAIT;
END PROCESS t_prcs_entradas_87;
-- entradas[86]
t_prcs_entradas_86: PROCESS
BEGIN
	entradas(86) <= '0';
WAIT;
END PROCESS t_prcs_entradas_86;
-- entradas[85]
t_prcs_entradas_85: PROCESS
BEGIN
	entradas(85) <= '1';
WAIT;
END PROCESS t_prcs_entradas_85;
-- entradas[84]
t_prcs_entradas_84: PROCESS
BEGIN
	entradas(84) <= '0';
WAIT;
END PROCESS t_prcs_entradas_84;
-- entradas[83]
t_prcs_entradas_83: PROCESS
BEGIN
	entradas(83) <= '1';
WAIT;
END PROCESS t_prcs_entradas_83;
-- entradas[82]
t_prcs_entradas_82: PROCESS
BEGIN
	entradas(82) <= '0';
WAIT;
END PROCESS t_prcs_entradas_82;
-- entradas[81]
t_prcs_entradas_81: PROCESS
BEGIN
	entradas(81) <= '0';
WAIT;
END PROCESS t_prcs_entradas_81;
-- entradas[80]
t_prcs_entradas_80: PROCESS
BEGIN
	entradas(80) <= '1';
WAIT;
END PROCESS t_prcs_entradas_80;
-- entradas[79]
t_prcs_entradas_79: PROCESS
BEGIN
	entradas(79) <= '1';
WAIT;
END PROCESS t_prcs_entradas_79;
-- entradas[78]
t_prcs_entradas_78: PROCESS
BEGIN
	entradas(78) <= '0';
WAIT;
END PROCESS t_prcs_entradas_78;
-- entradas[77]
t_prcs_entradas_77: PROCESS
BEGIN
	entradas(77) <= '0';
WAIT;
END PROCESS t_prcs_entradas_77;
-- entradas[76]
t_prcs_entradas_76: PROCESS
BEGIN
	entradas(76) <= '0';
WAIT;
END PROCESS t_prcs_entradas_76;
-- entradas[75]
t_prcs_entradas_75: PROCESS
BEGIN
	entradas(75) <= '1';
WAIT;
END PROCESS t_prcs_entradas_75;
-- entradas[74]
t_prcs_entradas_74: PROCESS
BEGIN
	entradas(74) <= '0';
WAIT;
END PROCESS t_prcs_entradas_74;
-- entradas[73]
t_prcs_entradas_73: PROCESS
BEGIN
	entradas(73) <= '1';
WAIT;
END PROCESS t_prcs_entradas_73;
-- entradas[72]
t_prcs_entradas_72: PROCESS
BEGIN
	entradas(72) <= '0';
WAIT;
END PROCESS t_prcs_entradas_72;
-- entradas[71]
t_prcs_entradas_71: PROCESS
BEGIN
	entradas(71) <= '0';
WAIT;
END PROCESS t_prcs_entradas_71;
-- entradas[70]
t_prcs_entradas_70: PROCESS
BEGIN
	entradas(70) <= '1';
WAIT;
END PROCESS t_prcs_entradas_70;
-- entradas[69]
t_prcs_entradas_69: PROCESS
BEGIN
	entradas(69) <= '0';
WAIT;
END PROCESS t_prcs_entradas_69;
-- entradas[68]
t_prcs_entradas_68: PROCESS
BEGIN
	entradas(68) <= '0';
WAIT;
END PROCESS t_prcs_entradas_68;
-- entradas[67]
t_prcs_entradas_67: PROCESS
BEGIN
	entradas(67) <= '1';
WAIT;
END PROCESS t_prcs_entradas_67;
-- entradas[66]
t_prcs_entradas_66: PROCESS
BEGIN
	entradas(66) <= '0';
WAIT;
END PROCESS t_prcs_entradas_66;
-- entradas[65]
t_prcs_entradas_65: PROCESS
BEGIN
	entradas(65) <= '0';
WAIT;
END PROCESS t_prcs_entradas_65;
-- entradas[64]
t_prcs_entradas_64: PROCESS
BEGIN
	entradas(64) <= '0';
WAIT;
END PROCESS t_prcs_entradas_64;
-- entradas[63]
t_prcs_entradas_63: PROCESS
BEGIN
	entradas(63) <= '0';
WAIT;
END PROCESS t_prcs_entradas_63;
-- entradas[62]
t_prcs_entradas_62: PROCESS
BEGIN
	entradas(62) <= '0';
WAIT;
END PROCESS t_prcs_entradas_62;
-- entradas[61]
t_prcs_entradas_61: PROCESS
BEGIN
	entradas(61) <= '0';
WAIT;
END PROCESS t_prcs_entradas_61;
-- entradas[60]
t_prcs_entradas_60: PROCESS
BEGIN
	entradas(60) <= '0';
WAIT;
END PROCESS t_prcs_entradas_60;
-- entradas[59]
t_prcs_entradas_59: PROCESS
BEGIN
	entradas(59) <= '0';
WAIT;
END PROCESS t_prcs_entradas_59;
-- entradas[58]
t_prcs_entradas_58: PROCESS
BEGIN
	entradas(58) <= '1';
WAIT;
END PROCESS t_prcs_entradas_58;
-- entradas[57]
t_prcs_entradas_57: PROCESS
BEGIN
	entradas(57) <= '1';
WAIT;
END PROCESS t_prcs_entradas_57;
-- entradas[56]
t_prcs_entradas_56: PROCESS
BEGIN
	entradas(56) <= '1';
WAIT;
END PROCESS t_prcs_entradas_56;
-- entradas[55]
t_prcs_entradas_55: PROCESS
BEGIN
	entradas(55) <= '1';
WAIT;
END PROCESS t_prcs_entradas_55;
-- entradas[54]
t_prcs_entradas_54: PROCESS
BEGIN
	entradas(54) <= '0';
WAIT;
END PROCESS t_prcs_entradas_54;
-- entradas[53]
t_prcs_entradas_53: PROCESS
BEGIN
	entradas(53) <= '0';
WAIT;
END PROCESS t_prcs_entradas_53;
-- entradas[52]
t_prcs_entradas_52: PROCESS
BEGIN
	entradas(52) <= '0';
WAIT;
END PROCESS t_prcs_entradas_52;
-- entradas[51]
t_prcs_entradas_51: PROCESS
BEGIN
	entradas(51) <= '0';
WAIT;
END PROCESS t_prcs_entradas_51;
-- entradas[50]
t_prcs_entradas_50: PROCESS
BEGIN
	entradas(50) <= '1';
WAIT;
END PROCESS t_prcs_entradas_50;
-- entradas[49]
t_prcs_entradas_49: PROCESS
BEGIN
	entradas(49) <= '0';
WAIT;
END PROCESS t_prcs_entradas_49;
-- entradas[48]
t_prcs_entradas_48: PROCESS
BEGIN
	entradas(48) <= '1';
WAIT;
END PROCESS t_prcs_entradas_48;
-- entradas[47]
t_prcs_entradas_47: PROCESS
BEGIN
	entradas(47) <= '1';
WAIT;
END PROCESS t_prcs_entradas_47;
-- entradas[46]
t_prcs_entradas_46: PROCESS
BEGIN
	entradas(46) <= '1';
WAIT;
END PROCESS t_prcs_entradas_46;
-- entradas[45]
t_prcs_entradas_45: PROCESS
BEGIN
	entradas(45) <= '1';
WAIT;
END PROCESS t_prcs_entradas_45;
-- entradas[44]
t_prcs_entradas_44: PROCESS
BEGIN
	entradas(44) <= '1';
WAIT;
END PROCESS t_prcs_entradas_44;
-- entradas[43]
t_prcs_entradas_43: PROCESS
BEGIN
	entradas(43) <= '0';
WAIT;
END PROCESS t_prcs_entradas_43;
-- entradas[42]
t_prcs_entradas_42: PROCESS
BEGIN
	entradas(42) <= '0';
WAIT;
END PROCESS t_prcs_entradas_42;
-- entradas[41]
t_prcs_entradas_41: PROCESS
BEGIN
	entradas(41) <= '1';
WAIT;
END PROCESS t_prcs_entradas_41;
-- entradas[40]
t_prcs_entradas_40: PROCESS
BEGIN
	entradas(40) <= '0';
WAIT;
END PROCESS t_prcs_entradas_40;
-- entradas[39]
t_prcs_entradas_39: PROCESS
BEGIN
	entradas(39) <= '0';
WAIT;
END PROCESS t_prcs_entradas_39;
-- entradas[38]
t_prcs_entradas_38: PROCESS
BEGIN
	entradas(38) <= '0';
WAIT;
END PROCESS t_prcs_entradas_38;
-- entradas[37]
t_prcs_entradas_37: PROCESS
BEGIN
	entradas(37) <= '0';
WAIT;
END PROCESS t_prcs_entradas_37;
-- entradas[36]
t_prcs_entradas_36: PROCESS
BEGIN
	entradas(36) <= '1';
WAIT;
END PROCESS t_prcs_entradas_36;
-- entradas[35]
t_prcs_entradas_35: PROCESS
BEGIN
	entradas(35) <= '1';
WAIT;
END PROCESS t_prcs_entradas_35;
-- entradas[34]
t_prcs_entradas_34: PROCESS
BEGIN
	entradas(34) <= '0';
WAIT;
END PROCESS t_prcs_entradas_34;
-- entradas[33]
t_prcs_entradas_33: PROCESS
BEGIN
	entradas(33) <= '0';
WAIT;
END PROCESS t_prcs_entradas_33;
-- entradas[32]
t_prcs_entradas_32: PROCESS
BEGIN
	entradas(32) <= '0';
WAIT;
END PROCESS t_prcs_entradas_32;
-- entradas[31]
t_prcs_entradas_31: PROCESS
BEGIN
	entradas(31) <= '1';
WAIT;
END PROCESS t_prcs_entradas_31;
-- entradas[30]
t_prcs_entradas_30: PROCESS
BEGIN
	entradas(30) <= '1';
WAIT;
END PROCESS t_prcs_entradas_30;
-- entradas[29]
t_prcs_entradas_29: PROCESS
BEGIN
	entradas(29) <= '1';
WAIT;
END PROCESS t_prcs_entradas_29;
-- entradas[28]
t_prcs_entradas_28: PROCESS
BEGIN
	entradas(28) <= '0';
WAIT;
END PROCESS t_prcs_entradas_28;
-- entradas[27]
t_prcs_entradas_27: PROCESS
BEGIN
	entradas(27) <= '0';
WAIT;
END PROCESS t_prcs_entradas_27;
-- entradas[26]
t_prcs_entradas_26: PROCESS
BEGIN
	entradas(26) <= '0';
WAIT;
END PROCESS t_prcs_entradas_26;
-- entradas[25]
t_prcs_entradas_25: PROCESS
BEGIN
	entradas(25) <= '1';
WAIT;
END PROCESS t_prcs_entradas_25;
-- entradas[24]
t_prcs_entradas_24: PROCESS
BEGIN
	entradas(24) <= '1';
WAIT;
END PROCESS t_prcs_entradas_24;
-- entradas[23]
t_prcs_entradas_23: PROCESS
BEGIN
	entradas(23) <= '1';
WAIT;
END PROCESS t_prcs_entradas_23;
-- entradas[22]
t_prcs_entradas_22: PROCESS
BEGIN
	entradas(22) <= '1';
WAIT;
END PROCESS t_prcs_entradas_22;
-- entradas[21]
t_prcs_entradas_21: PROCESS
BEGIN
	entradas(21) <= '0';
WAIT;
END PROCESS t_prcs_entradas_21;
-- entradas[20]
t_prcs_entradas_20: PROCESS
BEGIN
	entradas(20) <= '0';
WAIT;
END PROCESS t_prcs_entradas_20;
-- entradas[19]
t_prcs_entradas_19: PROCESS
BEGIN
	entradas(19) <= '1';
WAIT;
END PROCESS t_prcs_entradas_19;
-- entradas[18]
t_prcs_entradas_18: PROCESS
BEGIN
	entradas(18) <= '0';
WAIT;
END PROCESS t_prcs_entradas_18;
-- entradas[17]
t_prcs_entradas_17: PROCESS
BEGIN
	entradas(17) <= '1';
WAIT;
END PROCESS t_prcs_entradas_17;
-- entradas[16]
t_prcs_entradas_16: PROCESS
BEGIN
	entradas(16) <= '0';
WAIT;
END PROCESS t_prcs_entradas_16;
-- entradas[15]
t_prcs_entradas_15: PROCESS
BEGIN
	entradas(15) <= '1';
WAIT;
END PROCESS t_prcs_entradas_15;
-- entradas[14]
t_prcs_entradas_14: PROCESS
BEGIN
	entradas(14) <= '1';
WAIT;
END PROCESS t_prcs_entradas_14;
-- entradas[13]
t_prcs_entradas_13: PROCESS
BEGIN
	entradas(13) <= '0';
WAIT;
END PROCESS t_prcs_entradas_13;
-- entradas[12]
t_prcs_entradas_12: PROCESS
BEGIN
	entradas(12) <= '0';
WAIT;
END PROCESS t_prcs_entradas_12;
-- entradas[11]
t_prcs_entradas_11: PROCESS
BEGIN
	entradas(11) <= '0';
WAIT;
END PROCESS t_prcs_entradas_11;
-- entradas[10]
t_prcs_entradas_10: PROCESS
BEGIN
	entradas(10) <= '1';
WAIT;
END PROCESS t_prcs_entradas_10;
-- entradas[9]
t_prcs_entradas_9: PROCESS
BEGIN
	entradas(9) <= '1';
WAIT;
END PROCESS t_prcs_entradas_9;
-- entradas[8]
t_prcs_entradas_8: PROCESS
BEGIN
	entradas(8) <= '0';
WAIT;
END PROCESS t_prcs_entradas_8;
-- entradas[7]
t_prcs_entradas_7: PROCESS
BEGIN
	entradas(7) <= '1';
WAIT;
END PROCESS t_prcs_entradas_7;
-- entradas[6]
t_prcs_entradas_6: PROCESS
BEGIN
	entradas(6) <= '1';
WAIT;
END PROCESS t_prcs_entradas_6;
-- entradas[5]
t_prcs_entradas_5: PROCESS
BEGIN
	entradas(5) <= '1';
WAIT;
END PROCESS t_prcs_entradas_5;
-- entradas[4]
t_prcs_entradas_4: PROCESS
BEGIN
	entradas(4) <= '0';
WAIT;
END PROCESS t_prcs_entradas_4;
-- entradas[3]
t_prcs_entradas_3: PROCESS
BEGIN
	entradas(3) <= '1';
WAIT;
END PROCESS t_prcs_entradas_3;
-- entradas[2]
t_prcs_entradas_2: PROCESS
BEGIN
	entradas(2) <= '0';
WAIT;
END PROCESS t_prcs_entradas_2;
-- entradas[1]
t_prcs_entradas_1: PROCESS
BEGIN
	entradas(1) <= '1';
WAIT;
END PROCESS t_prcs_entradas_1;
-- entradas[0]
t_prcs_entradas_0: PROCESS
BEGIN
	entradas(0) <= '0';
WAIT;
END PROCESS t_prcs_entradas_0;
-- sel[3]
t_prcs_sel_3: PROCESS
BEGIN
	sel(3) <= '0';
	WAIT FOR 320000 ps;
	sel(3) <= '1';
	WAIT FOR 320000 ps;
	sel(3) <= '0';
	WAIT FOR 320000 ps;
	sel(3) <= '1';
WAIT;
END PROCESS t_prcs_sel_3;
-- sel[2]
t_prcs_sel_2: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		sel(2) <= '0';
		WAIT FOR 160000 ps;
		sel(2) <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	sel(2) <= '0';
WAIT;
END PROCESS t_prcs_sel_2;
-- sel[1]
t_prcs_sel_1: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		sel(1) <= '0';
		WAIT FOR 80000 ps;
		sel(1) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	sel(1) <= '0';
WAIT;
END PROCESS t_prcs_sel_1;
-- sel[0]
t_prcs_sel_0: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		sel(0) <= '0';
		WAIT FOR 40000 ps;
		sel(0) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	sel(0) <= '0';
WAIT;
END PROCESS t_prcs_sel_0;
END Atividade4_arch;
