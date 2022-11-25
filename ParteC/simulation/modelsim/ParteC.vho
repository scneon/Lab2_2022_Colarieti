-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "11/25/2022 02:54:19"

-- 
-- Device: Altera EP3C120F780C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Block1 IS
    PORT (
	CLOCK : IN std_logic;
	SR : IN std_logic;
	A0 : IN std_logic;
	B0 : IN std_logic;
	A1 : IN std_logic;
	B1 : IN std_logic;
	A2 : IN std_logic;
	B2 : IN std_logic;
	A3 : IN std_logic;
	B3 : IN std_logic;
	S0 : OUT std_logic;
	S1 : OUT std_logic;
	S2 : OUT std_logic;
	S3 : OUT std_logic;
	S : OUT std_logic;
	Z : OUT std_logic;
	V : OUT std_logic;
	C : OUT std_logic
	);
END Block1;

-- Design Ports Information
-- S0	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S2	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S3	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z	=>  Location: PIN_A26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V	=>  Location: PIN_A25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SR	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A3	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B3	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B2	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A2	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B0	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A0	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B1	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Block1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK : std_logic;
SIGNAL ww_SR : std_logic;
SIGNAL ww_A0 : std_logic;
SIGNAL ww_B0 : std_logic;
SIGNAL ww_A1 : std_logic;
SIGNAL ww_B1 : std_logic;
SIGNAL ww_A2 : std_logic;
SIGNAL ww_B2 : std_logic;
SIGNAL ww_A3 : std_logic;
SIGNAL ww_B3 : std_logic;
SIGNAL ww_S0 : std_logic;
SIGNAL ww_S1 : std_logic;
SIGNAL ww_S2 : std_logic;
SIGNAL ww_S3 : std_logic;
SIGNAL ww_S : std_logic;
SIGNAL ww_Z : std_logic;
SIGNAL ww_V : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL \CLOCK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_DB1|Q~q\ : std_logic;
SIGNAL \SYNTHESIZED_WIRE_13~combout\ : std_logic;
SIGNAL \B1~input_o\ : std_logic;
SIGNAL \S0~output_o\ : std_logic;
SIGNAL \S1~output_o\ : std_logic;
SIGNAL \S2~output_o\ : std_logic;
SIGNAL \S3~output_o\ : std_logic;
SIGNAL \S~output_o\ : std_logic;
SIGNAL \Z~output_o\ : std_logic;
SIGNAL \V~output_o\ : std_logic;
SIGNAL \C~output_o\ : std_logic;
SIGNAL \CLOCK~input_o\ : std_logic;
SIGNAL \CLOCK~inputclkctrl_outclk\ : std_logic;
SIGNAL \B0~input_o\ : std_logic;
SIGNAL \b2v_DB0|Q~feeder_combout\ : std_logic;
SIGNAL \b2v_DB0|Q~q\ : std_logic;
SIGNAL \A0~input_o\ : std_logic;
SIGNAL \b2v_DA0|Q~feeder_combout\ : std_logic;
SIGNAL \b2v_DA0|Q~q\ : std_logic;
SIGNAL \b2v_FA0|f~0_combout\ : std_logic;
SIGNAL \b2v_DS0|Q~q\ : std_logic;
SIGNAL \A1~input_o\ : std_logic;
SIGNAL \b2v_DA1|Q~q\ : std_logic;
SIGNAL \b2v_FA0|cout~1_combout\ : std_logic;
SIGNAL \b2v_FA0|cout~0_combout\ : std_logic;
SIGNAL \b2v_FA1|f~combout\ : std_logic;
SIGNAL \b2v_DS1|Q~q\ : std_logic;
SIGNAL \A2~input_o\ : std_logic;
SIGNAL \b2v_DA2|Q~feeder_combout\ : std_logic;
SIGNAL \b2v_DA2|Q~q\ : std_logic;
SIGNAL \B2~input_o\ : std_logic;
SIGNAL \b2v_DB2|Q~feeder_combout\ : std_logic;
SIGNAL \b2v_DB2|Q~q\ : std_logic;
SIGNAL \b2v_FA1|cout~0_combout\ : std_logic;
SIGNAL \b2v_FA2|f~0_combout\ : std_logic;
SIGNAL \b2v_DS2|Q~q\ : std_logic;
SIGNAL \A3~input_o\ : std_logic;
SIGNAL \b2v_DA3|Q~q\ : std_logic;
SIGNAL \B3~input_o\ : std_logic;
SIGNAL \b2v_DB3|Q~q\ : std_logic;
SIGNAL \b2v_FA2|cout~0_combout\ : std_logic;
SIGNAL \b2v_FA3|f~0_combout\ : std_logic;
SIGNAL \b2v_DS3|Q~q\ : std_logic;
SIGNAL \Z~0_combout\ : std_logic;
SIGNAL \V~0_combout\ : std_logic;
SIGNAL \SR~input_o\ : std_logic;
SIGNAL \C~0_combout\ : std_logic;
SIGNAL \ALT_INV_Z~0_combout\ : std_logic;

