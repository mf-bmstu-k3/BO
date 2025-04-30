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

-- DATE "02/28/2023 12:34:20"

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

ENTITY 	blok_oper_sch IS
    PORT (
	f1 : OUT std_logic;
	y : IN std_logic_vector(10 DOWNTO 1);
	clk : IN std_logic;
	b : IN std_logic_vector(3 DOWNTO 0);
	f2 : OUT std_logic;
	f3 : OUT std_logic;
	a : IN std_logic_vector(3 DOWNTO 0);
	pr : OUT std_logic_vector(0 TO 1);
	rr : OUT std_logic_vector(7 DOWNTO 0)
	);
END blok_oper_sch;

-- Design Ports Information
-- f1	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f2	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f3	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr[0]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr[1]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rr[7]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rr[6]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rr[5]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rr[4]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rr[3]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rr[2]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rr[1]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rr[0]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[3]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[2]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[3]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[2]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[9]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[4]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[5]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[6]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[8]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[7]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[10]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[1]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[0]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF blok_oper_sch IS
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
SIGNAL ww_a : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_pr : std_logic_vector(0 TO 1);
SIGNAL ww_rr : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \f1~output_o\ : std_logic;
SIGNAL \f2~output_o\ : std_logic;
SIGNAL \f3~output_o\ : std_logic;
SIGNAL \pr[0]~output_o\ : std_logic;
SIGNAL \pr[1]~output_o\ : std_logic;
SIGNAL \rr[7]~output_o\ : std_logic;
SIGNAL \rr[6]~output_o\ : std_logic;
SIGNAL \rr[5]~output_o\ : std_logic;
SIGNAL \rr[4]~output_o\ : std_logic;
SIGNAL \rr[3]~output_o\ : std_logic;
SIGNAL \rr[2]~output_o\ : std_logic;
SIGNAL \rr[1]~output_o\ : std_logic;
SIGNAL \rr[0]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \y[2]~input_o\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \inst1|lpm_shiftreg_component|_~0_combout\ : std_logic;
SIGNAL \y[3]~input_o\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \inst1|lpm_shiftreg_component|_~3_combout\ : std_logic;
SIGNAL \inst1|lpm_shiftreg_component|_~2_combout\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \inst1|lpm_shiftreg_component|_~1_combout\ : std_logic;
SIGNAL \y[8]~input_o\ : std_logic;
SIGNAL \y[6]~input_o\ : std_logic;
SIGNAL \y[5]~input_o\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \y[1]~input_o\ : std_logic;
SIGNAL \y[4]~input_o\ : std_logic;
SIGNAL \inst8|inst28~0_combout\ : std_logic;
SIGNAL \y[9]~input_o\ : std_logic;
SIGNAL \inst10|inst22~0_combout\ : std_logic;
SIGNAL \inst10|inst21~0_combout\ : std_logic;
SIGNAL \inst10|inst~0_combout\ : std_logic;
SIGNAL \inst10|inst24~0_combout\ : std_logic;
SIGNAL \inst10|inst20~0_combout\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \inst8|inst23~0_combout\ : std_logic;
SIGNAL \inst10|inst25~0_combout\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \inst8|inst22~0_combout\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \inst8|inst9~0_combout\ : std_logic;
SIGNAL \inst10|inst26~0_combout\ : std_logic;
SIGNAL \inst10|inst23~0_combout\ : std_logic;
SIGNAL \inst4|LPM_ADD_SUB_component|auto_generated|result_int[7]~16\ : std_logic;
SIGNAL \inst4|LPM_ADD_SUB_component|auto_generated|result_int[8]~18\ : std_logic;
SIGNAL \inst4|LPM_ADD_SUB_component|auto_generated|result_int[9]~19_combout\ : std_logic;
SIGNAL \inst4|LPM_ADD_SUB_component|auto_generated|result_int[0]~2_cout\ : std_logic;
SIGNAL \inst4|LPM_ADD_SUB_component|auto_generated|result_int[1]~4\ : std_logic;
SIGNAL \inst4|LPM_ADD_SUB_component|auto_generated|result_int[2]~6\ : std_logic;
SIGNAL \inst4|LPM_ADD_SUB_component|auto_generated|result_int[3]~8\ : std_logic;
SIGNAL \inst4|LPM_ADD_SUB_component|auto_generated|result_int[4]~10\ : std_logic;
SIGNAL \inst4|LPM_ADD_SUB_component|auto_generated|result_int[5]~12\ : std_logic;
SIGNAL \inst4|LPM_ADD_SUB_component|auto_generated|result_int[6]~14\ : std_logic;
SIGNAL \inst4|LPM_ADD_SUB_component|auto_generated|result_int[7]~15_combout\ : std_logic;
SIGNAL \inst6|lpm_shiftreg_component|dffs[6]~5_combout\ : std_logic;
SIGNAL \y[7]~input_o\ : std_logic;
SIGNAL \inst4|LPM_ADD_SUB_component|auto_generated|result_int[8]~17_combout\ : std_logic;
SIGNAL \inst6|lpm_shiftreg_component|dffs[7]~4_combout\ : std_logic;
SIGNAL \inst4|LPM_ADD_SUB_component|auto_generated|result_int[1]~3_combout\ : std_logic;
SIGNAL \inst6|lpm_shiftreg_component|dffs[0]~3_combout\ : std_logic;
SIGNAL \inst4|LPM_ADD_SUB_component|auto_generated|result_int[2]~5_combout\ : std_logic;
SIGNAL \inst6|lpm_shiftreg_component|dffs[1]~2_combout\ : std_logic;
SIGNAL \inst4|LPM_ADD_SUB_component|auto_generated|result_int[3]~7_combout\ : std_logic;
SIGNAL \inst6|lpm_shiftreg_component|dffs[2]~1_combout\ : std_logic;
SIGNAL \inst4|LPM_ADD_SUB_component|auto_generated|result_int[4]~9_combout\ : std_logic;
SIGNAL \inst6|lpm_shiftreg_component|dffs[3]~0_combout\ : std_logic;
SIGNAL \inst4|LPM_ADD_SUB_component|auto_generated|result_int[5]~11_combout\ : std_logic;
SIGNAL \inst6|lpm_shiftreg_component|dffs[4]~7_combout\ : std_logic;
SIGNAL \inst4|LPM_ADD_SUB_component|auto_generated|result_int[6]~13_combout\ : std_logic;
SIGNAL \inst6|lpm_shiftreg_component|dffs[5]~6_combout\ : std_logic;
SIGNAL \inst11|inst27~1_combout\ : std_logic;
SIGNAL \inst11|inst27~0_combout\ : std_logic;
SIGNAL \inst11|inst27~combout\ : std_logic;
SIGNAL \inst11|inst16~0_combout\ : std_logic;
SIGNAL \inst11|inst16~1_combout\ : std_logic;
SIGNAL \y[10]~input_o\ : std_logic;
SIGNAL \inst11|inst8~0_combout\ : std_logic;
SIGNAL \inst|lpm_ff_component|dffs\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|lpm_shiftreg_component|dffs\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst6|lpm_shiftreg_component|dffs\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst16|lpm_ff_component|dffs\ : std_logic_vector(1 DOWNTO 0);

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
ww_a <= a;
pr <= ww_pr;
rr <= ww_rr;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X33_Y28_N2
\f1~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|lpm_shiftreg_component|dffs\(0),
	devoe => ww_devoe,
	o => \f1~output_o\);

