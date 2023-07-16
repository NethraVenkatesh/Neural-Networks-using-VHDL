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

-- DATE "07/12/2023 23:08:27"

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


LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Genric_Matrix_MULT IS
    PORT (
	A : IN std_logic_vector(7 DOWNTO 0);
	B : IN std_logic_vector(7 DOWNTO 0);
	c : BUFFER std_logic_vector(15 DOWNTO 0)
	);
END Genric_Matrix_MULT;

-- Design Ports Information
-- c[0]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[1]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[2]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[3]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[4]	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[5]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[6]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[7]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[8]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[9]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[10]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[11]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[12]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[13]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[14]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[15]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Genric_Matrix_MULT IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_c : std_logic_vector(15 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \c[0]~output_o\ : std_logic;
SIGNAL \c[1]~output_o\ : std_logic;
SIGNAL \c[2]~output_o\ : std_logic;
SIGNAL \c[3]~output_o\ : std_logic;
SIGNAL \c[4]~output_o\ : std_logic;
SIGNAL \c[5]~output_o\ : std_logic;
SIGNAL \c[6]~output_o\ : std_logic;
SIGNAL \c[7]~output_o\ : std_logic;
SIGNAL \c[8]~output_o\ : std_logic;
SIGNAL \c[9]~output_o\ : std_logic;
SIGNAL \c[10]~output_o\ : std_logic;
SIGNAL \c[11]~output_o\ : std_logic;
SIGNAL \c[12]~output_o\ : std_logic;
SIGNAL \c[13]~output_o\ : std_logic;
SIGNAL \c[14]~output_o\ : std_logic;
SIGNAL \c[15]~output_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \Mult1|mult_core|result[0]~0_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \Mult6|mult_core|result[0]~0_combout\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \Mult4|mult_core|result[0]~0_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \Mult3|mult_core|result[0]~0_combout\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \Mult2|mult_core|result[0]~0_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \Mult5|mult_core|result[0]~0_combout\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \Add6~0_combout\ : std_logic;
SIGNAL \Mult7|mult_core|result[0]~0_combout\ : std_logic;
SIGNAL \Add7~0_combout\ : std_logic;
SIGNAL \Mult0|mult_core|result[0]~0_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \Mult6|mult_core|result[1]~1_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \Mult5|mult_core|result[1]~1_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \Mult4|mult_core|result[1]~1_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \Mult3|mult_core|result[1]~1_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \Mult2|mult_core|result[1]~1_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Add3~1\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \Add4~1\ : std_logic;
SIGNAL \Add4~2_combout\ : std_logic;
SIGNAL \Add5~1\ : std_logic;
SIGNAL \Add5~2_combout\ : std_logic;
SIGNAL \Add6~1\ : std_logic;
SIGNAL \Add6~2_combout\ : std_logic;
SIGNAL \Mult7|mult_core|result[1]~1_combout\ : std_logic;
SIGNAL \Add7~1\ : std_logic;
SIGNAL \Add7~2_combout\ : std_logic;
SIGNAL \Mult0|mult_core|result[1]~1_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Mult1|mult_core|result[1]~1_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Mult1|mult_core|result[2]~2_combout\ : std_logic;
SIGNAL \Mult0|mult_core|result[2]~2_combout\ : std_logic;
SIGNAL \Mult4|mult_core|result[2]~2_combout\ : std_logic;
SIGNAL \Mult3|mult_core|result[2]~2_combout\ : std_logic;
SIGNAL \Mult2|mult_core|result[2]~2_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \Add4~3\ : std_logic;
SIGNAL \Add4~4_combout\ : std_logic;
SIGNAL \Mult5|mult_core|result[2]~2_combout\ : std_logic;
SIGNAL \Add5~3\ : std_logic;
SIGNAL \Add5~4_combout\ : std_logic;
SIGNAL \Mult6|mult_core|result[2]~2_combout\ : std_logic;
SIGNAL \Add6~3\ : std_logic;
SIGNAL \Add6~4_combout\ : std_logic;
SIGNAL \Mult7|mult_core|result[2]~2_combout\ : std_logic;
SIGNAL \Add7~3\ : std_logic;
SIGNAL \Add7~4_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Mult0|mult_core|result[3]~3_combout\ : std_logic;
SIGNAL \Mult7|mult_core|result[3]~3_combout\ : std_logic;
SIGNAL \Mult6|mult_core|result[3]~3_combout\ : std_logic;
SIGNAL \Mult5|mult_core|result[3]~3_combout\ : std_logic;
SIGNAL \Mult4|mult_core|result[3]~3_combout\ : std_logic;
SIGNAL \Mult2|mult_core|result[3]~3_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Mult3|mult_core|result[3]~3_combout\ : std_logic;
SIGNAL \Add3~5\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \Add4~5\ : std_logic;
SIGNAL \Add4~6_combout\ : std_logic;
SIGNAL \Add5~5\ : std_logic;
SIGNAL \Add5~6_combout\ : std_logic;
SIGNAL \Add6~5\ : std_logic;
SIGNAL \Add6~6_combout\ : std_logic;
SIGNAL \Add7~5\ : std_logic;
SIGNAL \Add7~6_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Mult1|mult_core|result[3]~3_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_A <= A;
ww_B <= B;
c <= ww_c;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y42_N8
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

-- Location: IOOBUF_X22_Y39_N30
\c[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~0_combout\,
	devoe => ww_devoe,
	o => \c[0]~output_o\);

-- Location: IOOBUF_X26_Y39_N23
\c[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~2_combout\,
	devoe => ww_devoe,
	o => \c[1]~output_o\);

-- Location: IOOBUF_X31_Y39_N2
\c[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~4_combout\,
	devoe => ww_devoe,
	o => \c[2]~output_o\);

-- Location: IOOBUF_X22_Y39_N16
\c[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~6_combout\,
	devoe => ww_devoe,
	o => \c[3]~output_o\);

-- Location: IOOBUF_X0_Y37_N23
\c[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add3~0_combout\,
	devoe => ww_devoe,
	o => \c[4]~output_o\);

-- Location: IOOBUF_X0_Y37_N2
\c[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add3~2_combout\,
	devoe => ww_devoe,
	o => \c[5]~output_o\);

-- Location: IOOBUF_X34_Y39_N16
\c[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add3~4_combout\,
	devoe => ww_devoe,
	o => \c[6]~output_o\);

-- Location: IOOBUF_X24_Y39_N16
\c[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add3~6_combout\,
	devoe => ww_devoe,
	o => \c[7]~output_o\);

-- Location: IOOBUF_X20_Y39_N16
\c[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add5~0_combout\,
	devoe => ww_devoe,
	o => \c[8]~output_o\);

-- Location: IOOBUF_X20_Y39_N2
\c[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add5~2_combout\,
	devoe => ww_devoe,
	o => \c[9]~output_o\);

-- Location: IOOBUF_X24_Y39_N9
\c[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add5~4_combout\,
	devoe => ww_devoe,
	o => \c[10]~output_o\);

-- Location: IOOBUF_X20_Y39_N9
\c[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add5~6_combout\,
	devoe => ww_devoe,
	o => \c[11]~output_o\);

-- Location: IOOBUF_X34_Y39_N30
\c[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add7~0_combout\,
	devoe => ww_devoe,
	o => \c[12]~output_o\);

-- Location: IOOBUF_X0_Y36_N16
\c[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add7~2_combout\,
	devoe => ww_devoe,
	o => \c[13]~output_o\);

-- Location: IOOBUF_X22_Y39_N23
\c[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add7~4_combout\,
	devoe => ww_devoe,
	o => \c[14]~output_o\);

-- Location: IOOBUF_X34_Y39_N2
\c[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add7~6_combout\,
	devoe => ww_devoe,
	o => \c[15]~output_o\);

-- Location: IOIBUF_X24_Y39_N22
\A[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X29_Y39_N15
\B[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LCCOMB_X26_Y37_N16
\Mult1|mult_core|result[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|result[0]~0_combout\ = (\A[2]~input_o\ & \B[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[2]~input_o\,
	datac => \B[4]~input_o\,
	combout => \Mult1|mult_core|result[0]~0_combout\);

-- Location: IOIBUF_X34_Y39_N8
\B[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X34_Y39_N22
\A[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LCCOMB_X27_Y36_N8
\Mult6|mult_core|result[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult6|mult_core|result[0]~0_combout\ = (\B[2]~input_o\ & \A[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[2]~input_o\,
	datad => \A[4]~input_o\,
	combout => \Mult6|mult_core|result[0]~0_combout\);

-- Location: IOIBUF_X26_Y39_N8
\B[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LCCOMB_X27_Y36_N0
\Mult4|mult_core|result[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult4|mult_core|result[0]~0_combout\ = (\B[0]~input_o\ & \A[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datad => \A[4]~input_o\,
	combout => \Mult4|mult_core|result[0]~0_combout\);

-- Location: IOIBUF_X24_Y39_N29
\B[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LCCOMB_X25_Y36_N0
\Mult3|mult_core|result[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult3|mult_core|result[0]~0_combout\ = (\A[2]~input_o\ & \B[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datac => \B[6]~input_o\,
	combout => \Mult3|mult_core|result[0]~0_combout\);

-- Location: IOIBUF_X31_Y39_N8
\A[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LCCOMB_X27_Y36_N16
\Mult2|mult_core|result[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult2|mult_core|result[0]~0_combout\ = (\B[2]~input_o\ & \A[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \A[0]~input_o\,
	combout => \Mult2|mult_core|result[0]~0_combout\);

-- Location: LCCOMB_X26_Y36_N16
\Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = (\Mult2|mult_core|result[0]~0_combout\ & (\Add1~0_combout\ $ (VCC))) # (!\Mult2|mult_core|result[0]~0_combout\ & (\Add1~0_combout\ & VCC))
-- \Add2~1\ = CARRY((\Mult2|mult_core|result[0]~0_combout\ & \Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|mult_core|result[0]~0_combout\,
	datab => \Add1~0_combout\,
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X26_Y36_N8
\Add3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = (\Mult3|mult_core|result[0]~0_combout\ & (\Add2~0_combout\ $ (VCC))) # (!\Mult3|mult_core|result[0]~0_combout\ & (\Add2~0_combout\ & VCC))
-- \Add3~1\ = CARRY((\Mult3|mult_core|result[0]~0_combout\ & \Add2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult3|mult_core|result[0]~0_combout\,
	datab => \Add2~0_combout\,
	datad => VCC,
	combout => \Add3~0_combout\,
	cout => \Add3~1\);

-- Location: LCCOMB_X26_Y37_N22
\Add4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = (\Mult4|mult_core|result[0]~0_combout\ & (\Add3~0_combout\ $ (VCC))) # (!\Mult4|mult_core|result[0]~0_combout\ & (\Add3~0_combout\ & VCC))
-- \Add4~1\ = CARRY((\Mult4|mult_core|result[0]~0_combout\ & \Add3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult4|mult_core|result[0]~0_combout\,
	datab => \Add3~0_combout\,
	datad => VCC,
	combout => \Add4~0_combout\,
	cout => \Add4~1\);

-- Location: IOIBUF_X26_Y39_N29
\A[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LCCOMB_X26_Y37_N8
\Mult5|mult_core|result[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult5|mult_core|result[0]~0_combout\ = (\A[6]~input_o\ & \B[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[6]~input_o\,
	datac => \B[4]~input_o\,
	combout => \Mult5|mult_core|result[0]~0_combout\);

-- Location: LCCOMB_X26_Y37_N0
\Add5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~0_combout\ = (\Add4~0_combout\ & (\Mult5|mult_core|result[0]~0_combout\ $ (VCC))) # (!\Add4~0_combout\ & (\Mult5|mult_core|result[0]~0_combout\ & VCC))
-- \Add5~1\ = CARRY((\Add4~0_combout\ & \Mult5|mult_core|result[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~0_combout\,
	datab => \Mult5|mult_core|result[0]~0_combout\,
	datad => VCC,
	combout => \Add5~0_combout\,
	cout => \Add5~1\);

-- Location: LCCOMB_X25_Y36_N10
\Add6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~0_combout\ = (\Mult6|mult_core|result[0]~0_combout\ & (\Add5~0_combout\ $ (VCC))) # (!\Mult6|mult_core|result[0]~0_combout\ & (\Add5~0_combout\ & VCC))
-- \Add6~1\ = CARRY((\Mult6|mult_core|result[0]~0_combout\ & \Add5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult6|mult_core|result[0]~0_combout\,
	datab => \Add5~0_combout\,
	datad => VCC,
	combout => \Add6~0_combout\,
	cout => \Add6~1\);

-- Location: LCCOMB_X25_Y36_N8
\Mult7|mult_core|result[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult7|mult_core|result[0]~0_combout\ = (\B[6]~input_o\ & \A[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[6]~input_o\,
	datad => \A[6]~input_o\,
	combout => \Mult7|mult_core|result[0]~0_combout\);

-- Location: LCCOMB_X25_Y36_N24
\Add7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~0_combout\ = (\Add6~0_combout\ & (\Mult7|mult_core|result[0]~0_combout\ $ (VCC))) # (!\Add6~0_combout\ & (\Mult7|mult_core|result[0]~0_combout\ & VCC))
-- \Add7~1\ = CARRY((\Add6~0_combout\ & \Mult7|mult_core|result[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~0_combout\,
	datab => \Mult7|mult_core|result[0]~0_combout\,
	datad => VCC,
	combout => \Add7~0_combout\,
	cout => \Add7~1\);

-- Location: LCCOMB_X27_Y36_N24
\Mult0|mult_core|result[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|result[0]~0_combout\ = (\B[0]~input_o\ & \A[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \A[0]~input_o\,
	combout => \Mult0|mult_core|result[0]~0_combout\);

-- Location: LCCOMB_X26_Y36_N24
\Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\Add7~0_combout\ & (\Mult0|mult_core|result[0]~0_combout\ $ (VCC))) # (!\Add7~0_combout\ & (\Mult0|mult_core|result[0]~0_combout\ & VCC))
-- \Add0~1\ = CARRY((\Add7~0_combout\ & \Mult0|mult_core|result[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~0_combout\,
	datab => \Mult0|mult_core|result[0]~0_combout\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X26_Y36_N0
\Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\Mult1|mult_core|result[0]~0_combout\ & (\Add0~0_combout\ $ (VCC))) # (!\Mult1|mult_core|result[0]~0_combout\ & (\Add0~0_combout\ & VCC))
-- \Add1~1\ = CARRY((\Mult1|mult_core|result[0]~0_combout\ & \Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|mult_core|result[0]~0_combout\,
	datab => \Add0~0_combout\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: IOIBUF_X31_Y39_N15
\B[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X31_Y39_N29
\A[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LCCOMB_X27_Y36_N26
\Mult6|mult_core|result[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult6|mult_core|result[1]~1_combout\ = (\B[2]~input_o\ & (\A[5]~input_o\ $ (((\B[3]~input_o\ & \A[4]~input_o\))))) # (!\B[2]~input_o\ & (\B[3]~input_o\ & ((\A[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \A[5]~input_o\,
	datad => \A[4]~input_o\,
	combout => \Mult6|mult_core|result[1]~1_combout\);

-- Location: IOIBUF_X29_Y39_N1
\B[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X26_Y39_N1
\A[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LCCOMB_X26_Y37_N10
\Mult5|mult_core|result[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult5|mult_core|result[1]~1_combout\ = (\B[5]~input_o\ & (\A[6]~input_o\ $ (((\A[7]~input_o\ & \B[4]~input_o\))))) # (!\B[5]~input_o\ & (\A[7]~input_o\ & (\B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \A[7]~input_o\,
	datac => \B[4]~input_o\,
	datad => \A[6]~input_o\,
	combout => \Mult5|mult_core|result[1]~1_combout\);

-- Location: IOIBUF_X31_Y39_N22
\B[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X27_Y36_N2
\Mult4|mult_core|result[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult4|mult_core|result[1]~1_combout\ = (\B[0]~input_o\ & (\A[5]~input_o\ $ (((\B[1]~input_o\ & \A[4]~input_o\))))) # (!\B[0]~input_o\ & (\B[1]~input_o\ & ((\A[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[5]~input_o\,
	datad => \A[4]~input_o\,
	combout => \Mult4|mult_core|result[1]~1_combout\);

-- Location: IOIBUF_X24_Y39_N1
\B[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X26_Y39_N15
\A[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X25_Y36_N2
\Mult3|mult_core|result[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult3|mult_core|result[1]~1_combout\ = (\B[7]~input_o\ & (\A[2]~input_o\ $ (((\A[3]~input_o\ & \B[6]~input_o\))))) # (!\B[7]~input_o\ & (\A[3]~input_o\ & (\B[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \A[3]~input_o\,
	datac => \B[6]~input_o\,
	datad => \A[2]~input_o\,
	combout => \Mult3|mult_core|result[1]~1_combout\);

-- Location: IOIBUF_X29_Y39_N8
\A[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X27_Y36_N10
\Mult2|mult_core|result[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult2|mult_core|result[1]~1_combout\ = (\B[2]~input_o\ & (\A[1]~input_o\ $ (((\A[0]~input_o\ & \B[3]~input_o\))))) # (!\B[2]~input_o\ & (((\A[0]~input_o\ & \B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \A[1]~input_o\,
	datac => \A[0]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Mult2|mult_core|result[1]~1_combout\);

-- Location: LCCOMB_X26_Y36_N18
\Add2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (\Mult2|mult_core|result[1]~1_combout\ & ((\Add1~2_combout\ & (\Add2~1\ & VCC)) # (!\Add1~2_combout\ & (!\Add2~1\)))) # (!\Mult2|mult_core|result[1]~1_combout\ & ((\Add1~2_combout\ & (!\Add2~1\)) # (!\Add1~2_combout\ & ((\Add2~1\) # 
-- (GND)))))
-- \Add2~3\ = CARRY((\Mult2|mult_core|result[1]~1_combout\ & (!\Add1~2_combout\ & !\Add2~1\)) # (!\Mult2|mult_core|result[1]~1_combout\ & ((!\Add2~1\) # (!\Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|mult_core|result[1]~1_combout\,
	datab => \Add1~2_combout\,
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X26_Y36_N10
\Add3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (\Mult3|mult_core|result[1]~1_combout\ & ((\Add2~2_combout\ & (\Add3~1\ & VCC)) # (!\Add2~2_combout\ & (!\Add3~1\)))) # (!\Mult3|mult_core|result[1]~1_combout\ & ((\Add2~2_combout\ & (!\Add3~1\)) # (!\Add2~2_combout\ & ((\Add3~1\) # 
-- (GND)))))
-- \Add3~3\ = CARRY((\Mult3|mult_core|result[1]~1_combout\ & (!\Add2~2_combout\ & !\Add3~1\)) # (!\Mult3|mult_core|result[1]~1_combout\ & ((!\Add3~1\) # (!\Add2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult3|mult_core|result[1]~1_combout\,
	datab => \Add2~2_combout\,
	datad => VCC,
	cin => \Add3~1\,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

-- Location: LCCOMB_X26_Y37_N24
\Add4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~2_combout\ = (\Mult4|mult_core|result[1]~1_combout\ & ((\Add3~2_combout\ & (\Add4~1\ & VCC)) # (!\Add3~2_combout\ & (!\Add4~1\)))) # (!\Mult4|mult_core|result[1]~1_combout\ & ((\Add3~2_combout\ & (!\Add4~1\)) # (!\Add3~2_combout\ & ((\Add4~1\) # 
-- (GND)))))
-- \Add4~3\ = CARRY((\Mult4|mult_core|result[1]~1_combout\ & (!\Add3~2_combout\ & !\Add4~1\)) # (!\Mult4|mult_core|result[1]~1_combout\ & ((!\Add4~1\) # (!\Add3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult4|mult_core|result[1]~1_combout\,
	datab => \Add3~2_combout\,
	datad => VCC,
	cin => \Add4~1\,
	combout => \Add4~2_combout\,
	cout => \Add4~3\);

-- Location: LCCOMB_X26_Y37_N2
\Add5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~2_combout\ = (\Mult5|mult_core|result[1]~1_combout\ & ((\Add4~2_combout\ & (\Add5~1\ & VCC)) # (!\Add4~2_combout\ & (!\Add5~1\)))) # (!\Mult5|mult_core|result[1]~1_combout\ & ((\Add4~2_combout\ & (!\Add5~1\)) # (!\Add4~2_combout\ & ((\Add5~1\) # 
-- (GND)))))
-- \Add5~3\ = CARRY((\Mult5|mult_core|result[1]~1_combout\ & (!\Add4~2_combout\ & !\Add5~1\)) # (!\Mult5|mult_core|result[1]~1_combout\ & ((!\Add5~1\) # (!\Add4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult5|mult_core|result[1]~1_combout\,
	datab => \Add4~2_combout\,
	datad => VCC,
	cin => \Add5~1\,
	combout => \Add5~2_combout\,
	cout => \Add5~3\);

-- Location: LCCOMB_X25_Y36_N12
\Add6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~2_combout\ = (\Mult6|mult_core|result[1]~1_combout\ & ((\Add5~2_combout\ & (\Add6~1\ & VCC)) # (!\Add5~2_combout\ & (!\Add6~1\)))) # (!\Mult6|mult_core|result[1]~1_combout\ & ((\Add5~2_combout\ & (!\Add6~1\)) # (!\Add5~2_combout\ & ((\Add6~1\) # 
-- (GND)))))
-- \Add6~3\ = CARRY((\Mult6|mult_core|result[1]~1_combout\ & (!\Add5~2_combout\ & !\Add6~1\)) # (!\Mult6|mult_core|result[1]~1_combout\ & ((!\Add6~1\) # (!\Add5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult6|mult_core|result[1]~1_combout\,
	datab => \Add5~2_combout\,
	datad => VCC,
	cin => \Add6~1\,
	combout => \Add6~2_combout\,
	cout => \Add6~3\);

-- Location: LCCOMB_X25_Y36_N18
\Mult7|mult_core|result[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult7|mult_core|result[1]~1_combout\ = (\B[6]~input_o\ & (\A[7]~input_o\ $ (((\B[7]~input_o\ & \A[6]~input_o\))))) # (!\B[6]~input_o\ & (((\B[7]~input_o\ & \A[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \A[7]~input_o\,
	datac => \B[7]~input_o\,
	datad => \A[6]~input_o\,
	combout => \Mult7|mult_core|result[1]~1_combout\);

-- Location: LCCOMB_X25_Y36_N26
\Add7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~2_combout\ = (\Add6~2_combout\ & ((\Mult7|mult_core|result[1]~1_combout\ & (\Add7~1\ & VCC)) # (!\Mult7|mult_core|result[1]~1_combout\ & (!\Add7~1\)))) # (!\Add6~2_combout\ & ((\Mult7|mult_core|result[1]~1_combout\ & (!\Add7~1\)) # 
-- (!\Mult7|mult_core|result[1]~1_combout\ & ((\Add7~1\) # (GND)))))
-- \Add7~3\ = CARRY((\Add6~2_combout\ & (!\Mult7|mult_core|result[1]~1_combout\ & !\Add7~1\)) # (!\Add6~2_combout\ & ((!\Add7~1\) # (!\Mult7|mult_core|result[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~2_combout\,
	datab => \Mult7|mult_core|result[1]~1_combout\,
	datad => VCC,
	cin => \Add7~1\,
	combout => \Add7~2_combout\,
	cout => \Add7~3\);

-- Location: LCCOMB_X27_Y36_N18
\Mult0|mult_core|result[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|result[1]~1_combout\ = (\B[0]~input_o\ & (\A[1]~input_o\ $ (((\A[0]~input_o\ & \B[1]~input_o\))))) # (!\B[0]~input_o\ & (((\A[0]~input_o\ & \B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[1]~input_o\,
	datac => \A[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Mult0|mult_core|result[1]~1_combout\);

-- Location: LCCOMB_X26_Y36_N26
\Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\Add7~2_combout\ & ((\Mult0|mult_core|result[1]~1_combout\ & (\Add0~1\ & VCC)) # (!\Mult0|mult_core|result[1]~1_combout\ & (!\Add0~1\)))) # (!\Add7~2_combout\ & ((\Mult0|mult_core|result[1]~1_combout\ & (!\Add0~1\)) # 
-- (!\Mult0|mult_core|result[1]~1_combout\ & ((\Add0~1\) # (GND)))))
-- \Add0~3\ = CARRY((\Add7~2_combout\ & (!\Mult0|mult_core|result[1]~1_combout\ & !\Add0~1\)) # (!\Add7~2_combout\ & ((!\Add0~1\) # (!\Mult0|mult_core|result[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~2_combout\,
	datab => \Mult0|mult_core|result[1]~1_combout\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X26_Y37_N18
\Mult1|mult_core|result[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|result[1]~1_combout\ = (\A[3]~input_o\ & (\B[4]~input_o\ $ (((\A[2]~input_o\ & \B[5]~input_o\))))) # (!\A[3]~input_o\ & (\A[2]~input_o\ & ((\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \A[2]~input_o\,
	datac => \B[4]~input_o\,
	datad => \B[5]~input_o\,
	combout => \Mult1|mult_core|result[1]~1_combout\);

-- Location: LCCOMB_X26_Y36_N2
\Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\Add0~2_combout\ & ((\Mult1|mult_core|result[1]~1_combout\ & (\Add1~1\ & VCC)) # (!\Mult1|mult_core|result[1]~1_combout\ & (!\Add1~1\)))) # (!\Add0~2_combout\ & ((\Mult1|mult_core|result[1]~1_combout\ & (!\Add1~1\)) # 
-- (!\Mult1|mult_core|result[1]~1_combout\ & ((\Add1~1\) # (GND)))))
-- \Add1~3\ = CARRY((\Add0~2_combout\ & (!\Mult1|mult_core|result[1]~1_combout\ & !\Add1~1\)) # (!\Add0~2_combout\ & ((!\Add1~1\) # (!\Mult1|mult_core|result[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \Mult1|mult_core|result[1]~1_combout\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X26_Y37_N12
\Mult1|mult_core|result[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|result[2]~2_combout\ = (\A[3]~input_o\ & (\B[5]~input_o\ & ((!\B[4]~input_o\) # (!\A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \A[2]~input_o\,
	datac => \B[4]~input_o\,
	datad => \B[5]~input_o\,
	combout => \Mult1|mult_core|result[2]~2_combout\);

-- Location: LCCOMB_X27_Y36_N20
\Mult0|mult_core|result[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|result[2]~2_combout\ = (\A[1]~input_o\ & (\B[1]~input_o\ & ((!\A[0]~input_o\) # (!\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[1]~input_o\,
	datac => \A[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Mult0|mult_core|result[2]~2_combout\);

-- Location: LCCOMB_X27_Y36_N4
\Mult4|mult_core|result[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult4|mult_core|result[2]~2_combout\ = (\B[1]~input_o\ & (\A[5]~input_o\ & ((!\A[4]~input_o\) # (!\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[5]~input_o\,
	datad => \A[4]~input_o\,
	combout => \Mult4|mult_core|result[2]~2_combout\);

-- Location: LCCOMB_X25_Y36_N4
\Mult3|mult_core|result[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult3|mult_core|result[2]~2_combout\ = (\B[7]~input_o\ & (\A[3]~input_o\ & ((!\A[2]~input_o\) # (!\B[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \A[3]~input_o\,
	datac => \B[6]~input_o\,
	datad => \A[2]~input_o\,
	combout => \Mult3|mult_core|result[2]~2_combout\);

-- Location: LCCOMB_X27_Y36_N12
\Mult2|mult_core|result[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult2|mult_core|result[2]~2_combout\ = (\A[1]~input_o\ & (\B[3]~input_o\ & ((!\A[0]~input_o\) # (!\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \A[1]~input_o\,
	datac => \A[0]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Mult2|mult_core|result[2]~2_combout\);

-- Location: LCCOMB_X26_Y36_N20
\Add2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = ((\Mult2|mult_core|result[2]~2_combout\ $ (\Add1~4_combout\ $ (!\Add2~3\)))) # (GND)
-- \Add2~5\ = CARRY((\Mult2|mult_core|result[2]~2_combout\ & ((\Add1~4_combout\) # (!\Add2~3\))) # (!\Mult2|mult_core|result[2]~2_combout\ & (\Add1~4_combout\ & !\Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|mult_core|result[2]~2_combout\,
	datab => \Add1~4_combout\,
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X26_Y36_N12
\Add3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = ((\Mult3|mult_core|result[2]~2_combout\ $ (\Add2~4_combout\ $ (!\Add3~3\)))) # (GND)
-- \Add3~5\ = CARRY((\Mult3|mult_core|result[2]~2_combout\ & ((\Add2~4_combout\) # (!\Add3~3\))) # (!\Mult3|mult_core|result[2]~2_combout\ & (\Add2~4_combout\ & !\Add3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult3|mult_core|result[2]~2_combout\,
	datab => \Add2~4_combout\,
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~4_combout\,
	cout => \Add3~5\);

-- Location: LCCOMB_X26_Y37_N26
\Add4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~4_combout\ = ((\Mult4|mult_core|result[2]~2_combout\ $ (\Add3~4_combout\ $ (!\Add4~3\)))) # (GND)
-- \Add4~5\ = CARRY((\Mult4|mult_core|result[2]~2_combout\ & ((\Add3~4_combout\) # (!\Add4~3\))) # (!\Mult4|mult_core|result[2]~2_combout\ & (\Add3~4_combout\ & !\Add4~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult4|mult_core|result[2]~2_combout\,
	datab => \Add3~4_combout\,
	datad => VCC,
	cin => \Add4~3\,
	combout => \Add4~4_combout\,
	cout => \Add4~5\);

-- Location: LCCOMB_X26_Y37_N20
\Mult5|mult_core|result[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult5|mult_core|result[2]~2_combout\ = (\B[5]~input_o\ & (\A[7]~input_o\ & ((!\A[6]~input_o\) # (!\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \A[7]~input_o\,
	datac => \B[4]~input_o\,
	datad => \A[6]~input_o\,
	combout => \Mult5|mult_core|result[2]~2_combout\);

-- Location: LCCOMB_X26_Y37_N4
\Add5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~4_combout\ = ((\Add4~4_combout\ $ (\Mult5|mult_core|result[2]~2_combout\ $ (!\Add5~3\)))) # (GND)
-- \Add5~5\ = CARRY((\Add4~4_combout\ & ((\Mult5|mult_core|result[2]~2_combout\) # (!\Add5~3\))) # (!\Add4~4_combout\ & (\Mult5|mult_core|result[2]~2_combout\ & !\Add5~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~4_combout\,
	datab => \Mult5|mult_core|result[2]~2_combout\,
	datad => VCC,
	cin => \Add5~3\,
	combout => \Add5~4_combout\,
	cout => \Add5~5\);

-- Location: LCCOMB_X27_Y36_N28
\Mult6|mult_core|result[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult6|mult_core|result[2]~2_combout\ = (\B[3]~input_o\ & (\A[5]~input_o\ & ((!\A[4]~input_o\) # (!\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \A[5]~input_o\,
	datad => \A[4]~input_o\,
	combout => \Mult6|mult_core|result[2]~2_combout\);

-- Location: LCCOMB_X25_Y36_N14
\Add6~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~4_combout\ = ((\Add5~4_combout\ $ (\Mult6|mult_core|result[2]~2_combout\ $ (!\Add6~3\)))) # (GND)
-- \Add6~5\ = CARRY((\Add5~4_combout\ & ((\Mult6|mult_core|result[2]~2_combout\) # (!\Add6~3\))) # (!\Add5~4_combout\ & (\Mult6|mult_core|result[2]~2_combout\ & !\Add6~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~4_combout\,
	datab => \Mult6|mult_core|result[2]~2_combout\,
	datad => VCC,
	cin => \Add6~3\,
	combout => \Add6~4_combout\,
	cout => \Add6~5\);

-- Location: LCCOMB_X25_Y36_N20
\Mult7|mult_core|result[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult7|mult_core|result[2]~2_combout\ = (\A[7]~input_o\ & (\B[7]~input_o\ & ((!\A[6]~input_o\) # (!\B[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \A[7]~input_o\,
	datac => \B[7]~input_o\,
	datad => \A[6]~input_o\,
	combout => \Mult7|mult_core|result[2]~2_combout\);

-- Location: LCCOMB_X25_Y36_N28
\Add7~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~4_combout\ = ((\Add6~4_combout\ $ (\Mult7|mult_core|result[2]~2_combout\ $ (!\Add7~3\)))) # (GND)
-- \Add7~5\ = CARRY((\Add6~4_combout\ & ((\Mult7|mult_core|result[2]~2_combout\) # (!\Add7~3\))) # (!\Add6~4_combout\ & (\Mult7|mult_core|result[2]~2_combout\ & !\Add7~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~4_combout\,
	datab => \Mult7|mult_core|result[2]~2_combout\,
	datad => VCC,
	cin => \Add7~3\,
	combout => \Add7~4_combout\,
	cout => \Add7~5\);

-- Location: LCCOMB_X26_Y36_N28
\Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((\Mult0|mult_core|result[2]~2_combout\ $ (\Add7~4_combout\ $ (!\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((\Mult0|mult_core|result[2]~2_combout\ & ((\Add7~4_combout\) # (!\Add0~3\))) # (!\Mult0|mult_core|result[2]~2_combout\ & (\Add7~4_combout\ & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|result[2]~2_combout\,
	datab => \Add7~4_combout\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X26_Y36_N4
\Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = ((\Mult1|mult_core|result[2]~2_combout\ $ (\Add0~4_combout\ $ (!\Add1~3\)))) # (GND)
-- \Add1~5\ = CARRY((\Mult1|mult_core|result[2]~2_combout\ & ((\Add0~4_combout\) # (!\Add1~3\))) # (!\Mult1|mult_core|result[2]~2_combout\ & (\Add0~4_combout\ & !\Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|mult_core|result[2]~2_combout\,
	datab => \Add0~4_combout\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X27_Y36_N6
\Mult0|mult_core|result[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|result[3]~3_combout\ = (\B[0]~input_o\ & (\A[1]~input_o\ & (\A[0]~input_o\ & \B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[1]~input_o\,
	datac => \A[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Mult0|mult_core|result[3]~3_combout\);

-- Location: LCCOMB_X25_Y36_N6
\Mult7|mult_core|result[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult7|mult_core|result[3]~3_combout\ = (\B[6]~input_o\ & (\A[7]~input_o\ & (\B[7]~input_o\ & \A[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \A[7]~input_o\,
	datac => \B[7]~input_o\,
	datad => \A[6]~input_o\,
	combout => \Mult7|mult_core|result[3]~3_combout\);

-- Location: LCCOMB_X27_Y36_N22
\Mult6|mult_core|result[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult6|mult_core|result[3]~3_combout\ = (\B[2]~input_o\ & (\B[3]~input_o\ & (\A[5]~input_o\ & \A[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \A[5]~input_o\,
	datad => \A[4]~input_o\,
	combout => \Mult6|mult_core|result[3]~3_combout\);

-- Location: LCCOMB_X26_Y37_N14
\Mult5|mult_core|result[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult5|mult_core|result[3]~3_combout\ = (\B[5]~input_o\ & (\A[7]~input_o\ & (\B[4]~input_o\ & \A[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \A[7]~input_o\,
	datac => \B[4]~input_o\,
	datad => \A[6]~input_o\,
	combout => \Mult5|mult_core|result[3]~3_combout\);

-- Location: LCCOMB_X27_Y36_N14
\Mult4|mult_core|result[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult4|mult_core|result[3]~3_combout\ = (\B[0]~input_o\ & (\B[1]~input_o\ & (\A[5]~input_o\ & \A[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[5]~input_o\,
	datad => \A[4]~input_o\,
	combout => \Mult4|mult_core|result[3]~3_combout\);

-- Location: LCCOMB_X27_Y36_N30
\Mult2|mult_core|result[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult2|mult_core|result[3]~3_combout\ = (\B[2]~input_o\ & (\A[1]~input_o\ & (\A[0]~input_o\ & \B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \A[1]~input_o\,
	datac => \A[0]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Mult2|mult_core|result[3]~3_combout\);

-- Location: LCCOMB_X26_Y36_N22
\Add2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = \Mult2|mult_core|result[3]~3_combout\ $ (\Add2~5\ $ (\Add1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|mult_core|result[3]~3_combout\,
	datad => \Add1~6_combout\,
	cin => \Add2~5\,
	combout => \Add2~6_combout\);

-- Location: LCCOMB_X25_Y36_N22
\Mult3|mult_core|result[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult3|mult_core|result[3]~3_combout\ = (\B[7]~input_o\ & (\A[3]~input_o\ & (\B[6]~input_o\ & \A[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \A[3]~input_o\,
	datac => \B[6]~input_o\,
	datad => \A[2]~input_o\,
	combout => \Mult3|mult_core|result[3]~3_combout\);

-- Location: LCCOMB_X26_Y36_N14
\Add3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = \Add2~6_combout\ $ (\Add3~5\ $ (\Mult3|mult_core|result[3]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datad => \Mult3|mult_core|result[3]~3_combout\,
	cin => \Add3~5\,
	combout => \Add3~6_combout\);

-- Location: LCCOMB_X26_Y37_N28
\Add4~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~6_combout\ = \Mult4|mult_core|result[3]~3_combout\ $ (\Add4~5\ $ (\Add3~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult4|mult_core|result[3]~3_combout\,
	datad => \Add3~6_combout\,
	cin => \Add4~5\,
	combout => \Add4~6_combout\);

-- Location: LCCOMB_X26_Y37_N6
\Add5~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~6_combout\ = \Mult5|mult_core|result[3]~3_combout\ $ (\Add5~5\ $ (\Add4~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult5|mult_core|result[3]~3_combout\,
	datad => \Add4~6_combout\,
	cin => \Add5~5\,
	combout => \Add5~6_combout\);

-- Location: LCCOMB_X25_Y36_N16
\Add6~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~6_combout\ = \Mult6|mult_core|result[3]~3_combout\ $ (\Add6~5\ $ (\Add5~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult6|mult_core|result[3]~3_combout\,
	datad => \Add5~6_combout\,
	cin => \Add6~5\,
	combout => \Add6~6_combout\);

-- Location: LCCOMB_X25_Y36_N30
\Add7~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~6_combout\ = \Mult7|mult_core|result[3]~3_combout\ $ (\Add7~5\ $ (\Add6~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult7|mult_core|result[3]~3_combout\,
	datad => \Add6~6_combout\,
	cin => \Add7~5\,
	combout => \Add7~6_combout\);

-- Location: LCCOMB_X26_Y36_N30
\Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = \Mult0|mult_core|result[3]~3_combout\ $ (\Add0~5\ $ (\Add7~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|result[3]~3_combout\,
	datad => \Add7~6_combout\,
	cin => \Add0~5\,
	combout => \Add0~6_combout\);

-- Location: LCCOMB_X26_Y37_N30
\Mult1|mult_core|result[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|result[3]~3_combout\ = (\A[3]~input_o\ & (\A[2]~input_o\ & (\B[4]~input_o\ & \B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \A[2]~input_o\,
	datac => \B[4]~input_o\,
	datad => \B[5]~input_o\,
	combout => \Mult1|mult_core|result[3]~3_combout\);

-- Location: LCCOMB_X26_Y36_N6
\Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = \Add0~6_combout\ $ (\Mult1|mult_core|result[3]~3_combout\ $ (\Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \Mult1|mult_core|result[3]~3_combout\,
	cin => \Add1~5\,
	combout => \Add1~6_combout\);

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

ww_c(0) <= \c[0]~output_o\;

ww_c(1) <= \c[1]~output_o\;

ww_c(2) <= \c[2]~output_o\;

ww_c(3) <= \c[3]~output_o\;

ww_c(4) <= \c[4]~output_o\;

ww_c(5) <= \c[5]~output_o\;

ww_c(6) <= \c[6]~output_o\;

ww_c(7) <= \c[7]~output_o\;

ww_c(8) <= \c[8]~output_o\;

ww_c(9) <= \c[9]~output_o\;

ww_c(10) <= \c[10]~output_o\;

ww_c(11) <= \c[11]~output_o\;

ww_c(12) <= \c[12]~output_o\;

ww_c(13) <= \c[13]~output_o\;

ww_c(14) <= \c[14]~output_o\;

ww_c(15) <= \c[15]~output_o\;
END structure;


