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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "01/07/2025 15:30:53"

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

ENTITY 	Atividad8 IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	modo : IN std_logic_vector(1 DOWNTO 0);
	led1_verde : OUT std_logic;
	led1_amarelo : OUT std_logic;
	led1_vermelho : OUT std_logic;
	led2_verde : OUT std_logic;
	led2_amarelo : OUT std_logic;
	led2_vermelho : OUT std_logic
	);
END Atividad8;

-- Design Ports Information
-- led1_verde	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1_amarelo	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1_vermelho	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2_verde	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2_amarelo	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2_vermelho	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- modo[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- modo[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Atividad8 IS
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
SIGNAL ww_rst : std_logic;
SIGNAL ww_modo : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_led1_verde : std_logic;
SIGNAL ww_led1_amarelo : std_logic;
SIGNAL ww_led1_vermelho : std_logic;
SIGNAL ww_led2_verde : std_logic;
SIGNAL ww_led2_amarelo : std_logic;
SIGNAL ww_led2_vermelho : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \led1_verde~output_o\ : std_logic;
SIGNAL \led1_amarelo~output_o\ : std_logic;
SIGNAL \led1_vermelho~output_o\ : std_logic;
SIGNAL \led2_verde~output_o\ : std_logic;
SIGNAL \led2_amarelo~output_o\ : std_logic;
SIGNAL \led2_vermelho~output_o\ : std_logic;
SIGNAL \modo[1]~input_o\ : std_logic;
SIGNAL \modo[0]~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \current_state.S2~0_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \count[0]~32_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \clk_div~11_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \clk_div~10_combout\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \clk_div~9_combout\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \clk_div~8_combout\ : std_logic;
SIGNAL \Add1~29\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \clk_div~7_combout\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~32_combout\ : std_logic;
SIGNAL \Add1~33\ : std_logic;
SIGNAL \Add1~34_combout\ : std_logic;
SIGNAL \clk_div~6_combout\ : std_logic;
SIGNAL \Add1~35\ : std_logic;
SIGNAL \Add1~36_combout\ : std_logic;
SIGNAL \Add1~37\ : std_logic;
SIGNAL \Add1~38_combout\ : std_logic;
SIGNAL \clk_div~5_combout\ : std_logic;
SIGNAL \Add1~39\ : std_logic;
SIGNAL \Add1~40_combout\ : std_logic;
SIGNAL \clk_div~4_combout\ : std_logic;
SIGNAL \Add1~41\ : std_logic;
SIGNAL \Add1~42_combout\ : std_logic;
SIGNAL \clk_div~3_combout\ : std_logic;
SIGNAL \Add1~43\ : std_logic;
SIGNAL \Add1~44_combout\ : std_logic;
SIGNAL \clk_div~2_combout\ : std_logic;
SIGNAL \Add1~45\ : std_logic;
SIGNAL \Add1~46_combout\ : std_logic;
SIGNAL \clk_div~1_combout\ : std_logic;
SIGNAL \Add1~47\ : std_logic;
SIGNAL \Add1~48_combout\ : std_logic;
SIGNAL \Add1~49\ : std_logic;
SIGNAL \Add1~50_combout\ : std_logic;
SIGNAL \clk_div~0_combout\ : std_logic;
SIGNAL \Add1~51\ : std_logic;
SIGNAL \Add1~52_combout\ : std_logic;
SIGNAL \Add1~53\ : std_logic;
SIGNAL \Add1~54_combout\ : std_logic;
SIGNAL \Add1~55\ : std_logic;
SIGNAL \Add1~56_combout\ : std_logic;
SIGNAL \Add1~57\ : std_logic;
SIGNAL \Add1~58_combout\ : std_logic;
SIGNAL \Add1~59\ : std_logic;
SIGNAL \Add1~60_combout\ : std_logic;
SIGNAL \Add1~61\ : std_logic;
SIGNAL \Add1~62_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \count[31]~96_combout\ : std_logic;
SIGNAL \count[0]~33\ : std_logic;
SIGNAL \count[1]~34_combout\ : std_logic;
SIGNAL \count[1]~35\ : std_logic;
SIGNAL \count[2]~36_combout\ : std_logic;
SIGNAL \count[2]~37\ : std_logic;
SIGNAL \count[3]~38_combout\ : std_logic;
SIGNAL \LessThan0~9_combout\ : std_logic;
SIGNAL \LessThan0~10_combout\ : std_logic;
SIGNAL \count[3]~39\ : std_logic;
SIGNAL \count[4]~40_combout\ : std_logic;
SIGNAL \count[4]~41\ : std_logic;
SIGNAL \count[5]~42_combout\ : std_logic;
SIGNAL \count[5]~43\ : std_logic;
SIGNAL \count[6]~44_combout\ : std_logic;
SIGNAL \count[6]~45\ : std_logic;
SIGNAL \count[7]~46_combout\ : std_logic;
SIGNAL \count[7]~47\ : std_logic;
SIGNAL \count[8]~48_combout\ : std_logic;
SIGNAL \count[8]~49\ : std_logic;
SIGNAL \count[9]~50_combout\ : std_logic;
SIGNAL \count[9]~51\ : std_logic;
SIGNAL \count[10]~52_combout\ : std_logic;
SIGNAL \count[10]~53\ : std_logic;
SIGNAL \count[11]~54_combout\ : std_logic;
SIGNAL \count[11]~55\ : std_logic;
SIGNAL \count[12]~56_combout\ : std_logic;
SIGNAL \count[12]~57\ : std_logic;
SIGNAL \count[13]~58_combout\ : std_logic;
SIGNAL \count[13]~59\ : std_logic;
SIGNAL \count[14]~60_combout\ : std_logic;
SIGNAL \count[14]~61\ : std_logic;
SIGNAL \count[15]~62_combout\ : std_logic;
SIGNAL \count[15]~63\ : std_logic;
SIGNAL \count[16]~64_combout\ : std_logic;
SIGNAL \count[16]~65\ : std_logic;
SIGNAL \count[17]~66_combout\ : std_logic;
SIGNAL \count[17]~67\ : std_logic;
SIGNAL \count[18]~68_combout\ : std_logic;
SIGNAL \count[18]~69\ : std_logic;
SIGNAL \count[19]~70_combout\ : std_logic;
SIGNAL \count[19]~71\ : std_logic;
SIGNAL \count[20]~72_combout\ : std_logic;
SIGNAL \count[20]~73\ : std_logic;
SIGNAL \count[21]~74_combout\ : std_logic;
SIGNAL \count[21]~75\ : std_logic;
SIGNAL \count[22]~76_combout\ : std_logic;
SIGNAL \count[22]~77\ : std_logic;
SIGNAL \count[23]~78_combout\ : std_logic;
SIGNAL \count[23]~79\ : std_logic;
SIGNAL \count[24]~80_combout\ : std_logic;
SIGNAL \count[24]~81\ : std_logic;
SIGNAL \count[25]~82_combout\ : std_logic;
SIGNAL \count[25]~83\ : std_logic;
SIGNAL \count[26]~84_combout\ : std_logic;
SIGNAL \count[26]~85\ : std_logic;
SIGNAL \count[27]~86_combout\ : std_logic;
SIGNAL \count[27]~87\ : std_logic;
SIGNAL \count[28]~88_combout\ : std_logic;
SIGNAL \count[28]~89\ : std_logic;
SIGNAL \count[29]~90_combout\ : std_logic;
SIGNAL \count[29]~91\ : std_logic;
SIGNAL \count[30]~92_combout\ : std_logic;
SIGNAL \count[30]~93\ : std_logic;
SIGNAL \count[31]~94_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
SIGNAL \LessThan0~11_combout\ : std_logic;
SIGNAL \current_state~14_combout\ : std_logic;
SIGNAL \current_state.S2~q\ : std_logic;
SIGNAL \current_state.S3~q\ : std_logic;
SIGNAL \led2_verde~0_combout\ : std_logic;
SIGNAL \current_state.S4~q\ : std_logic;
SIGNAL \current_state.S1~0_combout\ : std_logic;
SIGNAL \current_state.S1~q\ : std_logic;
SIGNAL \led1_verde~0_combout\ : std_logic;
SIGNAL \blink~0_combout\ : std_logic;
SIGNAL \blink~q\ : std_logic;
SIGNAL \led1_amarelo~0_combout\ : std_logic;
SIGNAL \led1_vermelho~0_combout\ : std_logic;
SIGNAL \led2_amarelo~0_combout\ : std_logic;
SIGNAL \led2_vermelho~0_combout\ : std_logic;
SIGNAL count : std_logic_vector(31 DOWNTO 0);
SIGNAL clk_div : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_led1_verde~0_combout\ : std_logic;
SIGNAL \ALT_INV_rst~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_modo <= modo;
led1_verde <= ww_led1_verde;
led1_amarelo <= ww_led1_amarelo;
led1_vermelho <= ww_led1_vermelho;
led2_verde <= ww_led2_verde;
led2_amarelo <= ww_led2_amarelo;
led2_vermelho <= ww_led2_vermelho;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_led1_verde~0_combout\ <= NOT \led1_verde~0_combout\;
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;
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

-- Location: IOOBUF_X51_Y54_N16
\led1_verde~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_led1_verde~0_combout\,
	devoe => ww_devoe,
	o => \led1_verde~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\led1_amarelo~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led1_amarelo~0_combout\,
	devoe => ww_devoe,
	o => \led1_amarelo~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\led1_vermelho~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led1_vermelho~0_combout\,
	devoe => ww_devoe,
	o => \led1_vermelho~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\led2_verde~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led2_verde~0_combout\,
	devoe => ww_devoe,
	o => \led2_verde~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\led2_amarelo~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led2_amarelo~0_combout\,
	devoe => ww_devoe,
	o => \led2_amarelo~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\led2_vermelho~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led2_vermelho~0_combout\,
	devoe => ww_devoe,
	o => \led2_vermelho~output_o\);

-- Location: IOIBUF_X51_Y54_N22
\modo[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_modo(1),
	o => \modo[1]~input_o\);

-- Location: IOIBUF_X51_Y54_N29
\modo[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_modo(0),
	o => \modo[0]~input_o\);

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

-- Location: LCCOMB_X64_Y50_N8
\current_state.S2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_state.S2~0_combout\ = !\led1_verde~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \led1_verde~0_combout\,
	combout => \current_state.S2~0_combout\);