-- Location: IOOBUF_X33_Y11_N9
\f2~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|lpm_shiftreg_component|dffs\(3),
	devoe => ww_devoe,
	o => \f2~output_o\);

-- Location: IOOBUF_X26_Y31_N2
\f3~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|inst27~combout\,
	devoe => ww_devoe,
	o => \f3~output_o\);

-- Location: IOOBUF_X33_Y12_N9
\pr[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|lpm_ff_component|dffs\(1),
	devoe => ww_devoe,
	o => \pr[0]~output_o\);

-- Location: IOOBUF_X26_Y0_N9
\pr[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|lpm_ff_component|dffs\(0),
	devoe => ww_devoe,
	o => \pr[1]~output_o\);

-- Location: IOOBUF_X33_Y24_N9
\rr[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|lpm_shiftreg_component|dffs\(7),
	devoe => ww_devoe,
	o => \rr[7]~output_o\);

-- Location: IOOBUF_X33_Y25_N9
\rr[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|lpm_shiftreg_component|dffs\(6),
	devoe => ww_devoe,
	o => \rr[6]~output_o\);

-- Location: IOOBUF_X29_Y31_N2
\rr[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|lpm_shiftreg_component|dffs\(5),
	devoe => ww_devoe,
	o => \rr[5]~output_o\);

-- Location: IOOBUF_X33_Y14_N2
\rr[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|lpm_shiftreg_component|dffs\(4),
	devoe => ww_devoe,
	o => \rr[4]~output_o\);

-- Location: IOOBUF_X33_Y24_N2
\rr[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|lpm_shiftreg_component|dffs\(3),
	devoe => ww_devoe,
	o => \rr[3]~output_o\);

-- Location: IOOBUF_X33_Y15_N2
\rr[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|lpm_shiftreg_component|dffs\(2),
	devoe => ww_devoe,
	o => \rr[2]~output_o\);

-- Location: IOOBUF_X33_Y14_N9
\rr[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|lpm_shiftreg_component|dffs\(1),
	devoe => ww_devoe,
	o => \rr[1]~output_o\);

-- Location: IOOBUF_X33_Y25_N2
\rr[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|lpm_shiftreg_component|dffs\(0),
	devoe => ww_devoe,
	o => \rr[0]~output_o\);

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

-- Location: IOIBUF_X33_Y22_N8
\y[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(2),
	o => \y[2]~input_o\);

-- Location: IOIBUF_X26_Y31_N8
\b[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(3),
	o => \b[3]~input_o\);

-- Location: LCCOMB_X30_Y19_N28
\inst1|lpm_shiftreg_component|_~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|lpm_shiftreg_component|_~0_combout\ = (\y[2]~input_o\ & ((\b[3]~input_o\))) # (!\y[2]~input_o\ & (\inst1|lpm_shiftreg_component|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y[2]~input_o\,
	datac => \inst1|lpm_shiftreg_component|dffs\(0),
	datad => \b[3]~input_o\,
	combout => \inst1|lpm_shiftreg_component|_~0_combout\);

-- Location: IOIBUF_X31_Y31_N1
\y[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(3),
	o => \y[3]~input_o\);

-- Location: FF_X30_Y19_N29
\inst1|lpm_shiftreg_component|dffs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|lpm_shiftreg_component|_~0_combout\,
	ena => \y[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|lpm_shiftreg_component|dffs\(0));

-- Location: IOIBUF_X29_Y31_N8
\b[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

-- Location: IOIBUF_X31_Y31_N8
\b[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

-- Location: LCCOMB_X30_Y19_N10
\inst1|lpm_shiftreg_component|_~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|lpm_shiftreg_component|_~3_combout\ = (\y[2]~input_o\ & ((\b[0]~input_o\))) # (!\y[2]~input_o\ & (\inst1|lpm_shiftreg_component|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lpm_shiftreg_component|dffs\(0),
	datab => \b[0]~input_o\,
	datac => \y[2]~input_o\,
	combout => \inst1|lpm_shiftreg_component|_~3_combout\);

-- Location: FF_X30_Y19_N11
\inst1|lpm_shiftreg_component|dffs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|lpm_shiftreg_component|_~3_combout\,
	ena => \y[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|lpm_shiftreg_component|dffs\(1));

-- Location: LCCOMB_X29_Y19_N16
\inst1|lpm_shiftreg_component|_~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|lpm_shiftreg_component|_~2_combout\ = (\y[2]~input_o\ & (\b[1]~input_o\)) # (!\y[2]~input_o\ & ((\inst1|lpm_shiftreg_component|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[1]~input_o\,
	datac => \inst1|lpm_shiftreg_component|dffs\(1),
	datad => \y[2]~input_o\,
	combout => \inst1|lpm_shiftreg_component|_~2_combout\);

