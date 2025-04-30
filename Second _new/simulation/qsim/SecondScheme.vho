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

-- DATE "02/28/2023 13:02:15"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_NCEO~	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- ~ALTERA_DATA0~	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_ASDO~	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_NCSO~	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO~~padout\ : std_logic;
SIGNAL \~ALTERA_NCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ASDO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_NCSO~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	blok_oper IS
    PORT (
	f1 : OUT std_logic;
	y : IN std_logic_vector(10 DOWNTO 1);
	clk : IN std_logic;
	b : IN std_logic_vector(3 DOWNTO 0);
	f2 : OUT std_logic;
	f3 : OUT std_logic;
	rr : OUT std_logic_vector(7 DOWNTO 0);
	a : IN std_logic_vector(3 DOWNTO 0);
	priznak : OUT std_logic_vector(1 DOWNTO 0)
	);
END blok_oper;

-- Design Ports Information
-- f1	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f2	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f3	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rr[7]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rr[6]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rr[5]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rr[4]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rr[3]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rr[2]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rr[1]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rr[0]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- priznak[1]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- priznak[0]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[3]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[3]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[2]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[2]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[5]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[4]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[9]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[8]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[6]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[7]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[10]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[1]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[0]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF blok_oper IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_f1 : std_logic;
SIGNAL ww_y : std_logic_vector(10 DOWNTO 1);
SIGNAL ww_clk : std_logic;
SIGNAL ww_b : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_f2 : std_logic;
SIGNAL ww_f3 : std_logic;
SIGNAL ww_rr : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_a : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_priznak : std_logic_vector(1 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \f1~output_o\ : std_logic;
SIGNAL \f2~output_o\ : std_logic;
SIGNAL \f3~output_o\ : std_logic;
SIGNAL \rr[7]~output_o\ : std_logic;
SIGNAL \rr[6]~output_o\ : std_logic;
SIGNAL \rr[5]~output_o\ : std_logic;
SIGNAL \rr[4]~output_o\ : std_logic;
SIGNAL \rr[3]~output_o\ : std_logic;
SIGNAL \rr[2]~output_o\ : std_logic;
SIGNAL \rr[1]~output_o\ : std_logic;
SIGNAL \rr[0]~output_o\ : std_logic;
SIGNAL \priznak[1]~output_o\ : std_logic;
SIGNAL \priznak[0]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \y[3]~input_o\ : std_logic;
SIGNAL \y[2]~input_o\ : std_logic;
SIGNAL \inst2|state[3]~0_combout\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \inst2|state~3_combout\ : std_logic;
SIGNAL \inst2|state[0]~feeder_combout\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \inst2|state~2_combout\ : std_logic;
SIGNAL \inst2|state~1_combout\ : std_logic;
SIGNAL \y[4]~input_o\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \y[1]~input_o\ : std_logic;
SIGNAL \y[5]~input_o\ : std_logic;
SIGNAL \inst5|Mux5~0_combout\ : std_logic;
SIGNAL \y[9]~input_o\ : std_logic;
SIGNAL \inst6|q[2]~0_combout\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \inst5|Mux6~0_combout\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \inst5|Mux7~0_combout\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \inst5|Mux0~0_combout\ : std_logic;
SIGNAL \inst1|Add0~5\ : std_logic;
SIGNAL \inst1|Add0~6_combout\ : std_logic;
SIGNAL \inst1|Add0~0_combout\ : std_logic;
SIGNAL \inst3|state[0]~9\ : std_logic;
SIGNAL \inst3|state[1]~11\ : std_logic;
SIGNAL \inst3|state[2]~13\ : std_logic;
SIGNAL \inst3|state[3]~15_combout\ : std_logic;
SIGNAL \y[8]~input_o\ : std_logic;
SIGNAL \y[6]~input_o\ : std_logic;
SIGNAL \y[7]~input_o\ : std_logic;
SIGNAL \inst3|state[0]~14_combout\ : std_logic;
SIGNAL \inst6|q[3]~7_combout\ : std_logic;
SIGNAL \inst1|Add0~7\ : std_logic;
SIGNAL \inst1|Add0~8_combout\ : std_logic;
SIGNAL \inst3|state[3]~16\ : std_logic;
SIGNAL \inst3|state[4]~17_combout\ : std_logic;
SIGNAL \inst6|q[4]~6_combout\ : std_logic;
SIGNAL \inst1|Add0~9\ : std_logic;
SIGNAL \inst1|Add0~10_combout\ : std_logic;
SIGNAL \inst3|state[4]~18\ : std_logic;
SIGNAL \inst3|state[5]~19_combout\ : std_logic;
SIGNAL \inst6|q[5]~5_combout\ : std_logic;
SIGNAL \inst1|Add0~11\ : std_logic;
SIGNAL \inst1|Add0~12_combout\ : std_logic;
SIGNAL \inst3|state[5]~20\ : std_logic;
SIGNAL \inst3|state[6]~21_combout\ : std_logic;
SIGNAL \inst6|q[6]~4_combout\ : std_logic;
SIGNAL \inst1|Add0~13\ : std_logic;
SIGNAL \inst1|Add0~14_combout\ : std_logic;
SIGNAL \inst3|state[6]~22\ : std_logic;
SIGNAL \inst3|state[7]~23_combout\ : std_logic;
SIGNAL \inst6|q[7]~3_combout\ : std_logic;
SIGNAL \inst1|Add0~15\ : std_logic;
SIGNAL \inst1|Add0~16_combout\ : std_logic;
SIGNAL \inst3|state[0]~8_combout\ : std_logic;
SIGNAL \inst6|q[0]~2_combout\ : std_logic;
SIGNAL \inst1|Add0~1\ : std_logic;
SIGNAL \inst1|Add0~2_combout\ : std_logic;
SIGNAL \inst3|state[1]~10_combout\ : std_logic;
SIGNAL \inst6|q[1]~1_combout\ : std_logic;
SIGNAL \inst1|Add0~3\ : std_logic;
SIGNAL \inst1|Add0~4_combout\ : std_logic;
SIGNAL \inst3|state[2]~12_combout\ : std_logic;
SIGNAL \inst4|Equal1~0_combout\ : std_logic;
SIGNAL \inst4|Equal1~1_combout\ : std_logic;
SIGNAL \inst4|Equal0~0_combout\ : std_logic;
SIGNAL \inst4|pr[1]~0_combout\ : std_logic;
SIGNAL \y[10]~input_o\ : std_logic;
SIGNAL \inst4|Equal0~1_combout\ : std_logic;
SIGNAL \inst2|state\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|state\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst4|d\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|d\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_y[6]~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

f1 <= ww_f1;
ww_y <= y;
ww_clk <= clk;
ww_b <= b;
f2 <= ww_f2;
f3 <= ww_f3;
rr <= ww_rr;
ww_a <= a;
priznak <= ww_priznak;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_y[6]~input_o\ <= NOT \y[6]~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X33_Y25_N2
\f1~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|state\(3),
	devoe => ww_devoe,
	o => \f1~output_o\);

