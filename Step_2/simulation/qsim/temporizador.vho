-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "04/14/2018 20:52:56"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	temporizador IS
    PORT (
	clk : IN std_logic;
	start : IN std_logic;
	reset : IN std_logic;
	s : BUFFER std_logic_vector(5 DOWNTO 0);
	m : BUFFER std_logic_vector(5 DOWNTO 0);
	fim : BUFFER std_logic
	);
END temporizador;

ARCHITECTURE structure OF temporizador IS
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
SIGNAL ww_start : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_s : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_m : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_fim : std_logic;
SIGNAL \s[0]~output_o\ : std_logic;
SIGNAL \s[1]~output_o\ : std_logic;
SIGNAL \s[2]~output_o\ : std_logic;
SIGNAL \s[3]~output_o\ : std_logic;
SIGNAL \s[4]~output_o\ : std_logic;
SIGNAL \s[5]~output_o\ : std_logic;
SIGNAL \m[0]~output_o\ : std_logic;
SIGNAL \m[1]~output_o\ : std_logic;
SIGNAL \m[2]~output_o\ : std_logic;
SIGNAL \m[3]~output_o\ : std_logic;
SIGNAL \m[4]~output_o\ : std_logic;
SIGNAL \m[5]~output_o\ : std_logic;
SIGNAL \fim~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \seg~5_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \seg[3]~3_combout\ : std_logic;
SIGNAL \min[0]~0_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~3_combout\ : std_logic;
SIGNAL \Add1~5_combout\ : std_logic;
SIGNAL \Add1~4\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~9_combout\ : std_logic;
SIGNAL \Add1~11_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~15_combout\ : std_logic;
SIGNAL \Add1~17_combout\ : std_logic;
SIGNAL \Add1~16\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~21_combout\ : std_logic;
SIGNAL \Add1~23_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~27_combout\ : std_logic;
SIGNAL \Add1~29_combout\ : std_logic;
SIGNAL \Add1~28\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \Add1~32_combout\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~33_combout\ : std_logic;
SIGNAL \Add1~35_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \Add1~34\ : std_logic;
SIGNAL \Add1~36_combout\ : std_logic;
SIGNAL \Add1~38_combout\ : std_logic;
SIGNAL \Add1~37\ : std_logic;
SIGNAL \Add1~39_combout\ : std_logic;
SIGNAL \Add1~41_combout\ : std_logic;
SIGNAL \Add1~40\ : std_logic;
SIGNAL \Add1~42_combout\ : std_logic;
SIGNAL \Add1~44_combout\ : std_logic;
SIGNAL \Add1~43\ : std_logic;
SIGNAL \Add1~45_combout\ : std_logic;
SIGNAL \Add1~47_combout\ : std_logic;
SIGNAL \LessThan1~3_combout\ : std_logic;
SIGNAL \LessThan1~4_combout\ : std_logic;
SIGNAL \Add1~46\ : std_logic;
SIGNAL \Add1~48_combout\ : std_logic;
SIGNAL \Add1~50_combout\ : std_logic;
SIGNAL \Add1~49\ : std_logic;
SIGNAL \Add1~51_combout\ : std_logic;
SIGNAL \Add1~53_combout\ : std_logic;
SIGNAL \Add1~52\ : std_logic;
SIGNAL \Add1~54_combout\ : std_logic;
SIGNAL \Add1~56_combout\ : std_logic;
SIGNAL \Add1~55\ : std_logic;
SIGNAL \Add1~57_combout\ : std_logic;
SIGNAL \Add1~59_combout\ : std_logic;
SIGNAL \LessThan1~5_combout\ : std_logic;
SIGNAL \Add1~58\ : std_logic;
SIGNAL \Add1~60_combout\ : std_logic;
SIGNAL \Add1~62_combout\ : std_logic;
SIGNAL \Add1~61\ : std_logic;
SIGNAL \Add1~63_combout\ : std_logic;
SIGNAL \Add1~65_combout\ : std_logic;
SIGNAL \Add1~64\ : std_logic;
SIGNAL \Add1~66_combout\ : std_logic;
SIGNAL \Add1~68_combout\ : std_logic;
SIGNAL \Add1~67\ : std_logic;
SIGNAL \Add1~69_combout\ : std_logic;
SIGNAL \Add1~71_combout\ : std_logic;
SIGNAL \LessThan1~6_combout\ : std_logic;
SIGNAL \Add1~70\ : std_logic;
SIGNAL \Add1~72_combout\ : std_logic;
SIGNAL \Add1~74_combout\ : std_logic;
SIGNAL \Add1~73\ : std_logic;
SIGNAL \Add1~75_combout\ : std_logic;
SIGNAL \Add1~77_combout\ : std_logic;
SIGNAL \Add1~76\ : std_logic;
SIGNAL \Add1~78_combout\ : std_logic;
SIGNAL \Add1~80_combout\ : std_logic;
SIGNAL \Add1~79\ : std_logic;
SIGNAL \Add1~81_combout\ : std_logic;
SIGNAL \Add1~83_combout\ : std_logic;
SIGNAL \LessThan1~7_combout\ : std_logic;
SIGNAL \Add1~82\ : std_logic;
SIGNAL \Add1~84_combout\ : std_logic;
SIGNAL \Add1~86_combout\ : std_logic;
SIGNAL \Add1~85\ : std_logic;
SIGNAL \Add1~87_combout\ : std_logic;
SIGNAL \Add1~89_combout\ : std_logic;
SIGNAL \Add1~88\ : std_logic;
SIGNAL \Add1~90_combout\ : std_logic;
SIGNAL \Add1~92_combout\ : std_logic;
SIGNAL \LessThan1~8_combout\ : std_logic;
SIGNAL \LessThan1~9_combout\ : std_logic;
SIGNAL \Add1~91\ : std_logic;
SIGNAL \Add1~93_combout\ : std_logic;
SIGNAL \Add1~95_combout\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \seg[3]~4_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \seg~6_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \seg~7_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \seg~8_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \seg~9_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \seg~11_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \seg~12_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \seg~13_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \seg~14_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \seg~15_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \seg~16_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \seg~17_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \seg~18_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \seg~19_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \seg~20_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \seg~21_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \seg~22_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \seg~23_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \seg~24_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \seg~25_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \seg~26_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \seg~27_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \seg~28_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \seg~29_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \seg~30_combout\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \seg~31_combout\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \seg~32_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \seg~33_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \seg~34_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \seg~35_combout\ : std_logic;
SIGNAL \Add0~61\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \seg[31]~10_combout\ : std_logic;
SIGNAL \seg~2_combout\ : std_logic;
SIGNAL \fim~5_combout\ : std_logic;
SIGNAL \fim~4_combout\ : std_logic;
SIGNAL \fim~reg0_q\ : std_logic;
SIGNAL seg : std_logic_vector(31 DOWNTO 0);
SIGNAL min : std_logic_vector(31 DOWNTO 0);
SIGNAL ALT_INV_min : std_logic_vector(5 DOWNTO 0);
SIGNAL ALT_INV_seg : std_logic_vector(5 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_start <= start;
ww_reset <= reset;
s <= ww_s;
m <= ww_m;
fim <= ww_fim;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
ALT_INV_min(5) <= NOT min(5);
ALT_INV_min(4) <= NOT min(4);
ALT_INV_min(3) <= NOT min(3);
ALT_INV_min(1) <= NOT min(1);
ALT_INV_min(0) <= NOT min(0);
ALT_INV_seg(5) <= NOT seg(5);
ALT_INV_seg(4) <= NOT seg(4);
ALT_INV_seg(3) <= NOT seg(3);
ALT_INV_seg(1) <= NOT seg(1);
ALT_INV_seg(0) <= NOT seg(0);

\s[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_seg(0),
	devoe => ww_devoe,
	o => \s[0]~output_o\);

\s[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_seg(1),
	devoe => ww_devoe,
	o => \s[1]~output_o\);

\s[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => seg(2),
	devoe => ww_devoe,
	o => \s[2]~output_o\);

\s[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_seg(3),
	devoe => ww_devoe,
	o => \s[3]~output_o\);

\s[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_seg(4),
	devoe => ww_devoe,
	o => \s[4]~output_o\);

\s[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_seg(5),
	devoe => ww_devoe,
	o => \s[5]~output_o\);

\m[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_min(0),
	devoe => ww_devoe,
	o => \m[0]~output_o\);

\m[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_min(1),
	devoe => ww_devoe,
	o => \m[1]~output_o\);

\m[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => min(2),
	devoe => ww_devoe,
	o => \m[2]~output_o\);

\m[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_min(3),
	devoe => ww_devoe,
	o => \m[3]~output_o\);

\m[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_min(4),
	devoe => ww_devoe,
	o => \m[4]~output_o\);

\m[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_min(5),
	devoe => ww_devoe,
	o => \m[5]~output_o\);

\fim~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fim~reg0_q\,
	devoe => ww_devoe,
	o => \fim~output_o\);

