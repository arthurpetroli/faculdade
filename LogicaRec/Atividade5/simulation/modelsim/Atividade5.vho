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

-- DATE "12/04/2024 09:30:41"

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
	speed_ctrl : IN std_logic_vector(1 DOWNTO 0);
	leds : OUT std_logic_vector(9 DOWNTO 0)
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
-- clk	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- speed_ctrl[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- speed_ctrl[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_speed_ctrl : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_leds : std_logic_vector(9 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
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
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \led_index[0]~11_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \counter[0]~32_combout\ : std_logic;
SIGNAL \counter[0]~33\ : std_logic;
SIGNAL \counter[1]~34_combout\ : std_logic;
SIGNAL \counter[1]~35\ : std_logic;
SIGNAL \counter[2]~36_combout\ : std_logic;
SIGNAL \counter[2]~37\ : std_logic;
SIGNAL \counter[3]~38_combout\ : std_logic;
SIGNAL \counter[3]~39\ : std_logic;
SIGNAL \counter[4]~40_combout\ : std_logic;
SIGNAL \counter[4]~41\ : std_logic;
SIGNAL \counter[5]~42_combout\ : std_logic;
SIGNAL \counter[5]~43\ : std_logic;
SIGNAL \counter[6]~44_combout\ : std_logic;
SIGNAL \counter[6]~45\ : std_logic;
SIGNAL \counter[7]~46_combout\ : std_logic;
SIGNAL \counter[7]~47\ : std_logic;
SIGNAL \counter[8]~48_combout\ : std_logic;
SIGNAL \counter[8]~49\ : std_logic;
SIGNAL \counter[9]~50_combout\ : std_logic;
SIGNAL \counter[9]~51\ : std_logic;
SIGNAL \counter[10]~52_combout\ : std_logic;
SIGNAL \counter[10]~53\ : std_logic;
SIGNAL \counter[11]~54_combout\ : std_logic;
SIGNAL \counter[11]~55\ : std_logic;
SIGNAL \counter[12]~56_combout\ : std_logic;
SIGNAL \counter[12]~57\ : std_logic;
SIGNAL \counter[13]~58_combout\ : std_logic;
SIGNAL \counter[13]~59\ : std_logic;
SIGNAL \counter[14]~60_combout\ : std_logic;
SIGNAL \counter[14]~61\ : std_logic;
SIGNAL \counter[15]~62_combout\ : std_logic;
SIGNAL \counter[15]~63\ : std_logic;
SIGNAL \counter[16]~64_combout\ : std_logic;
SIGNAL \counter[16]~65\ : std_logic;
SIGNAL \counter[17]~66_combout\ : std_logic;
SIGNAL \counter[17]~67\ : std_logic;
SIGNAL \counter[18]~68_combout\ : std_logic;
SIGNAL \counter[18]~69\ : std_logic;
SIGNAL \counter[19]~70_combout\ : std_logic;
SIGNAL \counter[19]~71\ : std_logic;
SIGNAL \counter[20]~72_combout\ : std_logic;
SIGNAL \counter[20]~73\ : std_logic;
SIGNAL \counter[21]~74_combout\ : std_logic;
SIGNAL \counter[21]~75\ : std_logic;
SIGNAL \counter[22]~76_combout\ : std_logic;
SIGNAL \counter[22]~77\ : std_logic;
SIGNAL \counter[23]~78_combout\ : std_logic;
SIGNAL \counter[23]~79\ : std_logic;
SIGNAL \counter[24]~80_combout\ : std_logic;
SIGNAL \counter[24]~81\ : std_logic;
SIGNAL \counter[25]~82_combout\ : std_logic;
SIGNAL \counter[25]~83\ : std_logic;
SIGNAL \counter[26]~84_combout\ : std_logic;
SIGNAL \counter[26]~85\ : std_logic;
SIGNAL \counter[27]~86_combout\ : std_logic;
SIGNAL \counter[27]~87\ : std_logic;
SIGNAL \counter[28]~88_combout\ : std_logic;
SIGNAL \counter[28]~89\ : std_logic;
SIGNAL \counter[29]~90_combout\ : std_logic;
SIGNAL \counter[29]~91\ : std_logic;
SIGNAL \counter[30]~92_combout\ : std_logic;
SIGNAL \LessThan0~10_combout\ : std_logic;
SIGNAL \counter[30]~93\ : std_logic;
SIGNAL \counter[31]~94_combout\ : std_logic;
SIGNAL \speed_ctrl[1]~input_o\ : std_logic;
SIGNAL \speed_ctrl[0]~input_o\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \delay[15]~0_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
SIGNAL \LessThan0~9_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~14_combout\ : std_logic;
SIGNAL \LessThan0~15_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~12_combout\ : std_logic;
SIGNAL \LessThan0~13_combout\ : std_logic;
SIGNAL \LessThan0~11_combout\ : std_logic;
SIGNAL \leds[0]~0_combout\ : std_logic;
SIGNAL \led_index[1]~4_cout\ : std_logic;
SIGNAL \led_index[1]~5_combout\ : std_logic;
SIGNAL \led_index[1]~6\ : std_logic;
SIGNAL \led_index[2]~7_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \direction~0_combout\ : std_logic;
SIGNAL \direction~q\ : std_logic;
SIGNAL \Add1~1_combout\ : std_logic;
SIGNAL \led_index[2]~8\ : std_logic;
SIGNAL \led_index[3]~9_combout\ : std_logic;
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
SIGNAL counter : std_logic_vector(31 DOWNTO 0);
SIGNAL delay : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_leds[9]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_leds[8]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_leds[7]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_leds[6]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_leds[5]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_leds[4]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_leds[3]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_leds[2]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_leds[1]~reg0_q\ : std_logic;
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
ww_speed_ctrl <= speed_ctrl;
leds <= ww_leds;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_leds[9]~reg0_q\ <= NOT \leds[9]~reg0_q\;
\ALT_INV_leds[8]~reg0_q\ <= NOT \leds[8]~reg0_q\;
\ALT_INV_leds[7]~reg0_q\ <= NOT \leds[7]~reg0_q\;
\ALT_INV_leds[6]~reg0_q\ <= NOT \leds[6]~reg0_q\;
\ALT_INV_leds[5]~reg0_q\ <= NOT \leds[5]~reg0_q\;
\ALT_INV_leds[4]~reg0_q\ <= NOT \leds[4]~reg0_q\;
\ALT_INV_leds[3]~reg0_q\ <= NOT \leds[3]~reg0_q\;
\ALT_INV_leds[2]~reg0_q\ <= NOT \leds[2]~reg0_q\;
\ALT_INV_leds[1]~reg0_q\ <= NOT \leds[1]~reg0_q\;
\ALT_INV_leds[0]~reg0_q\ <= NOT \leds[0]~reg0_q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y42_N12
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
	i => \ALT_INV_leds[1]~reg0_q\,
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
	i => \ALT_INV_leds[2]~reg0_q\,
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
	i => \ALT_INV_leds[3]~reg0_q\,
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
	i => \ALT_INV_leds[4]~reg0_q\,
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
	i => \ALT_INV_leds[5]~reg0_q\,
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
	i => \ALT_INV_leds[6]~reg0_q\,
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
	i => \ALT_INV_leds[7]~reg0_q\,
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
	i => \ALT_INV_leds[8]~reg0_q\,
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
	i => \ALT_INV_leds[9]~reg0_q\,
	devoe => ww_devoe,
	o => \leds[9]~output_o\);

-- Location: IOIBUF_X34_Y0_N29
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

-- Location: CLKCTRL_G19
\clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X52_Y51_N28
\led_index[0]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \led_index[0]~11_combout\ = !led_index(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => led_index(0),
	combout => \led_index[0]~11_combout\);

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

-- Location: LCCOMB_X50_Y51_N0
\counter[0]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[0]~32_combout\ = counter(0) $ (VCC)
-- \counter[0]~33\ = CARRY(counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(0),
	datad => VCC,
	combout => \counter[0]~32_combout\,
	cout => \counter[0]~33\);

-- Location: FF_X50_Y51_N1
\counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[0]~32_combout\,
	clrn => \reset~input_o\,
	sclr => \LessThan0~11_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(0));

-- Location: LCCOMB_X50_Y51_N2
\counter[1]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[1]~34_combout\ = (counter(1) & (!\counter[0]~33\)) # (!counter(1) & ((\counter[0]~33\) # (GND)))
-- \counter[1]~35\ = CARRY((!\counter[0]~33\) # (!counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(1),
	datad => VCC,
	cin => \counter[0]~33\,
	combout => \counter[1]~34_combout\,
	cout => \counter[1]~35\);

-- Location: FF_X50_Y51_N3
\counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[1]~34_combout\,
	clrn => \reset~input_o\,
	sclr => \LessThan0~11_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(1));

