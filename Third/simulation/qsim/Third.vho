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

-- DATE "02/28/2023 14:12:04"

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

ENTITY 	BO IS
    PORT (
	a : IN std_logic_vector(3 DOWNTO 0);
	b : IN std_logic_vector(3 DOWNTO 0);
	y : IN std_logic_vector(10 DOWNTO 1);
	RR : BUFFER std_logic_vector(7 DOWNTO 0);
	priznak : OUT std_logic_vector(1 DOWNTO 0);
	f : OUT std_logic_vector(3 DOWNTO 1);
	clk : IN std_logic
	);
END BO;

-- Design Ports Information
-- RR[0]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RR[1]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RR[2]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RR[3]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RR[4]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RR[5]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RR[6]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RR[7]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- priznak[0]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- priznak[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[1]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[2]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[3]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[5]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[4]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[9]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[8]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[6]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[7]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[10]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[3]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[2]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[3]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[2]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[1]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[0]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF BO IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_y : std_logic_vector(10 DOWNTO 1);
SIGNAL ww_RR : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_priznak : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_f : std_logic_vector(3 DOWNTO 1);
SIGNAL ww_clk : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RR[0]~output_o\ : std_logic;
SIGNAL \RR[1]~output_o\ : std_logic;
SIGNAL \RR[2]~output_o\ : std_logic;
SIGNAL \RR[3]~output_o\ : std_logic;
SIGNAL \RR[4]~output_o\ : std_logic;
SIGNAL \RR[5]~output_o\ : std_logic;
SIGNAL \RR[6]~output_o\ : std_logic;
SIGNAL \RR[7]~output_o\ : std_logic;
SIGNAL \priznak[0]~output_o\ : std_logic;
SIGNAL \priznak[1]~output_o\ : std_logic;
SIGNAL \f[1]~output_o\ : std_logic;
SIGNAL \f[2]~output_o\ : std_logic;
SIGNAL \f[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \y[4]~input_o\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \y[1]~input_o\ : std_logic;
SIGNAL \y[5]~input_o\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \y[9]~input_o\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \y[2]~input_o\ : std_logic;
SIGNAL \RB~2_combout\ : std_logic;
SIGNAL \y[3]~input_o\ : std_logic;
SIGNAL \q[0]~0_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \RB~3_combout\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \RR[0]~9\ : std_logic;
SIGNAL \RR[1]~11_combout\ : std_logic;
SIGNAL \y[8]~input_o\ : std_logic;
SIGNAL \y[6]~input_o\ : std_logic;
SIGNAL \y[7]~input_o\ : std_logic;
SIGNAL \RR[0]~10_combout\ : std_logic;
SIGNAL \RR[1]~reg0_q\ : std_logic;
SIGNAL \q[1]~7_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \RR[1]~12\ : std_logic;
SIGNAL \RR[2]~13_combout\ : std_logic;
SIGNAL \RR[2]~reg0_q\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \RB~1_combout\ : std_logic;
SIGNAL \q[2]~6_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \RR[2]~14\ : std_logic;
SIGNAL \RR[3]~15_combout\ : std_logic;
SIGNAL \RR[3]~reg0_q\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \RB[3]~0_combout\ : std_logic;
SIGNAL \q[3]~5_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \RR[3]~16\ : std_logic;
SIGNAL \RR[4]~17_combout\ : std_logic;
SIGNAL \RR[4]~reg0_q\ : std_logic;
SIGNAL \q[4]~4_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \RR[4]~18\ : std_logic;
SIGNAL \RR[5]~19_combout\ : std_logic;
SIGNAL \RR[5]~reg0_q\ : std_logic;
SIGNAL \q[5]~3_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \RR[5]~20\ : std_logic;
SIGNAL \RR[6]~21_combout\ : std_logic;
SIGNAL \RR[6]~reg0_q\ : std_logic;
SIGNAL \q[6]~2_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \RR[6]~22\ : std_logic;
SIGNAL \RR[7]~23_combout\ : std_logic;
SIGNAL \RR[7]~reg0_q\ : std_logic;
SIGNAL \q[7]~1_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \RR[0]~8_combout\ : std_logic;
SIGNAL \RR[0]~reg0_q\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \y[10]~input_o\ : std_logic;
SIGNAL \priznak[0]~reg0_q\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \pr[1]~0_combout\ : std_logic;
SIGNAL \priznak[1]~reg0_q\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL RB : std_logic_vector(3 DOWNTO 0);
SIGNAL RA : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_y[6]~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_a <= a;
ww_b <= b;
ww_y <= y;
RR <= ww_RR;
priznak <= ww_priznak;
f <= ww_f;
ww_clk <= clk;
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

-- Location: IOOBUF_X33_Y24_N2
\RR[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RR[0]~reg0_q\,
	devoe => ww_devoe,
	o => \RR[0]~output_o\);

-- Location: IOOBUF_X33_Y25_N9
\RR[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RR[1]~reg0_q\,
	devoe => ww_devoe,
	o => \RR[1]~output_o\);

-- Location: IOOBUF_X33_Y11_N9
\RR[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RR[2]~reg0_q\,
	devoe => ww_devoe,
	o => \RR[2]~output_o\);

-- Location: IOOBUF_X33_Y27_N2
\RR[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RR[3]~reg0_q\,
	devoe => ww_devoe,
	o => \RR[3]~output_o\);

-- Location: IOOBUF_X33_Y25_N2
\RR[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RR[4]~reg0_q\,
	devoe => ww_devoe,
	o => \RR[4]~output_o\);

-- Location: IOOBUF_X29_Y31_N2
\RR[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RR[5]~reg0_q\,
	devoe => ww_devoe,
	o => \RR[5]~output_o\);

-- Location: IOOBUF_X26_Y31_N2
\RR[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RR[6]~reg0_q\,
	devoe => ww_devoe,
	o => \RR[6]~output_o\);

-- Location: IOOBUF_X33_Y14_N2
\RR[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RR[7]~reg0_q\,
	devoe => ww_devoe,
	o => \RR[7]~output_o\);

-- Location: IOOBUF_X33_Y28_N9
\priznak[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \priznak[0]~reg0_q\,
	devoe => ww_devoe,
	o => \priznak[0]~output_o\);

-- Location: IOOBUF_X33_Y24_N9
\priznak[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \priznak[1]~reg0_q\,
	devoe => ww_devoe,
	o => \priznak[1]~output_o\);

-- Location: IOOBUF_X29_Y31_N9
\f[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => RB(3),
	devoe => ww_devoe,
	o => \f[1]~output_o\);

-- Location: IOOBUF_X22_Y31_N2
\f[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => RB(2),
	devoe => ww_devoe,
	o => \f[2]~output_o\);

-- Location: IOOBUF_X31_Y31_N9
\f[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal1~1_combout\,
	devoe => ww_devoe,
	o => \f[3]~output_o\);

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

-- Location: IOIBUF_X33_Y11_N1
\y[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(4),
	o => \y[4]~input_o\);

-- Location: IOIBUF_X33_Y15_N1
\a[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: IOIBUF_X33_Y16_N8
\y[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(1),
	o => \y[1]~input_o\);

-- Location: FF_X32_Y22_N1
\RA[0]\ : dffeas
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
	q => RA(0));

-- Location: IOIBUF_X33_Y14_N8
\y[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(5),
	o => \y[5]~input_o\);

-- Location: LCCOMB_X32_Y22_N0
\Mux7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\y[4]~input_o\ & ((\y[5]~input_o\) # (!RA(0)))) # (!\y[4]~input_o\ & ((RA(0)) # (!\y[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y[4]~input_o\,
	datac => RA(0),
	datad => \y[5]~input_o\,
	combout => \Mux7~0_combout\);

-- Location: IOIBUF_X33_Y27_N8
\y[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(9),
	o => \y[9]~input_o\);

-- Location: IOIBUF_X33_Y16_N1
\b[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

-- Location: IOIBUF_X33_Y22_N1
\y[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(2),
	o => \y[2]~input_o\);

-- Location: LCCOMB_X32_Y22_N2
\RB~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RB~2_combout\ = (\b[0]~input_o\ & \y[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datad => \y[2]~input_o\,
	combout => \RB~2_combout\);

-- Location: IOIBUF_X33_Y16_N22
\y[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(3),
	o => \y[3]~input_o\);

-- Location: FF_X32_Y22_N3
\RB[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RB~2_combout\,
	ena => \y[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RB(0));

-- Location: LCCOMB_X32_Y22_N8
\q[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \q[0]~0_combout\ = (\y[9]~input_o\ & (\RR[0]~reg0_q\)) # (!\y[9]~input_o\ & ((RB(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y[9]~input_o\,
	datac => \RR[0]~reg0_q\,
	datad => RB(0),
	combout => \q[0]~0_combout\);

-- Location: LCCOMB_X32_Y22_N10
\Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\Mux7~0_combout\ & (\q[0]~0_combout\ & VCC)) # (!\Mux7~0_combout\ & (\q[0]~0_combout\ $ (VCC)))
-- \Add0~1\ = CARRY((!\Mux7~0_combout\ & \q[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~0_combout\,
	datab => \q[0]~0_combout\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: IOIBUF_X33_Y12_N8
\a[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: FF_X32_Y22_N7
\RA[3]\ : dffeas
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
	q => RA(3));

-- Location: LCCOMB_X32_Y22_N6
\Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\y[4]~input_o\ & ((\y[5]~input_o\) # (!RA(3)))) # (!\y[4]~input_o\ & ((RA(3)) # (!\y[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y[4]~input_o\,
	datac => RA(3),
	datad => \y[5]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: IOIBUF_X33_Y12_N1
\a[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: FF_X32_Y22_N5
\RA[2]\ : dffeas
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
	q => RA(2));

-- Location: LCCOMB_X32_Y22_N4
\Mux5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\y[4]~input_o\ & ((\y[5]~input_o\) # (!RA(2)))) # (!\y[4]~input_o\ & ((RA(2)) # (!\y[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y[4]~input_o\,
	datac => RA(2),
	datad => \y[5]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: IOIBUF_X24_Y31_N8
\b[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

-- Location: LCCOMB_X31_Y22_N26
\RB~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RB~3_combout\ = (\y[2]~input_o\ & (\b[1]~input_o\)) # (!\y[2]~input_o\ & ((RB(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[2]~input_o\,
	datac => \b[1]~input_o\,
	datad => RB(0),
	combout => \RB~3_combout\);

-- Location: FF_X32_Y22_N31
\RB[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RB~3_combout\,
	sload => VCC,
	ena => \y[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RB(1));

-- Location: IOIBUF_X33_Y22_N8
\a[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: FF_X32_Y22_N29
\RA[1]\ : dffeas
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
	q => RA(1));

-- Location: LCCOMB_X32_Y22_N28
\Mux6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\y[4]~input_o\ & ((\y[5]~input_o\) # (!RA(1)))) # (!\y[4]~input_o\ & ((RA(1)) # (!\y[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y[4]~input_o\,
	datac => RA(1),
	datad => \y[5]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X32_Y22_N12
\Add0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\q[1]~7_combout\ & ((\Mux6~0_combout\ & (!\Add0~1\)) # (!\Mux6~0_combout\ & (\Add0~1\ & VCC)))) # (!\q[1]~7_combout\ & ((\Mux6~0_combout\ & ((\Add0~1\) # (GND))) # (!\Mux6~0_combout\ & (!\Add0~1\))))
-- \Add0~3\ = CARRY((\q[1]~7_combout\ & (\Mux6~0_combout\ & !\Add0~1\)) # (!\q[1]~7_combout\ & ((\Mux6~0_combout\) # (!\Add0~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \q[1]~7_combout\,
	datab => \Mux6~0_combout\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X31_Y22_N4
\RR[0]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RR[0]~8_combout\ = (\Add0~0_combout\ & (\Add0~16_combout\ $ (VCC))) # (!\Add0~0_combout\ & (\Add0~16_combout\ & VCC))
-- \RR[0]~9\ = CARRY((\Add0~0_combout\ & \Add0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Add0~16_combout\,
	datad => VCC,
	combout => \RR[0]~8_combout\,
	cout => \RR[0]~9\);

-- Location: LCCOMB_X31_Y22_N6
\RR[1]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RR[1]~11_combout\ = (\Add0~2_combout\ & (!\RR[0]~9\)) # (!\Add0~2_combout\ & ((\RR[0]~9\) # (GND)))
-- \RR[1]~12\ = CARRY((!\RR[0]~9\) # (!\Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~2_combout\,
	datad => VCC,
	cin => \RR[0]~9\,
	combout => \RR[1]~11_combout\,
	cout => \RR[1]~12\);

-- Location: IOIBUF_X24_Y31_N1
\y[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(8),
	o => \y[8]~input_o\);

-- Location: IOIBUF_X31_Y31_N1
\y[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(6),
	o => \y[6]~input_o\);

-- Location: IOIBUF_X26_Y31_N8
\y[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(7),
	o => \y[7]~input_o\);

-- Location: LCCOMB_X27_Y26_N4
\RR[0]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RR[0]~10_combout\ = (\y[8]~input_o\) # (\y[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[8]~input_o\,
	datac => \y[7]~input_o\,
	combout => \RR[0]~10_combout\);

-- Location: FF_X31_Y22_N7
\RR[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RR[1]~11_combout\,
	asdata => \RR[0]~reg0_q\,
	sclr => \y[8]~input_o\,
	sload => \ALT_INV_y[6]~input_o\,
	ena => \RR[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RR[1]~reg0_q\);

-- Location: LCCOMB_X32_Y22_N30
\q[1]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \q[1]~7_combout\ = (\y[9]~input_o\ & ((\RR[1]~reg0_q\))) # (!\y[9]~input_o\ & (RB(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y[9]~input_o\,
	datac => RB(1),
	datad => \RR[1]~reg0_q\,
	combout => \q[1]~7_combout\);

-- Location: LCCOMB_X32_Y22_N14
\Add0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((\q[2]~6_combout\ $ (\Mux5~0_combout\ $ (\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((\q[2]~6_combout\ & ((!\Add0~3\) # (!\Mux5~0_combout\))) # (!\q[2]~6_combout\ & (!\Mux5~0_combout\ & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \q[2]~6_combout\,
	datab => \Mux5~0_combout\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X31_Y22_N8
\RR[2]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RR[2]~13_combout\ = (\Add0~4_combout\ & (\RR[1]~12\ $ (GND))) # (!\Add0~4_combout\ & (!\RR[1]~12\ & VCC))
-- \RR[2]~14\ = CARRY((\Add0~4_combout\ & !\RR[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~4_combout\,
	datad => VCC,
	cin => \RR[1]~12\,
	combout => \RR[2]~13_combout\,
	cout => \RR[2]~14\);

-- Location: FF_X31_Y22_N9
\RR[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RR[2]~13_combout\,
	asdata => \RR[1]~reg0_q\,
	sclr => \y[8]~input_o\,
	sload => \ALT_INV_y[6]~input_o\,
	ena => \RR[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RR[2]~reg0_q\);

-- Location: IOIBUF_X33_Y16_N15
\b[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

-- Location: LCCOMB_X31_Y22_N0
\RB~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RB~1_combout\ = (\y[2]~input_o\ & (\b[2]~input_o\)) # (!\y[2]~input_o\ & ((RB(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datac => RB(1),
	datad => \y[2]~input_o\,
	combout => \RB~1_combout\);

-- Location: FF_X31_Y22_N1
\RB[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RB~1_combout\,
	ena => \y[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RB(2));

-- Location: LCCOMB_X31_Y22_N2
\q[2]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \q[2]~6_combout\ = (\y[9]~input_o\ & (\RR[2]~reg0_q\)) # (!\y[9]~input_o\ & ((RB(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[9]~input_o\,
	datac => \RR[2]~reg0_q\,
	datad => RB(2),
	combout => \q[2]~6_combout\);

-- Location: LCCOMB_X32_Y22_N16
\Add0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\Mux0~0_combout\ & ((\q[3]~5_combout\ & (!\Add0~5\)) # (!\q[3]~5_combout\ & ((\Add0~5\) # (GND))))) # (!\Mux0~0_combout\ & ((\q[3]~5_combout\ & (\Add0~5\ & VCC)) # (!\q[3]~5_combout\ & (!\Add0~5\))))
-- \Add0~7\ = CARRY((\Mux0~0_combout\ & ((!\Add0~5\) # (!\q[3]~5_combout\))) # (!\Mux0~0_combout\ & (!\q[3]~5_combout\ & !\Add0~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \q[3]~5_combout\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X31_Y22_N10
\RR[3]~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RR[3]~15_combout\ = (\Add0~6_combout\ & (!\RR[2]~14\)) # (!\Add0~6_combout\ & ((\RR[2]~14\) # (GND)))
-- \RR[3]~16\ = CARRY((!\RR[2]~14\) # (!\Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~6_combout\,
	datad => VCC,
	cin => \RR[2]~14\,
	combout => \RR[3]~15_combout\,
	cout => \RR[3]~16\);

-- Location: FF_X31_Y22_N11
\RR[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RR[3]~15_combout\,
	asdata => \RR[2]~reg0_q\,
	sclr => \y[8]~input_o\,
	sload => \ALT_INV_y[6]~input_o\,
	ena => \RR[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RR[3]~reg0_q\);

-- Location: IOIBUF_X33_Y15_N8
\b[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(3),
	o => \b[3]~input_o\);

-- Location: LCCOMB_X30_Y22_N8
\RB[3]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RB[3]~0_combout\ = (\y[3]~input_o\ & ((\y[2]~input_o\ & (\b[3]~input_o\)) # (!\y[2]~input_o\ & ((RB(3)))))) # (!\y[3]~input_o\ & (((RB(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[3]~input_o\,
	datab => \b[3]~input_o\,
	datac => RB(3),
	datad => \y[2]~input_o\,
	combout => \RB[3]~0_combout\);

-- Location: FF_X30_Y22_N9
\RB[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RB[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RB(3));

-- Location: LCCOMB_X31_Y22_N20
\q[3]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \q[3]~5_combout\ = (\y[9]~input_o\ & (\RR[3]~reg0_q\)) # (!\y[9]~input_o\ & ((RB(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR[3]~reg0_q\,
	datac => \y[9]~input_o\,
	datad => RB(3),
	combout => \q[3]~5_combout\);

-- Location: LCCOMB_X32_Y22_N18
\Add0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = ((\Mux0~0_combout\ $ (\q[4]~4_combout\ $ (\Add0~7\)))) # (GND)
-- \Add0~9\ = CARRY((\Mux0~0_combout\ & (\q[4]~4_combout\ & !\Add0~7\)) # (!\Mux0~0_combout\ & ((\q[4]~4_combout\) # (!\Add0~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \q[4]~4_combout\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X31_Y22_N12
\RR[4]~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RR[4]~17_combout\ = (\Add0~8_combout\ & (\RR[3]~16\ $ (GND))) # (!\Add0~8_combout\ & (!\RR[3]~16\ & VCC))
-- \RR[4]~18\ = CARRY((\Add0~8_combout\ & !\RR[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~8_combout\,
	datad => VCC,
	cin => \RR[3]~16\,
	combout => \RR[4]~17_combout\,
	cout => \RR[4]~18\);

-- Location: FF_X31_Y22_N13
\RR[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RR[4]~17_combout\,
	asdata => \RR[3]~reg0_q\,
	sclr => \y[8]~input_o\,
	sload => \ALT_INV_y[6]~input_o\,
	ena => \RR[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RR[4]~reg0_q\);

-- Location: LCCOMB_X31_Y22_N24
\q[4]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \q[4]~4_combout\ = (\y[9]~input_o\ & (\RR[4]~reg0_q\)) # (!\y[9]~input_o\ & ((RB(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR[4]~reg0_q\,
	datac => \y[9]~input_o\,
	datad => RB(3),
	combout => \q[4]~4_combout\);

-- Location: LCCOMB_X32_Y22_N20
\Add0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\Mux0~0_combout\ & ((\q[5]~3_combout\ & (!\Add0~9\)) # (!\q[5]~3_combout\ & ((\Add0~9\) # (GND))))) # (!\Mux0~0_combout\ & ((\q[5]~3_combout\ & (\Add0~9\ & VCC)) # (!\q[5]~3_combout\ & (!\Add0~9\))))
-- \Add0~11\ = CARRY((\Mux0~0_combout\ & ((!\Add0~9\) # (!\q[5]~3_combout\))) # (!\Mux0~0_combout\ & (!\q[5]~3_combout\ & !\Add0~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \q[5]~3_combout\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X31_Y22_N14
\RR[5]~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RR[5]~19_combout\ = (\Add0~10_combout\ & (!\RR[4]~18\)) # (!\Add0~10_combout\ & ((\RR[4]~18\) # (GND)))
-- \RR[5]~20\ = CARRY((!\RR[4]~18\) # (!\Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datad => VCC,
	cin => \RR[4]~18\,
	combout => \RR[5]~19_combout\,
	cout => \RR[5]~20\);

-- Location: FF_X31_Y22_N15
\RR[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RR[5]~19_combout\,
	asdata => \RR[4]~reg0_q\,
	sclr => \y[8]~input_o\,
	sload => \ALT_INV_y[6]~input_o\,
	ena => \RR[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RR[5]~reg0_q\);

-- Location: LCCOMB_X31_Y22_N28
\q[5]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \q[5]~3_combout\ = (\y[9]~input_o\ & (\RR[5]~reg0_q\)) # (!\y[9]~input_o\ & ((RB(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[9]~input_o\,
	datac => \RR[5]~reg0_q\,
	datad => RB(3),
	combout => \q[5]~3_combout\);

-- Location: LCCOMB_X32_Y22_N22
\Add0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = ((\Mux0~0_combout\ $ (\q[6]~2_combout\ $ (\Add0~11\)))) # (GND)
-- \Add0~13\ = CARRY((\Mux0~0_combout\ & (\q[6]~2_combout\ & !\Add0~11\)) # (!\Mux0~0_combout\ & ((\q[6]~2_combout\) # (!\Add0~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \q[6]~2_combout\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X31_Y22_N16
\RR[6]~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RR[6]~21_combout\ = (\Add0~12_combout\ & (\RR[5]~20\ $ (GND))) # (!\Add0~12_combout\ & (!\RR[5]~20\ & VCC))
-- \RR[6]~22\ = CARRY((\Add0~12_combout\ & !\RR[5]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~12_combout\,
	datad => VCC,
	cin => \RR[5]~20\,
	combout => \RR[6]~21_combout\,
	cout => \RR[6]~22\);

-- Location: FF_X31_Y22_N17
\RR[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RR[6]~21_combout\,
	asdata => \RR[5]~reg0_q\,
	sclr => \y[8]~input_o\,
	sload => \ALT_INV_y[6]~input_o\,
	ena => \RR[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RR[6]~reg0_q\);

-- Location: LCCOMB_X31_Y22_N30
\q[6]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \q[6]~2_combout\ = (\y[9]~input_o\ & (\RR[6]~reg0_q\)) # (!\y[9]~input_o\ & ((RB(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RR[6]~reg0_q\,
	datac => \y[9]~input_o\,
	datad => RB(3),
	combout => \q[6]~2_combout\);

-- Location: LCCOMB_X32_Y22_N24
\Add0~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\Mux0~0_combout\ & ((\q[7]~1_combout\ & (!\Add0~13\)) # (!\q[7]~1_combout\ & ((\Add0~13\) # (GND))))) # (!\Mux0~0_combout\ & ((\q[7]~1_combout\ & (\Add0~13\ & VCC)) # (!\q[7]~1_combout\ & (!\Add0~13\))))
-- \Add0~15\ = CARRY((\Mux0~0_combout\ & ((!\Add0~13\) # (!\q[7]~1_combout\))) # (!\Mux0~0_combout\ & (!\q[7]~1_combout\ & !\Add0~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \q[7]~1_combout\,
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X31_Y22_N18
\RR[7]~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RR[7]~23_combout\ = \Add0~14_combout\ $ (\RR[6]~22\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	cin => \RR[6]~22\,
	combout => \RR[7]~23_combout\);

-- Location: FF_X31_Y22_N19
\RR[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RR[7]~23_combout\,
	asdata => \RR[6]~reg0_q\,
	sclr => \y[8]~input_o\,
	sload => \ALT_INV_y[6]~input_o\,
	ena => \RR[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RR[7]~reg0_q\);

-- Location: LCCOMB_X31_Y22_N22
\q[7]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \q[7]~1_combout\ = (\y[9]~input_o\ & (\RR[7]~reg0_q\)) # (!\y[9]~input_o\ & ((RB(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RR[7]~reg0_q\,
	datac => \y[9]~input_o\,
	datad => RB(3),
	combout => \q[7]~1_combout\);

-- Location: LCCOMB_X32_Y22_N26
\Add0~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = !\Add0~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add0~15\,
	combout => \Add0~16_combout\);

-- Location: FF_X31_Y22_N5
\RR[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RR[0]~8_combout\,
	asdata => \RR[7]~reg0_q\,
	sclr => \y[8]~input_o\,
	sload => \ALT_INV_y[6]~input_o\,
	ena => \RR[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RR[0]~reg0_q\);

-- Location: LCCOMB_X32_Y24_N16
\Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\RR[4]~reg0_q\) # (\RR[3]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RR[4]~reg0_q\,
	datad => \RR[3]~reg0_q\,
	combout => \Equal0~0_combout\);

-- Location: IOIBUF_X33_Y28_N1
\y[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(10),
	o => \y[10]~input_o\);

-- Location: FF_X32_Y24_N17
\priznak[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Equal0~0_combout\,
	ena => \y[10]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \priznak[0]~reg0_q\);

-- Location: LCCOMB_X31_Y24_N24
\Equal0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\RR[1]~reg0_q\ & !\RR[0]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RR[1]~reg0_q\,
	datad => \RR[0]~reg0_q\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X32_Y24_N18
\pr[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \pr[1]~0_combout\ = (\RR[3]~reg0_q\ & (((!\RR[4]~reg0_q\)))) # (!\RR[3]~reg0_q\ & (((\RR[4]~reg0_q\) # (\RR[2]~reg0_q\)) # (!\Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR[3]~reg0_q\,
	datab => \Equal0~1_combout\,
	datac => \RR[4]~reg0_q\,
	datad => \RR[2]~reg0_q\,
	combout => \pr[1]~0_combout\);

-- Location: FF_X32_Y24_N19
\priznak[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pr[1]~0_combout\,
	ena => \y[10]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \priznak[1]~reg0_q\);

-- Location: LCCOMB_X32_Y24_N28
\Equal1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (\RR[0]~reg0_q\ & (\RR[1]~reg0_q\ & (\RR[4]~reg0_q\ & \RR[3]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR[0]~reg0_q\,
	datab => \RR[1]~reg0_q\,
	datac => \RR[4]~reg0_q\,
	datad => \RR[3]~reg0_q\,
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X32_Y24_N2
\Equal1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (\RR[2]~reg0_q\ & \Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RR[2]~reg0_q\,
	datad => \Equal1~0_combout\,
	combout => \Equal1~1_combout\);

ww_RR(0) <= \RR[0]~output_o\;

ww_RR(1) <= \RR[1]~output_o\;

ww_RR(2) <= \RR[2]~output_o\;

ww_RR(3) <= \RR[3]~output_o\;

ww_RR(4) <= \RR[4]~output_o\;

ww_RR(5) <= \RR[5]~output_o\;

ww_RR(6) <= \RR[6]~output_o\;

ww_RR(7) <= \RR[7]~output_o\;

ww_priznak(0) <= \priznak[0]~output_o\;

ww_priznak(1) <= \priznak[1]~output_o\;

ww_f(1) <= \f[1]~output_o\;

ww_f(2) <= \f[2]~output_o\;

ww_f(3) <= \f[3]~output_o\;
END structure;