\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = seg(0) $ (GND)
-- \Add0~1\ = CARRY(!seg(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

\start~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start,
	o => \start~input_o\);

\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (seg(1) & (!\Add0~1\)) # (!seg(1) & (\Add0~1\ & VCC))
-- \Add0~3\ = CARRY((seg(1) & !\Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => seg(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

\seg~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg~5_combout\ = (!\reset~input_o\ & (!seg(31) & (!\Equal0~9_combout\ & !\Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => seg(31),
	datac => \Equal0~9_combout\,
	datad => \Add0~2_combout\,
	combout => \seg~5_combout\);

\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = min(0) $ (GND)
-- \Add1~1\ = CARRY(!min(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (!\reset~input_o\ & !\Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \Add1~0_combout\,
	combout => \Add1~2_combout\);

\seg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg[3]~3_combout\ = (!seg(31) & !\Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => seg(31),
	datad => \Equal0~9_combout\,
	combout => \seg[3]~3_combout\);

\min[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \min[0]~0_combout\ = (\reset~input_o\) # ((!\seg[3]~3_combout\ & (!\process_0~0_combout\ & \start~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg[3]~3_combout\,
	datab => \process_0~0_combout\,
	datac => \start~input_o\,
	datad => \reset~input_o\,
	combout => \min[0]~0_combout\);

\min[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add1~2_combout\,
	ena => \min[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(0));

\Add1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~3_combout\ = (min(1) & (!\Add1~1\)) # (!min(1) & (\Add1~1\ & VCC))
-- \Add1~4\ = CARRY((min(1) & !\Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => min(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~3_combout\,
	cout => \Add1~4\);

\Add1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~5_combout\ = (!\reset~input_o\ & !\Add1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \Add1~3_combout\,
	combout => \Add1~5_combout\);

\min[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add1~5_combout\,
	ena => \min[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(1));

\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (min(2) & ((GND) # (!\Add1~4\))) # (!min(2) & (\Add1~4\ $ (GND)))
-- \Add1~7\ = CARRY((min(2)) # (!\Add1~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => min(2),
	datad => VCC,
	cin => \Add1~4\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (\Add1~6_combout\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~6_combout\,
	datad => \reset~input_o\,
	combout => \Add1~8_combout\);

\min[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add1~8_combout\,
	ena => \min[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(2));

\Add1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~9_combout\ = (min(3) & (!\Add1~7\)) # (!min(3) & (\Add1~7\ & VCC))
-- \Add1~10\ = CARRY((min(3) & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => min(3),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~9_combout\,
	cout => \Add1~10\);

\Add1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~11_combout\ = (!\reset~input_o\ & !\Add1~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \Add1~9_combout\,
	combout => \Add1~11_combout\);

\min[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add1~11_combout\,
	ena => \min[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(3));

\LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (min(0) & (min(1) & (min(3) & !min(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(0),
	datab => min(1),
	datac => min(3),
	datad => min(2),
	combout => \LessThan1~0_combout\);

\Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (min(4) & (\Add1~10\ $ (GND))) # (!min(4) & ((GND) # (!\Add1~10\)))
-- \Add1~13\ = CARRY((!\Add1~10\) # (!min(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => min(4),
	datad => VCC,
	cin => \Add1~10\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

\Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (!\reset~input_o\ & !\Add1~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \Add1~12_combout\,
	combout => \Add1~14_combout\);

\min[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add1~14_combout\,
	ena => \min[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(4));

\Add1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~15_combout\ = (min(5) & (!\Add1~13\)) # (!min(5) & (\Add1~13\ & VCC))
-- \Add1~16\ = CARRY((min(5) & !\Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => min(5),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~15_combout\,
	cout => \Add1~16\);

\Add1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~17_combout\ = (!\reset~input_o\ & !\Add1~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \Add1~15_combout\,
	combout => \Add1~17_combout\);

\min[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add1~17_combout\,
	ena => \min[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(5));

\Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (min(6) & ((GND) # (!\Add1~16\))) # (!min(6) & (\Add1~16\ $ (GND)))
-- \Add1~19\ = CARRY((min(6)) # (!\Add1~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => min(6),
	datad => VCC,
	cin => \Add1~16\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

\Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = (\Add1~18_combout\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~18_combout\,
	datad => \reset~input_o\,
	combout => \Add1~20_combout\);

\min[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add1~20_combout\,
	ena => \min[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(6));

\Add1~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~21_combout\ = (min(7) & (\Add1~19\ & VCC)) # (!min(7) & (!\Add1~19\))
-- \Add1~22\ = CARRY((!min(7) & !\Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => min(7),
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~21_combout\,
	cout => \Add1~22\);

\Add1~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~23_combout\ = (\Add1~21_combout\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~21_combout\,
	datad => \reset~input_o\,
	combout => \Add1~23_combout\);

\min[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add1~23_combout\,
	ena => \min[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(7));

\LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (min(4) & (min(5) & (!min(6) & !min(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(4),
	datab => min(5),
	datac => min(6),
	datad => min(7),
	combout => \LessThan1~1_combout\);

\Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = (min(8) & ((GND) # (!\Add1~22\))) # (!min(8) & (\Add1~22\ $ (GND)))
-- \Add1~25\ = CARRY((min(8)) # (!\Add1~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => min(8),
	datad => VCC,
	cin => \Add1~22\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

\Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (\Add1~24_combout\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~24_combout\,
	datad => \reset~input_o\,
	combout => \Add1~26_combout\);

\min[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add1~26_combout\,
	ena => \min[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(8));

\Add1~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~27_combout\ = (min(9) & (\Add1~25\ & VCC)) # (!min(9) & (!\Add1~25\))
-- \Add1~28\ = CARRY((!min(9) & !\Add1~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => min(9),
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~27_combout\,
	cout => \Add1~28\);

\Add1~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~29_combout\ = (\Add1~27_combout\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~27_combout\,
	datad => \reset~input_o\,
	combout => \Add1~29_combout\);

\min[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add1~29_combout\,
	ena => \min[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(9));

\Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = (min(10) & ((GND) # (!\Add1~28\))) # (!min(10) & (\Add1~28\ $ (GND)))
-- \Add1~31\ = CARRY((min(10)) # (!\Add1~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => min(10),
	datad => VCC,
	cin => \Add1~28\,
	combout => \Add1~30_combout\,
	cout => \Add1~31\);

\Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~32_combout\ = (\Add1~30_combout\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~30_combout\,
	datad => \reset~input_o\,
	combout => \Add1~32_combout\);

\min[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add1~32_combout\,
	ena => \min[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(10));

\Add1~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~33_combout\ = (min(11) & (\Add1~31\ & VCC)) # (!min(11) & (!\Add1~31\))
-- \Add1~34\ = CARRY((!min(11) & !\Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => min(11),
	datad => VCC,
	cin => \Add1~31\,
	combout => \Add1~33_combout\,
	cout => \Add1~34\);

\Add1~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~35_combout\ = (\Add1~33_combout\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~33_combout\,
	datad => \reset~input_o\,
	combout => \Add1~35_combout\);

\min[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add1~35_combout\,
	ena => \min[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(11));

\LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = (!min(8) & (!min(9) & (!min(10) & !min(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(8),
	datab => min(9),
	datac => min(10),
	datad => min(11),
	combout => \LessThan1~2_combout\);

\Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~36_combout\ = (min(12) & ((GND) # (!\Add1~34\))) # (!min(12) & (\Add1~34\ $ (GND)))
-- \Add1~37\ = CARRY((min(12)) # (!\Add1~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => min(12),
	datad => VCC,
	cin => \Add1~34\,
	combout => \Add1~36_combout\,
	cout => \Add1~37\);

\Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~38_combout\ = (\Add1~36_combout\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~36_combout\,
	datad => \reset~input_o\,
	combout => \Add1~38_combout\);

\min[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add1~38_combout\,
	ena => \min[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(12));

\Add1~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~39_combout\ = (min(13) & (\Add1~37\ & VCC)) # (!min(13) & (!\Add1~37\))
-- \Add1~40\ = CARRY((!min(13) & !\Add1~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => min(13),
	datad => VCC,
	cin => \Add1~37\,
	combout => \Add1~39_combout\,
	cout => \Add1~40\);

\Add1~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~41_combout\ = (\Add1~39_combout\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~39_combout\,
	datad => \reset~input_o\,
	combout => \Add1~41_combout\);

\min[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add1~41_combout\,
	ena => \min[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(13));

\Add1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~42_combout\ = (min(14) & ((GND) # (!\Add1~40\))) # (!min(14) & (\Add1~40\ $ (GND)))
-- \Add1~43\ = CARRY((min(14)) # (!\Add1~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => min(14),
	datad => VCC,
	cin => \Add1~40\,
	combout => \Add1~42_combout\,
	cout => \Add1~43\);

\Add1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~44_combout\ = (\Add1~42_combout\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~42_combout\,
	datad => \reset~input_o\,
	combout => \Add1~44_combout\);

\min[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add1~44_combout\,
	ena => \min[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(14));

\Add1~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~45_combout\ = (min(15) & (\Add1~43\ & VCC)) # (!min(15) & (!\Add1~43\))
-- \Add1~46\ = CARRY((!min(15) & !\Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => min(15),
	datad => VCC,
	cin => \Add1~43\,
	combout => \Add1~45_combout\,
	cout => \Add1~46\);

\Add1~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~47_combout\ = (\Add1~45_combout\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~45_combout\,
	datad => \reset~input_o\,
	combout => \Add1~47_combout\);

\min[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add1~47_combout\,
	ena => \min[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(15));

\LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~3_combout\ = (!min(12) & (!min(13) & (!min(14) & !min(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(12),
	datab => min(13),
	datac => min(14),
	datad => min(15),
	combout => \LessThan1~3_combout\);

\LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~4_combout\ = (\LessThan1~0_combout\ & (\LessThan1~1_combout\ & (\LessThan1~2_combout\ & \LessThan1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~0_combout\,
	datab => \LessThan1~1_combout\,
	datac => \LessThan1~2_combout\,
	datad => \LessThan1~3_combout\,
	combout => \LessThan1~4_combout\);

\Add1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~48_combout\ = (min(16) & ((GND) # (!\Add1~46\))) # (!min(16) & (\Add1~46\ $ (GND)))
-- \Add1~49\ = CARRY((min(16)) # (!\Add1~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => min(16),
	datad => VCC,
	cin => \Add1~46\,
	combout => \Add1~48_combout\,
	cout => \Add1~49\);

\Add1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~50_combout\ = (\Add1~48_combout\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~48_combout\,
	datad => \reset~input_o\,
	combout => \Add1~50_combout\);

\min[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add1~50_combout\,
	ena => \min[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(16));

\Add1~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~51_combout\ = (min(17) & (\Add1~49\ & VCC)) # (!min(17) & (!\Add1~49\))
-- \Add1~52\ = CARRY((!min(17) & !\Add1~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => min(17),
	datad => VCC,
	cin => \Add1~49\,
	combout => \Add1~51_combout\,
	cout => \Add1~52\);

\Add1~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~53_combout\ = (\Add1~51_combout\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~51_combout\,
	datad => \reset~input_o\,
	combout => \Add1~53_combout\);

\min[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add1~53_combout\,
	ena => \min[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(17));

\Add1~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~54_combout\ = (min(18) & ((GND) # (!\Add1~52\))) # (!min(18) & (\Add1~52\ $ (GND)))
-- \Add1~55\ = CARRY((min(18)) # (!\Add1~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => min(18),
	datad => VCC,
	cin => \Add1~52\,
	combout => \Add1~54_combout\,
	cout => \Add1~55\);

\Add1~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~56_combout\ = (\Add1~54_combout\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~54_combout\,
	datad => \reset~input_o\,
	combout => \Add1~56_combout\);

\min[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add1~56_combout\,
	ena => \min[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(18));

\Add1~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~57_combout\ = (min(19) & (\Add1~55\ & VCC)) # (!min(19) & (!\Add1~55\))
-- \Add1~58\ = CARRY((!min(19) & !\Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => min(19),
	datad => VCC,
	cin => \Add1~55\,
	combout => \Add1~57_combout\,
	cout => \Add1~58\);

\Add1~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~59_combout\ = (\Add1~57_combout\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~57_combout\,
	datad => \reset~input_o\,
	combout => \Add1~59_combout\);

\min[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add1~59_combout\,
	ena => \min[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(19));

\LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~5_combout\ = (!min(16) & (!min(17) & (!min(18) & !min(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(16),
	datab => min(17),
	datac => min(18),
	datad => min(19),
	combout => \LessThan1~5_combout\);

\Add1~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~60_combout\ = (min(20) & ((GND) # (!\Add1~58\))) # (!min(20) & (\Add1~58\ $ (GND)))
-- \Add1~61\ = CARRY((min(20)) # (!\Add1~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => min(20),
	datad => VCC,
	cin => \Add1~58\,
	combout => \Add1~60_combout\,
	cout => \Add1~61\);

\Add1~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~62_combout\ = (\Add1~60_combout\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~60_combout\,
	datad => \reset~input_o\,
	combout => \Add1~62_combout\);

\min[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add1~62_combout\,
	ena => \min[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(20));

\Add1~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~63_combout\ = (min(21) & (\Add1~61\ & VCC)) # (!min(21) & (!\Add1~61\))
-- \Add1~64\ = CARRY((!min(21) & !\Add1~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => min(21),
	datad => VCC,
	cin => \Add1~61\,
	combout => \Add1~63_combout\,
	cout => \Add1~64\);

\Add1~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~65_combout\ = (\Add1~63_combout\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~63_combout\,
	datad => \reset~input_o\,
	combout => \Add1~65_combout\);

\min[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add1~65_combout\,
	ena => \min[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(21));

\Add1~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~66_combout\ = (min(22) & ((GND) # (!\Add1~64\))) # (!min(22) & (\Add1~64\ $ (GND)))
-- \Add1~67\ = CARRY((min(22)) # (!\Add1~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => min(22),
	datad => VCC,
	cin => \Add1~64\,
	combout => \Add1~66_combout\,
	cout => \Add1~67\);

\Add1~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~68_combout\ = (\Add1~66_combout\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~66_combout\,
	datad => \reset~input_o\,
	combout => \Add1~68_combout\);

\min[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add1~68_combout\,
	ena => \min[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(22));

\Add1~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~69_combout\ = (min(23) & (\Add1~67\ & VCC)) # (!min(23) & (!\Add1~67\))
-- \Add1~70\ = CARRY((!min(23) & !\Add1~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => min(23),
	datad => VCC,
	cin => \Add1~67\,
	combout => \Add1~69_combout\,
	cout => \Add1~70\);

\Add1~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~71_combout\ = (\Add1~69_combout\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~69_combout\,
	datad => \reset~input_o\,
	combout => \Add1~71_combout\);

\min[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add1~71_combout\,
	ena => \min[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(23));

\LessThan1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~6_combout\ = (!min(20) & (!min(21) & (!min(22) & !min(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(20),
	datab => min(21),
	datac => min(22),
	datad => min(23),
	combout => \LessThan1~6_combout\);

\Add1~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~72_combout\ = (min(24) & ((GND) # (!\Add1~70\))) # (!min(24) & (\Add1~70\ $ (GND)))
-- \Add1~73\ = CARRY((min(24)) # (!\Add1~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => min(24),
	datad => VCC,
	cin => \Add1~70\,
	combout => \Add1~72_combout\,
	cout => \Add1~73\);

\Add1~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~74_combout\ = (\Add1~72_combout\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~72_combout\,
	datad => \reset~input_o\,
	combout => \Add1~74_combout\);

\min[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add1~74_combout\,
	ena => \min[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(24));

\Add1~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~75_combout\ = (min(25) & (\Add1~73\ & VCC)) # (!min(25) & (!\Add1~73\))
-- \Add1~76\ = CARRY((!min(25) & !\Add1~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => min(25),
	datad => VCC,
	cin => \Add1~73\,
	combout => \Add1~75_combout\,
	cout => \Add1~76\);

\Add1~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~77_combout\ = (\Add1~75_combout\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~75_combout\,
	datad => \reset~input_o\,
	combout => \Add1~77_combout\);

\min[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add1~77_combout\,
	ena => \min[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(25));

\Add1~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~78_combout\ = (min(26) & ((GND) # (!\Add1~76\))) # (!min(26) & (\Add1~76\ $ (GND)))
-- \Add1~79\ = CARRY((min(26)) # (!\Add1~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => min(26),
	datad => VCC,
	cin => \Add1~76\,
	combout => \Add1~78_combout\,
	cout => \Add1~79\);

\Add1~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~80_combout\ = (\Add1~78_combout\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~78_combout\,
	datad => \reset~input_o\,
	combout => \Add1~80_combout\);

\min[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add1~80_combout\,
	ena => \min[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(26));

\Add1~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~81_combout\ = (min(27) & (\Add1~79\ & VCC)) # (!min(27) & (!\Add1~79\))
-- \Add1~82\ = CARRY((!min(27) & !\Add1~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => min(27),
	datad => VCC,
	cin => \Add1~79\,
	combout => \Add1~81_combout\,
	cout => \Add1~82\);

\Add1~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~83_combout\ = (\Add1~81_combout\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~81_combout\,
	datad => \reset~input_o\,
	combout => \Add1~83_combout\);

\min[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add1~83_combout\,
	ena => \min[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(27));

\LessThan1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~7_combout\ = (!min(24) & (!min(25) & (!min(26) & !min(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(24),
	datab => min(25),
	datac => min(26),
	datad => min(27),
	combout => \LessThan1~7_combout\);

\Add1~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~84_combout\ = (min(28) & ((GND) # (!\Add1~82\))) # (!min(28) & (\Add1~82\ $ (GND)))
-- \Add1~85\ = CARRY((min(28)) # (!\Add1~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => min(28),
	datad => VCC,
	cin => \Add1~82\,
	combout => \Add1~84_combout\,
	cout => \Add1~85\);

\Add1~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~86_combout\ = (\Add1~84_combout\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~84_combout\,
	datad => \reset~input_o\,
	combout => \Add1~86_combout\);

\min[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add1~86_combout\,
	ena => \min[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(28));

\Add1~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~87_combout\ = (min(29) & (\Add1~85\ & VCC)) # (!min(29) & (!\Add1~85\))
-- \Add1~88\ = CARRY((!min(29) & !\Add1~85\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => min(29),
	datad => VCC,
	cin => \Add1~85\,
	combout => \Add1~87_combout\,
	cout => \Add1~88\);

\Add1~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~89_combout\ = (\Add1~87_combout\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~87_combout\,
	datad => \reset~input_o\,
	combout => \Add1~89_combout\);

\min[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add1~89_combout\,
	ena => \min[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(29));

\Add1~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~90_combout\ = (min(30) & ((GND) # (!\Add1~88\))) # (!min(30) & (\Add1~88\ $ (GND)))
-- \Add1~91\ = CARRY((min(30)) # (!\Add1~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => min(30),
	datad => VCC,
	cin => \Add1~88\,
	combout => \Add1~90_combout\,
	cout => \Add1~91\);

\Add1~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~92_combout\ = (\Add1~90_combout\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~90_combout\,
	datad => \reset~input_o\,
	combout => \Add1~92_combout\);

\min[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add1~92_combout\,
	ena => \min[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(30));

\LessThan1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~8_combout\ = (\LessThan1~7_combout\ & (!min(28) & (!min(29) & !min(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~7_combout\,
	datab => min(28),
	datac => min(29),
	datad => min(30),
	combout => \LessThan1~8_combout\);

\LessThan1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~9_combout\ = (\LessThan1~4_combout\ & (\LessThan1~5_combout\ & (\LessThan1~6_combout\ & \LessThan1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~4_combout\,
	datab => \LessThan1~5_combout\,
	datac => \LessThan1~6_combout\,
	datad => \LessThan1~8_combout\,
	combout => \LessThan1~9_combout\);

\Add1~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~93_combout\ = min(31) $ (!\Add1~91\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => min(31),
	cin => \Add1~91\,
	combout => \Add1~93_combout\);

\Add1~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~95_combout\ = (\Add1~93_combout\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~93_combout\,
	datad => \reset~input_o\,
	combout => \Add1~95_combout\);

\min[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add1~95_combout\,
	ena => \min[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(31));

\process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (seg(31)) # ((\LessThan1~9_combout\) # ((min(31)) # (!\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg(31),
	datab => \LessThan1~9_combout\,
	datac => min(31),
	datad => \Equal0~9_combout\,
	combout => \process_0~0_combout\);

\seg[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg[3]~4_combout\ = (\reset~input_o\) # ((\start~input_o\ & ((\seg[3]~3_combout\) # (!\process_0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~0_combout\,
	datab => \seg[3]~3_combout\,
	datac => \start~input_o\,
	datad => \reset~input_o\,
	combout => \seg[3]~4_combout\);

\seg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \seg~5_combout\,
	ena => \seg[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seg(1));

\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (seg(2) & ((GND) # (!\Add0~3\))) # (!seg(2) & (\Add0~3\ $ (GND)))
-- \Add0~5\ = CARRY((seg(2)) # (!\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => seg(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

\seg~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg~6_combout\ = (\Add0~4_combout\ & (!\reset~input_o\ & (!seg(31) & !\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \reset~input_o\,
	datac => seg(31),
	datad => \Equal0~9_combout\,
	combout => \seg~6_combout\);

\seg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \seg~6_combout\,
	ena => \seg[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seg(2));

\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (seg(3) & (!\Add0~5\)) # (!seg(3) & (\Add0~5\ & VCC))
-- \Add0~7\ = CARRY((seg(3) & !\Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => seg(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

\seg~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg~7_combout\ = (!\reset~input_o\ & (!seg(31) & (!\Equal0~9_combout\ & !\Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => seg(31),
	datac => \Equal0~9_combout\,
	datad => \Add0~6_combout\,
	combout => \seg~7_combout\);

\seg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \seg~7_combout\,
	ena => \seg[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seg(3));

\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (seg(0) & (seg(1) & (seg(3) & !seg(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg(0),
	datab => seg(1),
	datac => seg(3),
	datad => seg(2),
	combout => \Equal0~0_combout\);

\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (seg(4) & (\Add0~7\ $ (GND))) # (!seg(4) & ((GND) # (!\Add0~7\)))
-- \Add0~9\ = CARRY((!\Add0~7\) # (!seg(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => seg(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

\seg~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg~8_combout\ = (!\reset~input_o\ & (!seg(31) & (!\Equal0~9_combout\ & !\Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => seg(31),
	datac => \Equal0~9_combout\,
	datad => \Add0~8_combout\,
	combout => \seg~8_combout\);

\seg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \seg~8_combout\,
	ena => \seg[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seg(4));

\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (seg(5) & (!\Add0~9\)) # (!seg(5) & (\Add0~9\ & VCC))
-- \Add0~11\ = CARRY((seg(5) & !\Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => seg(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

\seg~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg~9_combout\ = (!\reset~input_o\ & (!seg(31) & (!\Equal0~9_combout\ & !\Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => seg(31),
	datac => \Equal0~9_combout\,
	datad => \Add0~10_combout\,
	combout => \seg~9_combout\);

\seg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \seg~9_combout\,
	ena => \seg[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seg(5));

\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (seg(6) & ((GND) # (!\Add0~11\))) # (!seg(6) & (\Add0~11\ $ (GND)))
-- \Add0~13\ = CARRY((seg(6)) # (!\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => seg(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

\seg~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg~11_combout\ = (\Add0~12_combout\ & (!\reset~input_o\ & (!seg(31) & !\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datab => \reset~input_o\,
	datac => seg(31),
	datad => \Equal0~9_combout\,
	combout => \seg~11_combout\);

\seg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \seg~11_combout\,
	ena => \seg[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seg(6));

\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (seg(7) & (\Add0~13\ & VCC)) # (!seg(7) & (!\Add0~13\))
-- \Add0~15\ = CARRY((!seg(7) & !\Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => seg(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

\seg~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg~12_combout\ = (\Add0~14_combout\ & (!\reset~input_o\ & (!seg(31) & !\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datab => \reset~input_o\,
	datac => seg(31),
	datad => \Equal0~9_combout\,
	combout => \seg~12_combout\);

\seg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \seg~12_combout\,
	ena => \seg[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seg(7));

\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (seg(4) & (seg(5) & (!seg(6) & !seg(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg(4),
	datab => seg(5),
	datac => seg(6),
	datad => seg(7),
	combout => \Equal0~1_combout\);

\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (seg(8) & ((GND) # (!\Add0~15\))) # (!seg(8) & (\Add0~15\ $ (GND)))
-- \Add0~17\ = CARRY((seg(8)) # (!\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => seg(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

\seg~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg~13_combout\ = (\Add0~16_combout\ & (!\reset~input_o\ & (!seg(31) & !\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~16_combout\,
	datab => \reset~input_o\,
	datac => seg(31),
	datad => \Equal0~9_combout\,
	combout => \seg~13_combout\);

\seg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \seg~13_combout\,
	ena => \seg[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seg(8));

\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (seg(9) & (\Add0~17\ & VCC)) # (!seg(9) & (!\Add0~17\))
-- \Add0~19\ = CARRY((!seg(9) & !\Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => seg(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

\seg~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg~14_combout\ = (\Add0~18_combout\ & (!\reset~input_o\ & (!seg(31) & !\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~18_combout\,
	datab => \reset~input_o\,
	datac => seg(31),
	datad => \Equal0~9_combout\,
	combout => \seg~14_combout\);

\seg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \seg~14_combout\,
	ena => \seg[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seg(9));

\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (seg(10) & ((GND) # (!\Add0~19\))) # (!seg(10) & (\Add0~19\ $ (GND)))
-- \Add0~21\ = CARRY((seg(10)) # (!\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => seg(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

\seg~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg~15_combout\ = (\Add0~20_combout\ & (!\reset~input_o\ & (!seg(31) & !\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~20_combout\,
	datab => \reset~input_o\,
	datac => seg(31),
	datad => \Equal0~9_combout\,
	combout => \seg~15_combout\);

\seg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \seg~15_combout\,
	ena => \seg[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seg(10));

\Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (seg(11) & (\Add0~21\ & VCC)) # (!seg(11) & (!\Add0~21\))
-- \Add0~23\ = CARRY((!seg(11) & !\Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => seg(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

\seg~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg~16_combout\ = (\Add0~22_combout\ & (!\reset~input_o\ & (!seg(31) & !\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~22_combout\,
	datab => \reset~input_o\,
	datac => seg(31),
	datad => \Equal0~9_combout\,
	combout => \seg~16_combout\);

\seg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \seg~16_combout\,
	ena => \seg[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seg(11));

\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!seg(8) & (!seg(9) & (!seg(10) & !seg(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg(8),
	datab => seg(9),
	datac => seg(10),
	datad => seg(11),
	combout => \Equal0~2_combout\);

\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (seg(12) & ((GND) # (!\Add0~23\))) # (!seg(12) & (\Add0~23\ $ (GND)))
-- \Add0~25\ = CARRY((seg(12)) # (!\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => seg(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

\seg~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg~17_combout\ = (\Add0~24_combout\ & (!\reset~input_o\ & (!seg(31) & !\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~24_combout\,
	datab => \reset~input_o\,
	datac => seg(31),
	datad => \Equal0~9_combout\,
	combout => \seg~17_combout\);

\seg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \seg~17_combout\,
	ena => \seg[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seg(12));

\Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (seg(13) & (\Add0~25\ & VCC)) # (!seg(13) & (!\Add0~25\))
-- \Add0~27\ = CARRY((!seg(13) & !\Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => seg(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

\seg~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg~18_combout\ = (\Add0~26_combout\ & (!\reset~input_o\ & (!seg(31) & !\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~26_combout\,
	datab => \reset~input_o\,
	datac => seg(31),
	datad => \Equal0~9_combout\,
	combout => \seg~18_combout\);

\seg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \seg~18_combout\,
	ena => \seg[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seg(13));

\Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (seg(14) & ((GND) # (!\Add0~27\))) # (!seg(14) & (\Add0~27\ $ (GND)))
-- \Add0~29\ = CARRY((seg(14)) # (!\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => seg(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

\seg~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg~19_combout\ = (\Add0~28_combout\ & (!\reset~input_o\ & (!seg(31) & !\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~28_combout\,
	datab => \reset~input_o\,
	datac => seg(31),
	datad => \Equal0~9_combout\,
	combout => \seg~19_combout\);

\seg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \seg~19_combout\,
	ena => \seg[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seg(14));

\Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (seg(15) & (\Add0~29\ & VCC)) # (!seg(15) & (!\Add0~29\))
-- \Add0~31\ = CARRY((!seg(15) & !\Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => seg(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

\seg~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg~20_combout\ = (\Add0~30_combout\ & (!\reset~input_o\ & (!seg(31) & !\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~30_combout\,
	datab => \reset~input_o\,
	datac => seg(31),
	datad => \Equal0~9_combout\,
	combout => \seg~20_combout\);

\seg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \seg~20_combout\,
	ena => \seg[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seg(15));

\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!seg(12) & (!seg(13) & (!seg(14) & !seg(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg(12),
	datab => seg(13),
	datac => seg(14),
	datad => seg(15),
	combout => \Equal0~3_combout\);

\Equal0~4\ : cycloneive_lcell_comb
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

\Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (seg(16) & ((GND) # (!\Add0~31\))) # (!seg(16) & (\Add0~31\ $ (GND)))
-- \Add0~33\ = CARRY((seg(16)) # (!\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => seg(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

\seg~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg~21_combout\ = (\Add0~32_combout\ & (!\reset~input_o\ & (!seg(31) & !\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~32_combout\,
	datab => \reset~input_o\,
	datac => seg(31),
	datad => \Equal0~9_combout\,
	combout => \seg~21_combout\);

\seg[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \seg~21_combout\,
	ena => \seg[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seg(16));

\Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (seg(17) & (\Add0~33\ & VCC)) # (!seg(17) & (!\Add0~33\))
-- \Add0~35\ = CARRY((!seg(17) & !\Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => seg(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

\seg~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg~22_combout\ = (\Add0~34_combout\ & (!\reset~input_o\ & (!seg(31) & !\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~34_combout\,
	datab => \reset~input_o\,
	datac => seg(31),
	datad => \Equal0~9_combout\,
	combout => \seg~22_combout\);

\seg[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \seg~22_combout\,
	ena => \seg[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seg(17));

\Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (seg(18) & ((GND) # (!\Add0~35\))) # (!seg(18) & (\Add0~35\ $ (GND)))
-- \Add0~37\ = CARRY((seg(18)) # (!\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => seg(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

\seg~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg~23_combout\ = (\Add0~36_combout\ & (!\reset~input_o\ & (!seg(31) & !\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~36_combout\,
	datab => \reset~input_o\,
	datac => seg(31),
	datad => \Equal0~9_combout\,
	combout => \seg~23_combout\);

\seg[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \seg~23_combout\,
	ena => \seg[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seg(18));

\Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (seg(19) & (\Add0~37\ & VCC)) # (!seg(19) & (!\Add0~37\))
-- \Add0~39\ = CARRY((!seg(19) & !\Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => seg(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

\seg~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg~24_combout\ = (\Add0~38_combout\ & (!\reset~input_o\ & (!seg(31) & !\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~38_combout\,
	datab => \reset~input_o\,
	datac => seg(31),
	datad => \Equal0~9_combout\,
	combout => \seg~24_combout\);

\seg[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \seg~24_combout\,
	ena => \seg[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seg(19));

\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!seg(16) & (!seg(17) & (!seg(18) & !seg(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg(16),
	datab => seg(17),
	datac => seg(18),
	datad => seg(19),
	combout => \Equal0~5_combout\);

\Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (seg(20) & ((GND) # (!\Add0~39\))) # (!seg(20) & (\Add0~39\ $ (GND)))
-- \Add0~41\ = CARRY((seg(20)) # (!\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => seg(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

\seg~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg~25_combout\ = (\Add0~40_combout\ & (!\reset~input_o\ & (!seg(31) & !\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~40_combout\,
	datab => \reset~input_o\,
	datac => seg(31),
	datad => \Equal0~9_combout\,
	combout => \seg~25_combout\);

\seg[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \seg~25_combout\,
	ena => \seg[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seg(20));

\Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (seg(21) & (\Add0~41\ & VCC)) # (!seg(21) & (!\Add0~41\))
-- \Add0~43\ = CARRY((!seg(21) & !\Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => seg(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

\seg~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg~26_combout\ = (\Add0~42_combout\ & (!\reset~input_o\ & (!seg(31) & !\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~42_combout\,
	datab => \reset~input_o\,
	datac => seg(31),
	datad => \Equal0~9_combout\,
	combout => \seg~26_combout\);

\seg[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \seg~26_combout\,
	ena => \seg[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seg(21));

\Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (seg(22) & ((GND) # (!\Add0~43\))) # (!seg(22) & (\Add0~43\ $ (GND)))
-- \Add0~45\ = CARRY((seg(22)) # (!\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => seg(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

\seg~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg~27_combout\ = (\Add0~44_combout\ & (!\reset~input_o\ & (!seg(31) & !\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~44_combout\,
	datab => \reset~input_o\,
	datac => seg(31),
	datad => \Equal0~9_combout\,
	combout => \seg~27_combout\);

\seg[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \seg~27_combout\,
	ena => \seg[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seg(22));

\Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (seg(23) & (\Add0~45\ & VCC)) # (!seg(23) & (!\Add0~45\))
-- \Add0~47\ = CARRY((!seg(23) & !\Add0~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => seg(23),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

\seg~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg~28_combout\ = (\Add0~46_combout\ & (!\reset~input_o\ & (!seg(31) & !\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~46_combout\,
	datab => \reset~input_o\,
	datac => seg(31),
	datad => \Equal0~9_combout\,
	combout => \seg~28_combout\);

\seg[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \seg~28_combout\,
	ena => \seg[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seg(23));

\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!seg(20) & (!seg(21) & (!seg(22) & !seg(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg(20),
	datab => seg(21),
	datac => seg(22),
	datad => seg(23),
	combout => \Equal0~6_combout\);

\Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (seg(24) & ((GND) # (!\Add0~47\))) # (!seg(24) & (\Add0~47\ $ (GND)))
-- \Add0~49\ = CARRY((seg(24)) # (!\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => seg(24),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

\seg~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg~29_combout\ = (\Add0~48_combout\ & (!\reset~input_o\ & (!seg(31) & !\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~48_combout\,
	datab => \reset~input_o\,
	datac => seg(31),
	datad => \Equal0~9_combout\,
	combout => \seg~29_combout\);

\seg[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \seg~29_combout\,
	ena => \seg[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seg(24));

\Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (seg(25) & (\Add0~49\ & VCC)) # (!seg(25) & (!\Add0~49\))
-- \Add0~51\ = CARRY((!seg(25) & !\Add0~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => seg(25),
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

\seg~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg~30_combout\ = (\Add0~50_combout\ & (!\reset~input_o\ & (!seg(31) & !\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~50_combout\,
	datab => \reset~input_o\,
	datac => seg(31),
	datad => \Equal0~9_combout\,
	combout => \seg~30_combout\);

\seg[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \seg~30_combout\,
	ena => \seg[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seg(25));

\Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = (seg(26) & ((GND) # (!\Add0~51\))) # (!seg(26) & (\Add0~51\ $ (GND)))
-- \Add0~53\ = CARRY((seg(26)) # (!\Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => seg(26),
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

\seg~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg~31_combout\ = (\Add0~52_combout\ & (!\reset~input_o\ & (!seg(31) & !\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~52_combout\,
	datab => \reset~input_o\,
	datac => seg(31),
	datad => \Equal0~9_combout\,
	combout => \seg~31_combout\);

\seg[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \seg~31_combout\,
	ena => \seg[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seg(26));

\Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (seg(27) & (\Add0~53\ & VCC)) # (!seg(27) & (!\Add0~53\))
-- \Add0~55\ = CARRY((!seg(27) & !\Add0~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => seg(27),
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

\seg~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg~32_combout\ = (\Add0~54_combout\ & (!\reset~input_o\ & (!seg(31) & !\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~54_combout\,
	datab => \reset~input_o\,
	datac => seg(31),
	datad => \Equal0~9_combout\,
	combout => \seg~32_combout\);

\seg[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \seg~32_combout\,
	ena => \seg[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seg(27));

\Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!seg(24) & (!seg(25) & (!seg(26) & !seg(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg(24),
	datab => seg(25),
	datac => seg(26),
	datad => seg(27),
	combout => \Equal0~7_combout\);

\Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = (seg(28) & ((GND) # (!\Add0~55\))) # (!seg(28) & (\Add0~55\ $ (GND)))
-- \Add0~57\ = CARRY((seg(28)) # (!\Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => seg(28),
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

\seg~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg~33_combout\ = (\Add0~56_combout\ & (!\reset~input_o\ & (!seg(31) & !\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~56_combout\,
	datab => \reset~input_o\,
	datac => seg(31),
	datad => \Equal0~9_combout\,
	combout => \seg~33_combout\);

\seg[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \seg~33_combout\,
	ena => \seg[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seg(28));

\Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (seg(29) & (\Add0~57\ & VCC)) # (!seg(29) & (!\Add0~57\))
-- \Add0~59\ = CARRY((!seg(29) & !\Add0~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => seg(29),
	datad => VCC,
	cin => \Add0~57\,
	combout => \Add0~58_combout\,
	cout => \Add0~59\);

\seg~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg~34_combout\ = (\Add0~58_combout\ & (!\reset~input_o\ & (!seg(31) & !\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~58_combout\,
	datab => \reset~input_o\,
	datac => seg(31),
	datad => \Equal0~9_combout\,
	combout => \seg~34_combout\);

\seg[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \seg~34_combout\,
	ena => \seg[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seg(29));

\Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (\Equal0~7_combout\ & (!seg(28) & (!seg(29) & !seg(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~7_combout\,
	datab => seg(28),
	datac => seg(29),
	datad => seg(30),
	combout => \Equal0~8_combout\);

\Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (\Equal0~4_combout\ & (\Equal0~5_combout\ & (\Equal0~6_combout\ & \Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \Equal0~5_combout\,
	datac => \Equal0~6_combout\,
	datad => \Equal0~8_combout\,
	combout => \Equal0~9_combout\);

\Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = (seg(30) & ((GND) # (!\Add0~59\))) # (!seg(30) & (\Add0~59\ $ (GND)))
-- \Add0~61\ = CARRY((seg(30)) # (!\Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => seg(30),
	datad => VCC,
	cin => \Add0~59\,
	combout => \Add0~60_combout\,
	cout => \Add0~61\);

\seg~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg~35_combout\ = (!seg(31) & (!\Equal0~9_combout\ & (\Add0~60_combout\ & !\reset~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg(31),
	datab => \Equal0~9_combout\,
	datac => \Add0~60_combout\,
	datad => \reset~input_o\,
	combout => \seg~35_combout\);

\seg[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \seg~35_combout\,
	ena => \seg[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seg(30));

\Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = seg(31) $ (!\Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => seg(31),
	cin => \Add0~61\,
	combout => \Add0~62_combout\);

\seg[31]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg[31]~10_combout\ = (seg(31)) # ((\start~input_o\ & (\Add0~62_combout\ & !\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg(31),
	datab => \start~input_o\,
	datac => \Add0~62_combout\,
	datad => \Equal0~9_combout\,
	combout => \seg[31]~10_combout\);

\seg[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \seg[31]~10_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seg(31));

\seg~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg~2_combout\ = (!\Add0~0_combout\ & (!\reset~input_o\ & (!seg(31) & !\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \reset~input_o\,
	datac => seg(31),
	datad => \Equal0~9_combout\,
	combout => \seg~2_combout\);

\seg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \seg~2_combout\,
	ena => \seg[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seg(0));

\fim~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fim~5_combout\ = (!seg(31) & (!min(31) & (\LessThan1~9_combout\ & \Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg(31),
	datab => min(31),
	datac => \LessThan1~9_combout\,
	datad => \Equal0~9_combout\,
	combout => \fim~5_combout\);

\fim~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fim~4_combout\ = (\start~input_o\ & ((\reset~input_o\ & (\fim~reg0_q\)) # (!\reset~input_o\ & ((\fim~5_combout\))))) # (!\start~input_o\ & (((\fim~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~input_o\,
	datab => \reset~input_o\,
	datac => \fim~reg0_q\,
	datad => \fim~5_combout\,
	combout => \fim~4_combout\);

\fim~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \fim~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fim~reg0_q\);

ww_s(0) <= \s[0]~output_o\;

ww_s(1) <= \s[1]~output_o\;

ww_s(2) <= \s[2]~output_o\;

ww_s(3) <= \s[3]~output_o\;

ww_s(4) <= \s[4]~output_o\;

ww_s(5) <= \s[5]~output_o\;

ww_m(0) <= \m[0]~output_o\;

ww_m(1) <= \m[1]~output_o\;

ww_m(2) <= \m[2]~output_o\;

ww_m(3) <= \m[3]~output_o\;

ww_m(4) <= \m[4]~output_o\;

ww_m(5) <= \m[5]~output_o\;

ww_fim <= \fim~output_o\;
END structure;