-- Location: LCCOMB_X50_Y51_N4
\counter[2]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[2]~36_combout\ = (counter(2) & (\counter[1]~35\ $ (GND))) # (!counter(2) & (!\counter[1]~35\ & VCC))
-- \counter[2]~37\ = CARRY((counter(2) & !\counter[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(2),
	datad => VCC,
	cin => \counter[1]~35\,
	combout => \counter[2]~36_combout\,
	cout => \counter[2]~37\);

-- Location: FF_X50_Y51_N5
\counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[2]~36_combout\,
	clrn => \reset~input_o\,
	sclr => \LessThan0~11_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(2));

-- Location: LCCOMB_X50_Y51_N6
\counter[3]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[3]~38_combout\ = (counter(3) & (!\counter[2]~37\)) # (!counter(3) & ((\counter[2]~37\) # (GND)))
-- \counter[3]~39\ = CARRY((!\counter[2]~37\) # (!counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datad => VCC,
	cin => \counter[2]~37\,
	combout => \counter[3]~38_combout\,
	cout => \counter[3]~39\);

-- Location: FF_X50_Y51_N7
\counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[3]~38_combout\,
	clrn => \reset~input_o\,
	sclr => \LessThan0~11_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(3));

-- Location: LCCOMB_X50_Y51_N8
\counter[4]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[4]~40_combout\ = (counter(4) & (\counter[3]~39\ $ (GND))) # (!counter(4) & (!\counter[3]~39\ & VCC))
-- \counter[4]~41\ = CARRY((counter(4) & !\counter[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(4),
	datad => VCC,
	cin => \counter[3]~39\,
	combout => \counter[4]~40_combout\,
	cout => \counter[4]~41\);

-- Location: FF_X50_Y51_N9
\counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[4]~40_combout\,
	clrn => \reset~input_o\,
	sclr => \LessThan0~11_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(4));

-- Location: LCCOMB_X50_Y51_N10
\counter[5]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[5]~42_combout\ = (counter(5) & (!\counter[4]~41\)) # (!counter(5) & ((\counter[4]~41\) # (GND)))
-- \counter[5]~43\ = CARRY((!\counter[4]~41\) # (!counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(5),
	datad => VCC,
	cin => \counter[4]~41\,
	combout => \counter[5]~42_combout\,
	cout => \counter[5]~43\);

-- Location: FF_X50_Y51_N11
\counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[5]~42_combout\,
	clrn => \reset~input_o\,
	sclr => \LessThan0~11_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(5));