BEGIN

ww_CLOCK <= CLOCK;
ww_SR <= SR;
ww_A0 <= A0;
ww_B0 <= B0;
ww_A1 <= A1;
ww_B1 <= B1;
ww_A2 <= A2;
ww_B2 <= B2;
ww_A3 <= A3;
ww_B3 <= B3;
S0 <= ww_S0;
S1 <= ww_S1;
S2 <= ww_S2;
S3 <= ww_S3;
S <= ww_S;
Z <= ww_Z;
V <= ww_V;
C <= ww_C;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK~input_o\);
\ALT_INV_Z~0_combout\ <= NOT \Z~0_combout\;

-- Location: FF_X53_Y72_N31
\b2v_DB1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \B1~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_DB1|Q~q\);

-- Location: LCCOMB_X53_Y72_N30
SYNTHESIZED_WIRE_13 : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNTHESIZED_WIRE_13~combout\ = \SR~input_o\ $ (\b2v_DB1|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SR~input_o\,
	datac => \b2v_DB1|Q~q\,
	combout => \SYNTHESIZED_WIRE_13~combout\);

-- Location: IOIBUF_X38_Y73_N1
\B1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B1,
	o => \B1~input_o\);

-- Location: IOOBUF_X81_Y73_N16
\S0~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_DS0|Q~q\,
	devoe => ww_devoe,
	o => \S0~output_o\);

-- Location: IOOBUF_X89_Y73_N23
\S1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_DS1|Q~q\,
	devoe => ww_devoe,
	o => \S1~output_o\);

-- Location: IOOBUF_X89_Y73_N9
\S2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_DS2|Q~q\,
	devoe => ww_devoe,
	o => \S2~output_o\);

-- Location: IOOBUF_X102_Y73_N2
\S3~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_DS3|Q~q\,
	devoe => ww_devoe,
	o => \S3~output_o\);

-- Location: IOOBUF_X79_Y73_N2
\S~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_DS3|Q~q\,
	devoe => ww_devoe,
	o => \S~output_o\);

-- Location: IOOBUF_X109_Y73_N2
\Z~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Z~0_combout\,
	devoe => ww_devoe,
	o => \Z~output_o\);

-- Location: IOOBUF_X109_Y73_N9
\V~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \V~0_combout\,
	devoe => ww_devoe,
	o => \V~output_o\);

-- Location: IOOBUF_X60_Y73_N2
\C~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C~0_combout\,
	devoe => ww_devoe,
	o => \C~output_o\);

-- Location: IOIBUF_X56_Y73_N15
\CLOCK~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK,
	o => \CLOCK~input_o\);

-- Location: CLKCTRL_G14
\CLOCK~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK~inputclkctrl_outclk\);

-- Location: IOIBUF_X18_Y73_N22
\B0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B0,
	o => \B0~input_o\);

-- Location: LCCOMB_X53_Y72_N18
\b2v_DB0|Q~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_DB0|Q~feeder_combout\ = \B0~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \B0~input_o\,
	combout => \b2v_DB0|Q~feeder_combout\);

-- Location: FF_X53_Y72_N19
\b2v_DB0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \b2v_DB0|Q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_DB0|Q~q\);

-- Location: IOIBUF_X5_Y73_N8
\A0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A0,
	o => \A0~input_o\);

-- Location: LCCOMB_X53_Y72_N20
\b2v_DA0|Q~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_DA0|Q~feeder_combout\ = \A0~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A0~input_o\,
	combout => \b2v_DA0|Q~feeder_combout\);