-- Location: FF_X30_Y19_N1
\inst1|lpm_shiftreg_component|dffs[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|lpm_shiftreg_component|_~2_combout\,
	sload => VCC,
	ena => \y[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|lpm_shiftreg_component|dffs\(2));

-- Location: IOIBUF_X33_Y27_N1
\b[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

-- Location: LCCOMB_X30_Y19_N14
\inst1|lpm_shiftreg_component|_~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|lpm_shiftreg_component|_~1_combout\ = (\y[2]~input_o\ & ((\b[2]~input_o\))) # (!\y[2]~input_o\ & (\inst1|lpm_shiftreg_component|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|lpm_shiftreg_component|dffs\(2),
	datac => \y[2]~input_o\,
	datad => \b[2]~input_o\,
	combout => \inst1|lpm_shiftreg_component|_~1_combout\);

-- Location: FF_X30_Y19_N15
\inst1|lpm_shiftreg_component|dffs[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|lpm_shiftreg_component|_~1_combout\,
	ena => \y[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|lpm_shiftreg_component|dffs\(3));

-- Location: IOIBUF_X33_Y22_N1
\y[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(8),
	o => \y[8]~input_o\);

-- Location: IOIBUF_X33_Y10_N1
\y[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(6),
	o => \y[6]~input_o\);

-- Location: IOIBUF_X33_Y10_N8
\y[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(5),
	o => \y[5]~input_o\);

-- Location: IOIBUF_X33_Y16_N8
\a[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

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

-- Location: FF_X31_Y19_N27
\inst|lpm_ff_component|dffs[3]\ : dffeas
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
	q => \inst|lpm_ff_component|dffs\(3));

-- Location: IOIBUF_X33_Y28_N8
\y[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(4),
	o => \y[4]~input_o\);

-- Location: LCCOMB_X31_Y19_N26
\inst8|inst28~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst8|inst28~0_combout\ = (\y[5]~input_o\ & (!\inst|lpm_ff_component|dffs\(3) & !\y[4]~input_o\)) # (!\y[5]~input_o\ & (\inst|lpm_ff_component|dffs\(3) & \y[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[5]~input_o\,
	datac => \inst|lpm_ff_component|dffs\(3),
	datad => \y[4]~input_o\,
	combout => \inst8|inst28~0_combout\);

-- Location: IOIBUF_X33_Y15_N8
\y[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(9),
	o => \y[9]~input_o\);

-- Location: LCCOMB_X30_Y19_N24
\inst10|inst22~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst10|inst22~0_combout\ = (\y[9]~input_o\ & (\inst6|lpm_shiftreg_component|dffs\(6))) # (!\y[9]~input_o\ & ((\inst1|lpm_shiftreg_component|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y[9]~input_o\,
	datac => \inst6|lpm_shiftreg_component|dffs\(6),
	datad => \inst1|lpm_shiftreg_component|dffs\(0),
	combout => \inst10|inst22~0_combout\);

-- Location: LCCOMB_X30_Y19_N18
\inst10|inst21~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst10|inst21~0_combout\ = (\y[9]~input_o\ & (\inst6|lpm_shiftreg_component|dffs\(5))) # (!\y[9]~input_o\ & ((\inst1|lpm_shiftreg_component|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y[9]~input_o\,
	datac => \inst6|lpm_shiftreg_component|dffs\(5),
	datad => \inst1|lpm_shiftreg_component|dffs\(0),
	combout => \inst10|inst21~0_combout\);

-- Location: LCCOMB_X30_Y19_N4
\inst10|inst~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst10|inst~0_combout\ = (\y[9]~input_o\ & ((\inst6|lpm_shiftreg_component|dffs\(4)))) # (!\y[9]~input_o\ & (\inst1|lpm_shiftreg_component|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y[9]~input_o\,
	datac => \inst1|lpm_shiftreg_component|dffs\(0),
	datad => \inst6|lpm_shiftreg_component|dffs\(4),
	combout => \inst10|inst~0_combout\);

-- Location: LCCOMB_X30_Y19_N2
\inst10|inst24~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst10|inst24~0_combout\ = (\y[9]~input_o\ & (\inst6|lpm_shiftreg_component|dffs\(3))) # (!\y[9]~input_o\ & ((\inst1|lpm_shiftreg_component|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y[9]~input_o\,
	datac => \inst6|lpm_shiftreg_component|dffs\(3),
	datad => \inst1|lpm_shiftreg_component|dffs\(0),
	combout => \inst10|inst24~0_combout\);

-- Location: LCCOMB_X30_Y19_N16
\inst10|inst20~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst10|inst20~0_combout\ = (\y[9]~input_o\ & ((\inst6|lpm_shiftreg_component|dffs\(2)))) # (!\y[9]~input_o\ & (\inst1|lpm_shiftreg_component|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y[9]~input_o\,
	datac => \inst1|lpm_shiftreg_component|dffs\(3),
	datad => \inst6|lpm_shiftreg_component|dffs\(2),
	combout => \inst10|inst20~0_combout\);

-- Location: IOIBUF_X33_Y27_N8
\a[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: FF_X32_Y19_N25
\inst|lpm_ff_component|dffs[2]\ : dffeas
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
	q => \inst|lpm_ff_component|dffs\(2));