-- Location: LCCOMB_X50_Y51_N12
\counter[6]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[6]~44_combout\ = (counter(6) & (\counter[5]~43\ $ (GND))) # (!counter(6) & (!\counter[5]~43\ & VCC))
-- \counter[6]~45\ = CARRY((counter(6) & !\counter[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(6),
	datad => VCC,
	cin => \counter[5]~43\,
	combout => \counter[6]~44_combout\,
	cout => \counter[6]~45\);

-- Location: FF_X50_Y51_N13
\counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[6]~44_combout\,
	clrn => \reset~input_o\,
	sclr => \LessThan0~11_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(6));

-- Location: LCCOMB_X50_Y51_N14
\counter[7]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[7]~46_combout\ = (counter(7) & (!\counter[6]~45\)) # (!counter(7) & ((\counter[6]~45\) # (GND)))
-- \counter[7]~47\ = CARRY((!\counter[6]~45\) # (!counter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(7),
	datad => VCC,
	cin => \counter[6]~45\,
	combout => \counter[7]~46_combout\,
	cout => \counter[7]~47\);

-- Location: FF_X50_Y51_N15
\counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[7]~46_combout\,
	clrn => \reset~input_o\,
	sclr => \LessThan0~11_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(7));

-- Location: LCCOMB_X50_Y51_N16
\counter[8]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[8]~48_combout\ = (counter(8) & (\counter[7]~47\ $ (GND))) # (!counter(8) & (!\counter[7]~47\ & VCC))
-- \counter[8]~49\ = CARRY((counter(8) & !\counter[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(8),
	datad => VCC,
	cin => \counter[7]~47\,
	combout => \counter[8]~48_combout\,
	cout => \counter[8]~49\);

-- Location: FF_X50_Y51_N17
\counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[8]~48_combout\,
	clrn => \reset~input_o\,
	sclr => \LessThan0~11_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(8));

-- Location: LCCOMB_X50_Y51_N18
\counter[9]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[9]~50_combout\ = (counter(9) & (!\counter[8]~49\)) # (!counter(9) & ((\counter[8]~49\) # (GND)))
-- \counter[9]~51\ = CARRY((!\counter[8]~49\) # (!counter(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(9),
	datad => VCC,
	cin => \counter[8]~49\,
	combout => \counter[9]~50_combout\,
	cout => \counter[9]~51\);

-- Location: FF_X50_Y51_N19
\counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[9]~50_combout\,
	clrn => \reset~input_o\,
	sclr => \LessThan0~11_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(9));

-- Location: LCCOMB_X50_Y51_N20
\counter[10]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[10]~52_combout\ = (counter(10) & (\counter[9]~51\ $ (GND))) # (!counter(10) & (!\counter[9]~51\ & VCC))
-- \counter[10]~53\ = CARRY((counter(10) & !\counter[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(10),
	datad => VCC,
	cin => \counter[9]~51\,
	combout => \counter[10]~52_combout\,
	cout => \counter[10]~53\);

-- Location: FF_X50_Y51_N21
\counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[10]~52_combout\,
	clrn => \reset~input_o\,
	sclr => \LessThan0~11_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(10));

-- Location: LCCOMB_X50_Y51_N22
\counter[11]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[11]~54_combout\ = (counter(11) & (!\counter[10]~53\)) # (!counter(11) & ((\counter[10]~53\) # (GND)))
-- \counter[11]~55\ = CARRY((!\counter[10]~53\) # (!counter(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(11),
	datad => VCC,
	cin => \counter[10]~53\,
	combout => \counter[11]~54_combout\,
	cout => \counter[11]~55\);

-- Location: FF_X50_Y51_N23
\counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[11]~54_combout\,
	clrn => \reset~input_o\,
	sclr => \LessThan0~11_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(11));

-- Location: LCCOMB_X50_Y51_N24
\counter[12]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[12]~56_combout\ = (counter(12) & (\counter[11]~55\ $ (GND))) # (!counter(12) & (!\counter[11]~55\ & VCC))
-- \counter[12]~57\ = CARRY((counter(12) & !\counter[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(12),
	datad => VCC,
	cin => \counter[11]~55\,
	combout => \counter[12]~56_combout\,
	cout => \counter[12]~57\);

-- Location: FF_X50_Y51_N25
\counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[12]~56_combout\,
	clrn => \reset~input_o\,
	sclr => \LessThan0~11_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(12));

-- Location: LCCOMB_X50_Y51_N26
\counter[13]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[13]~58_combout\ = (counter(13) & (!\counter[12]~57\)) # (!counter(13) & ((\counter[12]~57\) # (GND)))
-- \counter[13]~59\ = CARRY((!\counter[12]~57\) # (!counter(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(13),
	datad => VCC,
	cin => \counter[12]~57\,
	combout => \counter[13]~58_combout\,
	cout => \counter[13]~59\);

-- Location: FF_X50_Y51_N27
\counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[13]~58_combout\,
	clrn => \reset~input_o\,
	sclr => \LessThan0~11_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(13));

