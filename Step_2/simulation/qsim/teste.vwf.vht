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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "04/14/2018 20:52:54"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          temporizador
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY temporizador_vhd_vec_tst IS
END temporizador_vhd_vec_tst;
ARCHITECTURE temporizador_arch OF temporizador_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL fim : STD_LOGIC;
SIGNAL m : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
SIGNAL s : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL start : STD_LOGIC;
COMPONENT temporizador
	PORT (
	clk : IN STD_LOGIC;
	fim : BUFFER STD_LOGIC;
	m : BUFFER STD_LOGIC_VECTOR(5 DOWNTO 0);
	reset : IN STD_LOGIC;
	s : BUFFER STD_LOGIC_VECTOR(5 DOWNTO 0);
	start : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : temporizador
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	fim => fim,
	m => m,
	reset => reset,
	s => s,
	start => start
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;

-- start
t_prcs_start: PROCESS
BEGIN
	start <= '1';
	WAIT FOR 480000 ps;
	start <= '0';
	WAIT FOR 160000 ps;
	start <= '1';
	WAIT FOR 110000 ps;
	start <= '0';
WAIT;
END PROCESS t_prcs_start;
END temporizador_arch;
