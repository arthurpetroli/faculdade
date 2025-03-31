-- Copyright (C) 2020  Intel Corporation. All rights reserved.
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
-- Generated on "01/07/2025 12:37:27"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Atividad8
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Atividad8_vhd_vec_tst IS
END Atividad8_vhd_vec_tst;
ARCHITECTURE Atividad8_arch OF Atividad8_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL led1_amarelo : STD_LOGIC;
SIGNAL led1_verde : STD_LOGIC;
SIGNAL led1_vermelho : STD_LOGIC;
SIGNAL led2_amarelo : STD_LOGIC;
SIGNAL led2_verde : STD_LOGIC;
SIGNAL led2_vermelho : STD_LOGIC;
SIGNAL modo : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL rst : STD_LOGIC;
COMPONENT Atividad8
	PORT (
	clk : IN STD_LOGIC;
	led1_amarelo : BUFFER STD_LOGIC;
	led1_verde : BUFFER STD_LOGIC;
	led1_vermelho : BUFFER STD_LOGIC;
	led2_amarelo : BUFFER STD_LOGIC;
	led2_verde : BUFFER STD_LOGIC;
	led2_vermelho : BUFFER STD_LOGIC;
	modo : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	rst : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Atividad8
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	led1_amarelo => led1_amarelo,
	led1_verde => led1_verde,
	led1_vermelho => led1_vermelho,
	led2_amarelo => led2_amarelo,
	led2_verde => led2_verde,
	led2_vermelho => led2_vermelho,
	modo => modo,
	rst => rst
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
	clk <= '1';
WAIT;
END PROCESS t_prcs_clk;
-- modo[1]
t_prcs_modo_1: PROCESS
BEGIN
	modo(1) <= '0';
WAIT;
END PROCESS t_prcs_modo_1;
-- modo[0]
t_prcs_modo_0: PROCESS
BEGIN
	modo(0) <= '0';
WAIT;
END PROCESS t_prcs_modo_0;

-- rst
t_prcs_rst: PROCESS
BEGIN
	rst <= '0';
WAIT;
END PROCESS t_prcs_rst;
END Atividad8_arch;