-- Location: FF_X53_Y72_N21
\b2v_DA0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \b2v_DA0|Q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_DA0|Q~q\);

-- Location: LCCOMB_X53_Y72_N4
\b2v_FA0|f~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_FA0|f~0_combout\ = \b2v_DB0|Q~q\ $ (\b2v_DA0|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_DB0|Q~q\,
	datad => \b2v_DA0|Q~q\,
	combout => \b2v_FA0|f~0_combout\);

-- Location: FF_X53_Y72_N5
\b2v_DS0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \b2v_FA0|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_DS0|Q~q\);

-- Location: IOIBUF_X7_Y73_N15
\A1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A1,
	o => \A1~input_o\);

-- Location: FF_X53_Y72_N1
\b2v_DA1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \A1~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_DA1|Q~q\);

-- Location: LCCOMB_X53_Y72_N8
\b2v_FA0|cout~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_FA0|cout~1_combout\ = (\b2v_DA0|Q~q\ & (\SR~input_o\ $ (\b2v_DB0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SR~input_o\,
	datab => \b2v_DA0|Q~q\,
	datad => \b2v_DB0|Q~q\,
	combout => \b2v_FA0|cout~1_combout\);

-- Location: LCCOMB_X53_Y72_N10
\b2v_FA0|cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_FA0|cout~0_combout\ = (\SR~input_o\ & (\b2v_DA0|Q~q\ $ (!\b2v_DB0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SR~input_o\,
	datab => \b2v_DA0|Q~q\,
	datad => \b2v_DB0|Q~q\,
	combout => \b2v_FA0|cout~0_combout\);

-- Location: LCCOMB_X53_Y72_N14
\b2v_FA1|f\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_FA1|f~combout\ = \SYNTHESIZED_WIRE_13~combout\ $ (\b2v_DA1|Q~q\ $ (((\b2v_FA0|cout~1_combout\) # (\b2v_FA0|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SYNTHESIZED_WIRE_13~combout\,
	datab => \b2v_DA1|Q~q\,
	datac => \b2v_FA0|cout~1_combout\,
	datad => \b2v_FA0|cout~0_combout\,
	combout => \b2v_FA1|f~combout\);

-- Location: FF_X53_Y72_N15
\b2v_DS1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \b2v_FA1|f~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_DS1|Q~q\);

-- Location: IOIBUF_X27_Y73_N15
\A2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A2,
	o => \A2~input_o\);

-- Location: LCCOMB_X53_Y72_N12
\b2v_DA2|Q~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_DA2|Q~feeder_combout\ = \A2~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A2~input_o\,
	combout => \b2v_DA2|Q~feeder_combout\);

-- Location: FF_X53_Y72_N13
\b2v_DA2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \b2v_DA2|Q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_DA2|Q~q\);

-- Location: IOIBUF_X42_Y73_N1
\B2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B2,
	o => \B2~input_o\);

-- Location: LCCOMB_X53_Y72_N22
\b2v_DB2|Q~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_DB2|Q~feeder_combout\ = \B2~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \B2~input_o\,
	combout => \b2v_DB2|Q~feeder_combout\);

-- Location: FF_X53_Y72_N23
\b2v_DB2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \b2v_DB2|Q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_DB2|Q~q\);

-- Location: LCCOMB_X53_Y72_N24
\b2v_FA1|cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_FA1|cout~0_combout\ = (\SYNTHESIZED_WIRE_13~combout\ & ((\b2v_DA1|Q~q\) # ((\b2v_FA0|cout~1_combout\) # (\b2v_FA0|cout~0_combout\)))) # (!\SYNTHESIZED_WIRE_13~combout\ & (\b2v_DA1|Q~q\ & ((\b2v_FA0|cout~1_combout\) # (\b2v_FA0|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SYNTHESIZED_WIRE_13~combout\,
	datab => \b2v_DA1|Q~q\,
	datac => \b2v_FA0|cout~1_combout\,
	datad => \b2v_FA0|cout~0_combout\,
	combout => \b2v_FA1|cout~0_combout\);

-- Location: LCCOMB_X53_Y72_N16
\b2v_FA2|f~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_FA2|f~0_combout\ = \SR~input_o\ $ (\b2v_DA2|Q~q\ $ (\b2v_DB2|Q~q\ $ (\b2v_FA1|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SR~input_o\,
	datab => \b2v_DA2|Q~q\,
	datac => \b2v_DB2|Q~q\,
	datad => \b2v_FA1|cout~0_combout\,
	combout => \b2v_FA2|f~0_combout\);

-- Location: FF_X53_Y72_N17
\b2v_DS2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \b2v_FA2|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_DS2|Q~q\);

-- Location: IOIBUF_X29_Y73_N1
\A3~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A3,
	o => \A3~input_o\);

-- Location: FF_X53_Y72_N9
\b2v_DA3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \A3~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_DA3|Q~q\);