-- Location: LCCOMB_X50_Y51_N28
\counter[14]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[14]~60_combout\ = (counter(14) & (\counter[13]~59\ $ (GND))) # (!counter(14) & (!\counter[13]~59\ & VCC))
-- \counter[14]~61\ = CARRY((counter(14) & !\counter[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(14),
	datad => VCC,
	cin => \counter[13]~59\,
	combout => \counter[14]~60_combout\,
	cout => \counter[14]~61\);

-- Location: FF_X50_Y51_N29
\counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[14]~60_combout\,
	clrn => \reset~input_o\,
	sclr => \LessThan0~11_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(14));

-- Location: LCCOMB_X50_Y51_N30
\counter[15]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[15]~62_combout\ = (counter(15) & (!\counter[14]~61\)) # (!counter(15) & ((\counter[14]~61\) # (GND)))
-- \counter[15]~63\ = CARRY((!\counter[14]~61\) # (!counter(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(15),
	datad => VCC,
	cin => \counter[14]~61\,
	combout => \counter[15]~62_combout\,
	cout => \counter[15]~63\);

-- Location: FF_X50_Y51_N31
\counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[15]~62_combout\,
	clrn => \reset~input_o\,
	sclr => \LessThan0~11_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(15));

-- Location: LCCOMB_X50_Y50_N0
\counter[16]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[16]~64_combout\ = (counter(16) & (\counter[15]~63\ $ (GND))) # (!counter(16) & (!\counter[15]~63\ & VCC))
-- \counter[16]~65\ = CARRY((counter(16) & !\counter[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(16),
	datad => VCC,
	cin => \counter[15]~63\,
	combout => \counter[16]~64_combout\,
	cout => \counter[16]~65\);

-- Location: FF_X50_Y50_N1
\counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[16]~64_combout\,
	clrn => \reset~input_o\,
	sclr => \LessThan0~11_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(16));

-- Location: LCCOMB_X50_Y50_N2
\counter[17]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[17]~66_combout\ = (counter(17) & (!\counter[16]~65\)) # (!counter(17) & ((\counter[16]~65\) # (GND)))
-- \counter[17]~67\ = CARRY((!\counter[16]~65\) # (!counter(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(17),
	datad => VCC,
	cin => \counter[16]~65\,
	combout => \counter[17]~66_combout\,
	cout => \counter[17]~67\);

-- Location: FF_X50_Y50_N3
\counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[17]~66_combout\,
	clrn => \reset~input_o\,
	sclr => \LessThan0~11_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(17));

-- Location: LCCOMB_X50_Y50_N4
\counter[18]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[18]~68_combout\ = (counter(18) & (\counter[17]~67\ $ (GND))) # (!counter(18) & (!\counter[17]~67\ & VCC))
-- \counter[18]~69\ = CARRY((counter(18) & !\counter[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(18),
	datad => VCC,
	cin => \counter[17]~67\,
	combout => \counter[18]~68_combout\,
	cout => \counter[18]~69\);

-- Location: FF_X51_Y50_N9
\counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter[18]~68_combout\,
	clrn => \reset~input_o\,
	sclr => \LessThan0~11_combout\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(18));

-- Location: LCCOMB_X50_Y50_N6
\counter[19]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[19]~70_combout\ = (counter(19) & (!\counter[18]~69\)) # (!counter(19) & ((\counter[18]~69\) # (GND)))
-- \counter[19]~71\ = CARRY((!\counter[18]~69\) # (!counter(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(19),
	datad => VCC,
	cin => \counter[18]~69\,
	combout => \counter[19]~70_combout\,
	cout => \counter[19]~71\);

-- Location: FF_X51_Y50_N25
\counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter[19]~70_combout\,
	clrn => \reset~input_o\,
	sclr => \LessThan0~11_combout\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(19));

-- Location: LCCOMB_X50_Y50_N8
\counter[20]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[20]~72_combout\ = (counter(20) & (\counter[19]~71\ $ (GND))) # (!counter(20) & (!\counter[19]~71\ & VCC))
-- \counter[20]~73\ = CARRY((counter(20) & !\counter[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(20),
	datad => VCC,
	cin => \counter[19]~71\,
	combout => \counter[20]~72_combout\,
	cout => \counter[20]~73\);

-- Location: FF_X51_Y50_N27
\counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter[20]~72_combout\,
	clrn => \reset~input_o\,
	sclr => \LessThan0~11_combout\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(20));

-- Location: LCCOMB_X50_Y50_N10
\counter[21]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[21]~74_combout\ = (counter(21) & (!\counter[20]~73\)) # (!counter(21) & ((\counter[20]~73\) # (GND)))
-- \counter[21]~75\ = CARRY((!\counter[20]~73\) # (!counter(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(21),
	datad => VCC,
	cin => \counter[20]~73\,
	combout => \counter[21]~74_combout\,
	cout => \counter[21]~75\);

-- Location: FF_X51_Y50_N31
\counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter[21]~74_combout\,
	clrn => \reset~input_o\,
	sclr => \LessThan0~11_combout\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(21));