-- Location: IOOBUF_X33_Y28_N2
\f2~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|state\(2),
	devoe => ww_devoe,
	o => \f2~output_o\);

-- Location: IOOBUF_X33_Y24_N9
\f3~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Equal1~1_combout\,
	devoe => ww_devoe,
	o => \f3~output_o\);

-- Location: IOOBUF_X33_Y28_N9
\rr[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|state\(7),
	devoe => ww_devoe,
	o => \rr[7]~output_o\);

-- Location: IOOBUF_X33_Y11_N9
\rr[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|state\(6),
	devoe => ww_devoe,
	o => \rr[6]~output_o\);

-- Location: IOOBUF_X33_Y27_N2
\rr[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|state\(5),
	devoe => ww_devoe,
	o => \rr[5]~output_o\);

-- Location: IOOBUF_X33_Y14_N9
\rr[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|state\(4),
	devoe => ww_devoe,
	o => \rr[4]~output_o\);

-- Location: IOOBUF_X33_Y22_N9
\rr[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|state\(3),
	devoe => ww_devoe,
	o => \rr[3]~output_o\);

-- Location: IOOBUF_X33_Y15_N9
\rr[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|state\(2),
	devoe => ww_devoe,
	o => \rr[2]~output_o\);

-- Location: IOOBUF_X33_Y14_N2
\rr[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|state\(1),
	devoe => ww_devoe,
	o => \rr[1]~output_o\);

-- Location: IOOBUF_X22_Y31_N2
\rr[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|state\(0),
	devoe => ww_devoe,
	o => \rr[0]~output_o\);

-- Location: IOOBUF_X26_Y31_N2
\priznak[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|d\(1),
	devoe => ww_devoe,
	o => \priznak[1]~output_o\);

-- Location: IOOBUF_X33_Y12_N2
\priznak[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|d\(0),
	devoe => ww_devoe,
	o => \priznak[0]~output_o\);

-- Location: IOIBUF_X16_Y0_N15
\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G17
\clk~inputclkctrl\ : cycloneiv_clkctrl
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

