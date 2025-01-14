-- Copyright (C) 2021  Intel Corporation. All rights reserved.
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
-- VERSION "Version 21.1.0 Build 842 10/21/2021 SJ Lite Edition"

-- DATE "11/26/2024 22:06:00"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	elevador IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	novo : IN std_logic_vector(3 DOWNTO 0);
	atual : OUT std_logic_vector(3 DOWNTO 0);
	movimento : OUT std_logic_vector(1 DOWNTO 0)
	);
END elevador;

-- Design Ports Information
-- atual[0]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- atual[1]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- atual[2]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- atual[3]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- movimento[0]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- movimento[1]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- novo[0]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- novo[1]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- novo[3]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- novo[2]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF elevador IS
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
SIGNAL ww_novo : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_atual : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_movimento : std_logic_vector(1 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \atual[0]~output_o\ : std_logic;
SIGNAL \atual[1]~output_o\ : std_logic;
SIGNAL \atual[2]~output_o\ : std_logic;
SIGNAL \atual[3]~output_o\ : std_logic;
SIGNAL \movimento[0]~output_o\ : std_logic;
SIGNAL \movimento[1]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \novo[0]~input_o\ : std_logic;
SIGNAL \novo[3]~input_o\ : std_logic;
SIGNAL \novo[2]~input_o\ : std_logic;
SIGNAL \andar[1]~5_cout\ : std_logic;
SIGNAL \andar[1]~6_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \andar[1]~7\ : std_logic;
SIGNAL \andar[2]~8_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \novo[1]~input_o\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \estado_novo~10_combout\ : std_logic;
SIGNAL \estado_novo~11_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \estado_novo~12_combout\ : std_logic;
SIGNAL \estado_novo~13_combout\ : std_logic;
SIGNAL \estado_novo~14_combout\ : std_logic;
SIGNAL \estado_novo.subindo~q\ : std_logic;
SIGNAL \estado_atual.subindo~feeder_combout\ : std_logic;
SIGNAL \estado_atual.subindo~q\ : std_logic;
SIGNAL \andar[2]~9\ : std_logic;
SIGNAL \andar[3]~10_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \estado_novo.parado~q\ : std_logic;
SIGNAL \estado_atual.parado~feeder_combout\ : std_logic;
SIGNAL \estado_atual.parado~q\ : std_logic;
SIGNAL \andar[0]~3_combout\ : std_logic;
SIGNAL \movimento[0]~reg0_q\ : std_logic;
SIGNAL \movimento~0_combout\ : std_logic;
SIGNAL \movimento[1]~reg0_q\ : std_logic;
SIGNAL andar : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_novo <= novo;
atual <= ww_atual;
movimento <= ww_movimento;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X1_Y73_N2
\atual[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => andar(0),
	devoe => ww_devoe,
	o => \atual[0]~output_o\);

-- Location: IOOBUF_X3_Y73_N9
\atual[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => andar(1),
	devoe => ww_devoe,
	o => \atual[1]~output_o\);

-- Location: IOOBUF_X3_Y73_N2
\atual[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => andar(2),
	devoe => ww_devoe,
	o => \atual[2]~output_o\);

-- Location: IOOBUF_X1_Y73_N9
\atual[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => andar(3),
	devoe => ww_devoe,
	o => \atual[3]~output_o\);

-- Location: IOOBUF_X7_Y73_N23
\movimento[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \movimento[0]~reg0_q\,
	devoe => ww_devoe,
	o => \movimento[0]~output_o\);

-- Location: IOOBUF_X5_Y73_N23
\movimento[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \movimento[1]~reg0_q\,
	devoe => ww_devoe,
	o => \movimento[1]~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
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

-- Location: IOIBUF_X5_Y73_N8
\novo[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_novo(0),
	o => \novo[0]~input_o\);

-- Location: IOIBUF_X5_Y73_N1
\novo[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_novo(3),
	o => \novo[3]~input_o\);

-- Location: IOIBUF_X3_Y73_N22
\novo[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_novo(2),
	o => \novo[2]~input_o\);

-- Location: LCCOMB_X4_Y71_N18
\andar[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \andar[1]~5_cout\ = CARRY(andar(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => andar(0),
	datad => VCC,
	cout => \andar[1]~5_cout\);

-- Location: LCCOMB_X4_Y71_N20
\andar[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \andar[1]~6_combout\ = (\estado_atual.subindo~q\ & ((andar(1) & (!\andar[1]~5_cout\)) # (!andar(1) & ((\andar[1]~5_cout\) # (GND))))) # (!\estado_atual.subindo~q\ & ((andar(1) & (\andar[1]~5_cout\ & VCC)) # (!andar(1) & (!\andar[1]~5_cout\))))
-- \andar[1]~7\ = CARRY((\estado_atual.subindo~q\ & ((!\andar[1]~5_cout\) # (!andar(1)))) # (!\estado_atual.subindo~q\ & (!andar(1) & !\andar[1]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \estado_atual.subindo~q\,
	datab => andar(1),
	datad => VCC,
	cin => \andar[1]~5_cout\,
	combout => \andar[1]~6_combout\,
	cout => \andar[1]~7\);

-- Location: IOIBUF_X0_Y36_N15
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G4
\reset~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: FF_X4_Y71_N21
\andar[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \andar[1]~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \estado_atual.parado~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => andar(1));

-- Location: LCCOMB_X4_Y71_N22
\andar[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \andar[2]~8_combout\ = ((andar(2) $ (\estado_atual.subindo~q\ $ (\andar[1]~7\)))) # (GND)
-- \andar[2]~9\ = CARRY((andar(2) & ((!\andar[1]~7\) # (!\estado_atual.subindo~q\))) # (!andar(2) & (!\estado_atual.subindo~q\ & !\andar[1]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => andar(2),
	datab => \estado_atual.subindo~q\,
	datad => VCC,
	cin => \andar[1]~7\,
	combout => \andar[2]~8_combout\,
	cout => \andar[2]~9\);

-- Location: FF_X4_Y71_N23
\andar[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \andar[2]~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \estado_atual.parado~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => andar(2));

-- Location: LCCOMB_X4_Y71_N14
\LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (\novo[3]~input_o\ & (!\novo[2]~input_o\ & (andar(2) & andar(3)))) # (!\novo[3]~input_o\ & ((andar(3)) # ((!\novo[2]~input_o\ & andar(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \novo[2]~input_o\,
	datab => \novo[3]~input_o\,
	datac => andar(2),
	datad => andar(3),
	combout => \LessThan0~2_combout\);

-- Location: IOIBUF_X7_Y73_N15
\novo[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_novo(1),
	o => \novo[1]~input_o\);

-- Location: LCCOMB_X5_Y71_N24
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (\novo[1]~input_o\ & (andar(0) & (!\novo[0]~input_o\ & andar(1)))) # (!\novo[1]~input_o\ & ((andar(1)) # ((andar(0) & !\novo[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \novo[1]~input_o\,
	datab => andar(0),
	datac => \novo[0]~input_o\,
	datad => andar(1),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X4_Y71_N6
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (\novo[2]~input_o\ & (andar(2) & (\novo[3]~input_o\ $ (!andar(3))))) # (!\novo[2]~input_o\ & (!andar(2) & (\novo[3]~input_o\ $ (!andar(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \novo[2]~input_o\,
	datab => \novo[3]~input_o\,
	datac => andar(2),
	datad => andar(3),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X5_Y71_N10
\estado_novo~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \estado_novo~10_combout\ = (!\LessThan0~2_combout\ & (\Equal0~2_combout\ & ((!\LessThan0~1_combout\) # (!\LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~2_combout\,
	datab => \LessThan0~0_combout\,
	datac => \LessThan0~1_combout\,
	datad => \Equal0~2_combout\,
	combout => \estado_novo~10_combout\);

-- Location: LCCOMB_X4_Y71_N16
\estado_novo~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \estado_novo~11_combout\ = (\novo[2]~input_o\ & (((\novo[1]~input_o\ & !andar(1))) # (!andar(2)))) # (!\novo[2]~input_o\ & (\novo[1]~input_o\ & (!andar(2) & !andar(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \novo[2]~input_o\,
	datab => \novo[1]~input_o\,
	datac => andar(2),
	datad => andar(1),
	combout => \estado_novo~11_combout\);

-- Location: LCCOMB_X4_Y71_N28
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\novo[2]~input_o\ & (andar(2) & (\novo[1]~input_o\ $ (!andar(1))))) # (!\novo[2]~input_o\ & (!andar(2) & (\novo[1]~input_o\ $ (!andar(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \novo[2]~input_o\,
	datab => \novo[1]~input_o\,
	datac => andar(2),
	datad => andar(1),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X5_Y71_N22
\estado_novo~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \estado_novo~12_combout\ = (\estado_novo~11_combout\) # ((\novo[0]~input_o\ & (!andar(0) & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \novo[0]~input_o\,
	datab => andar(0),
	datac => \estado_novo~11_combout\,
	datad => \Equal0~0_combout\,
	combout => \estado_novo~12_combout\);

-- Location: LCCOMB_X5_Y71_N28
\estado_novo~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \estado_novo~13_combout\ = ((\novo[3]~input_o\ & ((\estado_novo~12_combout\) # (!andar(3)))) # (!\novo[3]~input_o\ & (!andar(3) & \estado_novo~12_combout\))) # (!\estado_novo~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \novo[3]~input_o\,
	datab => andar(3),
	datac => \estado_novo~12_combout\,
	datad => \estado_novo~10_combout\,
	combout => \estado_novo~13_combout\);

-- Location: LCCOMB_X5_Y71_N18
\estado_novo~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \estado_novo~14_combout\ = (\estado_novo~13_combout\ & (\estado_novo~10_combout\)) # (!\estado_novo~13_combout\ & ((\estado_novo.subindo~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_novo~10_combout\,
	datac => \estado_novo.subindo~q\,
	datad => \estado_novo~13_combout\,
	combout => \estado_novo~14_combout\);

-- Location: FF_X5_Y71_N19
\estado_novo.subindo\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estado_novo~14_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_novo.subindo~q\);

-- Location: LCCOMB_X4_Y71_N8
\estado_atual.subindo~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \estado_atual.subindo~feeder_combout\ = \estado_novo.subindo~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \estado_novo.subindo~q\,
	combout => \estado_atual.subindo~feeder_combout\);

-- Location: FF_X4_Y71_N9
\estado_atual.subindo\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estado_atual.subindo~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_atual.subindo~q\);

-- Location: LCCOMB_X4_Y71_N24
\andar[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \andar[3]~10_combout\ = andar(3) $ (\andar[2]~9\ $ (!\estado_atual.subindo~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => andar(3),
	datad => \estado_atual.subindo~q\,
	cin => \andar[2]~9\,
	combout => \andar[3]~10_combout\);

-- Location: FF_X4_Y71_N25
\andar[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \andar[3]~10_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \estado_atual.parado~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => andar(3));

-- Location: LCCOMB_X5_Y71_N26
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\novo[0]~input_o\ & (andar(0) & (\novo[3]~input_o\ $ (!andar(3))))) # (!\novo[0]~input_o\ & (!andar(0) & (\novo[3]~input_o\ $ (!andar(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \novo[0]~input_o\,
	datab => \novo[3]~input_o\,
	datac => andar(0),
	datad => andar(3),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X5_Y71_N20
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!\Equal0~0_combout\) # (!\Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~1_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~2_combout\);

-- Location: FF_X5_Y71_N21
\estado_novo.parado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Equal0~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \estado_novo~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_novo.parado~q\);

-- Location: LCCOMB_X5_Y71_N30
\estado_atual.parado~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \estado_atual.parado~feeder_combout\ = \estado_novo.parado~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \estado_novo.parado~q\,
	combout => \estado_atual.parado~feeder_combout\);

-- Location: FF_X5_Y71_N31
\estado_atual.parado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estado_atual.parado~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_atual.parado~q\);

-- Location: LCCOMB_X5_Y71_N8
\andar[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \andar[0]~3_combout\ = andar(0) $ (\estado_atual.parado~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => andar(0),
	datad => \estado_atual.parado~q\,
	combout => \andar[0]~3_combout\);

-- Location: FF_X5_Y71_N9
\andar[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \andar[0]~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => andar(0));

-- Location: FF_X5_Y71_N11
\movimento[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estado_novo~10_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \estado_novo~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movimento[0]~reg0_q\);

-- Location: LCCOMB_X5_Y71_N12
\movimento~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \movimento~0_combout\ = (\Equal0~2_combout\ & ((\LessThan0~2_combout\) # ((\LessThan0~0_combout\ & \LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~2_combout\,
	datab => \LessThan0~0_combout\,
	datac => \LessThan0~1_combout\,
	datad => \Equal0~2_combout\,
	combout => \movimento~0_combout\);

-- Location: FF_X5_Y71_N13
\movimento[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \movimento~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \estado_novo~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \movimento[1]~reg0_q\);

ww_atual(0) <= \atual[0]~output_o\;

ww_atual(1) <= \atual[1]~output_o\;

ww_atual(2) <= \atual[2]~output_o\;

ww_atual(3) <= \atual[3]~output_o\;

ww_movimento(0) <= \movimento[0]~output_o\;

ww_movimento(1) <= \movimento[1]~output_o\;
END structure;