-- Location: LCCOMB_X32_Y19_N24
\inst8|inst23~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst8|inst23~0_combout\ = (\y[5]~input_o\ & (!\inst|lpm_ff_component|dffs\(2) & !\y[4]~input_o\)) # (!\y[5]~input_o\ & (\inst|lpm_ff_component|dffs\(2) & \y[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[5]~input_o\,
	datac => \inst|lpm_ff_component|dffs\(2),
	datad => \y[4]~input_o\,
	combout => \inst8|inst23~0_combout\);

-- Location: LCCOMB_X30_Y19_N0
\inst10|inst25~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst10|inst25~0_combout\ = (\y[9]~input_o\ & ((\inst6|lpm_shiftreg_component|dffs\(1)))) # (!\y[9]~input_o\ & (\inst1|lpm_shiftreg_component|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y[9]~input_o\,
	datac => \inst1|lpm_shiftreg_component|dffs\(2),
	datad => \inst6|lpm_shiftreg_component|dffs\(1),
	combout => \inst10|inst25~0_combout\);

-- Location: IOIBUF_X33_Y12_N1
\a[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: FF_X32_Y19_N23
\inst|lpm_ff_component|dffs[1]\ : dffeas
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
	q => \inst|lpm_ff_component|dffs\(1));

-- Location: LCCOMB_X32_Y19_N22
\inst8|inst22~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst8|inst22~0_combout\ = (\y[5]~input_o\ & (!\inst|lpm_ff_component|dffs\(1) & !\y[4]~input_o\)) # (!\y[5]~input_o\ & (\inst|lpm_ff_component|dffs\(1) & \y[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[5]~input_o\,
	datac => \inst|lpm_ff_component|dffs\(1),
	datad => \y[4]~input_o\,
	combout => \inst8|inst22~0_combout\);

-- Location: IOIBUF_X33_Y11_N1
\a[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: FF_X32_Y19_N5
\inst|lpm_ff_component|dffs[0]\ : dffeas
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
	q => \inst|lpm_ff_component|dffs\(0));

-- Location: LCCOMB_X32_Y19_N4
\inst8|inst9~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst8|inst9~0_combout\ = (\y[5]~input_o\ & (!\inst|lpm_ff_component|dffs\(0) & !\y[4]~input_o\)) # (!\y[5]~input_o\ & (\inst|lpm_ff_component|dffs\(0) & \y[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[5]~input_o\,
	datac => \inst|lpm_ff_component|dffs\(0),
	datad => \y[4]~input_o\,
	combout => \inst8|inst9~0_combout\);

-- Location: LCCOMB_X30_Y19_N20
\inst10|inst26~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst10|inst26~0_combout\ = (\y[9]~input_o\ & (\inst6|lpm_shiftreg_component|dffs\(0))) # (!\y[9]~input_o\ & ((\inst1|lpm_shiftreg_component|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y[9]~input_o\,
	datac => \inst6|lpm_shiftreg_component|dffs\(0),
	datad => \inst1|lpm_shiftreg_component|dffs\(1),
	combout => \inst10|inst26~0_combout\);

-- Location: LCCOMB_X30_Y19_N6
\inst10|inst23~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst10|inst23~0_combout\ = (\y[9]~input_o\ & (\inst6|lpm_shiftreg_component|dffs\(7))) # (!\y[9]~input_o\ & ((\inst1|lpm_shiftreg_component|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y[9]~input_o\,
	datac => \inst6|lpm_shiftreg_component|dffs\(7),
	datad => \inst1|lpm_shiftreg_component|dffs\(0),
	combout => \inst10|inst23~0_combout\);