-- Location: IOIBUF_X47_Y73_N1
\B3~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B3,
	o => \B3~input_o\);

-- Location: FF_X53_Y72_N11
\b2v_DB3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \B3~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_DB3|Q~q\);

-- Location: LCCOMB_X53_Y72_N6
\b2v_FA2|cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_FA2|cout~0_combout\ = (\b2v_DA2|Q~q\ & ((\b2v_FA1|cout~0_combout\) # (\SR~input_o\ $ (\b2v_DB2|Q~q\)))) # (!\b2v_DA2|Q~q\ & (\b2v_FA1|cout~0_combout\ & (\SR~input_o\ $ (\b2v_DB2|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SR~input_o\,
	datab => \b2v_DA2|Q~q\,
	datac => \b2v_DB2|Q~q\,
	datad => \b2v_FA1|cout~0_combout\,
	combout => \b2v_FA2|cout~0_combout\);

-- Location: LCCOMB_X53_Y72_N26
\b2v_FA3|f~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_FA3|f~0_combout\ = \SR~input_o\ $ (\b2v_DA3|Q~q\ $ (\b2v_DB3|Q~q\ $ (\b2v_FA2|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SR~input_o\,
	datab => \b2v_DA3|Q~q\,
	datac => \b2v_DB3|Q~q\,
	datad => \b2v_FA2|cout~0_combout\,
	combout => \b2v_FA3|f~0_combout\);

-- Location: FF_X53_Y72_N27
\b2v_DS3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \b2v_FA3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_DS3|Q~q\);

-- Location: LCCOMB_X82_Y72_N12
\Z~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Z~0_combout\ = (\b2v_DS0|Q~q\) # ((\b2v_DS2|Q~q\) # ((\b2v_DS1|Q~q\) # (\b2v_DS3|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_DS0|Q~q\,
	datab => \b2v_DS2|Q~q\,
	datac => \b2v_DS1|Q~q\,
	datad => \b2v_DS3|Q~q\,
	combout => \Z~0_combout\);

-- Location: LCCOMB_X53_Y72_N0
\V~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V~0_combout\ = (\b2v_DS3|Q~q\ & (!\b2v_DB3|Q~q\ & !\b2v_DA3|Q~q\)) # (!\b2v_DS3|Q~q\ & (\b2v_DB3|Q~q\ & \b2v_DA3|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_DS3|Q~q\,
	datab => \b2v_DB3|Q~q\,
	datad => \b2v_DA3|Q~q\,
	combout => \V~0_combout\);

-- Location: IOIBUF_X56_Y73_N1
\SR~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SR,
	o => \SR~input_o\);

-- Location: LCCOMB_X53_Y72_N28
\C~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C~0_combout\ = (\b2v_DA3|Q~q\ & ((\b2v_FA2|cout~0_combout\ & (!\SR~input_o\)) # (!\b2v_FA2|cout~0_combout\ & ((\b2v_DB3|Q~q\))))) # (!\b2v_DA3|Q~q\ & ((\b2v_FA2|cout~0_combout\ & ((\b2v_DB3|Q~q\))) # (!\b2v_FA2|cout~0_combout\ & (\SR~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SR~input_o\,
	datab => \b2v_DA3|Q~q\,
	datac => \b2v_DB3|Q~q\,
	datad => \b2v_FA2|cout~0_combout\,
	combout => \C~0_combout\);

ww_S0 <= \S0~output_o\;

ww_S1 <= \S1~output_o\;

ww_S2 <= \S2~output_o\;

ww_S3 <= \S3~output_o\;

ww_S <= \S~output_o\;

ww_Z <= \Z~output_o\;

ww_V <= \V~output_o\;

ww_C <= \C~output_o\;
END structure;