-- Location: LCCOMB_X50_Y50_N12
\counter[22]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[22]~76_combout\ = (counter(22) & (\counter[21]~75\ $ (GND))) # (!counter(22) & (!\counter[21]~75\ & VCC))
-- \counter[22]~77\ = CARRY((counter(22) & !\counter[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(22),
	datad => VCC,
	cin => \counter[21]~75\,
	combout => \counter[22]~76_combout\,
	cout => \counter[22]~77\);

-- Location: FF_X51_Y50_N29
\counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter[22]~76_combout\,
	clrn => \reset~input_o\,
	sclr => \LessThan0~11_combout\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(22));

-- Location: LCCOMB_X50_Y50_N14
\counter[23]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[23]~78_combout\ = (counter(23) & (!\counter[22]~77\)) # (!counter(23) & ((\counter[22]~77\) # (GND)))
-- \counter[23]~79\ = CARRY((!\counter[22]~77\) # (!counter(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(23),
	datad => VCC,
	cin => \counter[22]~77\,
	combout => \counter[23]~78_combout\,
	cout => \counter[23]~79\);

-- Location: FF_X52_Y51_N29
\counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter[23]~78_combout\,
	clrn => \reset~input_o\,
	sclr => \LessThan0~11_combout\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(23));

-- Location: LCCOMB_X50_Y50_N16
\counter[24]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[24]~80_combout\ = (counter(24) & (\counter[23]~79\ $ (GND))) # (!counter(24) & (!\counter[23]~79\ & VCC))
-- \counter[24]~81\ = CARRY((counter(24) & !\counter[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(24),
	datad => VCC,
	cin => \counter[23]~79\,
	combout => \counter[24]~80_combout\,
	cout => \counter[24]~81\);

-- Location: FF_X50_Y50_N17
\counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[24]~80_combout\,
	clrn => \reset~input_o\,
	sclr => \LessThan0~11_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(24));

-- Location: LCCOMB_X50_Y50_N18
\counter[25]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[25]~82_combout\ = (counter(25) & (!\counter[24]~81\)) # (!counter(25) & ((\counter[24]~81\) # (GND)))
-- \counter[25]~83\ = CARRY((!\counter[24]~81\) # (!counter(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(25),
	datad => VCC,
	cin => \counter[24]~81\,
	combout => \counter[25]~82_combout\,
	cout => \counter[25]~83\);

-- Location: FF_X50_Y50_N19
\counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[25]~82_combout\,
	clrn => \reset~input_o\,
	sclr => \LessThan0~11_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(25));

-- Location: LCCOMB_X50_Y50_N20
\counter[26]~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[26]~84_combout\ = (counter(26) & (\counter[25]~83\ $ (GND))) # (!counter(26) & (!\counter[25]~83\ & VCC))
-- \counter[26]~85\ = CARRY((counter(26) & !\counter[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(26),
	datad => VCC,
	cin => \counter[25]~83\,
	combout => \counter[26]~84_combout\,
	cout => \counter[26]~85\);

-- Location: FF_X50_Y50_N21
\counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[26]~84_combout\,
	clrn => \reset~input_o\,
	sclr => \LessThan0~11_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(26));

-- Location: LCCOMB_X50_Y50_N22
\counter[27]~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[27]~86_combout\ = (counter(27) & (!\counter[26]~85\)) # (!counter(27) & ((\counter[26]~85\) # (GND)))
-- \counter[27]~87\ = CARRY((!\counter[26]~85\) # (!counter(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(27),
	datad => VCC,
	cin => \counter[26]~85\,
	combout => \counter[27]~86_combout\,
	cout => \counter[27]~87\);

-- Location: FF_X50_Y50_N23
\counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[27]~86_combout\,
	clrn => \reset~input_o\,
	sclr => \LessThan0~11_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(27));

-- Location: LCCOMB_X50_Y50_N24
\counter[28]~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[28]~88_combout\ = (counter(28) & (\counter[27]~87\ $ (GND))) # (!counter(28) & (!\counter[27]~87\ & VCC))
-- \counter[28]~89\ = CARRY((counter(28) & !\counter[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(28),
	datad => VCC,
	cin => \counter[27]~87\,
	combout => \counter[28]~88_combout\,
	cout => \counter[28]~89\);

-- Location: FF_X50_Y50_N25
\counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[28]~88_combout\,
	clrn => \reset~input_o\,
	sclr => \LessThan0~11_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(28));

-- Location: LCCOMB_X50_Y50_N26
\counter[29]~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[29]~90_combout\ = (counter(29) & (!\counter[28]~89\)) # (!counter(29) & ((\counter[28]~89\) # (GND)))
-- \counter[29]~91\ = CARRY((!\counter[28]~89\) # (!counter(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(29),
	datad => VCC,
	cin => \counter[28]~89\,
	combout => \counter[29]~90_combout\,
	cout => \counter[29]~91\);

-- Location: FF_X50_Y50_N27
\counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[29]~90_combout\,
	clrn => \reset~input_o\,
	sclr => \LessThan0~11_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(29));

