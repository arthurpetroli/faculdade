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

-- DATE "01/07/2025 12:37:28"

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
	led1_verde : BUFFER std_logic;
	led1_amarelo : BUFFER std_logic;
	led1_vermelho : BUFFER std_logic;
	led2_verde : BUFFER std_logic;
	led2_amarelo : BUFFER std_logic;
	led2_vermelho : BUFFER std_logic
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
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \modo[1]~input_o\ : std_logic;
SIGNAL \modo[0]~input_o\ : std_logic;
SIGNAL \Selector0~2_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \counter[0]~7_combout\ : std_logic;
SIGNAL \counter[0]~8\ : std_logic;
SIGNAL \counter[1]~9_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \counter[1]~10\ : std_logic;
SIGNAL \counter[2]~11_combout\ : std_logic;
SIGNAL \counter[2]~12\ : std_logic;
SIGNAL \counter[3]~13_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \counter[3]~14\ : std_logic;
SIGNAL \counter[4]~15_combout\ : std_logic;
SIGNAL \counter[4]~16\ : std_logic;
SIGNAL \counter[5]~17_combout\ : std_logic;
SIGNAL \counter[5]~18\ : std_logic;
SIGNAL \counter[6]~19_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \current_state~16_combout\ : std_logic;
SIGNAL \current_state.S2~q\ : std_logic;
SIGNAL \current_state~17_combout\ : std_logic;
SIGNAL \current_state.S3~q\ : std_logic;
SIGNAL \current_state~18_combout\ : std_logic;
SIGNAL \current_state.S4~q\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \led1_vermelho~0_combout\ : std_logic;
SIGNAL \led2_vermelho~0_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Selector4~1_combout\ : std_logic;
SIGNAL \current_state.Standby~q\ : std_logic;
SIGNAL \current_state.Init~feeder_combout\ : std_logic;
SIGNAL \current_state.Init~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~3_combout\ : std_logic;
SIGNAL \current_state.S1~q\ : std_logic;
SIGNAL \led1_amarelo~0_combout\ : std_logic;
SIGNAL \led2_amarelo~0_combout\ : std_logic;
SIGNAL counter : std_logic_vector(6 DOWNTO 0);
SIGNAL \ALT_INV_led2_vermelho~0_combout\ : std_logic;
SIGNAL \ALT_INV_led1_vermelho~0_combout\ : std_logic;
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
\ALT_INV_led2_vermelho~0_combout\ <= NOT \led2_vermelho~0_combout\;
\ALT_INV_led1_vermelho~0_combout\ <= NOT \led1_vermelho~0_combout\;
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y52_N4
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
	i => \current_state.S1~q\,
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
	i => \ALT_INV_led1_vermelho~0_combout\,
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
	i => \current_state.S3~q\,
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
	i => \ALT_INV_led2_vermelho~0_combout\,
	devoe => ww_devoe,
	o => \led2_vermelho~output_o\);

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

-- Location: LCCOMB_X54_Y53_N6
\Selector0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~2_combout\ = (\current_state.S1~q\ & ((\modo[1]~input_o\) # (!\modo[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \modo[1]~input_o\,
	datab => \modo[0]~input_o\,
	datad => \current_state.S1~q\,
	combout => \Selector0~2_combout\);

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

-- Location: LCCOMB_X55_Y53_N16
\counter[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[0]~7_combout\ = counter(0) $ (VCC)
-- \counter[0]~8\ = CARRY(counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(0),
	datad => VCC,
	combout => \counter[0]~7_combout\,
	cout => \counter[0]~8\);

-- Location: FF_X55_Y53_N17
\counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[0]~7_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(0));

-- Location: LCCOMB_X55_Y53_N18
\counter[1]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[1]~9_combout\ = (counter(1) & (!\counter[0]~8\)) # (!counter(1) & ((\counter[0]~8\) # (GND)))
-- \counter[1]~10\ = CARRY((!\counter[0]~8\) # (!counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(1),
	datad => VCC,
	cin => \counter[0]~8\,
	combout => \counter[1]~9_combout\,
	cout => \counter[1]~10\);

-- Location: FF_X55_Y53_N19
\counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[1]~9_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(1));