-- Location: IOIBUF_X31_Y31_N8
\b[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(3),
	o => \b[3]~input_o\);

-- Location: IOIBUF_X33_Y22_N1
\y[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(3),
	o => \y[3]~input_o\);

-- Location: IOIBUF_X33_Y11_N1
\y[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(2),
	o => \y[2]~input_o\);

-- Location: LCCOMB_X27_Y20_N16
\inst2|state[3]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|state[3]~0_combout\ = (\y[3]~input_o\ & ((\y[2]~input_o\ & (\b[3]~input_o\)) # (!\y[2]~input_o\ & ((\inst2|state\(3)))))) # (!\y[3]~input_o\ & (((\inst2|state\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datab => \y[3]~input_o\,
	datac => \inst2|state\(3),
	datad => \y[2]~input_o\,
	combout => \inst2|state[3]~0_combout\);

-- Location: FF_X27_Y20_N17
\inst2|state[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|state[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|state\(3));

-- Location: IOIBUF_X26_Y31_N8
\b[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

-- Location: IOIBUF_X29_Y31_N8
\b[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

-- Location: LCCOMB_X27_Y20_N28
\inst2|state~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|state~3_combout\ = (\b[0]~input_o\ & \y[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b[0]~input_o\,
	datad => \y[2]~input_o\,
	combout => \inst2|state~3_combout\);

-- Location: LCCOMB_X25_Y20_N4
\inst2|state[0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|state[0]~feeder_combout\ = \inst2|state~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|state~3_combout\,
	combout => \inst2|state[0]~feeder_combout\);

-- Location: FF_X25_Y20_N5
\inst2|state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|state[0]~feeder_combout\,
	ena => \y[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|state\(0));

-- Location: IOIBUF_X33_Y27_N8
\b[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

-- Location: LCCOMB_X26_Y20_N26
\inst2|state~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|state~2_combout\ = (\y[2]~input_o\ & ((\b[1]~input_o\))) # (!\y[2]~input_o\ & (\inst2|state\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|state\(0),
	datac => \y[2]~input_o\,
	datad => \b[1]~input_o\,
	combout => \inst2|state~2_combout\);

-- Location: FF_X26_Y20_N27
\inst2|state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|state~2_combout\,
	ena => \y[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|state\(1));

-- Location: LCCOMB_X26_Y20_N0
\inst2|state~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|state~1_combout\ = (\y[2]~input_o\ & (\b[2]~input_o\)) # (!\y[2]~input_o\ & ((\inst2|state\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datac => \y[2]~input_o\,
	datad => \inst2|state\(1),
	combout => \inst2|state~1_combout\);

-- Location: FF_X25_Y20_N9
\inst2|state[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst2|state~1_combout\,
	sload => VCC,
	ena => \y[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|state\(2));

-- Location: IOIBUF_X24_Y31_N1
\y[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(4),
	o => \y[4]~input_o\);

-- Location: IOIBUF_X33_Y16_N8
\a[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: IOIBUF_X33_Y16_N1
\y[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(1),
	o => \y[1]~input_o\);

-- Location: FF_X25_Y20_N31
\inst|d[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a[2]~input_o\,
	sload => VCC,
	ena => \y[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|d\(2));

-- Location: IOIBUF_X24_Y31_N8
\y[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(5),
	o => \y[5]~input_o\);

-- Location: LCCOMB_X25_Y20_N30
\inst5|Mux5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5|Mux5~0_combout\ = (\y[4]~input_o\ & ((\y[5]~input_o\) # (!\inst|d\(2)))) # (!\y[4]~input_o\ & ((\inst|d\(2)) # (!\y[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y[4]~input_o\,
	datac => \inst|d\(2),
	datad => \y[5]~input_o\,
	combout => \inst5|Mux5~0_combout\);

-- Location: IOIBUF_X33_Y25_N8
\y[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(9),
	o => \y[9]~input_o\);

-- Location: LCCOMB_X25_Y20_N8
\inst6|q[2]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6|q[2]~0_combout\ = (\y[9]~input_o\ & ((\inst3|state\(2)))) # (!\y[9]~input_o\ & (\inst2|state\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[9]~input_o\,
	datac => \inst2|state\(2),
	datad => \inst3|state\(2),
	combout => \inst6|q[2]~0_combout\);

-- Location: IOIBUF_X29_Y31_N1
\a[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: FF_X25_Y20_N29
\inst|d[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a[1]~input_o\,
	sload => VCC,
	ena => \y[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|d\(1));

-- Location: LCCOMB_X25_Y20_N28
\inst5|Mux6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5|Mux6~0_combout\ = (\y[4]~input_o\ & ((\y[5]~input_o\) # (!\inst|d\(1)))) # (!\y[4]~input_o\ & ((\inst|d\(1)) # (!\y[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y[4]~input_o\,
	datac => \inst|d\(1),
	datad => \y[5]~input_o\,
	combout => \inst5|Mux6~0_combout\);

-- Location: IOIBUF_X33_Y24_N1
\a[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: FF_X25_Y20_N3
\inst|d[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a[0]~input_o\,
	sload => VCC,
	ena => \y[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|d\(0));

-- Location: LCCOMB_X25_Y20_N2
\inst5|Mux7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5|Mux7~0_combout\ = (\y[4]~input_o\ & ((\y[5]~input_o\) # (!\inst|d\(0)))) # (!\y[4]~input_o\ & ((\inst|d\(0)) # (!\y[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y[4]~input_o\,
	datac => \inst|d\(0),
	datad => \y[5]~input_o\,
	combout => \inst5|Mux7~0_combout\);

-- Location: IOIBUF_X22_Y31_N8
\a[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: FF_X25_Y20_N7
\inst|d[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a[3]~input_o\,
	sload => VCC,
	ena => \y[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|d\(3));

-- Location: LCCOMB_X25_Y20_N6
\inst5|Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5|Mux0~0_combout\ = (\y[4]~input_o\ & ((\y[5]~input_o\) # (!\inst|d\(3)))) # (!\y[4]~input_o\ & ((\inst|d\(3)) # (!\y[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y[4]~input_o\,
	datac => \inst|d\(3),
	datad => \y[5]~input_o\,
	combout => \inst5|Mux0~0_combout\);

-- Location: LCCOMB_X25_Y20_N14
\inst1|Add0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|Add0~4_combout\ = ((\inst5|Mux5~0_combout\ $ (\inst6|q[2]~0_combout\ $ (\inst1|Add0~3\)))) # (GND)
-- \inst1|Add0~5\ = CARRY((\inst5|Mux5~0_combout\ & (\inst6|q[2]~0_combout\ & !\inst1|Add0~3\)) # (!\inst5|Mux5~0_combout\ & ((\inst6|q[2]~0_combout\) # (!\inst1|Add0~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mux5~0_combout\,
	datab => \inst6|q[2]~0_combout\,
	datad => VCC,
	cin => \inst1|Add0~3\,
	combout => \inst1|Add0~4_combout\,
	cout => \inst1|Add0~5\);

-- Location: LCCOMB_X25_Y20_N16
\inst1|Add0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|Add0~6_combout\ = (\inst6|q[3]~7_combout\ & ((\inst5|Mux0~0_combout\ & (!\inst1|Add0~5\)) # (!\inst5|Mux0~0_combout\ & (\inst1|Add0~5\ & VCC)))) # (!\inst6|q[3]~7_combout\ & ((\inst5|Mux0~0_combout\ & ((\inst1|Add0~5\) # (GND))) # 
-- (!\inst5|Mux0~0_combout\ & (!\inst1|Add0~5\))))
-- \inst1|Add0~7\ = CARRY((\inst6|q[3]~7_combout\ & (\inst5|Mux0~0_combout\ & !\inst1|Add0~5\)) # (!\inst6|q[3]~7_combout\ & ((\inst5|Mux0~0_combout\) # (!\inst1|Add0~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|q[3]~7_combout\,
	datab => \inst5|Mux0~0_combout\,
	datad => VCC,
	cin => \inst1|Add0~5\,
	combout => \inst1|Add0~6_combout\,
	cout => \inst1|Add0~7\);

-- Location: LCCOMB_X25_Y20_N10
\inst1|Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|Add0~0_combout\ = (\inst5|Mux7~0_combout\ & (\inst6|q[0]~2_combout\ & VCC)) # (!\inst5|Mux7~0_combout\ & (\inst6|q[0]~2_combout\ $ (VCC)))
-- \inst1|Add0~1\ = CARRY((!\inst5|Mux7~0_combout\ & \inst6|q[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mux7~0_combout\,
	datab => \inst6|q[0]~2_combout\,
	datad => VCC,
	combout => \inst1|Add0~0_combout\,
	cout => \inst1|Add0~1\);

-- Location: LCCOMB_X26_Y20_N4
\inst3|state[0]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|state[0]~8_combout\ = (\inst1|Add0~16_combout\ & (\inst1|Add0~0_combout\ $ (VCC))) # (!\inst1|Add0~16_combout\ & (\inst1|Add0~0_combout\ & VCC))
-- \inst3|state[0]~9\ = CARRY((\inst1|Add0~16_combout\ & \inst1|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~16_combout\,
	datab => \inst1|Add0~0_combout\,
	datad => VCC,
	combout => \inst3|state[0]~8_combout\,
	cout => \inst3|state[0]~9\);

-- Location: LCCOMB_X26_Y20_N6
\inst3|state[1]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|state[1]~10_combout\ = (\inst1|Add0~2_combout\ & (!\inst3|state[0]~9\)) # (!\inst1|Add0~2_combout\ & ((\inst3|state[0]~9\) # (GND)))
-- \inst3|state[1]~11\ = CARRY((!\inst3|state[0]~9\) # (!\inst1|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~2_combout\,
	datad => VCC,
	cin => \inst3|state[0]~9\,
	combout => \inst3|state[1]~10_combout\,
	cout => \inst3|state[1]~11\);

-- Location: LCCOMB_X26_Y20_N8
\inst3|state[2]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|state[2]~12_combout\ = (\inst1|Add0~4_combout\ & (\inst3|state[1]~11\ $ (GND))) # (!\inst1|Add0~4_combout\ & (!\inst3|state[1]~11\ & VCC))
-- \inst3|state[2]~13\ = CARRY((\inst1|Add0~4_combout\ & !\inst3|state[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~4_combout\,
	datad => VCC,
	cin => \inst3|state[1]~11\,
	combout => \inst3|state[2]~12_combout\,
	cout => \inst3|state[2]~13\);

-- Location: LCCOMB_X26_Y20_N10
\inst3|state[3]~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|state[3]~15_combout\ = (\inst1|Add0~6_combout\ & (!\inst3|state[2]~13\)) # (!\inst1|Add0~6_combout\ & ((\inst3|state[2]~13\) # (GND)))
-- \inst3|state[3]~16\ = CARRY((!\inst3|state[2]~13\) # (!\inst1|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~6_combout\,
	datad => VCC,
	cin => \inst3|state[2]~13\,
	combout => \inst3|state[3]~15_combout\,
	cout => \inst3|state[3]~16\);

-- Location: IOIBUF_X33_Y15_N1
\y[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(8),
	o => \y[8]~input_o\);

-- Location: IOIBUF_X33_Y12_N8
\y[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(6),
	o => \y[6]~input_o\);

-- Location: IOIBUF_X33_Y16_N22
\y[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(7),
	o => \y[7]~input_o\);

-- Location: LCCOMB_X26_Y19_N0
\inst3|state[0]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|state[0]~14_combout\ = (\y[8]~input_o\) # (\y[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \y[8]~input_o\,
	datad => \y[7]~input_o\,
	combout => \inst3|state[0]~14_combout\);

-- Location: FF_X26_Y20_N11
\inst3|state[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|state[3]~15_combout\,
	asdata => \inst3|state\(2),
	sclr => \y[8]~input_o\,
	sload => \ALT_INV_y[6]~input_o\,
	ena => \inst3|state[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|state\(3));

-- Location: LCCOMB_X26_Y20_N20
\inst6|q[3]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6|q[3]~7_combout\ = (\y[9]~input_o\ & (\inst3|state\(3))) # (!\y[9]~input_o\ & ((\inst2|state\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|state\(3),
	datac => \y[9]~input_o\,
	datad => \inst2|state\(3),
	combout => \inst6|q[3]~7_combout\);

-- Location: LCCOMB_X25_Y20_N18
\inst1|Add0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|Add0~8_combout\ = ((\inst5|Mux0~0_combout\ $ (\inst6|q[4]~6_combout\ $ (\inst1|Add0~7\)))) # (GND)
-- \inst1|Add0~9\ = CARRY((\inst5|Mux0~0_combout\ & (\inst6|q[4]~6_combout\ & !\inst1|Add0~7\)) # (!\inst5|Mux0~0_combout\ & ((\inst6|q[4]~6_combout\) # (!\inst1|Add0~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mux0~0_combout\,
	datab => \inst6|q[4]~6_combout\,
	datad => VCC,
	cin => \inst1|Add0~7\,
	combout => \inst1|Add0~8_combout\,
	cout => \inst1|Add0~9\);

-- Location: LCCOMB_X26_Y20_N12
\inst3|state[4]~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|state[4]~17_combout\ = (\inst1|Add0~8_combout\ & (\inst3|state[3]~16\ $ (GND))) # (!\inst1|Add0~8_combout\ & (!\inst3|state[3]~16\ & VCC))
-- \inst3|state[4]~18\ = CARRY((\inst1|Add0~8_combout\ & !\inst3|state[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Add0~8_combout\,
	datad => VCC,
	cin => \inst3|state[3]~16\,
	combout => \inst3|state[4]~17_combout\,
	cout => \inst3|state[4]~18\);

-- Location: FF_X26_Y20_N13
\inst3|state[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|state[4]~17_combout\,
	asdata => \inst3|state\(3),
	sclr => \y[8]~input_o\,
	sload => \ALT_INV_y[6]~input_o\,
	ena => \inst3|state[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|state\(4));

-- Location: LCCOMB_X26_Y20_N28
\inst6|q[4]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6|q[4]~6_combout\ = (\y[9]~input_o\ & (\inst3|state\(4))) # (!\y[9]~input_o\ & ((\inst2|state\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|state\(4),
	datac => \y[9]~input_o\,
	datad => \inst2|state\(3),
	combout => \inst6|q[4]~6_combout\);

-- Location: LCCOMB_X25_Y20_N20
\inst1|Add0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|Add0~10_combout\ = (\inst5|Mux0~0_combout\ & ((\inst6|q[5]~5_combout\ & (!\inst1|Add0~9\)) # (!\inst6|q[5]~5_combout\ & ((\inst1|Add0~9\) # (GND))))) # (!\inst5|Mux0~0_combout\ & ((\inst6|q[5]~5_combout\ & (\inst1|Add0~9\ & VCC)) # 
-- (!\inst6|q[5]~5_combout\ & (!\inst1|Add0~9\))))
-- \inst1|Add0~11\ = CARRY((\inst5|Mux0~0_combout\ & ((!\inst1|Add0~9\) # (!\inst6|q[5]~5_combout\))) # (!\inst5|Mux0~0_combout\ & (!\inst6|q[5]~5_combout\ & !\inst1|Add0~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mux0~0_combout\,
	datab => \inst6|q[5]~5_combout\,
	datad => VCC,
	cin => \inst1|Add0~9\,
	combout => \inst1|Add0~10_combout\,
	cout => \inst1|Add0~11\);

-- Location: LCCOMB_X26_Y20_N14
\inst3|state[5]~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|state[5]~19_combout\ = (\inst1|Add0~10_combout\ & (!\inst3|state[4]~18\)) # (!\inst1|Add0~10_combout\ & ((\inst3|state[4]~18\) # (GND)))
-- \inst3|state[5]~20\ = CARRY((!\inst3|state[4]~18\) # (!\inst1|Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Add0~10_combout\,
	datad => VCC,
	cin => \inst3|state[4]~18\,
	combout => \inst3|state[5]~19_combout\,
	cout => \inst3|state[5]~20\);

-- Location: FF_X26_Y20_N15
\inst3|state[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|state[5]~19_combout\,
	asdata => \inst3|state\(4),
	sclr => \y[8]~input_o\,
	sload => \ALT_INV_y[6]~input_o\,
	ena => \inst3|state[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|state\(5));

-- Location: LCCOMB_X26_Y20_N24
\inst6|q[5]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6|q[5]~5_combout\ = (\y[9]~input_o\ & (\inst3|state\(5))) # (!\y[9]~input_o\ & ((\inst2|state\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[9]~input_o\,
	datac => \inst3|state\(5),
	datad => \inst2|state\(3),
	combout => \inst6|q[5]~5_combout\);

-- Location: LCCOMB_X25_Y20_N22
\inst1|Add0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|Add0~12_combout\ = ((\inst6|q[6]~4_combout\ $ (\inst5|Mux0~0_combout\ $ (\inst1|Add0~11\)))) # (GND)
-- \inst1|Add0~13\ = CARRY((\inst6|q[6]~4_combout\ & ((!\inst1|Add0~11\) # (!\inst5|Mux0~0_combout\))) # (!\inst6|q[6]~4_combout\ & (!\inst5|Mux0~0_combout\ & !\inst1|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|q[6]~4_combout\,
	datab => \inst5|Mux0~0_combout\,
	datad => VCC,
	cin => \inst1|Add0~11\,
	combout => \inst1|Add0~12_combout\,
	cout => \inst1|Add0~13\);

-- Location: LCCOMB_X26_Y20_N16
\inst3|state[6]~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|state[6]~21_combout\ = (\inst1|Add0~12_combout\ & (\inst3|state[5]~20\ $ (GND))) # (!\inst1|Add0~12_combout\ & (!\inst3|state[5]~20\ & VCC))
-- \inst3|state[6]~22\ = CARRY((\inst1|Add0~12_combout\ & !\inst3|state[5]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Add0~12_combout\,
	datad => VCC,
	cin => \inst3|state[5]~20\,
	combout => \inst3|state[6]~21_combout\,
	cout => \inst3|state[6]~22\);

-- Location: FF_X26_Y20_N17
\inst3|state[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|state[6]~21_combout\,
	asdata => \inst3|state\(5),
	sclr => \y[8]~input_o\,
	sload => \ALT_INV_y[6]~input_o\,
	ena => \inst3|state[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|state\(6));

-- Location: LCCOMB_X26_Y20_N30
\inst6|q[6]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6|q[6]~4_combout\ = (\y[9]~input_o\ & (\inst3|state\(6))) # (!\y[9]~input_o\ & ((\inst2|state\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|state\(6),
	datac => \y[9]~input_o\,
	datad => \inst2|state\(3),
	combout => \inst6|q[6]~4_combout\);

-- Location: LCCOMB_X25_Y20_N24
\inst1|Add0~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|Add0~14_combout\ = (\inst6|q[7]~3_combout\ & ((\inst5|Mux0~0_combout\ & (!\inst1|Add0~13\)) # (!\inst5|Mux0~0_combout\ & (\inst1|Add0~13\ & VCC)))) # (!\inst6|q[7]~3_combout\ & ((\inst5|Mux0~0_combout\ & ((\inst1|Add0~13\) # (GND))) # 
-- (!\inst5|Mux0~0_combout\ & (!\inst1|Add0~13\))))
-- \inst1|Add0~15\ = CARRY((\inst6|q[7]~3_combout\ & (\inst5|Mux0~0_combout\ & !\inst1|Add0~13\)) # (!\inst6|q[7]~3_combout\ & ((\inst5|Mux0~0_combout\) # (!\inst1|Add0~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|q[7]~3_combout\,
	datab => \inst5|Mux0~0_combout\,
	datad => VCC,
	cin => \inst1|Add0~13\,
	combout => \inst1|Add0~14_combout\,
	cout => \inst1|Add0~15\);

-- Location: LCCOMB_X26_Y20_N18
\inst3|state[7]~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|state[7]~23_combout\ = \inst3|state[6]~22\ $ (\inst1|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst1|Add0~14_combout\,
	cin => \inst3|state[6]~22\,
	combout => \inst3|state[7]~23_combout\);

-- Location: FF_X26_Y20_N19
\inst3|state[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|state[7]~23_combout\,
	asdata => \inst3|state\(6),
	sclr => \y[8]~input_o\,
	sload => \ALT_INV_y[6]~input_o\,
	ena => \inst3|state[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|state\(7));

-- Location: LCCOMB_X26_Y20_N2
\inst6|q[7]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6|q[7]~3_combout\ = (\y[9]~input_o\ & (\inst3|state\(7))) # (!\y[9]~input_o\ & ((\inst2|state\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|state\(7),
	datac => \y[9]~input_o\,
	datad => \inst2|state\(3),
	combout => \inst6|q[7]~3_combout\);

-- Location: LCCOMB_X25_Y20_N26
\inst1|Add0~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|Add0~16_combout\ = !\inst1|Add0~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst1|Add0~15\,
	combout => \inst1|Add0~16_combout\);

-- Location: FF_X26_Y20_N5
\inst3|state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|state[0]~8_combout\,
	asdata => \inst3|state\(7),
	sclr => \y[8]~input_o\,
	sload => \ALT_INV_y[6]~input_o\,
	ena => \inst3|state[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|state\(0));

-- Location: LCCOMB_X25_Y20_N0
\inst6|q[0]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6|q[0]~2_combout\ = (\y[9]~input_o\ & ((\inst3|state\(0)))) # (!\y[9]~input_o\ & (\inst2|state\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[9]~input_o\,
	datac => \inst2|state\(0),
	datad => \inst3|state\(0),
	combout => \inst6|q[0]~2_combout\);

-- Location: LCCOMB_X25_Y20_N12
\inst1|Add0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|Add0~2_combout\ = (\inst5|Mux6~0_combout\ & ((\inst6|q[1]~1_combout\ & (!\inst1|Add0~1\)) # (!\inst6|q[1]~1_combout\ & ((\inst1|Add0~1\) # (GND))))) # (!\inst5|Mux6~0_combout\ & ((\inst6|q[1]~1_combout\ & (\inst1|Add0~1\ & VCC)) # 
-- (!\inst6|q[1]~1_combout\ & (!\inst1|Add0~1\))))
-- \inst1|Add0~3\ = CARRY((\inst5|Mux6~0_combout\ & ((!\inst1|Add0~1\) # (!\inst6|q[1]~1_combout\))) # (!\inst5|Mux6~0_combout\ & (!\inst6|q[1]~1_combout\ & !\inst1|Add0~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mux6~0_combout\,
	datab => \inst6|q[1]~1_combout\,
	datad => VCC,
	cin => \inst1|Add0~1\,
	combout => \inst1|Add0~2_combout\,
	cout => \inst1|Add0~3\);

-- Location: FF_X26_Y20_N7
\inst3|state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|state[1]~10_combout\,
	asdata => \inst3|state\(0),
	sclr => \y[8]~input_o\,
	sload => \ALT_INV_y[6]~input_o\,
	ena => \inst3|state[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|state\(1));

-- Location: LCCOMB_X26_Y20_N22
\inst6|q[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6|q[1]~1_combout\ = (\y[9]~input_o\ & ((\inst3|state\(1)))) # (!\y[9]~input_o\ & (\inst2|state\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[9]~input_o\,
	datac => \inst2|state\(1),
	datad => \inst3|state\(1),
	combout => \inst6|q[1]~1_combout\);

-- Location: FF_X26_Y20_N9
\inst3|state[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|state[2]~12_combout\,
	asdata => \inst3|state\(1),
	sclr => \y[8]~input_o\,
	sload => \ALT_INV_y[6]~input_o\,
	ena => \inst3|state[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|state\(2));

-- Location: LCCOMB_X27_Y20_N18
\inst4|Equal1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4|Equal1~0_combout\ = (\inst3|state\(3) & (\inst3|state\(0) & (\inst3|state\(1) & \inst3|state\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|state\(3),
	datab => \inst3|state\(0),
	datac => \inst3|state\(1),
	datad => \inst3|state\(4),
	combout => \inst4|Equal1~0_combout\);

-- Location: LCCOMB_X27_Y20_N4
\inst4|Equal1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4|Equal1~1_combout\ = (\inst3|state\(2) & \inst4|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|state\(2),
	datad => \inst4|Equal1~0_combout\,
	combout => \inst4|Equal1~1_combout\);

-- Location: LCCOMB_X27_Y20_N30
\inst4|Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4|Equal0~0_combout\ = (!\inst3|state\(3) & (!\inst3|state\(0) & (!\inst3|state\(1) & !\inst3|state\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|state\(3),
	datab => \inst3|state\(0),
	datac => \inst3|state\(1),
	datad => \inst3|state\(4),
	combout => \inst4|Equal0~0_combout\);

-- Location: LCCOMB_X27_Y20_N14
\inst4|pr[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4|pr[1]~0_combout\ = (\inst3|state\(3) & (!\inst3|state\(4) & ((\inst3|state\(2)) # (!\inst4|Equal0~0_combout\)))) # (!\inst3|state\(3) & ((\inst3|state\(2)) # ((!\inst4|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|state\(3),
	datab => \inst3|state\(2),
	datac => \inst4|Equal0~0_combout\,
	datad => \inst3|state\(4),
	combout => \inst4|pr[1]~0_combout\);

-- Location: IOIBUF_X33_Y16_N15
\y[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(10),
	o => \y[10]~input_o\);

-- Location: FF_X27_Y20_N15
\inst4|d[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|pr[1]~0_combout\,
	ena => \y[10]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|d\(1));

-- Location: LCCOMB_X27_Y20_N24
\inst4|Equal0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4|Equal0~1_combout\ = (\inst3|state\(3)) # (\inst3|state\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|state\(3),
	datad => \inst3|state\(4),
	combout => \inst4|Equal0~1_combout\);

-- Location: FF_X27_Y20_N25
\inst4|d[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|Equal0~1_combout\,
	ena => \y[10]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|d\(0));

ww_f1 <= \f1~output_o\;

ww_f2 <= \f2~output_o\;

ww_f3 <= \f3~output_o\;

ww_rr(7) <= \rr[7]~output_o\;

ww_rr(6) <= \rr[6]~output_o\;

ww_rr(5) <= \rr[5]~output_o\;

ww_rr(4) <= \rr[4]~output_o\;

ww_rr(3) <= \rr[3]~output_o\;

ww_rr(2) <= \rr[2]~output_o\;

ww_rr(1) <= \rr[1]~output_o\;

ww_rr(0) <= \rr[0]~output_o\;

ww_priznak(1) <= \priznak[1]~output_o\;

ww_priznak(0) <= \priznak[0]~output_o\;
END structure;


