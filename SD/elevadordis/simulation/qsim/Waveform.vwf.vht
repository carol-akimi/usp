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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "11/21/2024 14:31:55"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          elevador
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY elevador_vhd_vec_tst IS
END elevador_vhd_vec_tst;
ARCHITECTURE elevador_arch OF elevador_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL atual : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL movimento : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL novo : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
COMPONENT elevador
	PORT (
	atual : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	clk : IN STD_LOGIC;
	movimento : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	novo : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	reset : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : elevador
	PORT MAP (
-- list connections between master ports and signals
	atual => atual,
	clk => clk,
	movimento => movimento,
	novo => novo,
	reset => reset
	);

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '1';
	WAIT FOR 1000000 ps;
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 500000 ps;
	clk <= '1';
	WAIT FOR 500000 ps;
	IF (NOW >= 4000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;
-- novo[3]
t_prcs_novo_3: PROCESS
BEGIN
	novo(3) <= '0';
WAIT;
END PROCESS t_prcs_novo_3;
-- novo[2]
t_prcs_novo_2: PROCESS
BEGIN
	novo(2) <= '0';
WAIT;
END PROCESS t_prcs_novo_2;
-- novo[1]
t_prcs_novo_1: PROCESS
BEGIN
	novo(1) <= '0';
WAIT;
END PROCESS t_prcs_novo_1;
-- novo[0]
t_prcs_novo_0: PROCESS
BEGIN
	novo(0) <= '0';
	WAIT FOR 1000000 ps;
	novo(0) <= '1';
	WAIT FOR 1000000 ps;
	novo(0) <= '0';
WAIT;
END PROCESS t_prcs_novo_0;
END elevador_arch;