-- Location: LCCOMB_X55_Y53_N12
\LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (!counter(1) & (((\modo[0]~input_o\) # (!counter(0))) # (!\modo[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \modo[1]~input_o\,
	datab => counter(0),
	datac => \modo[0]~input_o\,
	datad => counter(1),
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X55_Y53_N20
\counter[2]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[2]~11_combout\ = (counter(2) & (\counter[1]~10\ $ (GND))) # (!counter(2) & (!\counter[1]~10\ & VCC))
-- \counter[2]~12\ = CARRY((counter(2) & !\counter[1]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(2),
	datad => VCC,
	cin => \counter[1]~10\,
	combout => \counter[2]~11_combout\,
	cout => \counter[2]~12\);

-- Location: FF_X55_Y53_N21
\counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[2]~11_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(2));

-- Location: LCCOMB_X55_Y53_N22
\counter[3]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[3]~13_combout\ = (counter(3) & (!\counter[2]~12\)) # (!counter(3) & ((\counter[2]~12\) # (GND)))
-- \counter[3]~14\ = CARRY((!\counter[2]~12\) # (!counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datad => VCC,
	cin => \counter[2]~12\,
	combout => \counter[3]~13_combout\,
	cout => \counter[3]~14\);

-- Location: FF_X55_Y53_N23
\counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[3]~13_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(3));

-- Location: LCCOMB_X55_Y53_N8
\Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (counter(3) & (!counter(2) & ((\modo[0]~input_o\) # (!\modo[1]~input_o\)))) # (!counter(3) & (\modo[1]~input_o\ & (!\modo[0]~input_o\ & counter(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \modo[1]~input_o\,
	datab => \modo[0]~input_o\,
	datac => counter(3),
	datad => counter(2),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X55_Y53_N24
\counter[4]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[4]~15_combout\ = (counter(4) & (\counter[3]~14\ $ (GND))) # (!counter(4) & (!\counter[3]~14\ & VCC))
-- \counter[4]~16\ = CARRY((counter(4) & !\counter[3]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(4),
	datad => VCC,
	cin => \counter[3]~14\,
	combout => \counter[4]~15_combout\,
	cout => \counter[4]~16\);

-- Location: FF_X55_Y53_N25
\counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[4]~15_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(4));

-- Location: LCCOMB_X55_Y53_N26
\counter[5]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[5]~17_combout\ = (counter(5) & (!\counter[4]~16\)) # (!counter(5) & ((\counter[4]~16\) # (GND)))
-- \counter[5]~18\ = CARRY((!\counter[4]~16\) # (!counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(5),
	datad => VCC,
	cin => \counter[4]~16\,
	combout => \counter[5]~17_combout\,
	cout => \counter[5]~18\);

-- Location: FF_X55_Y53_N27
\counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[5]~17_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(5));

-- Location: LCCOMB_X55_Y53_N28
\counter[6]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[6]~19_combout\ = \counter[5]~18\ $ (!counter(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => counter(6),
	cin => \counter[5]~18\,
	combout => \counter[6]~19_combout\);

-- Location: FF_X55_Y53_N29
\counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[6]~19_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(6));

-- Location: LCCOMB_X55_Y53_N30
\LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!counter(6) & (!counter(5) & !counter(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(6),
	datac => counter(5),
	datad => counter(4),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X55_Y53_N6
\LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (!counter(3) & (((\modo[0]~input_o\) # (!counter(2))) # (!\modo[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \modo[1]~input_o\,
	datab => \modo[0]~input_o\,
	datac => counter(3),
	datad => counter(2),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X55_Y53_N14
\LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = ((!\LessThan0~1_combout\ & ((!\Equal2~0_combout\) # (!\LessThan0~2_combout\)))) # (!\LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~2_combout\,
	datab => \Equal2~0_combout\,
	datac => \LessThan0~0_combout\,
	datad => \LessThan0~1_combout\,
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X54_Y53_N8
\Equal2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (counter(1) & (!counter(0) & ((\modo[0]~input_o\) # (!\modo[1]~input_o\)))) # (!counter(1) & (!\modo[0]~input_o\ & (\modo[1]~input_o\ & counter(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \modo[0]~input_o\,
	datab => counter(1),
	datac => \modo[1]~input_o\,
	datad => counter(0),
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X55_Y53_N0
\Equal2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = (\LessThan0~0_combout\ & (\Equal2~0_combout\ & \Equal2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datac => \Equal2~0_combout\,
	datad => \Equal2~1_combout\,
	combout => \Equal2~2_combout\);

-- Location: LCCOMB_X55_Y53_N10
\current_state~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_state~16_combout\ = (\LessThan0~3_combout\ & ((\Equal2~2_combout\) # ((!\modo[1]~input_o\ & \modo[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \modo[1]~input_o\,
	datab => \modo[0]~input_o\,
	datac => \LessThan0~3_combout\,
	datad => \Equal2~2_combout\,
	combout => \current_state~16_combout\);

-- Location: FF_X54_Y53_N7
\current_state.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector0~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \current_state~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.S2~q\);

-- Location: LCCOMB_X55_Y53_N4
\current_state~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_state~17_combout\ = (\current_state.S2~q\ & ((\modo[1]~input_o\) # (!\modo[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \modo[1]~input_o\,
	datab => \modo[0]~input_o\,
	datac => \current_state.S2~q\,
	combout => \current_state~17_combout\);

-- Location: FF_X55_Y53_N5
\current_state.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \current_state~17_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \current_state~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.S3~q\);

-- Location: LCCOMB_X55_Y53_N2
\current_state~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_state~18_combout\ = (\current_state.S3~q\ & ((\modo[1]~input_o\) # (!\modo[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \modo[1]~input_o\,
	datab => \modo[0]~input_o\,
	datac => \current_state.S3~q\,
	combout => \current_state~18_combout\);

-- Location: FF_X55_Y53_N3
\current_state.S4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \current_state~18_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \current_state~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.S4~q\);

-- Location: LCCOMB_X54_Y53_N26
\Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (\current_state.S4~q\ & ((\modo[1]~input_o\) # (!\modo[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \modo[1]~input_o\,
	datab => \modo[0]~input_o\,
	datad => \current_state.S4~q\,
	combout => \Selector0~1_combout\);

-- Location: LCCOMB_X54_Y53_N12
\led1_vermelho~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \led1_vermelho~0_combout\ = (!\current_state.S4~q\ & !\current_state.S3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.S4~q\,
	datad => \current_state.S3~q\,
	combout => \led1_vermelho~0_combout\);

-- Location: LCCOMB_X54_Y53_N24
\led2_vermelho~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \led2_vermelho~0_combout\ = (!\current_state.S1~q\ & !\current_state.S2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.S1~q\,
	datad => \current_state.S2~q\,
	combout => \led2_vermelho~0_combout\);

-- Location: LCCOMB_X54_Y53_N2
\Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\modo[0]~input_o\ & (!\modo[1]~input_o\ & ((!\led2_vermelho~0_combout\) # (!\led1_vermelho~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led1_vermelho~0_combout\,
	datab => \modo[0]~input_o\,
	datac => \modo[1]~input_o\,
	datad => \led2_vermelho~0_combout\,
	combout => \Selector4~0_combout\);

-- Location: LCCOMB_X54_Y53_N16
\Selector4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~1_combout\ = (\Selector4~0_combout\) # ((\current_state.Standby~q\ & ((\modo[1]~input_o\) # (\modo[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \modo[1]~input_o\,
	datab => \modo[0]~input_o\,
	datac => \current_state.Standby~q\,
	datad => \Selector4~0_combout\,
	combout => \Selector4~1_combout\);

-- Location: FF_X54_Y53_N17
\current_state.Standby\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector4~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.Standby~q\);

-- Location: LCCOMB_X54_Y53_N18
\current_state.Init~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_state.Init~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \current_state.Init~feeder_combout\);

-- Location: FF_X54_Y53_N19
\current_state.Init\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \current_state.Init~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.Init~q\);

-- Location: LCCOMB_X54_Y53_N28
\Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = ((!\modo[1]~input_o\ & (\current_state.Standby~q\ & !\modo[0]~input_o\))) # (!\current_state.Init~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \modo[1]~input_o\,
	datab => \current_state.Standby~q\,
	datac => \modo[0]~input_o\,
	datad => \current_state.Init~q\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X54_Y53_N20
\Selector0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~3_combout\ = (\Selector0~0_combout\) # ((\Equal2~2_combout\ & (\Selector0~1_combout\)) # (!\Equal2~2_combout\ & ((\Selector0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~1_combout\,
	datab => \Selector0~2_combout\,
	datac => \Equal2~2_combout\,
	datad => \Selector0~0_combout\,
	combout => \Selector0~3_combout\);

-- Location: FF_X54_Y53_N21
\current_state.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector0~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.S1~q\);

-- Location: LCCOMB_X54_Y53_N22
\led1_amarelo~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \led1_amarelo~0_combout\ = (\current_state.Standby~q\) # (\current_state.S2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.Standby~q\,
	datad => \current_state.S2~q\,
	combout => \led1_amarelo~0_combout\);

-- Location: LCCOMB_X54_Y53_N10
\led2_amarelo~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \led2_amarelo~0_combout\ = (\current_state.S4~q\) # (\current_state.Standby~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.S4~q\,
	datad => \current_state.Standby~q\,
	combout => \led2_amarelo~0_combout\);

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