-- Location: IOIBUF_X69_Y54_N1
\rst~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: LCCOMB_X63_Y51_N0
\count[0]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[0]~32_combout\ = count(0) $ (VCC)
-- \count[0]~33\ = CARRY(count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(0),
	datad => VCC,
	combout => \count[0]~32_combout\,
	cout => \count[0]~33\);

-- Location: LCCOMB_X61_Y51_N0
\Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = clk_div(0) $ (VCC)
-- \Add1~1\ = CARRY(clk_div(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => clk_div(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: FF_X61_Y51_N1
\clk_div[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(0));

-- Location: LCCOMB_X61_Y51_N2
\Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (clk_div(1) & (!\Add1~1\)) # (!clk_div(1) & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!clk_div(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: FF_X61_Y51_N3
\clk_div[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(1));

-- Location: LCCOMB_X61_Y51_N4
\Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (clk_div(2) & (\Add1~3\ $ (GND))) # (!clk_div(2) & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((clk_div(2) & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: FF_X61_Y51_N5
\clk_div[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~4_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(2));

-- Location: LCCOMB_X61_Y51_N6
\Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (clk_div(3) & (!\Add1~5\)) # (!clk_div(3) & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!clk_div(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_div(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: FF_X61_Y51_N7
\clk_div[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~6_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(3));

-- Location: LCCOMB_X62_Y50_N22
\Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (clk_div(3) & (clk_div(0) & (clk_div(2) & clk_div(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_div(3),
	datab => clk_div(0),
	datac => clk_div(2),
	datad => clk_div(1),
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X61_Y51_N8
\Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (clk_div(4) & (\Add1~7\ $ (GND))) # (!clk_div(4) & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((clk_div(4) & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: FF_X61_Y51_N9
\clk_div[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~8_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(4));

-- Location: LCCOMB_X61_Y51_N10
\Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (clk_div(5) & (!\Add1~9\)) # (!clk_div(5) & ((\Add1~9\) # (GND)))
-- \Add1~11\ = CARRY((!\Add1~9\) # (!clk_div(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_div(5),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: FF_X61_Y51_N11
\clk_div[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~10_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(5));

-- Location: LCCOMB_X61_Y51_N12
\Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (clk_div(6) & (\Add1~11\ $ (GND))) # (!clk_div(6) & (!\Add1~11\ & VCC))
-- \Add1~13\ = CARRY((clk_div(6) & !\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_div(6),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: FF_X61_Y51_N13
\clk_div[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~12_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(6));

-- Location: LCCOMB_X61_Y51_N14
\Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (clk_div(7) & (!\Add1~13\)) # (!clk_div(7) & ((\Add1~13\) # (GND)))
-- \Add1~15\ = CARRY((!\Add1~13\) # (!clk_div(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div(7),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X62_Y51_N8
\clk_div~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div~11_combout\ = (\Add1~14_combout\ & !\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~14_combout\,
	datad => \Equal0~10_combout\,
	combout => \clk_div~11_combout\);

-- Location: FF_X62_Y51_N9
\clk_div[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div~11_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(7));

-- Location: LCCOMB_X62_Y50_N0
\Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (clk_div(5) & (!clk_div(7) & (clk_div(6) & clk_div(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_div(5),
	datab => clk_div(7),
	datac => clk_div(6),
	datad => clk_div(4),
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X61_Y51_N16
\Add1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (clk_div(8) & (\Add1~15\ $ (GND))) # (!clk_div(8) & (!\Add1~15\ & VCC))
-- \Add1~17\ = CARRY((clk_div(8) & !\Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div(8),
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: FF_X61_Y51_N17
\clk_div[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~16_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(8));

-- Location: LCCOMB_X61_Y51_N18
\Add1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (clk_div(9) & (!\Add1~17\)) # (!clk_div(9) & ((\Add1~17\) # (GND)))
-- \Add1~19\ = CARRY((!\Add1~17\) # (!clk_div(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div(9),
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: FF_X61_Y51_N19
\clk_div[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~18_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(9));

-- Location: LCCOMB_X61_Y51_N20
\Add1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = (clk_div(10) & (\Add1~19\ $ (GND))) # (!clk_div(10) & (!\Add1~19\ & VCC))
-- \Add1~21\ = CARRY((clk_div(10) & !\Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div(10),
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: FF_X61_Y51_N21
\clk_div[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~20_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(10));

-- Location: LCCOMB_X61_Y51_N22
\Add1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (clk_div(11) & (!\Add1~21\)) # (!clk_div(11) & ((\Add1~21\) # (GND)))
-- \Add1~23\ = CARRY((!\Add1~21\) # (!clk_div(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_div(11),
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

-- Location: FF_X61_Y51_N23
\clk_div[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~22_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(11));

-- Location: LCCOMB_X61_Y51_N24
\Add1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = (clk_div(12) & (\Add1~23\ $ (GND))) # (!clk_div(12) & (!\Add1~23\ & VCC))
-- \Add1~25\ = CARRY((clk_div(12) & !\Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div(12),
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: LCCOMB_X62_Y51_N16
\clk_div~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div~10_combout\ = (!\Equal0~10_combout\ & \Add1~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~10_combout\,
	datad => \Add1~24_combout\,
	combout => \clk_div~10_combout\);

-- Location: FF_X62_Y51_N17
\clk_div[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div~10_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(12));

-- Location: LCCOMB_X61_Y51_N26
\Add1~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (clk_div(13) & (!\Add1~25\)) # (!clk_div(13) & ((\Add1~25\) # (GND)))
-- \Add1~27\ = CARRY((!\Add1~25\) # (!clk_div(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div(13),
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~26_combout\,
	cout => \Add1~27\);

-- Location: LCCOMB_X62_Y51_N26
\clk_div~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div~9_combout\ = (\Add1~26_combout\ & !\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~26_combout\,
	datad => \Equal0~10_combout\,
	combout => \clk_div~9_combout\);

-- Location: FF_X62_Y51_N27
\clk_div[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div~9_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(13));

-- Location: LCCOMB_X61_Y51_N28
\Add1~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = (clk_div(14) & (\Add1~27\ $ (GND))) # (!clk_div(14) & (!\Add1~27\ & VCC))
-- \Add1~29\ = CARRY((clk_div(14) & !\Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_div(14),
	datad => VCC,
	cin => \Add1~27\,
	combout => \Add1~28_combout\,
	cout => \Add1~29\);

-- Location: LCCOMB_X62_Y51_N20
\clk_div~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div~8_combout\ = (!\Equal0~10_combout\ & \Add1~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~10_combout\,
	datad => \Add1~28_combout\,
	combout => \clk_div~8_combout\);

-- Location: FF_X62_Y51_N21
\clk_div[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div~8_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(14));

-- Location: LCCOMB_X61_Y51_N30
\Add1~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = (clk_div(15) & (!\Add1~29\)) # (!clk_div(15) & ((\Add1~29\) # (GND)))
-- \Add1~31\ = CARRY((!\Add1~29\) # (!clk_div(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div(15),
	datad => VCC,
	cin => \Add1~29\,
	combout => \Add1~30_combout\,
	cout => \Add1~31\);

-- Location: LCCOMB_X62_Y50_N10
\clk_div~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div~7_combout\ = (!\Equal0~10_combout\ & \Add1~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~10_combout\,
	datad => \Add1~30_combout\,
	combout => \clk_div~7_combout\);

-- Location: FF_X62_Y50_N11
\clk_div[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div~7_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(15));

-- Location: LCCOMB_X61_Y50_N0
\Add1~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~32_combout\ = (clk_div(16) & (\Add1~31\ $ (GND))) # (!clk_div(16) & (!\Add1~31\ & VCC))
-- \Add1~33\ = CARRY((clk_div(16) & !\Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div(16),
	datad => VCC,
	cin => \Add1~31\,
	combout => \Add1~32_combout\,
	cout => \Add1~33\);

-- Location: FF_X61_Y50_N1
\clk_div[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~32_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(16));

-- Location: LCCOMB_X61_Y50_N2
\Add1~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~34_combout\ = (clk_div(17) & (!\Add1~33\)) # (!clk_div(17) & ((\Add1~33\) # (GND)))
-- \Add1~35\ = CARRY((!\Add1~33\) # (!clk_div(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_div(17),
	datad => VCC,
	cin => \Add1~33\,
	combout => \Add1~34_combout\,
	cout => \Add1~35\);

-- Location: LCCOMB_X60_Y50_N14
\clk_div~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div~6_combout\ = (!\Equal0~10_combout\ & \Add1~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~10_combout\,
	datad => \Add1~34_combout\,
	combout => \clk_div~6_combout\);

-- Location: FF_X60_Y50_N15
\clk_div[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div~6_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(17));

-- Location: LCCOMB_X61_Y50_N4
\Add1~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~36_combout\ = (clk_div(18) & (\Add1~35\ $ (GND))) # (!clk_div(18) & (!\Add1~35\ & VCC))
-- \Add1~37\ = CARRY((clk_div(18) & !\Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div(18),
	datad => VCC,
	cin => \Add1~35\,
	combout => \Add1~36_combout\,
	cout => \Add1~37\);

-- Location: FF_X61_Y50_N5
\clk_div[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~36_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(18));

-- Location: LCCOMB_X61_Y50_N6
\Add1~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~38_combout\ = (clk_div(19) & (!\Add1~37\)) # (!clk_div(19) & ((\Add1~37\) # (GND)))
-- \Add1~39\ = CARRY((!\Add1~37\) # (!clk_div(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div(19),
	datad => VCC,
	cin => \Add1~37\,
	combout => \Add1~38_combout\,
	cout => \Add1~39\);

-- Location: LCCOMB_X62_Y50_N28
\clk_div~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div~5_combout\ = (!\Equal0~10_combout\ & \Add1~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~10_combout\,
	datac => \Add1~38_combout\,
	combout => \clk_div~5_combout\);

-- Location: FF_X62_Y50_N29
\clk_div[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div~5_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(19));

-- Location: LCCOMB_X61_Y50_N8
\Add1~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~40_combout\ = (clk_div(20) & (\Add1~39\ $ (GND))) # (!clk_div(20) & (!\Add1~39\ & VCC))
-- \Add1~41\ = CARRY((clk_div(20) & !\Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_div(20),
	datad => VCC,
	cin => \Add1~39\,
	combout => \Add1~40_combout\,
	cout => \Add1~41\);

-- Location: LCCOMB_X60_Y50_N16
\clk_div~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div~4_combout\ = (\Add1~40_combout\ & !\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~40_combout\,
	datad => \Equal0~10_combout\,
	combout => \clk_div~4_combout\);

-- Location: FF_X60_Y50_N17
\clk_div[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div~4_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(20));

-- Location: LCCOMB_X61_Y50_N10
\Add1~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~42_combout\ = (clk_div(21) & (!\Add1~41\)) # (!clk_div(21) & ((\Add1~41\) # (GND)))
-- \Add1~43\ = CARRY((!\Add1~41\) # (!clk_div(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div(21),
	datad => VCC,
	cin => \Add1~41\,
	combout => \Add1~42_combout\,
	cout => \Add1~43\);

-- Location: LCCOMB_X62_Y50_N8
\clk_div~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div~3_combout\ = (!\Equal0~10_combout\ & \Add1~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~10_combout\,
	datad => \Add1~42_combout\,
	combout => \clk_div~3_combout\);

-- Location: FF_X62_Y50_N9
\clk_div[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(21));

-- Location: LCCOMB_X61_Y50_N12
\Add1~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~44_combout\ = (clk_div(22) & (\Add1~43\ $ (GND))) # (!clk_div(22) & (!\Add1~43\ & VCC))
-- \Add1~45\ = CARRY((clk_div(22) & !\Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_div(22),
	datad => VCC,
	cin => \Add1~43\,
	combout => \Add1~44_combout\,
	cout => \Add1~45\);

-- Location: LCCOMB_X62_Y50_N30
\clk_div~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div~2_combout\ = (!\Equal0~10_combout\ & \Add1~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~10_combout\,
	datad => \Add1~44_combout\,
	combout => \clk_div~2_combout\);

-- Location: FF_X62_Y50_N31
\clk_div[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(22));

-- Location: LCCOMB_X61_Y50_N14
\Add1~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~46_combout\ = (clk_div(23) & (!\Add1~45\)) # (!clk_div(23) & ((\Add1~45\) # (GND)))
-- \Add1~47\ = CARRY((!\Add1~45\) # (!clk_div(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_div(23),
	datad => VCC,
	cin => \Add1~45\,
	combout => \Add1~46_combout\,
	cout => \Add1~47\);

-- Location: LCCOMB_X62_Y50_N20
\clk_div~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div~1_combout\ = (!\Equal0~10_combout\ & \Add1~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~10_combout\,
	datad => \Add1~46_combout\,
	combout => \clk_div~1_combout\);

-- Location: FF_X62_Y50_N21
\clk_div[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(23));

-- Location: LCCOMB_X61_Y50_N16
\Add1~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~48_combout\ = (clk_div(24) & (\Add1~47\ $ (GND))) # (!clk_div(24) & (!\Add1~47\ & VCC))
-- \Add1~49\ = CARRY((clk_div(24) & !\Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div(24),
	datad => VCC,
	cin => \Add1~47\,
	combout => \Add1~48_combout\,
	cout => \Add1~49\);

-- Location: FF_X61_Y50_N17
\clk_div[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~48_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(24));

-- Location: LCCOMB_X61_Y50_N18
\Add1~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~50_combout\ = (clk_div(25) & (!\Add1~49\)) # (!clk_div(25) & ((\Add1~49\) # (GND)))
-- \Add1~51\ = CARRY((!\Add1~49\) # (!clk_div(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div(25),
	datad => VCC,
	cin => \Add1~49\,
	combout => \Add1~50_combout\,
	cout => \Add1~51\);

-- Location: LCCOMB_X60_Y50_N6
\clk_div~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div~0_combout\ = (!\Equal0~10_combout\ & \Add1~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~10_combout\,
	datad => \Add1~50_combout\,
	combout => \clk_div~0_combout\);

-- Location: FF_X60_Y50_N7
\clk_div[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(25));

-- Location: LCCOMB_X61_Y50_N20
\Add1~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~52_combout\ = (clk_div(26) & (\Add1~51\ $ (GND))) # (!clk_div(26) & (!\Add1~51\ & VCC))
-- \Add1~53\ = CARRY((clk_div(26) & !\Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div(26),
	datad => VCC,
	cin => \Add1~51\,
	combout => \Add1~52_combout\,
	cout => \Add1~53\);

-- Location: FF_X61_Y50_N21
\clk_div[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~52_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(26));

-- Location: LCCOMB_X61_Y50_N22
\Add1~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~54_combout\ = (clk_div(27) & (!\Add1~53\)) # (!clk_div(27) & ((\Add1~53\) # (GND)))
-- \Add1~55\ = CARRY((!\Add1~53\) # (!clk_div(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_div(27),
	datad => VCC,
	cin => \Add1~53\,
	combout => \Add1~54_combout\,
	cout => \Add1~55\);

-- Location: FF_X61_Y50_N23
\clk_div[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~54_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(27));

-- Location: LCCOMB_X61_Y50_N24
\Add1~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~56_combout\ = (clk_div(28) & (\Add1~55\ $ (GND))) # (!clk_div(28) & (!\Add1~55\ & VCC))
-- \Add1~57\ = CARRY((clk_div(28) & !\Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div(28),
	datad => VCC,
	cin => \Add1~55\,
	combout => \Add1~56_combout\,
	cout => \Add1~57\);

-- Location: FF_X61_Y50_N25
\clk_div[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~56_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(28));

-- Location: LCCOMB_X61_Y50_N26
\Add1~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~58_combout\ = (clk_div(29) & (!\Add1~57\)) # (!clk_div(29) & ((\Add1~57\) # (GND)))
-- \Add1~59\ = CARRY((!\Add1~57\) # (!clk_div(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_div(29),
	datad => VCC,
	cin => \Add1~57\,
	combout => \Add1~58_combout\,
	cout => \Add1~59\);

-- Location: FF_X61_Y50_N27
\clk_div[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~58_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(29));

-- Location: LCCOMB_X61_Y50_N28
\Add1~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~60_combout\ = (clk_div(30) & (\Add1~59\ $ (GND))) # (!clk_div(30) & (!\Add1~59\ & VCC))
-- \Add1~61\ = CARRY((clk_div(30) & !\Add1~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div(30),
	datad => VCC,
	cin => \Add1~59\,
	combout => \Add1~60_combout\,
	cout => \Add1~61\);

-- Location: FF_X61_Y50_N29
\clk_div[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~60_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(30));

-- Location: LCCOMB_X61_Y50_N30
\Add1~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~62_combout\ = clk_div(31) $ (\Add1~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_div(31),
	cin => \Add1~61\,
	combout => \Add1~62_combout\);

-- Location: FF_X61_Y50_N31
\clk_div[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~62_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(31));

-- Location: LCCOMB_X62_Y50_N12
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!clk_div(29) & (!clk_div(31) & (!clk_div(28) & !clk_div(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_div(29),
	datab => clk_div(31),
	datac => clk_div(28),
	datad => clk_div(30),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X62_Y50_N14
\Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!clk_div(24) & (!clk_div(26) & (clk_div(25) & !clk_div(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_div(24),
	datab => clk_div(26),
	datac => clk_div(25),
	datad => clk_div(27),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X62_Y50_N26
\Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (clk_div(22) & (clk_div(23) & (clk_div(21) & clk_div(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_div(22),
	datab => clk_div(23),
	datac => clk_div(21),
	datad => clk_div(20),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X62_Y50_N6
\Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (clk_div(17) & (!clk_div(18) & (!clk_div(16) & clk_div(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_div(17),
	datab => clk_div(18),
	datac => clk_div(16),
	datad => clk_div(19),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X62_Y50_N4
\Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~0_combout\ & (\Equal0~1_combout\ & (\Equal0~2_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~3_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X62_Y51_N30
\Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (clk_div(13) & clk_div(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => clk_div(13),
	datad => clk_div(12),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X62_Y50_N24
\Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!clk_div(9) & (!clk_div(11) & (!clk_div(8) & !clk_div(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_div(9),
	datab => clk_div(11),
	datac => clk_div(8),
	datad => clk_div(10),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X62_Y50_N2
\Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (clk_div(15) & (clk_div(14) & (\Equal0~5_combout\ & \Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_div(15),
	datab => clk_div(14),
	datac => \Equal0~5_combout\,
	datad => \Equal0~6_combout\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X62_Y50_N16
\Equal0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (\Equal0~9_combout\ & (\Equal0~8_combout\ & (\Equal0~4_combout\ & \Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datab => \Equal0~8_combout\,
	datac => \Equal0~4_combout\,
	datad => \Equal0~7_combout\,
	combout => \Equal0~10_combout\);

-- Location: LCCOMB_X62_Y50_N18
\count[31]~96\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[31]~96_combout\ = (\Equal0~10_combout\ & ((\modo[1]~input_o\) # (!\modo[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \modo[0]~input_o\,
	datac => \modo[1]~input_o\,
	datad => \Equal0~10_combout\,
	combout => \count[31]~96_combout\);

-- Location: FF_X63_Y51_N1
\count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[0]~32_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \LessThan0~11_combout\,
	ena => \count[31]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(0));

-- Location: LCCOMB_X63_Y51_N2
\count[1]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[1]~34_combout\ = (count(1) & (!\count[0]~33\)) # (!count(1) & ((\count[0]~33\) # (GND)))
-- \count[1]~35\ = CARRY((!\count[0]~33\) # (!count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(1),
	datad => VCC,
	cin => \count[0]~33\,
	combout => \count[1]~34_combout\,
	cout => \count[1]~35\);

-- Location: FF_X63_Y51_N3
\count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[1]~34_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \LessThan0~11_combout\,
	ena => \count[31]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(1));

-- Location: LCCOMB_X63_Y51_N4
\count[2]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[2]~36_combout\ = (count(2) & (\count[1]~35\ $ (GND))) # (!count(2) & (!\count[1]~35\ & VCC))
-- \count[2]~37\ = CARRY((count(2) & !\count[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(2),
	datad => VCC,
	cin => \count[1]~35\,
	combout => \count[2]~36_combout\,
	cout => \count[2]~37\);

-- Location: FF_X63_Y51_N5
\count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[2]~36_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \LessThan0~11_combout\,
	ena => \count[31]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(2));

-- Location: LCCOMB_X63_Y51_N6
\count[3]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[3]~38_combout\ = (count(3) & (!\count[2]~37\)) # (!count(3) & ((\count[2]~37\) # (GND)))
-- \count[3]~39\ = CARRY((!\count[2]~37\) # (!count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datad => VCC,
	cin => \count[2]~37\,
	combout => \count[3]~38_combout\,
	cout => \count[3]~39\);

-- Location: FF_X63_Y51_N7
\count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[3]~38_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \LessThan0~11_combout\,
	ena => \count[31]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(3));

-- Location: LCCOMB_X64_Y50_N12
\LessThan0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~9_combout\ = (count(2) & ((count(0)) # ((count(1)) # (count(3))))) # (!count(2) & (((count(1) & count(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datab => count(0),
	datac => count(1),
	datad => count(3),
	combout => \LessThan0~9_combout\);

-- Location: LCCOMB_X64_Y50_N6
\LessThan0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~10_combout\ = (count(3) & ((\LessThan0~9_combout\) # ((\modo[1]~input_o\ & !\modo[0]~input_o\)))) # (!count(3) & (\modo[1]~input_o\ & (!\modo[0]~input_o\ & \LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \modo[1]~input_o\,
	datab => count(3),
	datac => \modo[0]~input_o\,
	datad => \LessThan0~9_combout\,
	combout => \LessThan0~10_combout\);

-- Location: LCCOMB_X63_Y51_N8
\count[4]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[4]~40_combout\ = (count(4) & (\count[3]~39\ $ (GND))) # (!count(4) & (!\count[3]~39\ & VCC))
-- \count[4]~41\ = CARRY((count(4) & !\count[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(4),
	datad => VCC,
	cin => \count[3]~39\,
	combout => \count[4]~40_combout\,
	cout => \count[4]~41\);

-- Location: FF_X63_Y51_N9
\count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[4]~40_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \LessThan0~11_combout\,
	ena => \count[31]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(4));

-- Location: LCCOMB_X63_Y51_N10
\count[5]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[5]~42_combout\ = (count(5) & (!\count[4]~41\)) # (!count(5) & ((\count[4]~41\) # (GND)))
-- \count[5]~43\ = CARRY((!\count[4]~41\) # (!count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(5),
	datad => VCC,
	cin => \count[4]~41\,
	combout => \count[5]~42_combout\,
	cout => \count[5]~43\);

-- Location: FF_X63_Y51_N11
\count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[5]~42_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \LessThan0~11_combout\,
	ena => \count[31]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(5));

-- Location: LCCOMB_X63_Y51_N12
\count[6]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[6]~44_combout\ = (count(6) & (\count[5]~43\ $ (GND))) # (!count(6) & (!\count[5]~43\ & VCC))
-- \count[6]~45\ = CARRY((count(6) & !\count[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(6),
	datad => VCC,
	cin => \count[5]~43\,
	combout => \count[6]~44_combout\,
	cout => \count[6]~45\);

-- Location: FF_X63_Y51_N13
\count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[6]~44_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \LessThan0~11_combout\,
	ena => \count[31]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(6));

-- Location: LCCOMB_X63_Y51_N14
\count[7]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[7]~46_combout\ = (count(7) & (!\count[6]~45\)) # (!count(7) & ((\count[6]~45\) # (GND)))
-- \count[7]~47\ = CARRY((!\count[6]~45\) # (!count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(7),
	datad => VCC,
	cin => \count[6]~45\,
	combout => \count[7]~46_combout\,
	cout => \count[7]~47\);

-- Location: FF_X63_Y51_N15
\count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[7]~46_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \LessThan0~11_combout\,
	ena => \count[31]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(7));

-- Location: LCCOMB_X63_Y51_N16
\count[8]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[8]~48_combout\ = (count(8) & (\count[7]~47\ $ (GND))) # (!count(8) & (!\count[7]~47\ & VCC))
-- \count[8]~49\ = CARRY((count(8) & !\count[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(8),
	datad => VCC,
	cin => \count[7]~47\,
	combout => \count[8]~48_combout\,
	cout => \count[8]~49\);

-- Location: FF_X63_Y51_N17
\count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[8]~48_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \LessThan0~11_combout\,
	ena => \count[31]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(8));

-- Location: LCCOMB_X63_Y51_N18
\count[9]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[9]~50_combout\ = (count(9) & (!\count[8]~49\)) # (!count(9) & ((\count[8]~49\) # (GND)))
-- \count[9]~51\ = CARRY((!\count[8]~49\) # (!count(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(9),
	datad => VCC,
	cin => \count[8]~49\,
	combout => \count[9]~50_combout\,
	cout => \count[9]~51\);

-- Location: FF_X63_Y51_N19
\count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[9]~50_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \LessThan0~11_combout\,
	ena => \count[31]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(9));

-- Location: LCCOMB_X63_Y51_N20
\count[10]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[10]~52_combout\ = (count(10) & (\count[9]~51\ $ (GND))) # (!count(10) & (!\count[9]~51\ & VCC))
-- \count[10]~53\ = CARRY((count(10) & !\count[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(10),
	datad => VCC,
	cin => \count[9]~51\,
	combout => \count[10]~52_combout\,
	cout => \count[10]~53\);

-- Location: FF_X63_Y51_N21
\count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[10]~52_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \LessThan0~11_combout\,
	ena => \count[31]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(10));

-- Location: LCCOMB_X63_Y51_N22
\count[11]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[11]~54_combout\ = (count(11) & (!\count[10]~53\)) # (!count(11) & ((\count[10]~53\) # (GND)))
-- \count[11]~55\ = CARRY((!\count[10]~53\) # (!count(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(11),
	datad => VCC,
	cin => \count[10]~53\,
	combout => \count[11]~54_combout\,
	cout => \count[11]~55\);

-- Location: FF_X63_Y51_N23
\count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[11]~54_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \LessThan0~11_combout\,
	ena => \count[31]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(11));

-- Location: LCCOMB_X63_Y51_N24
\count[12]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[12]~56_combout\ = (count(12) & (\count[11]~55\ $ (GND))) # (!count(12) & (!\count[11]~55\ & VCC))
-- \count[12]~57\ = CARRY((count(12) & !\count[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(12),
	datad => VCC,
	cin => \count[11]~55\,
	combout => \count[12]~56_combout\,
	cout => \count[12]~57\);

-- Location: FF_X63_Y51_N25
\count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[12]~56_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \LessThan0~11_combout\,
	ena => \count[31]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(12));

-- Location: LCCOMB_X63_Y51_N26
\count[13]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[13]~58_combout\ = (count(13) & (!\count[12]~57\)) # (!count(13) & ((\count[12]~57\) # (GND)))
-- \count[13]~59\ = CARRY((!\count[12]~57\) # (!count(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(13),
	datad => VCC,
	cin => \count[12]~57\,
	combout => \count[13]~58_combout\,
	cout => \count[13]~59\);

-- Location: FF_X63_Y51_N27
\count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[13]~58_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \LessThan0~11_combout\,
	ena => \count[31]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(13));

-- Location: LCCOMB_X63_Y51_N28
\count[14]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[14]~60_combout\ = (count(14) & (\count[13]~59\ $ (GND))) # (!count(14) & (!\count[13]~59\ & VCC))
-- \count[14]~61\ = CARRY((count(14) & !\count[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(14),
	datad => VCC,
	cin => \count[13]~59\,
	combout => \count[14]~60_combout\,
	cout => \count[14]~61\);

-- Location: FF_X63_Y51_N29
\count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[14]~60_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \LessThan0~11_combout\,
	ena => \count[31]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(14));

-- Location: LCCOMB_X63_Y51_N30
\count[15]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[15]~62_combout\ = (count(15) & (!\count[14]~61\)) # (!count(15) & ((\count[14]~61\) # (GND)))
-- \count[15]~63\ = CARRY((!\count[14]~61\) # (!count(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(15),
	datad => VCC,
	cin => \count[14]~61\,
	combout => \count[15]~62_combout\,
	cout => \count[15]~63\);

-- Location: FF_X63_Y51_N31
\count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[15]~62_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \LessThan0~11_combout\,
	ena => \count[31]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(15));

-- Location: LCCOMB_X63_Y50_N0
\count[16]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[16]~64_combout\ = (count(16) & (\count[15]~63\ $ (GND))) # (!count(16) & (!\count[15]~63\ & VCC))
-- \count[16]~65\ = CARRY((count(16) & !\count[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(16),
	datad => VCC,
	cin => \count[15]~63\,
	combout => \count[16]~64_combout\,
	cout => \count[16]~65\);

-- Location: FF_X63_Y50_N1
\count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[16]~64_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \LessThan0~11_combout\,
	ena => \count[31]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(16));

-- Location: LCCOMB_X63_Y50_N2
\count[17]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[17]~66_combout\ = (count(17) & (!\count[16]~65\)) # (!count(17) & ((\count[16]~65\) # (GND)))
-- \count[17]~67\ = CARRY((!\count[16]~65\) # (!count(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(17),
	datad => VCC,
	cin => \count[16]~65\,
	combout => \count[17]~66_combout\,
	cout => \count[17]~67\);

-- Location: FF_X63_Y50_N3
\count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[17]~66_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \LessThan0~11_combout\,
	ena => \count[31]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(17));

-- Location: LCCOMB_X63_Y50_N4
\count[18]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[18]~68_combout\ = (count(18) & (\count[17]~67\ $ (GND))) # (!count(18) & (!\count[17]~67\ & VCC))
-- \count[18]~69\ = CARRY((count(18) & !\count[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(18),
	datad => VCC,
	cin => \count[17]~67\,
	combout => \count[18]~68_combout\,
	cout => \count[18]~69\);

-- Location: FF_X63_Y50_N5
\count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[18]~68_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \LessThan0~11_combout\,
	ena => \count[31]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(18));

-- Location: LCCOMB_X63_Y50_N6
\count[19]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[19]~70_combout\ = (count(19) & (!\count[18]~69\)) # (!count(19) & ((\count[18]~69\) # (GND)))
-- \count[19]~71\ = CARRY((!\count[18]~69\) # (!count(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(19),
	datad => VCC,
	cin => \count[18]~69\,
	combout => \count[19]~70_combout\,
	cout => \count[19]~71\);

-- Location: FF_X63_Y50_N7
\count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[19]~70_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \LessThan0~11_combout\,
	ena => \count[31]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(19));

-- Location: LCCOMB_X63_Y50_N8
\count[20]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[20]~72_combout\ = (count(20) & (\count[19]~71\ $ (GND))) # (!count(20) & (!\count[19]~71\ & VCC))
-- \count[20]~73\ = CARRY((count(20) & !\count[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(20),
	datad => VCC,
	cin => \count[19]~71\,
	combout => \count[20]~72_combout\,
	cout => \count[20]~73\);

-- Location: FF_X63_Y50_N9
\count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[20]~72_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \LessThan0~11_combout\,
	ena => \count[31]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(20));

-- Location: LCCOMB_X63_Y50_N10
\count[21]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[21]~74_combout\ = (count(21) & (!\count[20]~73\)) # (!count(21) & ((\count[20]~73\) # (GND)))
-- \count[21]~75\ = CARRY((!\count[20]~73\) # (!count(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(21),
	datad => VCC,
	cin => \count[20]~73\,
	combout => \count[21]~74_combout\,
	cout => \count[21]~75\);

-- Location: FF_X63_Y50_N11
\count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[21]~74_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \LessThan0~11_combout\,
	ena => \count[31]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(21));

-- Location: LCCOMB_X63_Y50_N12
\count[22]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[22]~76_combout\ = (count(22) & (\count[21]~75\ $ (GND))) # (!count(22) & (!\count[21]~75\ & VCC))
-- \count[22]~77\ = CARRY((count(22) & !\count[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(22),
	datad => VCC,
	cin => \count[21]~75\,
	combout => \count[22]~76_combout\,
	cout => \count[22]~77\);

-- Location: FF_X63_Y50_N13
\count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[22]~76_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \LessThan0~11_combout\,
	ena => \count[31]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(22));

-- Location: LCCOMB_X63_Y50_N14
\count[23]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[23]~78_combout\ = (count(23) & (!\count[22]~77\)) # (!count(23) & ((\count[22]~77\) # (GND)))
-- \count[23]~79\ = CARRY((!\count[22]~77\) # (!count(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(23),
	datad => VCC,
	cin => \count[22]~77\,
	combout => \count[23]~78_combout\,
	cout => \count[23]~79\);

-- Location: FF_X63_Y50_N15
\count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[23]~78_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \LessThan0~11_combout\,
	ena => \count[31]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(23));

-- Location: LCCOMB_X63_Y50_N16
\count[24]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[24]~80_combout\ = (count(24) & (\count[23]~79\ $ (GND))) # (!count(24) & (!\count[23]~79\ & VCC))
-- \count[24]~81\ = CARRY((count(24) & !\count[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(24),
	datad => VCC,
	cin => \count[23]~79\,
	combout => \count[24]~80_combout\,
	cout => \count[24]~81\);

-- Location: FF_X63_Y50_N17
\count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[24]~80_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \LessThan0~11_combout\,
	ena => \count[31]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(24));

-- Location: LCCOMB_X63_Y50_N18
\count[25]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[25]~82_combout\ = (count(25) & (!\count[24]~81\)) # (!count(25) & ((\count[24]~81\) # (GND)))
-- \count[25]~83\ = CARRY((!\count[24]~81\) # (!count(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(25),
	datad => VCC,
	cin => \count[24]~81\,
	combout => \count[25]~82_combout\,
	cout => \count[25]~83\);

-- Location: FF_X63_Y50_N19
\count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[25]~82_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \LessThan0~11_combout\,
	ena => \count[31]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(25));

-- Location: LCCOMB_X63_Y50_N20
\count[26]~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[26]~84_combout\ = (count(26) & (\count[25]~83\ $ (GND))) # (!count(26) & (!\count[25]~83\ & VCC))
-- \count[26]~85\ = CARRY((count(26) & !\count[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(26),
	datad => VCC,
	cin => \count[25]~83\,
	combout => \count[26]~84_combout\,
	cout => \count[26]~85\);

-- Location: FF_X63_Y50_N21
\count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[26]~84_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \LessThan0~11_combout\,
	ena => \count[31]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(26));

-- Location: LCCOMB_X63_Y50_N22
\count[27]~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[27]~86_combout\ = (count(27) & (!\count[26]~85\)) # (!count(27) & ((\count[26]~85\) # (GND)))
-- \count[27]~87\ = CARRY((!\count[26]~85\) # (!count(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(27),
	datad => VCC,
	cin => \count[26]~85\,
	combout => \count[27]~86_combout\,
	cout => \count[27]~87\);

-- Location: FF_X63_Y50_N23
\count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[27]~86_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \LessThan0~11_combout\,
	ena => \count[31]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(27));

-- Location: LCCOMB_X63_Y50_N24
\count[28]~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[28]~88_combout\ = (count(28) & (\count[27]~87\ $ (GND))) # (!count(28) & (!\count[27]~87\ & VCC))
-- \count[28]~89\ = CARRY((count(28) & !\count[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(28),
	datad => VCC,
	cin => \count[27]~87\,
	combout => \count[28]~88_combout\,
	cout => \count[28]~89\);

-- Location: FF_X63_Y50_N25
\count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[28]~88_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \LessThan0~11_combout\,
	ena => \count[31]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(28));

-- Location: LCCOMB_X63_Y50_N26
\count[29]~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[29]~90_combout\ = (count(29) & (!\count[28]~89\)) # (!count(29) & ((\count[28]~89\) # (GND)))
-- \count[29]~91\ = CARRY((!\count[28]~89\) # (!count(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(29),
	datad => VCC,
	cin => \count[28]~89\,
	combout => \count[29]~90_combout\,
	cout => \count[29]~91\);

-- Location: FF_X63_Y50_N27
\count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[29]~90_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \LessThan0~11_combout\,
	ena => \count[31]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(29));

-- Location: LCCOMB_X63_Y50_N28
\count[30]~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[30]~92_combout\ = (count(30) & (\count[29]~91\ $ (GND))) # (!count(30) & (!\count[29]~91\ & VCC))
-- \count[30]~93\ = CARRY((count(30) & !\count[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(30),
	datad => VCC,
	cin => \count[29]~91\,
	combout => \count[30]~92_combout\,
	cout => \count[30]~93\);

-- Location: FF_X63_Y50_N29
\count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[30]~92_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \LessThan0~11_combout\,
	ena => \count[31]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(30));

-- Location: LCCOMB_X63_Y50_N30
\count[31]~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[31]~94_combout\ = count(31) $ (\count[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(31),
	cin => \count[30]~93\,
	combout => \count[31]~94_combout\);

-- Location: FF_X63_Y50_N31
\count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[31]~94_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \LessThan0~11_combout\,
	ena => \count[31]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(31));

-- Location: LCCOMB_X64_Y51_N28
\LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!count(7) & (!count(5) & (!count(6) & !count(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(7),
	datab => count(5),
	datac => count(6),
	datad => count(4),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X64_Y50_N16
\LessThan0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (!count(24) & (!count(25) & (!count(26) & !count(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(24),
	datab => count(25),
	datac => count(26),
	datad => count(27),
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X64_Y50_N22
\LessThan0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = (!count(29) & (!count(28) & (!count(30) & \LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(29),
	datab => count(28),
	datac => count(30),
	datad => \LessThan0~6_combout\,
	combout => \LessThan0~7_combout\);

-- Location: LCCOMB_X64_Y50_N26
\LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (!count(16) & (!count(18) & (!count(17) & !count(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(16),
	datab => count(18),
	datac => count(17),
	datad => count(19),
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X64_Y50_N20
\LessThan0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (!count(20) & (!count(22) & (!count(21) & !count(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(20),
	datab => count(22),
	datac => count(21),
	datad => count(23),
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X64_Y50_N30
\LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (!count(15) & (!count(14) & (!count(13) & !count(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(15),
	datab => count(14),
	datac => count(13),
	datad => count(12),
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X64_Y50_N2
\LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (!count(9) & (!count(8) & (!count(11) & !count(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(9),
	datab => count(8),
	datac => count(11),
	datad => count(10),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X64_Y50_N18
\LessThan0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (\LessThan0~3_combout\ & (\LessThan0~4_combout\ & (\LessThan0~2_combout\ & \LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~3_combout\,
	datab => \LessThan0~4_combout\,
	datac => \LessThan0~2_combout\,
	datad => \LessThan0~1_combout\,
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X64_Y50_N10
\LessThan0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~8_combout\ = (\LessThan0~0_combout\ & (\LessThan0~7_combout\ & \LessThan0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datac => \LessThan0~7_combout\,
	datad => \LessThan0~5_combout\,
	combout => \LessThan0~8_combout\);

-- Location: LCCOMB_X64_Y50_N14
\LessThan0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~11_combout\ = (!count(31) & ((\LessThan0~10_combout\) # (!\LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~10_combout\,
	datab => count(31),
	datad => \LessThan0~8_combout\,
	combout => \LessThan0~11_combout\);

-- Location: LCCOMB_X64_Y50_N0
\current_state~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_state~14_combout\ = (\LessThan0~11_combout\ & (\Equal0~10_combout\ & ((\modo[1]~input_o\) # (!\modo[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \modo[1]~input_o\,
	datab => \modo[0]~input_o\,
	datac => \LessThan0~11_combout\,
	datad => \Equal0~10_combout\,
	combout => \current_state~14_combout\);

-- Location: FF_X64_Y50_N9
\current_state.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \current_state.S2~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \current_state~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.S2~q\);

-- Location: FF_X64_Y50_N5
\current_state.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \current_state.S2~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \current_state~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.S3~q\);

-- Location: LCCOMB_X64_Y50_N28
\led2_verde~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \led2_verde~0_combout\ = (\current_state.S3~q\ & ((\modo[1]~input_o\) # (!\modo[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \modo[1]~input_o\,
	datab => \current_state.S3~q\,
	datac => \modo[0]~input_o\,
	combout => \led2_verde~0_combout\);

-- Location: FF_X64_Y50_N29
\current_state.S4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led2_verde~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \current_state~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.S4~q\);

-- Location: LCCOMB_X64_Y50_N24
\current_state.S1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_state.S1~0_combout\ = !\current_state.S4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \current_state.S4~q\,
	combout => \current_state.S1~0_combout\);

-- Location: FF_X64_Y50_N25
\current_state.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \current_state.S1~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \current_state~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.S1~q\);

-- Location: LCCOMB_X60_Y50_N8
\led1_verde~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \led1_verde~0_combout\ = (\current_state.S1~q\) # ((!\modo[1]~input_o\ & \modo[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \modo[1]~input_o\,
	datac => \modo[0]~input_o\,
	datad => \current_state.S1~q\,
	combout => \led1_verde~0_combout\);

-- Location: LCCOMB_X60_Y50_N26
\blink~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \blink~0_combout\ = \blink~q\ $ (((\modo[0]~input_o\ & (!\modo[1]~input_o\ & \Equal0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \modo[0]~input_o\,
	datab => \modo[1]~input_o\,
	datac => \blink~q\,
	datad => \Equal0~10_combout\,
	combout => \blink~0_combout\);

-- Location: FF_X60_Y50_N27
blink : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \blink~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blink~q\);

-- Location: LCCOMB_X60_Y50_N12
\led1_amarelo~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \led1_amarelo~0_combout\ = (\modo[0]~input_o\ & ((\modo[1]~input_o\ & ((\current_state.S2~q\))) # (!\modo[1]~input_o\ & (\blink~q\)))) # (!\modo[0]~input_o\ & (((\current_state.S2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blink~q\,
	datab => \modo[0]~input_o\,
	datac => \current_state.S2~q\,
	datad => \modo[1]~input_o\,
	combout => \led1_amarelo~0_combout\);

-- Location: LCCOMB_X64_Y50_N4
\led1_vermelho~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \led1_vermelho~0_combout\ = (\modo[1]~input_o\ & (((\current_state.S3~q\) # (\current_state.S4~q\)))) # (!\modo[1]~input_o\ & (!\modo[0]~input_o\ & ((\current_state.S3~q\) # (\current_state.S4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \modo[1]~input_o\,
	datab => \modo[0]~input_o\,
	datac => \current_state.S3~q\,
	datad => \current_state.S4~q\,
	combout => \led1_vermelho~0_combout\);

-- Location: LCCOMB_X60_Y50_N18
\led2_amarelo~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \led2_amarelo~0_combout\ = (\modo[0]~input_o\ & ((\modo[1]~input_o\ & ((\current_state.S4~q\))) # (!\modo[1]~input_o\ & (\blink~q\)))) # (!\modo[0]~input_o\ & (((\current_state.S4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blink~q\,
	datab => \modo[0]~input_o\,
	datac => \modo[1]~input_o\,
	datad => \current_state.S4~q\,
	combout => \led2_amarelo~0_combout\);

-- Location: LCCOMB_X60_Y50_N4
\led2_vermelho~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \led2_vermelho~0_combout\ = (\current_state.S2~q\ & ((\modo[1]~input_o\) # ((!\modo[0]~input_o\)))) # (!\current_state.S2~q\ & (!\current_state.S1~q\ & ((\modo[1]~input_o\) # (!\modo[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.S2~q\,
	datab => \modo[1]~input_o\,
	datac => \modo[0]~input_o\,
	datad => \current_state.S1~q\,
	combout => \led2_vermelho~0_combout\);

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

ww_led1_verde <= \led1_verde~output_o\;

ww_led1_amarelo <= \led1_amarelo~output_o\;

ww_led1_vermelho <= \led1_vermelho~output_o\;

ww_led2_verde <= \led2_verde~output_o\;

ww_led2_amarelo <= \led2_amarelo~output_o\;

ww_led2_vermelho <= \led2_vermelho~output_o\;
END structure;