-- Location: LCCOMB_X50_Y50_N28
\counter[30]~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[30]~92_combout\ = (counter(30) & (\counter[29]~91\ $ (GND))) # (!counter(30) & (!\counter[29]~91\ & VCC))
-- \counter[30]~93\ = CARRY((counter(30) & !\counter[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(30),
	datad => VCC,
	cin => \counter[29]~91\,
	combout => \counter[30]~92_combout\,
	cout => \counter[30]~93\);

-- Location: FF_X50_Y50_N29
\counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[30]~92_combout\,
	clrn => \reset~input_o\,
	sclr => \LessThan0~11_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(30));

-- Location: LCCOMB_X51_Y50_N0
\LessThan0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~10_combout\ = (!counter(28) & (!counter(27) & (!counter(29) & !counter(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(28),
	datab => counter(27),
	datac => counter(29),
	datad => counter(26),
	combout => \LessThan0~10_combout\);

-- Location: LCCOMB_X50_Y50_N30
\counter[31]~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[31]~94_combout\ = counter(31) $ (\counter[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(31),
	cin => \counter[30]~93\,
	combout => \counter[31]~94_combout\);

-- Location: FF_X50_Y50_N31
\counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[31]~94_combout\,
	clrn => \reset~input_o\,
	sclr => \LessThan0~11_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(31));

-- Location: IOIBUF_X51_Y54_N22
\speed_ctrl[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_speed_ctrl(1),
	o => \speed_ctrl[1]~input_o\);

-- Location: IOIBUF_X51_Y54_N29
\speed_ctrl[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_speed_ctrl(0),
	o => \speed_ctrl[0]~input_o\);

-- Location: LCCOMB_X51_Y53_N16
\Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\speed_ctrl[1]~input_o\) # (!\speed_ctrl[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \speed_ctrl[1]~input_o\,
	datad => \speed_ctrl[0]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X52_Y51_N14
\delay[15]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay[15]~0_combout\ = (\reset~input_o\ & \enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \enable~input_o\,
	combout => \delay[15]~0_combout\);

-- Location: FF_X51_Y51_N15
\delay[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux0~0_combout\,
	sload => VCC,
	ena => \delay[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay(15));

-- Location: FF_X51_Y51_N13
\delay[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux0~0_combout\,
	sload => VCC,
	ena => \delay[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay(11));

-- Location: LCCOMB_X52_Y51_N10
\LessThan0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (delay(15) & (counter(23) & (delay(11) $ (counter(18))))) # (!delay(15) & (!counter(23) & (delay(11) $ (counter(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay(15),
	datab => counter(23),
	datac => delay(11),
	datad => counter(18),
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X51_Y50_N12
\LessThan0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = (counter(19) & (counter(21) & counter(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(19),
	datac => counter(21),
	datad => counter(22),
	combout => \LessThan0~7_combout\);

-- Location: LCCOMB_X51_Y50_N18
\LessThan0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (counter(20) & ((counter(18)) # (delay(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(18),
	datac => counter(20),
	datad => delay(11),
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X51_Y50_N2
\LessThan0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~8_combout\ = (counter(23) & (((\LessThan0~7_combout\ & \LessThan0~6_combout\)) # (!delay(15)))) # (!counter(23) & (\LessThan0~7_combout\ & (!delay(15) & \LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~7_combout\,
	datab => counter(23),
	datac => delay(15),
	datad => \LessThan0~6_combout\,
	combout => \LessThan0~8_combout\);

-- Location: LCCOMB_X51_Y51_N8
\LessThan0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~9_combout\ = ((!counter(17) & (delay(15) & \LessThan0~4_combout\))) # (!\LessThan0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(17),
	datab => delay(15),
	datac => \LessThan0~4_combout\,
	datad => \LessThan0~8_combout\,
	combout => \LessThan0~9_combout\);

-- Location: LCCOMB_X51_Y51_N14
\LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (delay(15) & (((!counter(6) & !delay(11))) # (!counter(7)))) # (!delay(15) & (!counter(6) & (!delay(11) & !counter(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(6),
	datab => delay(11),
	datac => delay(15),
	datad => counter(7),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X51_Y51_N26
\LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (!counter(8) & (!counter(9) & (counter(11) $ (delay(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(8),
	datab => counter(11),
	datac => delay(11),
	datad => counter(9),
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X51_Y51_N12
\LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (((!counter(11) & !delay(11))) # (!counter(12))) # (!counter(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(13),
	datab => counter(11),
	datac => delay(11),
	datad => counter(12),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X51_Y51_N20
\LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (\LessThan0~0_combout\) # ((!counter(10) & (\LessThan0~1_combout\ & \LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(10),
	datab => \LessThan0~1_combout\,
	datac => \LessThan0~2_combout\,
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X51_Y51_N10
\LessThan0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~14_combout\ = (delay(15) & (((\LessThan0~3_combout\) # (!counter(14))) # (!counter(15)))) # (!delay(15) & (!counter(15) & ((\LessThan0~3_combout\) # (!counter(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay(15),
	datab => counter(15),
	datac => counter(14),
	datad => \LessThan0~3_combout\,
	combout => \LessThan0~14_combout\);

-- Location: LCCOMB_X51_Y51_N18
\LessThan0~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~15_combout\ = (delay(11) & (!counter(16) & \LessThan0~14_combout\)) # (!delay(11) & ((\LessThan0~14_combout\) # (!counter(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay(11),
	datab => counter(16),
	datad => \LessThan0~14_combout\,
	combout => \LessThan0~15_combout\);

-- Location: LCCOMB_X51_Y51_N2
\LessThan0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (\LessThan0~4_combout\ & (\LessThan0~15_combout\ & (counter(17) $ (!delay(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(17),
	datab => delay(15),
	datac => \LessThan0~4_combout\,
	datad => \LessThan0~15_combout\,
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X51_Y51_N24
\LessThan0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~12_combout\ = (delay(11) & (!counter(24) & ((\LessThan0~9_combout\) # (\LessThan0~5_combout\)))) # (!delay(11) & (((\LessThan0~9_combout\) # (\LessThan0~5_combout\)) # (!counter(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay(11),
	datab => counter(24),
	datac => \LessThan0~9_combout\,
	datad => \LessThan0~5_combout\,
	combout => \LessThan0~12_combout\);

-- Location: LCCOMB_X51_Y51_N28
\LessThan0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~13_combout\ = (counter(25) & (delay(15) & \LessThan0~12_combout\)) # (!counter(25) & ((delay(15)) # (\LessThan0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(25),
	datab => delay(15),
	datad => \LessThan0~12_combout\,
	combout => \LessThan0~13_combout\);

-- Location: LCCOMB_X51_Y51_N30
\LessThan0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~11_combout\ = (!counter(31) & ((counter(30)) # ((!\LessThan0~13_combout\) # (!\LessThan0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(30),
	datab => \LessThan0~10_combout\,
	datac => counter(31),
	datad => \LessThan0~13_combout\,
	combout => \LessThan0~11_combout\);

-- Location: LCCOMB_X51_Y51_N16
\leds[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leds[0]~0_combout\ = (\enable~input_o\ & \LessThan0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \enable~input_o\,
	datad => \LessThan0~11_combout\,
	combout => \leds[0]~0_combout\);

-- Location: FF_X51_Y51_N17
\led_index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \led_index[0]~11_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_index(0));

-- Location: LCCOMB_X52_Y51_N20
\led_index[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \led_index[1]~4_cout\ = CARRY(led_index(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => led_index(0),
	datad => VCC,
	cout => \led_index[1]~4_cout\);

-- Location: LCCOMB_X52_Y51_N22
\led_index[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \led_index[1]~5_combout\ = (led_index(1) & ((\Add1~1_combout\ & (!\led_index[1]~4_cout\)) # (!\Add1~1_combout\ & (\led_index[1]~4_cout\ & VCC)))) # (!led_index(1) & ((\Add1~1_combout\ & ((\led_index[1]~4_cout\) # (GND))) # (!\Add1~1_combout\ & 
-- (!\led_index[1]~4_cout\))))
-- \led_index[1]~6\ = CARRY((led_index(1) & (\Add1~1_combout\ & !\led_index[1]~4_cout\)) # (!led_index(1) & ((\Add1~1_combout\) # (!\led_index[1]~4_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => led_index(1),
	datab => \Add1~1_combout\,
	datad => VCC,
	cin => \led_index[1]~4_cout\,
	combout => \led_index[1]~5_combout\,
	cout => \led_index[1]~6\);

-- Location: FF_X52_Y51_N23
\led_index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_index[1]~5_combout\,
	clrn => \reset~input_o\,
	ena => \leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_index(1));

-- Location: LCCOMB_X52_Y51_N24
\led_index[2]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \led_index[2]~7_combout\ = ((led_index(2) $ (\Add1~1_combout\ $ (\led_index[1]~6\)))) # (GND)
-- \led_index[2]~8\ = CARRY((led_index(2) & ((!\led_index[1]~6\) # (!\Add1~1_combout\))) # (!led_index(2) & (!\Add1~1_combout\ & !\led_index[1]~6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => led_index(2),
	datab => \Add1~1_combout\,
	datad => VCC,
	cin => \led_index[1]~6\,
	combout => \led_index[2]~7_combout\,
	cout => \led_index[2]~8\);

-- Location: FF_X52_Y51_N25
\led_index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_index[2]~7_combout\,
	clrn => \reset~input_o\,
	ena => \leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_index(2));

-- Location: LCCOMB_X52_Y51_N16
\Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (!led_index(1) & !led_index(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => led_index(1),
	datad => led_index(2),
	combout => \Add1~0_combout\);

-- Location: LCCOMB_X52_Y51_N18
\direction~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \direction~0_combout\ = !\Add1~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add1~1_combout\,
	combout => \direction~0_combout\);

-- Location: FF_X52_Y51_N19
direction : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \direction~0_combout\,
	clrn => \reset~input_o\,
	ena => \leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \direction~q\);

-- Location: LCCOMB_X52_Y51_N0
\Add1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~1_combout\ = (led_index(0) & (!\direction~q\ & ((!led_index(3)) # (!\Add1~0_combout\)))) # (!led_index(0) & (((\Add1~0_combout\ & !led_index(3))) # (!\direction~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => led_index(0),
	datab => \Add1~0_combout\,
	datac => led_index(3),
	datad => \direction~q\,
	combout => \Add1~1_combout\);

-- Location: LCCOMB_X52_Y51_N26
\led_index[3]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \led_index[3]~9_combout\ = led_index(3) $ (\led_index[2]~8\ $ (!\Add1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => led_index(3),
	datad => \Add1~1_combout\,
	cin => \led_index[2]~8\,
	combout => \led_index[3]~9_combout\);

-- Location: FF_X52_Y51_N27
\led_index[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_index[3]~9_combout\,
	clrn => \reset~input_o\,
	ena => \leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_index(3));

-- Location: LCCOMB_X51_Y51_N0
\Decoder0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~0_combout\ = (led_index(3)) # ((led_index(1)) # ((led_index(0)) # (led_index(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => led_index(3),
	datab => led_index(1),
	datac => led_index(0),
	datad => led_index(2),
	combout => \Decoder0~0_combout\);

-- Location: FF_X51_Y51_N1
\leds[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Decoder0~0_combout\,
	clrn => \reset~input_o\,
	ena => \leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds[0]~reg0_q\);

-- Location: LCCOMB_X52_Y51_N8
\Decoder0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~1_combout\ = (led_index(3)) # ((led_index(2)) # ((led_index(1)) # (!led_index(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => led_index(3),
	datab => led_index(2),
	datac => led_index(1),
	datad => led_index(0),
	combout => \Decoder0~1_combout\);

-- Location: FF_X51_Y51_N19
\leds[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Decoder0~1_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds[1]~reg0_q\);

-- Location: LCCOMB_X51_Y51_N4
\Decoder0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~2_combout\ = (led_index(3)) # ((led_index(2)) # ((led_index(0)) # (!led_index(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => led_index(3),
	datab => led_index(2),
	datac => led_index(0),
	datad => led_index(1),
	combout => \Decoder0~2_combout\);

-- Location: FF_X51_Y51_N5
\leds[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Decoder0~2_combout\,
	clrn => \reset~input_o\,
	ena => \leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds[2]~reg0_q\);

-- Location: LCCOMB_X51_Y51_N6
\Decoder0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~3_combout\ = (led_index(3)) # ((led_index(2)) # ((!led_index(1)) # (!led_index(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => led_index(3),
	datab => led_index(2),
	datac => led_index(0),
	datad => led_index(1),
	combout => \Decoder0~3_combout\);

-- Location: FF_X51_Y51_N7
\leds[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Decoder0~3_combout\,
	clrn => \reset~input_o\,
	ena => \leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds[3]~reg0_q\);

-- Location: LCCOMB_X52_Y51_N2
\Decoder0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~4_combout\ = (led_index(3)) # ((led_index(1)) # ((led_index(0)) # (!led_index(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => led_index(3),
	datab => led_index(1),
	datac => led_index(2),
	datad => led_index(0),
	combout => \Decoder0~4_combout\);

-- Location: FF_X52_Y51_N3
\leds[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Decoder0~4_combout\,
	clrn => \reset~input_o\,
	ena => \leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds[4]~reg0_q\);

-- Location: LCCOMB_X52_Y51_N30
\Decoder0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~5_combout\ = (led_index(3)) # (((led_index(1)) # (!led_index(0))) # (!led_index(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => led_index(3),
	datab => led_index(2),
	datac => led_index(1),
	datad => led_index(0),
	combout => \Decoder0~5_combout\);

-- Location: FF_X51_Y51_N29
\leds[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Decoder0~5_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds[5]~reg0_q\);

-- Location: LCCOMB_X51_Y51_N22
\Decoder0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~6_combout\ = (led_index(3)) # (((led_index(0)) # (!led_index(1))) # (!led_index(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => led_index(3),
	datab => led_index(2),
	datac => led_index(0),
	datad => led_index(1),
	combout => \Decoder0~6_combout\);

-- Location: FF_X51_Y51_N23
\leds[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Decoder0~6_combout\,
	clrn => \reset~input_o\,
	ena => \leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds[6]~reg0_q\);

-- Location: LCCOMB_X52_Y51_N4
\Decoder0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~7_combout\ = (led_index(3)) # (((!led_index(0)) # (!led_index(2))) # (!led_index(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => led_index(3),
	datab => led_index(1),
	datac => led_index(2),
	datad => led_index(0),
	combout => \Decoder0~7_combout\);

-- Location: FF_X52_Y51_N5
\leds[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Decoder0~7_combout\,
	clrn => \reset~input_o\,
	ena => \leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds[7]~reg0_q\);

-- Location: LCCOMB_X52_Y51_N6
\Decoder0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~8_combout\ = ((led_index(1)) # ((led_index(2)) # (led_index(0)))) # (!led_index(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => led_index(3),
	datab => led_index(1),
	datac => led_index(2),
	datad => led_index(0),
	combout => \Decoder0~8_combout\);

-- Location: FF_X52_Y51_N7
\leds[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Decoder0~8_combout\,
	clrn => \reset~input_o\,
	ena => \leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds[8]~reg0_q\);

-- Location: LCCOMB_X52_Y51_N12
\Decoder0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~9_combout\ = ((led_index(1)) # ((led_index(2)) # (!led_index(0)))) # (!led_index(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => led_index(3),
	datab => led_index(1),
	datac => led_index(2),
	datad => led_index(0),
	combout => \Decoder0~9_combout\);

-- Location: FF_X52_Y51_N13
\leds[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
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


