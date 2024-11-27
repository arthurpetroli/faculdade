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

-- DATE "11/27/2024 10:02:40"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
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


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Atividade5 IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	enable : IN std_logic;
	speed_sel : IN std_logic;
	leds : BUFFER std_logic_vector(9 DOWNTO 0)
	);
END Atividade5;

-- Design Ports Information
-- leds[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[1]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[2]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[4]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[5]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[6]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[7]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[8]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[9]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- speed_sel	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Atividade5 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_speed_sel : std_logic;
SIGNAL ww_leds : std_logic_vector(9 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \leds[0]~output_o\ : std_logic;
SIGNAL \leds[1]~output_o\ : std_logic;
SIGNAL \leds[2]~output_o\ : std_logic;
SIGNAL \leds[3]~output_o\ : std_logic;
SIGNAL \leds[4]~output_o\ : std_logic;
SIGNAL \leds[5]~output_o\ : std_logic;
SIGNAL \leds[6]~output_o\ : std_logic;
SIGNAL \leds[7]~output_o\ : std_logic;
SIGNAL \leds[8]~output_o\ : std_logic;
SIGNAL \leds[9]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \led_index[0]~13_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \speed_sel~input_o\ : std_logic;
SIGNAL \current_speed[12]~0_combout\ : std_logic;
SIGNAL \clk_counter[0]~26_combout\ : std_logic;
SIGNAL \LessThan0~15_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~9_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \LessThan0~10_combout\ : std_logic;
SIGNAL \LessThan0~11_combout\ : std_logic;
SIGNAL \LessThan0~12_combout\ : std_logic;
SIGNAL \LessThan0~13_combout\ : std_logic;
SIGNAL \LessThan0~14_combout\ : std_logic;
SIGNAL \LessThan0~17_combout\ : std_logic;
SIGNAL \clk_counter[0]~27\ : std_logic;
SIGNAL \clk_counter[1]~28_combout\ : std_logic;
SIGNAL \clk_counter[1]~29\ : std_logic;
SIGNAL \clk_counter[2]~30_combout\ : std_logic;
SIGNAL \clk_counter[2]~31\ : std_logic;
SIGNAL \clk_counter[3]~32_combout\ : std_logic;
SIGNAL \clk_counter[3]~33\ : std_logic;
SIGNAL \clk_counter[4]~34_combout\ : std_logic;
SIGNAL \clk_counter[4]~35\ : std_logic;
SIGNAL \clk_counter[5]~36_combout\ : std_logic;
SIGNAL \clk_counter[5]~37\ : std_logic;
SIGNAL \clk_counter[6]~38_combout\ : std_logic;
SIGNAL \clk_counter[6]~39\ : std_logic;
SIGNAL \clk_counter[7]~40_combout\ : std_logic;
SIGNAL \clk_counter[7]~41\ : std_logic;
SIGNAL \clk_counter[8]~42_combout\ : std_logic;
SIGNAL \clk_counter[8]~43\ : std_logic;
SIGNAL \clk_counter[9]~44_combout\ : std_logic;
SIGNAL \clk_counter[9]~45\ : std_logic;
SIGNAL \clk_counter[10]~46_combout\ : std_logic;
SIGNAL \clk_counter[10]~47\ : std_logic;
SIGNAL \clk_counter[11]~48_combout\ : std_logic;
SIGNAL \clk_counter[11]~49\ : std_logic;
SIGNAL \clk_counter[12]~50_combout\ : std_logic;
SIGNAL \clk_counter[12]~51\ : std_logic;
SIGNAL \clk_counter[13]~52_combout\ : std_logic;
SIGNAL \clk_counter[13]~53\ : std_logic;
SIGNAL \clk_counter[14]~54_combout\ : std_logic;
SIGNAL \clk_counter[14]~55\ : std_logic;
SIGNAL \clk_counter[15]~56_combout\ : std_logic;
SIGNAL \clk_counter[15]~57\ : std_logic;
SIGNAL \clk_counter[16]~58_combout\ : std_logic;
SIGNAL \clk_counter[16]~59\ : std_logic;
SIGNAL \clk_counter[17]~60_combout\ : std_logic;
SIGNAL \clk_counter[17]~61\ : std_logic;
SIGNAL \clk_counter[18]~62_combout\ : std_logic;
SIGNAL \clk_counter[18]~63\ : std_logic;
SIGNAL \clk_counter[19]~64_combout\ : std_logic;
SIGNAL \clk_counter[19]~65\ : std_logic;
SIGNAL \clk_counter[20]~66_combout\ : std_logic;
SIGNAL \clk_counter[20]~67\ : std_logic;
SIGNAL \clk_counter[21]~68_combout\ : std_logic;
SIGNAL \clk_counter[21]~69\ : std_logic;
SIGNAL \clk_counter[22]~70_combout\ : std_logic;
SIGNAL \clk_counter[22]~71\ : std_logic;
SIGNAL \clk_counter[23]~72_combout\ : std_logic;
SIGNAL \clk_counter[23]~73\ : std_logic;
SIGNAL \clk_counter[24]~74_combout\ : std_logic;
SIGNAL \clk_counter[24]~75\ : std_logic;
SIGNAL \clk_counter[25]~76_combout\ : std_logic;
SIGNAL \LessThan0~16_combout\ : std_logic;
SIGNAL \leds[0]~0_combout\ : std_logic;
SIGNAL \led_index[1]~4_cout\ : std_logic;
SIGNAL \led_index[1]~6\ : std_logic;
SIGNAL \led_index[2]~9_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \led_index[2]~10\ : std_logic;
SIGNAL \led_index[3]~11_combout\ : std_logic;
SIGNAL \direction~_wirecell_combout\ : std_logic;
SIGNAL \led_index~7_combout\ : std_logic;
SIGNAL \led_index~8_combout\ : std_logic;
SIGNAL \direction~0_combout\ : std_logic;
SIGNAL \direction~q\ : std_logic;
SIGNAL \led_index[1]~5_combout\ : std_logic;
SIGNAL \Decoder0~0_combout\ : std_logic;
SIGNAL \leds[0]~reg0_q\ : std_logic;
SIGNAL \Decoder0~1_combout\ : std_logic;
SIGNAL \leds[1]~reg0_q\ : std_logic;
SIGNAL \Decoder0~2_combout\ : std_logic;
SIGNAL \leds[2]~reg0_q\ : std_logic;
SIGNAL \Decoder0~3_combout\ : std_logic;
SIGNAL \leds[3]~reg0_q\ : std_logic;
SIGNAL \Decoder0~4_combout\ : std_logic;
SIGNAL \leds[4]~reg0_q\ : std_logic;
SIGNAL \Decoder0~5_combout\ : std_logic;
SIGNAL \leds[5]~reg0_q\ : std_logic;
SIGNAL \Decoder0~6_combout\ : std_logic;
SIGNAL \leds[6]~reg0_q\ : std_logic;
SIGNAL \Decoder0~7_combout\ : std_logic;
SIGNAL \leds[7]~reg0_q\ : std_logic;
SIGNAL \Decoder0~8_combout\ : std_logic;
SIGNAL \leds[8]~reg0_q\ : std_logic;
SIGNAL \Decoder0~9_combout\ : std_logic;
SIGNAL \leds[9]~reg0_q\ : std_logic;
SIGNAL led_index : std_logic_vector(3 DOWNTO 0);
SIGNAL clk_counter : std_logic_vector(25 DOWNTO 0);
SIGNAL current_speed : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_leds[0]~reg0_q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_enable <= enable;
ww_speed_sel <= speed_sel;
leds <= ww_leds;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);
\ALT_INV_leds[0]~reg0_q\ <= NOT \leds[0]~reg0_q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X46_Y54_N2
\leds[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_leds[0]~reg0_q\,
	devoe => ww_devoe,
	o => \leds[0]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\leds[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \leds[1]~reg0_q\,
	devoe => ww_devoe,
	o => \leds[1]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\leds[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \leds[2]~reg0_q\,
	devoe => ww_devoe,
	o => \leds[2]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\leds[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \leds[3]~reg0_q\,
	devoe => ww_devoe,
	o => \leds[3]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\leds[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \leds[4]~reg0_q\,
	devoe => ww_devoe,
	o => \leds[4]~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\leds[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \leds[5]~reg0_q\,
	devoe => ww_devoe,
	o => \leds[5]~output_o\);

-- Location: IOOBUF_X66_Y54_N23
\leds[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \leds[6]~reg0_q\,
	devoe => ww_devoe,
	o => \leds[6]~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\leds[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \leds[7]~reg0_q\,
	devoe => ww_devoe,
	o => \leds[7]~output_o\);

-- Location: IOOBUF_X51_Y54_N9
\leds[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \leds[8]~reg0_q\,
	devoe => ww_devoe,
	o => \leds[8]~output_o\);

-- Location: IOOBUF_X49_Y54_N9
\leds[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \leds[9]~reg0_q\,
	devoe => ww_devoe,
	o => \leds[9]~output_o\);

-- Location: IOIBUF_X49_Y54_N29
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: LCCOMB_X51_Y51_N2
\led_index[0]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \led_index[0]~13_combout\ = !led_index(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => led_index(0),
	combout => \led_index[0]~13_combout\);

-- Location: IOIBUF_X46_Y54_N29
\reset~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X69_Y54_N1
\enable~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

-- Location: IOIBUF_X51_Y54_N29
\speed_sel~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_speed_sel,
	o => \speed_sel~input_o\);

-- Location: LCCOMB_X49_Y51_N10
\current_speed[12]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_speed[12]~0_combout\ = (\reset~input_o\ & ((\enable~input_o\ & (\speed_sel~input_o\)) # (!\enable~input_o\ & ((current_speed(12)))))) # (!\reset~input_o\ & (((current_speed(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \speed_sel~input_o\,
	datac => current_speed(12),
	datad => \enable~input_o\,
	combout => \current_speed[12]~0_combout\);

-- Location: FF_X49_Y51_N11
\current_speed[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \current_speed[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_speed(12));

-- Location: LCCOMB_X50_Y52_N6
\clk_counter[0]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter[0]~26_combout\ = clk_counter(0) $ (VCC)
-- \clk_counter[0]~27\ = CARRY(clk_counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter(0),
	datad => VCC,
	combout => \clk_counter[0]~26_combout\,
	cout => \clk_counter[0]~27\);

-- Location: LCCOMB_X49_Y51_N26
\LessThan0~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~15_combout\ = (!clk_counter(25) & (!clk_counter(23) & (current_speed(12) $ (clk_counter(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_speed(12),
	datab => clk_counter(25),
	datac => clk_counter(23),
	datad => clk_counter(24),
	combout => \LessThan0~15_combout\);

-- Location: LCCOMB_X49_Y51_N28
\LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (current_speed(12) & (!clk_counter(21) & (!clk_counter(20) & !clk_counter(16)))) # (!current_speed(12) & (clk_counter(21) & (clk_counter(20) & clk_counter(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_speed(12),
	datab => clk_counter(21),
	datac => clk_counter(20),
	datad => clk_counter(16),
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X49_Y51_N14
\LessThan0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (!clk_counter(15) & (!clk_counter(17) & \LessThan0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => clk_counter(15),
	datac => clk_counter(17),
	datad => \LessThan0~3_combout\,
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X51_Y51_N28
\LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (clk_counter(18) & ((clk_counter(17)) # ((clk_counter(16)) # (!clk_counter(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter(17),
	datab => clk_counter(16),
	datac => clk_counter(21),
	datad => clk_counter(18),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X51_Y51_N10
\LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (current_speed(12) & ((clk_counter(21)) # ((clk_counter(19) & \LessThan0~0_combout\)))) # (!current_speed(12) & (clk_counter(19) & (clk_counter(21) & \LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter(19),
	datab => current_speed(12),
	datac => clk_counter(21),
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X51_Y51_N12
\LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = ((clk_counter(20) & (!current_speed(12) & !\LessThan0~1_combout\)) # (!clk_counter(20) & ((!\LessThan0~1_combout\) # (!current_speed(12))))) # (!clk_counter(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter(20),
	datab => clk_counter(22),
	datac => current_speed(12),
	datad => \LessThan0~1_combout\,
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X50_Y52_N0
\LessThan0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~9_combout\ = (!clk_counter(5)) # (!clk_counter(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => clk_counter(4),
	datad => clk_counter(5),
	combout => \LessThan0~9_combout\);

-- Location: LCCOMB_X50_Y52_N4
\LessThan0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (!clk_counter(7) & (!clk_counter(10) & !clk_counter(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => clk_counter(7),
	datac => clk_counter(10),
	datad => clk_counter(6),
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X50_Y52_N2
\LessThan0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~8_combout\ = (((!clk_counter(3)) # (!clk_counter(2))) # (!clk_counter(1))) # (!clk_counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter(0),
	datab => clk_counter(1),
	datac => clk_counter(2),
	datad => clk_counter(3),
	combout => \LessThan0~8_combout\);

-- Location: LCCOMB_X49_Y51_N22
\LessThan0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (!clk_counter(12) & !clk_counter(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => clk_counter(12),
	datad => clk_counter(13),
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X49_Y51_N0
\LessThan0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = (\LessThan0~6_combout\) # ((!clk_counter(8) & (!current_speed(12) & !clk_counter(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter(8),
	datab => current_speed(12),
	datac => \LessThan0~6_combout\,
	datad => clk_counter(9),
	combout => \LessThan0~7_combout\);

-- Location: LCCOMB_X49_Y51_N6
\LessThan0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~10_combout\ = (\LessThan0~5_combout\ & (\LessThan0~7_combout\ & ((\LessThan0~9_combout\) # (\LessThan0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~9_combout\,
	datab => \LessThan0~5_combout\,
	datac => \LessThan0~8_combout\,
	datad => \LessThan0~7_combout\,
	combout => \LessThan0~10_combout\);

-- Location: LCCOMB_X49_Y51_N16
\LessThan0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~11_combout\ = (clk_counter(10)) # ((clk_counter(8) & clk_counter(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter(8),
	datac => clk_counter(10),
	datad => clk_counter(9),
	combout => \LessThan0~11_combout\);

-- Location: LCCOMB_X49_Y51_N18
\LessThan0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~12_combout\ = (current_speed(12) & ((clk_counter(12)) # ((clk_counter(11) & \LessThan0~11_combout\)))) # (!current_speed(12) & (clk_counter(12) & (clk_counter(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_speed(12),
	datab => clk_counter(12),
	datac => clk_counter(11),
	datad => \LessThan0~11_combout\,
	combout => \LessThan0~12_combout\);

-- Location: LCCOMB_X49_Y51_N20
\LessThan0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~13_combout\ = ((current_speed(12) & (!clk_counter(13) & !\LessThan0~12_combout\)) # (!current_speed(12) & ((!\LessThan0~12_combout\) # (!clk_counter(13))))) # (!clk_counter(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter(14),
	datab => current_speed(12),
	datac => clk_counter(13),
	datad => \LessThan0~12_combout\,
	combout => \LessThan0~13_combout\);

-- Location: LCCOMB_X50_Y51_N26
\LessThan0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~14_combout\ = (\LessThan0~2_combout\) # ((\LessThan0~4_combout\ & ((\LessThan0~10_combout\) # (\LessThan0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~4_combout\,
	datab => \LessThan0~2_combout\,
	datac => \LessThan0~10_combout\,
	datad => \LessThan0~13_combout\,
	combout => \LessThan0~14_combout\);

-- Location: LCCOMB_X50_Y51_N30
\LessThan0~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~17_combout\ = (!\LessThan0~16_combout\ & ((!\LessThan0~14_combout\) # (!\LessThan0~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~15_combout\,
	datab => \LessThan0~16_combout\,
	datac => \LessThan0~14_combout\,
	combout => \LessThan0~17_combout\);

-- Location: FF_X50_Y52_N7
\clk_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \clk_counter[0]~26_combout\,
	clrn => \reset~input_o\,
	sclr => \LessThan0~17_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(0));

-- Location: LCCOMB_X50_Y52_N8
\clk_counter[1]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter[1]~28_combout\ = (clk_counter(1) & (!\clk_counter[0]~27\)) # (!clk_counter(1) & ((\clk_counter[0]~27\) # (GND)))
-- \clk_counter[1]~29\ = CARRY((!\clk_counter[0]~27\) # (!clk_counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_counter(1),
	datad => VCC,
	cin => \clk_counter[0]~27\,
	combout => \clk_counter[1]~28_combout\,
	cout => \clk_counter[1]~29\);

-- Location: FF_X50_Y52_N9
\clk_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \clk_counter[1]~28_combout\,
	clrn => \reset~input_o\,
	sclr => \LessThan0~17_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(1));

-- Location: LCCOMB_X50_Y52_N10
\clk_counter[2]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter[2]~30_combout\ = (clk_counter(2) & (\clk_counter[1]~29\ $ (GND))) # (!clk_counter(2) & (!\clk_counter[1]~29\ & VCC))
-- \clk_counter[2]~31\ = CARRY((clk_counter(2) & !\clk_counter[1]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter(2),
	datad => VCC,
	cin => \clk_counter[1]~29\,
	combout => \clk_counter[2]~30_combout\,
	cout => \clk_counter[2]~31\);

-- Location: FF_X50_Y52_N11
\clk_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \clk_counter[2]~30_combout\,
	clrn => \reset~input_o\,
	sclr => \LessThan0~17_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(2));

-- Location: LCCOMB_X50_Y52_N12
\clk_counter[3]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter[3]~32_combout\ = (clk_counter(3) & (!\clk_counter[2]~31\)) # (!clk_counter(3) & ((\clk_counter[2]~31\) # (GND)))
-- \clk_counter[3]~33\ = CARRY((!\clk_counter[2]~31\) # (!clk_counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter(3),
	datad => VCC,
	cin => \clk_counter[2]~31\,
	combout => \clk_counter[3]~32_combout\,
	cout => \clk_counter[3]~33\);

-- Location: FF_X50_Y52_N13
\clk_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \clk_counter[3]~32_combout\,
	clrn => \reset~input_o\,
	sclr => \LessThan0~17_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(3));

-- Location: LCCOMB_X50_Y52_N14
\clk_counter[4]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter[4]~34_combout\ = (clk_counter(4) & (\clk_counter[3]~33\ $ (GND))) # (!clk_counter(4) & (!\clk_counter[3]~33\ & VCC))
-- \clk_counter[4]~35\ = CARRY((clk_counter(4) & !\clk_counter[3]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter(4),
	datad => VCC,
	cin => \clk_counter[3]~33\,
	combout => \clk_counter[4]~34_combout\,
	cout => \clk_counter[4]~35\);

-- Location: FF_X50_Y52_N15
\clk_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \clk_counter[4]~34_combout\,
	clrn => \reset~input_o\,
	sclr => \LessThan0~17_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(4));

-- Location: LCCOMB_X50_Y52_N16
\clk_counter[5]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter[5]~36_combout\ = (clk_counter(5) & (!\clk_counter[4]~35\)) # (!clk_counter(5) & ((\clk_counter[4]~35\) # (GND)))
-- \clk_counter[5]~37\ = CARRY((!\clk_counter[4]~35\) # (!clk_counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_counter(5),
	datad => VCC,
	cin => \clk_counter[4]~35\,
	combout => \clk_counter[5]~36_combout\,
	cout => \clk_counter[5]~37\);

-- Location: FF_X50_Y52_N17
\clk_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \clk_counter[5]~36_combout\,
	clrn => \reset~input_o\,
	sclr => \LessThan0~17_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(5));

-- Location: LCCOMB_X50_Y52_N18
\clk_counter[6]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter[6]~38_combout\ = (clk_counter(6) & (\clk_counter[5]~37\ $ (GND))) # (!clk_counter(6) & (!\clk_counter[5]~37\ & VCC))
-- \clk_counter[6]~39\ = CARRY((clk_counter(6) & !\clk_counter[5]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_counter(6),
	datad => VCC,
	cin => \clk_counter[5]~37\,
	combout => \clk_counter[6]~38_combout\,
	cout => \clk_counter[6]~39\);

-- Location: FF_X50_Y52_N19
\clk_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \clk_counter[6]~38_combout\,
	clrn => \reset~input_o\,
	sclr => \LessThan0~17_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(6));

-- Location: LCCOMB_X50_Y52_N20
\clk_counter[7]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter[7]~40_combout\ = (clk_counter(7) & (!\clk_counter[6]~39\)) # (!clk_counter(7) & ((\clk_counter[6]~39\) # (GND)))
-- \clk_counter[7]~41\ = CARRY((!\clk_counter[6]~39\) # (!clk_counter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_counter(7),
	datad => VCC,
	cin => \clk_counter[6]~39\,
	combout => \clk_counter[7]~40_combout\,
	cout => \clk_counter[7]~41\);

-- Location: FF_X50_Y52_N21
\clk_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \clk_counter[7]~40_combout\,
	clrn => \reset~input_o\,
	sclr => \LessThan0~17_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(7));

-- Location: LCCOMB_X50_Y52_N22
\clk_counter[8]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter[8]~42_combout\ = (clk_counter(8) & (\clk_counter[7]~41\ $ (GND))) # (!clk_counter(8) & (!\clk_counter[7]~41\ & VCC))
-- \clk_counter[8]~43\ = CARRY((clk_counter(8) & !\clk_counter[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter(8),
	datad => VCC,
	cin => \clk_counter[7]~41\,
	combout => \clk_counter[8]~42_combout\,
	cout => \clk_counter[8]~43\);

-- Location: FF_X50_Y52_N23
\clk_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \clk_counter[8]~42_combout\,
	clrn => \reset~input_o\,
	sclr => \LessThan0~17_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(8));

-- Location: LCCOMB_X50_Y52_N24
\clk_counter[9]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter[9]~44_combout\ = (clk_counter(9) & (!\clk_counter[8]~43\)) # (!clk_counter(9) & ((\clk_counter[8]~43\) # (GND)))
-- \clk_counter[9]~45\ = CARRY((!\clk_counter[8]~43\) # (!clk_counter(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_counter(9),
	datad => VCC,
	cin => \clk_counter[8]~43\,
	combout => \clk_counter[9]~44_combout\,
	cout => \clk_counter[9]~45\);

-- Location: FF_X50_Y52_N25
\clk_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \clk_counter[9]~44_combout\,
	clrn => \reset~input_o\,
	sclr => \LessThan0~17_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(9));

-- Location: LCCOMB_X50_Y52_N26
\clk_counter[10]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter[10]~46_combout\ = (clk_counter(10) & (\clk_counter[9]~45\ $ (GND))) # (!clk_counter(10) & (!\clk_counter[9]~45\ & VCC))
-- \clk_counter[10]~47\ = CARRY((clk_counter(10) & !\clk_counter[9]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter(10),
	datad => VCC,
	cin => \clk_counter[9]~45\,
	combout => \clk_counter[10]~46_combout\,
	cout => \clk_counter[10]~47\);

-- Location: FF_X50_Y52_N27
\clk_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \clk_counter[10]~46_combout\,
	clrn => \reset~input_o\,
	sclr => \LessThan0~17_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(10));

-- Location: LCCOMB_X50_Y52_N28
\clk_counter[11]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter[11]~48_combout\ = (clk_counter(11) & (!\clk_counter[10]~47\)) # (!clk_counter(11) & ((\clk_counter[10]~47\) # (GND)))
-- \clk_counter[11]~49\ = CARRY((!\clk_counter[10]~47\) # (!clk_counter(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_counter(11),
	datad => VCC,
	cin => \clk_counter[10]~47\,
	combout => \clk_counter[11]~48_combout\,
	cout => \clk_counter[11]~49\);

-- Location: FF_X50_Y52_N29
\clk_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \clk_counter[11]~48_combout\,
	clrn => \reset~input_o\,
	sclr => \LessThan0~17_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(11));

-- Location: LCCOMB_X50_Y52_N30
\clk_counter[12]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter[12]~50_combout\ = (clk_counter(12) & (\clk_counter[11]~49\ $ (GND))) # (!clk_counter(12) & (!\clk_counter[11]~49\ & VCC))
-- \clk_counter[12]~51\ = CARRY((clk_counter(12) & !\clk_counter[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter(12),
	datad => VCC,
	cin => \clk_counter[11]~49\,
	combout => \clk_counter[12]~50_combout\,
	cout => \clk_counter[12]~51\);

-- Location: FF_X50_Y52_N31
\clk_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \clk_counter[12]~50_combout\,
	clrn => \reset~input_o\,
	sclr => \LessThan0~17_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(12));

-- Location: LCCOMB_X50_Y51_N0
\clk_counter[13]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter[13]~52_combout\ = (clk_counter(13) & (!\clk_counter[12]~51\)) # (!clk_counter(13) & ((\clk_counter[12]~51\) # (GND)))
-- \clk_counter[13]~53\ = CARRY((!\clk_counter[12]~51\) # (!clk_counter(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_counter(13),
	datad => VCC,
	cin => \clk_counter[12]~51\,
	combout => \clk_counter[13]~52_combout\,
	cout => \clk_counter[13]~53\);

-- Location: FF_X50_Y51_N1
\clk_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \clk_counter[13]~52_combout\,
	clrn => \reset~input_o\,
	sclr => \LessThan0~17_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(13));

-- Location: LCCOMB_X50_Y51_N2
\clk_counter[14]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter[14]~54_combout\ = (clk_counter(14) & (\clk_counter[13]~53\ $ (GND))) # (!clk_counter(14) & (!\clk_counter[13]~53\ & VCC))
-- \clk_counter[14]~55\ = CARRY((clk_counter(14) & !\clk_counter[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_counter(14),
	datad => VCC,
	cin => \clk_counter[13]~53\,
	combout => \clk_counter[14]~54_combout\,
	cout => \clk_counter[14]~55\);

-- Location: FF_X50_Y51_N3
\clk_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \clk_counter[14]~54_combout\,
	clrn => \reset~input_o\,
	sclr => \LessThan0~17_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(14));

-- Location: LCCOMB_X50_Y51_N4
\clk_counter[15]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter[15]~56_combout\ = (clk_counter(15) & (!\clk_counter[14]~55\)) # (!clk_counter(15) & ((\clk_counter[14]~55\) # (GND)))
-- \clk_counter[15]~57\ = CARRY((!\clk_counter[14]~55\) # (!clk_counter(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_counter(15),
	datad => VCC,
	cin => \clk_counter[14]~55\,
	combout => \clk_counter[15]~56_combout\,
	cout => \clk_counter[15]~57\);

-- Location: FF_X50_Y51_N5
\clk_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \clk_counter[15]~56_combout\,
	clrn => \reset~input_o\,
	sclr => \LessThan0~17_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(15));

-- Location: LCCOMB_X50_Y51_N6
\clk_counter[16]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter[16]~58_combout\ = (clk_counter(16) & (\clk_counter[15]~57\ $ (GND))) # (!clk_counter(16) & (!\clk_counter[15]~57\ & VCC))
-- \clk_counter[16]~59\ = CARRY((clk_counter(16) & !\clk_counter[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_counter(16),
	datad => VCC,
	cin => \clk_counter[15]~57\,
	combout => \clk_counter[16]~58_combout\,
	cout => \clk_counter[16]~59\);

-- Location: FF_X50_Y51_N7
\clk_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \clk_counter[16]~58_combout\,
	clrn => \reset~input_o\,
	sclr => \LessThan0~17_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(16));

-- Location: LCCOMB_X50_Y51_N8
\clk_counter[17]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter[17]~60_combout\ = (clk_counter(17) & (!\clk_counter[16]~59\)) # (!clk_counter(17) & ((\clk_counter[16]~59\) # (GND)))
-- \clk_counter[17]~61\ = CARRY((!\clk_counter[16]~59\) # (!clk_counter(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_counter(17),
	datad => VCC,
	cin => \clk_counter[16]~59\,
	combout => \clk_counter[17]~60_combout\,
	cout => \clk_counter[17]~61\);

-- Location: FF_X50_Y51_N9
\clk_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \clk_counter[17]~60_combout\,
	clrn => \reset~input_o\,
	sclr => \LessThan0~17_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(17));

-- Location: LCCOMB_X50_Y51_N10
\clk_counter[18]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter[18]~62_combout\ = (clk_counter(18) & (\clk_counter[17]~61\ $ (GND))) # (!clk_counter(18) & (!\clk_counter[17]~61\ & VCC))
-- \clk_counter[18]~63\ = CARRY((clk_counter(18) & !\clk_counter[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter(18),
	datad => VCC,
	cin => \clk_counter[17]~61\,
	combout => \clk_counter[18]~62_combout\,
	cout => \clk_counter[18]~63\);

-- Location: FF_X50_Y51_N11
\clk_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \clk_counter[18]~62_combout\,
	clrn => \reset~input_o\,
	sclr => \LessThan0~17_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(18));

-- Location: LCCOMB_X50_Y51_N12
\clk_counter[19]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter[19]~64_combout\ = (clk_counter(19) & (!\clk_counter[18]~63\)) # (!clk_counter(19) & ((\clk_counter[18]~63\) # (GND)))
-- \clk_counter[19]~65\ = CARRY((!\clk_counter[18]~63\) # (!clk_counter(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter(19),
	datad => VCC,
	cin => \clk_counter[18]~63\,
	combout => \clk_counter[19]~64_combout\,
	cout => \clk_counter[19]~65\);

-- Location: FF_X50_Y51_N13
\clk_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \clk_counter[19]~64_combout\,
	clrn => \reset~input_o\,
	sclr => \LessThan0~17_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(19));

-- Location: LCCOMB_X50_Y51_N14
\clk_counter[20]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter[20]~66_combout\ = (clk_counter(20) & (\clk_counter[19]~65\ $ (GND))) # (!clk_counter(20) & (!\clk_counter[19]~65\ & VCC))
-- \clk_counter[20]~67\ = CARRY((clk_counter(20) & !\clk_counter[19]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_counter(20),
	datad => VCC,
	cin => \clk_counter[19]~65\,
	combout => \clk_counter[20]~66_combout\,
	cout => \clk_counter[20]~67\);

-- Location: FF_X50_Y51_N15
\clk_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \clk_counter[20]~66_combout\,
	clrn => \reset~input_o\,
	sclr => \LessThan0~17_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(20));

-- Location: LCCOMB_X50_Y51_N16
\clk_counter[21]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter[21]~68_combout\ = (clk_counter(21) & (!\clk_counter[20]~67\)) # (!clk_counter(21) & ((\clk_counter[20]~67\) # (GND)))
-- \clk_counter[21]~69\ = CARRY((!\clk_counter[20]~67\) # (!clk_counter(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_counter(21),
	datad => VCC,
	cin => \clk_counter[20]~67\,
	combout => \clk_counter[21]~68_combout\,
	cout => \clk_counter[21]~69\);

-- Location: FF_X50_Y51_N17
\clk_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \clk_counter[21]~68_combout\,
	clrn => \reset~input_o\,
	sclr => \LessThan0~17_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(21));

-- Location: LCCOMB_X50_Y51_N18
\clk_counter[22]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter[22]~70_combout\ = (clk_counter(22) & (\clk_counter[21]~69\ $ (GND))) # (!clk_counter(22) & (!\clk_counter[21]~69\ & VCC))
-- \clk_counter[22]~71\ = CARRY((clk_counter(22) & !\clk_counter[21]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter(22),
	datad => VCC,
	cin => \clk_counter[21]~69\,
	combout => \clk_counter[22]~70_combout\,
	cout => \clk_counter[22]~71\);

-- Location: FF_X50_Y51_N19
\clk_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \clk_counter[22]~70_combout\,
	clrn => \reset~input_o\,
	sclr => \LessThan0~17_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(22));

-- Location: LCCOMB_X50_Y51_N20
\clk_counter[23]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter[23]~72_combout\ = (clk_counter(23) & (!\clk_counter[22]~71\)) # (!clk_counter(23) & ((\clk_counter[22]~71\) # (GND)))
-- \clk_counter[23]~73\ = CARRY((!\clk_counter[22]~71\) # (!clk_counter(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_counter(23),
	datad => VCC,
	cin => \clk_counter[22]~71\,
	combout => \clk_counter[23]~72_combout\,
	cout => \clk_counter[23]~73\);

-- Location: FF_X50_Y51_N21
\clk_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \clk_counter[23]~72_combout\,
	clrn => \reset~input_o\,
	sclr => \LessThan0~17_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(23));

-- Location: LCCOMB_X50_Y51_N22
\clk_counter[24]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter[24]~74_combout\ = (clk_counter(24) & (\clk_counter[23]~73\ $ (GND))) # (!clk_counter(24) & (!\clk_counter[23]~73\ & VCC))
-- \clk_counter[24]~75\ = CARRY((clk_counter(24) & !\clk_counter[23]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter(24),
	datad => VCC,
	cin => \clk_counter[23]~73\,
	combout => \clk_counter[24]~74_combout\,
	cout => \clk_counter[24]~75\);

-- Location: FF_X50_Y51_N23
\clk_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \clk_counter[24]~74_combout\,
	clrn => \reset~input_o\,
	sclr => \LessThan0~17_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(24));

-- Location: LCCOMB_X50_Y51_N24
\clk_counter[25]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter[25]~76_combout\ = \clk_counter[24]~75\ $ (clk_counter(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => clk_counter(25),
	cin => \clk_counter[24]~75\,
	combout => \clk_counter[25]~76_combout\);

-- Location: FF_X50_Y51_N25
\clk_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \clk_counter[25]~76_combout\,
	clrn => \reset~input_o\,
	sclr => \LessThan0~17_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(25));

-- Location: LCCOMB_X49_Y51_N4
\LessThan0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~16_combout\ = (!current_speed(12) & (!clk_counter(25) & !clk_counter(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_speed(12),
	datab => clk_counter(25),
	datad => clk_counter(24),
	combout => \LessThan0~16_combout\);

-- Location: LCCOMB_X50_Y51_N28
\leds[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leds[0]~0_combout\ = (\enable~input_o\ & (!\LessThan0~16_combout\ & ((!\LessThan0~15_combout\) # (!\LessThan0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~input_o\,
	datab => \LessThan0~16_combout\,
	datac => \LessThan0~14_combout\,
	datad => \LessThan0~15_combout\,
	combout => \leds[0]~0_combout\);

-- Location: FF_X51_Y51_N3
\led_index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \led_index[0]~13_combout\,
	clrn => \reset~input_o\,
	ena => \leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_index(0));

-- Location: LCCOMB_X51_Y51_N16
\led_index[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \led_index[1]~4_cout\ = CARRY(led_index(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => led_index(0),
	datad => VCC,
	cout => \led_index[1]~4_cout\);

-- Location: LCCOMB_X51_Y51_N18
\led_index[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \led_index[1]~5_combout\ = (\direction~q\ & ((led_index(1) & (\led_index[1]~4_cout\ & VCC)) # (!led_index(1) & (!\led_index[1]~4_cout\)))) # (!\direction~q\ & ((led_index(1) & (!\led_index[1]~4_cout\)) # (!led_index(1) & ((\led_index[1]~4_cout\) # 
-- (GND)))))
-- \led_index[1]~6\ = CARRY((\direction~q\ & (!led_index(1) & !\led_index[1]~4_cout\)) # (!\direction~q\ & ((!\led_index[1]~4_cout\) # (!led_index(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \direction~q\,
	datab => led_index(1),
	datad => VCC,
	cin => \led_index[1]~4_cout\,
	combout => \led_index[1]~5_combout\,
	cout => \led_index[1]~6\);

-- Location: LCCOMB_X51_Y51_N20
\led_index[2]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \led_index[2]~9_combout\ = ((\direction~q\ $ (led_index(2) $ (!\led_index[1]~6\)))) # (GND)
-- \led_index[2]~10\ = CARRY((\direction~q\ & ((led_index(2)) # (!\led_index[1]~6\))) # (!\direction~q\ & (led_index(2) & !\led_index[1]~6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \direction~q\,
	datab => led_index(2),
	datad => VCC,
	cin => \led_index[1]~6\,
	combout => \led_index[2]~9_combout\,
	cout => \led_index[2]~10\);

-- Location: LCCOMB_X46_Y50_N16
\~GND\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X51_Y51_N21
\led_index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \led_index[2]~9_combout\,
	asdata => \~GND~combout\,
	clrn => \reset~input_o\,
	sload => \led_index~8_combout\,
	ena => \leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_index(2));

-- Location: LCCOMB_X51_Y51_N22
\led_index[3]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \led_index[3]~11_combout\ = led_index(3) $ (\led_index[2]~10\ $ (\direction~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => led_index(3),
	datad => \direction~q\,
	cin => \led_index[2]~10\,
	combout => \led_index[3]~11_combout\);

-- Location: LCCOMB_X51_Y50_N12
\direction~_wirecell\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \direction~_wirecell_combout\ = !\direction~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \direction~q\,
	combout => \direction~_wirecell_combout\);

-- Location: FF_X51_Y51_N23
\led_index[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \led_index[3]~11_combout\,
	asdata => \direction~_wirecell_combout\,
	clrn => \reset~input_o\,
	sload => \led_index~8_combout\,
	ena => \leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_index(3));

-- Location: LCCOMB_X51_Y51_N8
\led_index~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \led_index~7_combout\ = (led_index(0) & (led_index(3) & !\direction~q\)) # (!led_index(0) & (!led_index(3) & \direction~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => led_index(0),
	datac => led_index(3),
	datad => \direction~q\,
	combout => \led_index~7_combout\);

-- Location: LCCOMB_X51_Y51_N26
\led_index~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \led_index~8_combout\ = (!led_index(2) & (\led_index~7_combout\ & !led_index(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => led_index(2),
	datac => \led_index~7_combout\,
	datad => led_index(1),
	combout => \led_index~8_combout\);

-- Location: LCCOMB_X49_Y51_N30
\direction~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \direction~0_combout\ = \direction~q\ $ (((\led_index~8_combout\ & \leds[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_index~8_combout\,
	datac => \direction~q\,
	datad => \leds[0]~0_combout\,
	combout => \direction~0_combout\);

-- Location: FF_X49_Y51_N31
direction : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \direction~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \direction~q\);

-- Location: FF_X51_Y51_N19
\led_index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \led_index[1]~5_combout\,
	asdata => \~GND~combout\,
	clrn => \reset~input_o\,
	sload => \led_index~8_combout\,
	ena => \leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_index(1));

-- Location: LCCOMB_X49_Y51_N24
\Decoder0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~0_combout\ = (led_index(1)) # ((led_index(2)) # ((led_index(0)) # (led_index(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => led_index(1),
	datab => led_index(2),
	datac => led_index(0),
	datad => led_index(3),
	combout => \Decoder0~0_combout\);

-- Location: FF_X49_Y51_N25
\leds[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Decoder0~0_combout\,
	clrn => \reset~input_o\,
	ena => \leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds[0]~reg0_q\);

-- Location: LCCOMB_X49_Y51_N2
\Decoder0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~1_combout\ = (!led_index(1) & (!led_index(2) & (led_index(0) & !led_index(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => led_index(1),
	datab => led_index(2),
	datac => led_index(0),
	datad => led_index(3),
	combout => \Decoder0~1_combout\);

-- Location: FF_X49_Y51_N3
\leds[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Decoder0~1_combout\,
	clrn => \reset~input_o\,
	ena => \leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds[1]~reg0_q\);

-- Location: LCCOMB_X51_Y51_N24
\Decoder0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~2_combout\ = (!led_index(2) & (!led_index(0) & (!led_index(3) & led_index(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => led_index(2),
	datab => led_index(0),
	datac => led_index(3),
	datad => led_index(1),
	combout => \Decoder0~2_combout\);

-- Location: FF_X51_Y51_N25
\leds[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Decoder0~2_combout\,
	clrn => \reset~input_o\,
	ena => \leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds[2]~reg0_q\);

-- Location: LCCOMB_X49_Y51_N12
\Decoder0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~3_combout\ = (led_index(1) & (!led_index(2) & (led_index(0) & !led_index(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => led_index(1),
	datab => led_index(2),
	datac => led_index(0),
	datad => led_index(3),
	combout => \Decoder0~3_combout\);

-- Location: FF_X49_Y51_N13
\leds[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Decoder0~3_combout\,
	clrn => \reset~input_o\,
	ena => \leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds[3]~reg0_q\);

-- Location: LCCOMB_X51_Y51_N6
\Decoder0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~4_combout\ = (led_index(2) & (!led_index(0) & (!led_index(3) & !led_index(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => led_index(2),
	datab => led_index(0),
	datac => led_index(3),
	datad => led_index(1),
	combout => \Decoder0~4_combout\);

-- Location: FF_X51_Y51_N7
\leds[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Decoder0~4_combout\,
	clrn => \reset~input_o\,
	ena => \leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds[4]~reg0_q\);

-- Location: LCCOMB_X51_Y51_N0
\Decoder0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~5_combout\ = (led_index(2) & (led_index(0) & (!led_index(3) & !led_index(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => led_index(2),
	datab => led_index(0),
	datac => led_index(3),
	datad => led_index(1),
	combout => \Decoder0~5_combout\);

-- Location: FF_X51_Y51_N1
\leds[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Decoder0~5_combout\,
	clrn => \reset~input_o\,
	ena => \leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds[5]~reg0_q\);

-- Location: LCCOMB_X51_Y51_N30
\Decoder0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~6_combout\ = (led_index(2) & (!led_index(0) & (!led_index(3) & led_index(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => led_index(2),
	datab => led_index(0),
	datac => led_index(3),
	datad => led_index(1),
	combout => \Decoder0~6_combout\);

-- Location: FF_X51_Y51_N31
\leds[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Decoder0~6_combout\,
	clrn => \reset~input_o\,
	ena => \leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds[6]~reg0_q\);

-- Location: LCCOMB_X51_Y51_N14
\Decoder0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~7_combout\ = (led_index(2) & (led_index(0) & (!led_index(3) & led_index(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => led_index(2),
	datab => led_index(0),
	datac => led_index(3),
	datad => led_index(1),
	combout => \Decoder0~7_combout\);

-- Location: FF_X49_Y51_N23
\leds[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \Decoder0~7_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds[7]~reg0_q\);

-- Location: LCCOMB_X51_Y51_N4
\Decoder0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~8_combout\ = (!led_index(2) & (!led_index(0) & (led_index(3) & !led_index(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => led_index(2),
	datab => led_index(0),
	datac => led_index(3),
	datad => led_index(1),
	combout => \Decoder0~8_combout\);

-- Location: FF_X51_Y51_N5
\leds[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Decoder0~8_combout\,
	clrn => \reset~input_o\,
	ena => \leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds[8]~reg0_q\);

-- Location: LCCOMB_X49_Y51_N8
\Decoder0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~9_combout\ = (!led_index(1) & (!led_index(2) & (led_index(0) & led_index(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => led_index(1),
	datab => led_index(2),
	datac => led_index(0),
	datad => led_index(3),
	combout => \Decoder0~9_combout\);

-- Location: FF_X49_Y51_N9
\leds[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Decoder0~9_combout\,
	clrn => \reset~input_o\,
	ena => \leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds[9]~reg0_q\);

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
	nosc_ena => \~GND~combout\,
	xe_ye => \~GND~combout\,
	se => \~GND~combout\,
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
	soc => \~GND~combout\,
	usr_pwd => VCC,
	tsen => \~GND~combout\,
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
	soc => \~GND~combout\,
	usr_pwd => VCC,
	tsen => \~GND~combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_leds(0) <= \leds[0]~output_o\;

ww_leds(1) <= \leds[1]~output_o\;

ww_leds(2) <= \leds[2]~output_o\;

ww_leds(3) <= \leds[3]~output_o\;

ww_leds(4) <= \leds[4]~output_o\;

ww_leds(5) <= \leds[5]~output_o\;

ww_leds(6) <= \leds[6]~output_o\;

ww_leds(7) <= \leds[7]~output_o\;

ww_leds(8) <= \leds[8]~output_o\;

ww_leds(9) <= \leds[9]~output_o\;
END structure;