-- Location: LCCOMB_X31_Y19_N18
\inst4|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4|LPM_ADD_SUB_component|auto_generated|result_int[7]~15_combout\ = (\inst8|inst28~0_combout\ & ((\inst10|inst22~0_combout\ & (\inst4|LPM_ADD_SUB_component|auto_generated|result_int[6]~14\ & VCC)) # (!\inst10|inst22~0_combout\ & 
-- (!\inst4|LPM_ADD_SUB_component|auto_generated|result_int[6]~14\)))) # (!\inst8|inst28~0_combout\ & ((\inst10|inst22~0_combout\ & (!\inst4|LPM_ADD_SUB_component|auto_generated|result_int[6]~14\)) # (!\inst10|inst22~0_combout\ & 
-- ((\inst4|LPM_ADD_SUB_component|auto_generated|result_int[6]~14\) # (GND)))))
-- \inst4|LPM_ADD_SUB_component|auto_generated|result_int[7]~16\ = CARRY((\inst8|inst28~0_combout\ & (!\inst10|inst22~0_combout\ & !\inst4|LPM_ADD_SUB_component|auto_generated|result_int[6]~14\)) # (!\inst8|inst28~0_combout\ & 
-- ((!\inst4|LPM_ADD_SUB_component|auto_generated|result_int[6]~14\) # (!\inst10|inst22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst28~0_combout\,
	datab => \inst10|inst22~0_combout\,
	datad => VCC,
	cin => \inst4|LPM_ADD_SUB_component|auto_generated|result_int[6]~14\,
	combout => \inst4|LPM_ADD_SUB_component|auto_generated|result_int[7]~15_combout\,
	cout => \inst4|LPM_ADD_SUB_component|auto_generated|result_int[7]~16\);

-- Location: LCCOMB_X31_Y19_N20
\inst4|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4|LPM_ADD_SUB_component|auto_generated|result_int[8]~17_combout\ = ((\inst8|inst28~0_combout\ $ (\inst10|inst23~0_combout\ $ (!\inst4|LPM_ADD_SUB_component|auto_generated|result_int[7]~16\)))) # (GND)
-- \inst4|LPM_ADD_SUB_component|auto_generated|result_int[8]~18\ = CARRY((\inst8|inst28~0_combout\ & ((\inst10|inst23~0_combout\) # (!\inst4|LPM_ADD_SUB_component|auto_generated|result_int[7]~16\))) # (!\inst8|inst28~0_combout\ & (\inst10|inst23~0_combout\ & 
-- !\inst4|LPM_ADD_SUB_component|auto_generated|result_int[7]~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst28~0_combout\,
	datab => \inst10|inst23~0_combout\,
	datad => VCC,
	cin => \inst4|LPM_ADD_SUB_component|auto_generated|result_int[7]~16\,
	combout => \inst4|LPM_ADD_SUB_component|auto_generated|result_int[8]~17_combout\,
	cout => \inst4|LPM_ADD_SUB_component|auto_generated|result_int[8]~18\);

-- Location: LCCOMB_X31_Y19_N22
\inst4|LPM_ADD_SUB_component|auto_generated|result_int[9]~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4|LPM_ADD_SUB_component|auto_generated|result_int[9]~19_combout\ = \inst4|LPM_ADD_SUB_component|auto_generated|result_int[8]~18\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst4|LPM_ADD_SUB_component|auto_generated|result_int[8]~18\,
	combout => \inst4|LPM_ADD_SUB_component|auto_generated|result_int[9]~19_combout\);

-- Location: LCCOMB_X31_Y19_N4
\inst4|LPM_ADD_SUB_component|auto_generated|result_int[0]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4|LPM_ADD_SUB_component|auto_generated|result_int[0]~2_cout\ = CARRY(\inst4|LPM_ADD_SUB_component|auto_generated|result_int[9]~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_ADD_SUB_component|auto_generated|result_int[9]~19_combout\,
	datad => VCC,
	cout => \inst4|LPM_ADD_SUB_component|auto_generated|result_int[0]~2_cout\);

-- Location: LCCOMB_X31_Y19_N6
\inst4|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4|LPM_ADD_SUB_component|auto_generated|result_int[1]~3_combout\ = (\inst8|inst9~0_combout\ & ((\inst10|inst26~0_combout\ & (\inst4|LPM_ADD_SUB_component|auto_generated|result_int[0]~2_cout\ & VCC)) # (!\inst10|inst26~0_combout\ & 
-- (!\inst4|LPM_ADD_SUB_component|auto_generated|result_int[0]~2_cout\)))) # (!\inst8|inst9~0_combout\ & ((\inst10|inst26~0_combout\ & (!\inst4|LPM_ADD_SUB_component|auto_generated|result_int[0]~2_cout\)) # (!\inst10|inst26~0_combout\ & 
-- ((\inst4|LPM_ADD_SUB_component|auto_generated|result_int[0]~2_cout\) # (GND)))))
-- \inst4|LPM_ADD_SUB_component|auto_generated|result_int[1]~4\ = CARRY((\inst8|inst9~0_combout\ & (!\inst10|inst26~0_combout\ & !\inst4|LPM_ADD_SUB_component|auto_generated|result_int[0]~2_cout\)) # (!\inst8|inst9~0_combout\ & 
-- ((!\inst4|LPM_ADD_SUB_component|auto_generated|result_int[0]~2_cout\) # (!\inst10|inst26~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst9~0_combout\,
	datab => \inst10|inst26~0_combout\,
	datad => VCC,
	cin => \inst4|LPM_ADD_SUB_component|auto_generated|result_int[0]~2_cout\,
	combout => \inst4|LPM_ADD_SUB_component|auto_generated|result_int[1]~3_combout\,
	cout => \inst4|LPM_ADD_SUB_component|auto_generated|result_int[1]~4\);

-- Location: LCCOMB_X31_Y19_N8
\inst4|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4|LPM_ADD_SUB_component|auto_generated|result_int[2]~5_combout\ = ((\inst10|inst25~0_combout\ $ (\inst8|inst22~0_combout\ $ (!\inst4|LPM_ADD_SUB_component|auto_generated|result_int[1]~4\)))) # (GND)
-- \inst4|LPM_ADD_SUB_component|auto_generated|result_int[2]~6\ = CARRY((\inst10|inst25~0_combout\ & ((\inst8|inst22~0_combout\) # (!\inst4|LPM_ADD_SUB_component|auto_generated|result_int[1]~4\))) # (!\inst10|inst25~0_combout\ & (\inst8|inst22~0_combout\ & 
-- !\inst4|LPM_ADD_SUB_component|auto_generated|result_int[1]~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst25~0_combout\,
	datab => \inst8|inst22~0_combout\,
	datad => VCC,
	cin => \inst4|LPM_ADD_SUB_component|auto_generated|result_int[1]~4\,
	combout => \inst4|LPM_ADD_SUB_component|auto_generated|result_int[2]~5_combout\,
	cout => \inst4|LPM_ADD_SUB_component|auto_generated|result_int[2]~6\);

-- Location: LCCOMB_X31_Y19_N10
\inst4|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4|LPM_ADD_SUB_component|auto_generated|result_int[3]~7_combout\ = (\inst10|inst20~0_combout\ & ((\inst8|inst23~0_combout\ & (\inst4|LPM_ADD_SUB_component|auto_generated|result_int[2]~6\ & VCC)) # (!\inst8|inst23~0_combout\ & 
-- (!\inst4|LPM_ADD_SUB_component|auto_generated|result_int[2]~6\)))) # (!\inst10|inst20~0_combout\ & ((\inst8|inst23~0_combout\ & (!\inst4|LPM_ADD_SUB_component|auto_generated|result_int[2]~6\)) # (!\inst8|inst23~0_combout\ & 
-- ((\inst4|LPM_ADD_SUB_component|auto_generated|result_int[2]~6\) # (GND)))))
-- \inst4|LPM_ADD_SUB_component|auto_generated|result_int[3]~8\ = CARRY((\inst10|inst20~0_combout\ & (!\inst8|inst23~0_combout\ & !\inst4|LPM_ADD_SUB_component|auto_generated|result_int[2]~6\)) # (!\inst10|inst20~0_combout\ & 
-- ((!\inst4|LPM_ADD_SUB_component|auto_generated|result_int[2]~6\) # (!\inst8|inst23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst20~0_combout\,
	datab => \inst8|inst23~0_combout\,
	datad => VCC,
	cin => \inst4|LPM_ADD_SUB_component|auto_generated|result_int[2]~6\,
	combout => \inst4|LPM_ADD_SUB_component|auto_generated|result_int[3]~7_combout\,
	cout => \inst4|LPM_ADD_SUB_component|auto_generated|result_int[3]~8\);

-- Location: LCCOMB_X31_Y19_N12
\inst4|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4|LPM_ADD_SUB_component|auto_generated|result_int[4]~9_combout\ = ((\inst10|inst24~0_combout\ $ (\inst8|inst28~0_combout\ $ (!\inst4|LPM_ADD_SUB_component|auto_generated|result_int[3]~8\)))) # (GND)
-- \inst4|LPM_ADD_SUB_component|auto_generated|result_int[4]~10\ = CARRY((\inst10|inst24~0_combout\ & ((\inst8|inst28~0_combout\) # (!\inst4|LPM_ADD_SUB_component|auto_generated|result_int[3]~8\))) # (!\inst10|inst24~0_combout\ & (\inst8|inst28~0_combout\ & 
-- !\inst4|LPM_ADD_SUB_component|auto_generated|result_int[3]~8\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst24~0_combout\,
	datab => \inst8|inst28~0_combout\,
	datad => VCC,
	cin => \inst4|LPM_ADD_SUB_component|auto_generated|result_int[3]~8\,
	combout => \inst4|LPM_ADD_SUB_component|auto_generated|result_int[4]~9_combout\,
	cout => \inst4|LPM_ADD_SUB_component|auto_generated|result_int[4]~10\);

-- Location: LCCOMB_X31_Y19_N14
\inst4|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4|LPM_ADD_SUB_component|auto_generated|result_int[5]~11_combout\ = (\inst8|inst28~0_combout\ & ((\inst10|inst~0_combout\ & (\inst4|LPM_ADD_SUB_component|auto_generated|result_int[4]~10\ & VCC)) # (!\inst10|inst~0_combout\ & 
-- (!\inst4|LPM_ADD_SUB_component|auto_generated|result_int[4]~10\)))) # (!\inst8|inst28~0_combout\ & ((\inst10|inst~0_combout\ & (!\inst4|LPM_ADD_SUB_component|auto_generated|result_int[4]~10\)) # (!\inst10|inst~0_combout\ & 
-- ((\inst4|LPM_ADD_SUB_component|auto_generated|result_int[4]~10\) # (GND)))))
-- \inst4|LPM_ADD_SUB_component|auto_generated|result_int[5]~12\ = CARRY((\inst8|inst28~0_combout\ & (!\inst10|inst~0_combout\ & !\inst4|LPM_ADD_SUB_component|auto_generated|result_int[4]~10\)) # (!\inst8|inst28~0_combout\ & 
-- ((!\inst4|LPM_ADD_SUB_component|auto_generated|result_int[4]~10\) # (!\inst10|inst~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst28~0_combout\,
	datab => \inst10|inst~0_combout\,
	datad => VCC,
	cin => \inst4|LPM_ADD_SUB_component|auto_generated|result_int[4]~10\,
	combout => \inst4|LPM_ADD_SUB_component|auto_generated|result_int[5]~11_combout\,
	cout => \inst4|LPM_ADD_SUB_component|auto_generated|result_int[5]~12\);

-- Location: LCCOMB_X31_Y19_N16
\inst4|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4|LPM_ADD_SUB_component|auto_generated|result_int[6]~13_combout\ = ((\inst8|inst28~0_combout\ $ (\inst10|inst21~0_combout\ $ (!\inst4|LPM_ADD_SUB_component|auto_generated|result_int[5]~12\)))) # (GND)
-- \inst4|LPM_ADD_SUB_component|auto_generated|result_int[6]~14\ = CARRY((\inst8|inst28~0_combout\ & ((\inst10|inst21~0_combout\) # (!\inst4|LPM_ADD_SUB_component|auto_generated|result_int[5]~12\))) # (!\inst8|inst28~0_combout\ & (\inst10|inst21~0_combout\ & 
-- !\inst4|LPM_ADD_SUB_component|auto_generated|result_int[5]~12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst28~0_combout\,
	datab => \inst10|inst21~0_combout\,
	datad => VCC,
	cin => \inst4|LPM_ADD_SUB_component|auto_generated|result_int[5]~12\,
	combout => \inst4|LPM_ADD_SUB_component|auto_generated|result_int[6]~13_combout\,
	cout => \inst4|LPM_ADD_SUB_component|auto_generated|result_int[6]~14\);

-- Location: LCCOMB_X30_Y19_N8
\inst6|lpm_shiftreg_component|dffs[6]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6|lpm_shiftreg_component|dffs[6]~5_combout\ = (!\y[8]~input_o\ & ((\y[6]~input_o\ & ((\inst4|LPM_ADD_SUB_component|auto_generated|result_int[7]~15_combout\))) # (!\y[6]~input_o\ & (\inst6|lpm_shiftreg_component|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|lpm_shiftreg_component|dffs\(5),
	datab => \y[8]~input_o\,
	datac => \y[6]~input_o\,
	datad => \inst4|LPM_ADD_SUB_component|auto_generated|result_int[7]~15_combout\,
	combout => \inst6|lpm_shiftreg_component|dffs[6]~5_combout\);

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

-- Location: FF_X30_Y19_N9
\inst6|lpm_shiftreg_component|dffs[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|lpm_shiftreg_component|dffs[6]~5_combout\,
	ena => \y[7]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|lpm_shiftreg_component|dffs\(6));

-- Location: LCCOMB_X30_Y19_N22
\inst6|lpm_shiftreg_component|dffs[7]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6|lpm_shiftreg_component|dffs[7]~4_combout\ = (!\y[8]~input_o\ & ((\y[6]~input_o\ & ((\inst4|LPM_ADD_SUB_component|auto_generated|result_int[8]~17_combout\))) # (!\y[6]~input_o\ & (\inst6|lpm_shiftreg_component|dffs\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|lpm_shiftreg_component|dffs\(6),
	datab => \y[6]~input_o\,
	datac => \inst4|LPM_ADD_SUB_component|auto_generated|result_int[8]~17_combout\,
	datad => \y[8]~input_o\,
	combout => \inst6|lpm_shiftreg_component|dffs[7]~4_combout\);

-- Location: FF_X30_Y19_N23
\inst6|lpm_shiftreg_component|dffs[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|lpm_shiftreg_component|dffs[7]~4_combout\,
	ena => \y[7]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|lpm_shiftreg_component|dffs\(7));

-- Location: LCCOMB_X31_Y19_N30
\inst6|lpm_shiftreg_component|dffs[0]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6|lpm_shiftreg_component|dffs[0]~3_combout\ = (!\y[8]~input_o\ & ((\y[6]~input_o\ & ((\inst4|LPM_ADD_SUB_component|auto_generated|result_int[1]~3_combout\))) # (!\y[6]~input_o\ & (\inst6|lpm_shiftreg_component|dffs\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[8]~input_o\,
	datab => \inst6|lpm_shiftreg_component|dffs\(7),
	datac => \y[6]~input_o\,
	datad => \inst4|LPM_ADD_SUB_component|auto_generated|result_int[1]~3_combout\,
	combout => \inst6|lpm_shiftreg_component|dffs[0]~3_combout\);

-- Location: FF_X31_Y19_N31
\inst6|lpm_shiftreg_component|dffs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|lpm_shiftreg_component|dffs[0]~3_combout\,
	ena => \y[7]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|lpm_shiftreg_component|dffs\(0));

-- Location: LCCOMB_X31_Y19_N28
\inst6|lpm_shiftreg_component|dffs[1]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6|lpm_shiftreg_component|dffs[1]~2_combout\ = (!\y[8]~input_o\ & ((\y[6]~input_o\ & ((\inst4|LPM_ADD_SUB_component|auto_generated|result_int[2]~5_combout\))) # (!\y[6]~input_o\ & (\inst6|lpm_shiftreg_component|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[8]~input_o\,
	datab => \inst6|lpm_shiftreg_component|dffs\(0),
	datac => \inst4|LPM_ADD_SUB_component|auto_generated|result_int[2]~5_combout\,
	datad => \y[6]~input_o\,
	combout => \inst6|lpm_shiftreg_component|dffs[1]~2_combout\);

-- Location: FF_X31_Y19_N29
\inst6|lpm_shiftreg_component|dffs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|lpm_shiftreg_component|dffs[1]~2_combout\,
	ena => \y[7]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|lpm_shiftreg_component|dffs\(1));

-- Location: LCCOMB_X31_Y19_N2
\inst6|lpm_shiftreg_component|dffs[2]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6|lpm_shiftreg_component|dffs[2]~1_combout\ = (!\y[8]~input_o\ & ((\y[6]~input_o\ & ((\inst4|LPM_ADD_SUB_component|auto_generated|result_int[3]~7_combout\))) # (!\y[6]~input_o\ & (\inst6|lpm_shiftreg_component|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[6]~input_o\,
	datab => \inst6|lpm_shiftreg_component|dffs\(1),
	datac => \y[8]~input_o\,
	datad => \inst4|LPM_ADD_SUB_component|auto_generated|result_int[3]~7_combout\,
	combout => \inst6|lpm_shiftreg_component|dffs[2]~1_combout\);

-- Location: FF_X31_Y19_N3
\inst6|lpm_shiftreg_component|dffs[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|lpm_shiftreg_component|dffs[2]~1_combout\,
	ena => \y[7]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|lpm_shiftreg_component|dffs\(2));

-- Location: LCCOMB_X31_Y19_N0
\inst6|lpm_shiftreg_component|dffs[3]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6|lpm_shiftreg_component|dffs[3]~0_combout\ = (!\y[8]~input_o\ & ((\y[6]~input_o\ & ((\inst4|LPM_ADD_SUB_component|auto_generated|result_int[4]~9_combout\))) # (!\y[6]~input_o\ & (\inst6|lpm_shiftreg_component|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[6]~input_o\,
	datab => \inst6|lpm_shiftreg_component|dffs\(2),
	datac => \y[8]~input_o\,
	datad => \inst4|LPM_ADD_SUB_component|auto_generated|result_int[4]~9_combout\,
	combout => \inst6|lpm_shiftreg_component|dffs[3]~0_combout\);

-- Location: FF_X31_Y19_N1
\inst6|lpm_shiftreg_component|dffs[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|lpm_shiftreg_component|dffs[3]~0_combout\,
	ena => \y[7]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|lpm_shiftreg_component|dffs\(3));

-- Location: LCCOMB_X31_Y19_N24
\inst6|lpm_shiftreg_component|dffs[4]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6|lpm_shiftreg_component|dffs[4]~7_combout\ = (!\y[8]~input_o\ & ((\y[6]~input_o\ & ((\inst4|LPM_ADD_SUB_component|auto_generated|result_int[5]~11_combout\))) # (!\y[6]~input_o\ & (\inst6|lpm_shiftreg_component|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[8]~input_o\,
	datab => \inst6|lpm_shiftreg_component|dffs\(3),
	datac => \inst4|LPM_ADD_SUB_component|auto_generated|result_int[5]~11_combout\,
	datad => \y[6]~input_o\,
	combout => \inst6|lpm_shiftreg_component|dffs[4]~7_combout\);

-- Location: FF_X31_Y19_N25
\inst6|lpm_shiftreg_component|dffs[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|lpm_shiftreg_component|dffs[4]~7_combout\,
	ena => \y[7]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|lpm_shiftreg_component|dffs\(4));

-- Location: LCCOMB_X30_Y19_N30
\inst6|lpm_shiftreg_component|dffs[5]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6|lpm_shiftreg_component|dffs[5]~6_combout\ = (!\y[8]~input_o\ & ((\y[6]~input_o\ & ((\inst4|LPM_ADD_SUB_component|auto_generated|result_int[6]~13_combout\))) # (!\y[6]~input_o\ & (\inst6|lpm_shiftreg_component|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|lpm_shiftreg_component|dffs\(4),
	datab => \y[8]~input_o\,
	datac => \y[6]~input_o\,
	datad => \inst4|LPM_ADD_SUB_component|auto_generated|result_int[6]~13_combout\,
	combout => \inst6|lpm_shiftreg_component|dffs[5]~6_combout\);

-- Location: FF_X30_Y19_N31
\inst6|lpm_shiftreg_component|dffs[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|lpm_shiftreg_component|dffs[5]~6_combout\,
	ena => \y[7]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|lpm_shiftreg_component|dffs\(5));

-- Location: LCCOMB_X29_Y19_N12
\inst11|inst27~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst11|inst27~1_combout\ = (\inst6|lpm_shiftreg_component|dffs\(5) & (\inst6|lpm_shiftreg_component|dffs\(6) & (\inst6|lpm_shiftreg_component|dffs\(4) & \inst6|lpm_shiftreg_component|dffs\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|lpm_shiftreg_component|dffs\(5),
	datab => \inst6|lpm_shiftreg_component|dffs\(6),
	datac => \inst6|lpm_shiftreg_component|dffs\(4),
	datad => \inst6|lpm_shiftreg_component|dffs\(7),
	combout => \inst11|inst27~1_combout\);

-- Location: LCCOMB_X30_Y19_N12
\inst11|inst27~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst11|inst27~0_combout\ = (\inst6|lpm_shiftreg_component|dffs\(2) & (\inst6|lpm_shiftreg_component|dffs\(3) & (\inst6|lpm_shiftreg_component|dffs\(0) & \inst6|lpm_shiftreg_component|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|lpm_shiftreg_component|dffs\(2),
	datab => \inst6|lpm_shiftreg_component|dffs\(3),
	datac => \inst6|lpm_shiftreg_component|dffs\(0),
	datad => \inst6|lpm_shiftreg_component|dffs\(1),
	combout => \inst11|inst27~0_combout\);

-- Location: LCCOMB_X29_Y19_N26
\inst11|inst27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst11|inst27~combout\ = (\inst11|inst27~1_combout\ & \inst11|inst27~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|inst27~1_combout\,
	datac => \inst11|inst27~0_combout\,
	combout => \inst11|inst27~combout\);

-- Location: LCCOMB_X30_Y19_N26
\inst11|inst16~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst11|inst16~0_combout\ = (!\inst6|lpm_shiftreg_component|dffs\(4) & ((\inst6|lpm_shiftreg_component|dffs\(2)) # ((\inst6|lpm_shiftreg_component|dffs\(0)) # (\inst6|lpm_shiftreg_component|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|lpm_shiftreg_component|dffs\(2),
	datab => \inst6|lpm_shiftreg_component|dffs\(4),
	datac => \inst6|lpm_shiftreg_component|dffs\(0),
	datad => \inst6|lpm_shiftreg_component|dffs\(1),
	combout => \inst11|inst16~0_combout\);

-- Location: LCCOMB_X29_Y19_N28
\inst11|inst16~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst11|inst16~1_combout\ = (\inst6|lpm_shiftreg_component|dffs\(3) & (!\inst6|lpm_shiftreg_component|dffs\(4))) # (!\inst6|lpm_shiftreg_component|dffs\(3) & ((\inst6|lpm_shiftreg_component|dffs\(4)) # (\inst11|inst16~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|lpm_shiftreg_component|dffs\(3),
	datac => \inst6|lpm_shiftreg_component|dffs\(4),
	datad => \inst11|inst16~0_combout\,
	combout => \inst11|inst16~1_combout\);

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

-- Location: FF_X29_Y19_N29
\inst16|lpm_ff_component|dffs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst11|inst16~1_combout\,
	ena => \y[10]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|lpm_ff_component|dffs\(1));

-- Location: LCCOMB_X29_Y19_N30
\inst11|inst8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst11|inst8~0_combout\ = (\inst6|lpm_shiftreg_component|dffs\(4) & ((!\inst11|inst27~0_combout\))) # (!\inst6|lpm_shiftreg_component|dffs\(4) & (\inst6|lpm_shiftreg_component|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|lpm_shiftreg_component|dffs\(4),
	datab => \inst6|lpm_shiftreg_component|dffs\(3),
	datac => \inst11|inst27~0_combout\,
	combout => \inst11|inst8~0_combout\);

-- Location: FF_X29_Y19_N31
\inst16|lpm_ff_component|dffs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst11|inst8~0_combout\,
	ena => \y[10]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|lpm_ff_component|dffs\(0));

ww_f1 <= \f1~output_o\;

ww_f2 <= \f2~output_o\;

ww_f3 <= \f3~output_o\;

ww_pr(0) <= \pr[0]~output_o\;

ww_pr(1) <= \pr[1]~output_o\;

ww_rr(7) <= \rr[7]~output_o\;

ww_rr(6) <= \rr[6]~output_o\;

ww_rr(5) <= \rr[5]~output_o\;

ww_rr(4) <= \rr[4]~output_o\;

ww_rr(3) <= \rr[3]~output_o\;

ww_rr(2) <= \rr[2]~output_o\;

ww_rr(1) <= \rr[1]~output_o\;

ww_rr(0) <= \rr[0]~output_o\;
END structure;


