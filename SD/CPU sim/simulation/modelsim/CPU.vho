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

-- DATE "10/17/2024 15:27:38"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
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

ENTITY 	CPU IS
    PORT (
	HEXMEM0 : OUT std_logic_vector(6 DOWNTO 0);
	CLOCK_FPGA : IN std_logic;
	RESET : IN std_logic;
	CLK : IN std_logic;
	CLEAR : IN std_logic;
	HEXMEM1 : OUT std_logic_vector(6 DOWNTO 0);
	HEXMEM2 : OUT std_logic_vector(6 DOWNTO 0);
	HEXMEM3 : OUT std_logic_vector(6 DOWNTO 0);
	HEXREG1 : OUT std_logic_vector(6 DOWNTO 0);
	HEXREG2 : OUT std_logic_vector(6 DOWNTO 0)
	);
END CPU;

-- Design Ports Information
-- HEXMEM0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXMEM0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXMEM0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXMEM0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXMEM0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXMEM0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXMEM0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXMEM1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXMEM1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXMEM1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXMEM1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXMEM1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXMEM1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXMEM1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXMEM2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXMEM2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXMEM2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXMEM2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXMEM2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXMEM2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXMEM2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXMEM3[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXMEM3[5]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXMEM3[4]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXMEM3[3]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXMEM3[2]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXMEM3[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXMEM3[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXREG1[6]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXREG1[5]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXREG1[4]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXREG1[3]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXREG1[2]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXREG1[1]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXREG1[0]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXREG2[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXREG2[5]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXREG2[4]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXREG2[3]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXREG2[2]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXREG2[1]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXREG2[0]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLEAR	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_FPGA	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CPU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_HEXMEM0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_CLOCK_FPGA : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_CLEAR : std_logic;
SIGNAL ww_HEXMEM1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEXMEM2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEXMEM3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEXREG1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEXREG2 : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst5|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst5|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \CLOCK_FPGA~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst16|out_key~2clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEXMEM0[6]~output_o\ : std_logic;
SIGNAL \HEXMEM0[5]~output_o\ : std_logic;
SIGNAL \HEXMEM0[4]~output_o\ : std_logic;
SIGNAL \HEXMEM0[3]~output_o\ : std_logic;
SIGNAL \HEXMEM0[2]~output_o\ : std_logic;
SIGNAL \HEXMEM0[1]~output_o\ : std_logic;
SIGNAL \HEXMEM0[0]~output_o\ : std_logic;
SIGNAL \HEXMEM1[6]~output_o\ : std_logic;
SIGNAL \HEXMEM1[5]~output_o\ : std_logic;
SIGNAL \HEXMEM1[4]~output_o\ : std_logic;
SIGNAL \HEXMEM1[3]~output_o\ : std_logic;
SIGNAL \HEXMEM1[2]~output_o\ : std_logic;
SIGNAL \HEXMEM1[1]~output_o\ : std_logic;
SIGNAL \HEXMEM1[0]~output_o\ : std_logic;
SIGNAL \HEXMEM2[6]~output_o\ : std_logic;
SIGNAL \HEXMEM2[5]~output_o\ : std_logic;
SIGNAL \HEXMEM2[4]~output_o\ : std_logic;
SIGNAL \HEXMEM2[3]~output_o\ : std_logic;
SIGNAL \HEXMEM2[2]~output_o\ : std_logic;
SIGNAL \HEXMEM2[1]~output_o\ : std_logic;
SIGNAL \HEXMEM2[0]~output_o\ : std_logic;
SIGNAL \HEXMEM3[6]~output_o\ : std_logic;
SIGNAL \HEXMEM3[5]~output_o\ : std_logic;
SIGNAL \HEXMEM3[4]~output_o\ : std_logic;
SIGNAL \HEXMEM3[3]~output_o\ : std_logic;
SIGNAL \HEXMEM3[2]~output_o\ : std_logic;
SIGNAL \HEXMEM3[1]~output_o\ : std_logic;
SIGNAL \HEXMEM3[0]~output_o\ : std_logic;
SIGNAL \HEXREG1[6]~output_o\ : std_logic;
SIGNAL \HEXREG1[5]~output_o\ : std_logic;
SIGNAL \HEXREG1[4]~output_o\ : std_logic;
SIGNAL \HEXREG1[3]~output_o\ : std_logic;
SIGNAL \HEXREG1[2]~output_o\ : std_logic;
SIGNAL \HEXREG1[1]~output_o\ : std_logic;
SIGNAL \HEXREG1[0]~output_o\ : std_logic;
SIGNAL \HEXREG2[6]~output_o\ : std_logic;
SIGNAL \HEXREG2[5]~output_o\ : std_logic;
SIGNAL \HEXREG2[4]~output_o\ : std_logic;
SIGNAL \HEXREG2[3]~output_o\ : std_logic;
SIGNAL \HEXREG2[2]~output_o\ : std_logic;
SIGNAL \HEXREG2[1]~output_o\ : std_logic;
SIGNAL \HEXREG2[0]~output_o\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \inst16|out_key~1_combout\ : std_logic;
SIGNAL \CLOCK_FPGA~input_o\ : std_logic;
SIGNAL \CLOCK_FPGA~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst16|counter[0]~16_combout\ : std_logic;
SIGNAL \inst16|intermediate~1_combout\ : std_logic;
SIGNAL \inst16|intermediate~_emulatedfeeder_combout\ : std_logic;
SIGNAL \inst16|intermediate~_emulated_q\ : std_logic;
SIGNAL \inst16|intermediate~0_combout\ : std_logic;
SIGNAL \inst16|always0~0_combout\ : std_logic;
SIGNAL \inst16|counter[0]~17\ : std_logic;
SIGNAL \inst16|counter[1]~18_combout\ : std_logic;
SIGNAL \inst16|counter[1]~19\ : std_logic;
SIGNAL \inst16|counter[2]~20_combout\ : std_logic;
SIGNAL \inst16|counter[2]~21\ : std_logic;
SIGNAL \inst16|counter[3]~22_combout\ : std_logic;
SIGNAL \inst16|counter[3]~23\ : std_logic;
SIGNAL \inst16|counter[4]~24_combout\ : std_logic;
SIGNAL \inst16|counter[4]~25\ : std_logic;
SIGNAL \inst16|counter[5]~26_combout\ : std_logic;
SIGNAL \inst16|counter[5]~27\ : std_logic;
SIGNAL \inst16|counter[6]~28_combout\ : std_logic;
SIGNAL \inst16|counter[6]~29\ : std_logic;
SIGNAL \inst16|counter[7]~30_combout\ : std_logic;
SIGNAL \inst16|counter[7]~31\ : std_logic;
SIGNAL \inst16|counter[8]~32_combout\ : std_logic;
SIGNAL \inst16|counter[8]~33\ : std_logic;
SIGNAL \inst16|counter[9]~34_combout\ : std_logic;
SIGNAL \inst16|counter[9]~35\ : std_logic;
SIGNAL \inst16|counter[10]~36_combout\ : std_logic;
SIGNAL \inst16|counter[10]~37\ : std_logic;
SIGNAL \inst16|counter[11]~38_combout\ : std_logic;
SIGNAL \inst16|counter[11]~39\ : std_logic;
SIGNAL \inst16|counter[12]~40_combout\ : std_logic;
SIGNAL \inst16|counter[12]~41\ : std_logic;
SIGNAL \inst16|counter[13]~42_combout\ : std_logic;
SIGNAL \inst16|counter[13]~43\ : std_logic;
SIGNAL \inst16|counter[14]~44_combout\ : std_logic;
SIGNAL \inst16|counter[14]~45\ : std_logic;
SIGNAL \inst16|counter[15]~46_combout\ : std_logic;
SIGNAL \inst16|out_key~6_combout\ : std_logic;
SIGNAL \inst16|out_key~7_combout\ : std_logic;
SIGNAL \inst16|out_key~5_combout\ : std_logic;
SIGNAL \inst16|out_key~8_combout\ : std_logic;
SIGNAL \inst16|out_key~9_combout\ : std_logic;
SIGNAL \inst16|out_key~10_combout\ : std_logic;
SIGNAL \inst16|out_key~3_combout\ : std_logic;
SIGNAL \inst16|out_key~_emulated_q\ : std_logic;
SIGNAL \inst16|out_key~2_combout\ : std_logic;
SIGNAL \inst16|out_key~2clkctrl_outclk\ : std_logic;
SIGNAL \CLEAR~input_o\ : std_logic;
SIGNAL \inst|inst20~combout\ : std_logic;
SIGNAL \inst|inst15~combout\ : std_logic;
SIGNAL \inst|inst4~1_combout\ : std_logic;
SIGNAL \inst|inst3~combout\ : std_logic;
SIGNAL \inst|inst4~3_combout\ : std_logic;
SIGNAL \inst|inst4~0_combout\ : std_logic;
SIGNAL \inst|inst4~_emulated_q\ : std_logic;
SIGNAL \inst|inst4~2_combout\ : std_logic;
SIGNAL \inst|inst6~0_combout\ : std_logic;
SIGNAL \inst17~combout\ : std_logic;
SIGNAL \inst|inst6~q\ : std_logic;
SIGNAL \inst|inst9~combout\ : std_logic;
SIGNAL \inst|inst8~0_combout\ : std_logic;
SIGNAL \inst|inst8~q\ : std_logic;
SIGNAL \inst|inst10~0_combout\ : std_logic;
SIGNAL \inst|inst10~q\ : std_logic;
SIGNAL \inst|inst12~0_combout\ : std_logic;
SIGNAL \inst|inst12~1_combout\ : std_logic;
SIGNAL \inst|inst12~q\ : std_logic;
SIGNAL \inst|inst91~combout\ : std_logic;
SIGNAL \inst|inst33~combout\ : std_logic;
SIGNAL \inst|inst2~1_combout\ : std_logic;
SIGNAL \inst|inst2~3_combout\ : std_logic;
SIGNAL \inst|inst2~0_combout\ : std_logic;
SIGNAL \inst|inst2~_emulated_q\ : std_logic;
SIGNAL \inst|inst2~2_combout\ : std_logic;
SIGNAL \inst|inst71~combout\ : std_logic;
SIGNAL \inst|inst18~combout\ : std_logic;
SIGNAL \inst|inst~1_combout\ : std_logic;
SIGNAL \inst|inst~3_combout\ : std_logic;
SIGNAL \inst|inst~0_combout\ : std_logic;
SIGNAL \inst|inst~_emulated_q\ : std_logic;
SIGNAL \inst|inst~2_combout\ : std_logic;
SIGNAL \inst|inst61~combout\ : std_logic;
SIGNAL \inst|inst29~combout\ : std_logic;
SIGNAL \inst|inst1~1_combout\ : std_logic;
SIGNAL \inst|inst1~3_combout\ : std_logic;
SIGNAL \inst|inst1~0_combout\ : std_logic;
SIGNAL \inst|inst1~_emulated_q\ : std_logic;
SIGNAL \inst|inst1~2_combout\ : std_logic;
SIGNAL \inst10|inst10~0_combout\ : std_logic;
SIGNAL \inst10|inst8~combout\ : std_logic;
SIGNAL \inst10|inst7~0_combout\ : std_logic;
SIGNAL \inst10|inst5~0_combout\ : std_logic;
SIGNAL \inst10|inst4~0_combout\ : std_logic;
SIGNAL \inst10|inst3~0_combout\ : std_logic;
SIGNAL \inst10|inst2~0_combout\ : std_logic;
SIGNAL \inst9|inst10~0_combout\ : std_logic;
SIGNAL \inst9|inst8~combout\ : std_logic;
SIGNAL \inst9|inst7~0_combout\ : std_logic;
SIGNAL \inst9|inst5~0_combout\ : std_logic;
SIGNAL \inst9|inst4~0_combout\ : std_logic;
SIGNAL \inst9|inst3~0_combout\ : std_logic;
SIGNAL \inst9|inst2~0_combout\ : std_logic;
SIGNAL \inst8|inst10~0_combout\ : std_logic;
SIGNAL \inst8|inst8~0_combout\ : std_logic;
SIGNAL \inst8|inst7~0_combout\ : std_logic;
SIGNAL \inst8|inst5~0_combout\ : std_logic;
SIGNAL \inst8|inst4~0_combout\ : std_logic;
SIGNAL \inst8|inst3~0_combout\ : std_logic;
SIGNAL \inst8|inst2~0_combout\ : std_logic;
SIGNAL \inst7|inst10~0_combout\ : std_logic;
SIGNAL \inst7|inst8~combout\ : std_logic;
SIGNAL \inst7|inst7~0_combout\ : std_logic;
SIGNAL \inst7|inst5~0_combout\ : std_logic;
SIGNAL \inst7|inst4~0_combout\ : std_logic;
SIGNAL \inst7|inst3~0_combout\ : std_logic;
SIGNAL \inst7|inst2~0_combout\ : std_logic;
SIGNAL \inst2|inst1|LPM_MUX_component|auto_generated|result_node[0]~4_combout\ : std_logic;
SIGNAL \inst2|inst1|LPM_MUX_component|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst19~combout\ : std_logic;
SIGNAL \inst18|inst3~0_combout\ : std_logic;
SIGNAL \inst3|inst~q\ : std_logic;
SIGNAL \inst18|inst21~0_combout\ : std_logic;
SIGNAL \inst4|inst~q\ : std_logic;
SIGNAL \inst12|LPM_MUX_component|auto_generated|result_node[0]~2_combout\ : std_logic;
SIGNAL \inst2|inst4|inst|inst4~combout\ : std_logic;
SIGNAL \inst2|inst4|inst2|inst1~combout\ : std_logic;
SIGNAL \inst3|inst7~q\ : std_logic;
SIGNAL \inst12|LPM_MUX_component|auto_generated|result_node[2]~0_combout\ : std_logic;
SIGNAL \inst2|inst5|inst2|inst1~combout\ : std_logic;
SIGNAL \inst2|inst1|LPM_MUX_component|auto_generated|result_node[1]~6_combout\ : std_logic;
SIGNAL \inst2|inst1|LPM_MUX_component|auto_generated|result_node[1]~7_combout\ : std_logic;
SIGNAL \inst3|inst6~q\ : std_logic;
SIGNAL \inst4|inst6~q\ : std_logic;
SIGNAL \inst12|LPM_MUX_component|auto_generated|result_node[1]~1_combout\ : std_logic;
SIGNAL \inst2|inst1|LPM_MUX_component|auto_generated|result_node[2]~1_combout\ : std_logic;
SIGNAL \inst2|inst1|LPM_MUX_component|auto_generated|result_node[3]~8_combout\ : std_logic;
SIGNAL \inst3|inst9~q\ : std_logic;
SIGNAL \inst2|inst4|inst7|inst1~0_combout\ : std_logic;
SIGNAL \inst2|inst5|inst2|inst6~0_combout\ : std_logic;
SIGNAL \inst2|inst1|LPM_MUX_component|auto_generated|result_node[3]~9_combout\ : std_logic;
SIGNAL \inst2|inst4|inst3|inst6~0_combout\ : std_logic;
SIGNAL \inst2|inst4|inst2|inst6~0_combout\ : std_logic;
SIGNAL \inst2|inst4|inst2|inst6~1_combout\ : std_logic;
SIGNAL \inst2|inst4|inst2|inst6~2_combout\ : std_logic;
SIGNAL \inst2|inst4|inst3|inst6~1_combout\ : std_logic;
SIGNAL \inst2|inst1|LPM_MUX_component|auto_generated|result_node[3]~10_combout\ : std_logic;
SIGNAL \inst2|inst1|LPM_MUX_component|auto_generated|result_node[3]~11_combout\ : std_logic;
SIGNAL \inst4|inst9~q\ : std_logic;
SIGNAL \inst2|inst1|LPM_MUX_component|auto_generated|result_node[2]~0_combout\ : std_logic;
SIGNAL \inst2|inst1|LPM_MUX_component|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \inst2|inst1|LPM_MUX_component|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst4|inst7~q\ : std_logic;
SIGNAL \inst1|inst10~0_combout\ : std_logic;
SIGNAL \inst1|inst8~combout\ : std_logic;
SIGNAL \inst1|inst7~0_combout\ : std_logic;
SIGNAL \inst1|inst5~0_combout\ : std_logic;
SIGNAL \inst1|inst4~0_combout\ : std_logic;
SIGNAL \inst1|inst3~0_combout\ : std_logic;
SIGNAL \inst1|inst2~0_combout\ : std_logic;
SIGNAL \inst6|inst10~0_combout\ : std_logic;
SIGNAL \inst6|inst8~0_combout\ : std_logic;
SIGNAL \inst6|inst7~0_combout\ : std_logic;
SIGNAL \inst6|inst5~0_combout\ : std_logic;
SIGNAL \inst6|inst4~0_combout\ : std_logic;
SIGNAL \inst6|inst3~0_combout\ : std_logic;
SIGNAL \inst6|inst2~0_combout\ : std_logic;
SIGNAL \inst5|altsyncram_component|auto_generated|q_a\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst16|counter\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst16|ALT_INV_out_key~2clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_RESET~input_o\ : std_logic;
SIGNAL \inst|ALT_INV_inst4~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_inst2~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_inst~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_inst1~0_combout\ : std_logic;
SIGNAL \ALT_INV_inst17~combout\ : std_logic;
SIGNAL \ALT_INV_inst19~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

HEXMEM0 <= ww_HEXMEM0;
ww_CLOCK_FPGA <= CLOCK_FPGA;
ww_RESET <= RESET;
ww_CLK <= CLK;
ww_CLEAR <= CLEAR;
HEXMEM1 <= ww_HEXMEM1;
HEXMEM2 <= ww_HEXMEM2;
HEXMEM3 <= ww_HEXMEM3;
HEXREG1 <= ww_HEXREG1;
HEXREG2 <= ww_HEXREG2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst5|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst|inst12~q\ & \inst|inst10~q\ & \inst|inst8~q\ & \inst|inst6~q\ & \inst|inst4~2_combout\ & \inst|inst2~2_combout\ & \inst|inst~2_combout\ & \inst|inst1~2_combout\);

\inst5|altsyncram_component|auto_generated|q_a\(0) <= \inst5|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst5|altsyncram_component|auto_generated|q_a\(1) <= \inst5|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst5|altsyncram_component|auto_generated|q_a\(2) <= \inst5|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst5|altsyncram_component|auto_generated|q_a\(3) <= \inst5|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\inst5|altsyncram_component|auto_generated|q_a\(4) <= \inst5|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\inst5|altsyncram_component|auto_generated|q_a\(5) <= \inst5|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\inst5|altsyncram_component|auto_generated|q_a\(6) <= \inst5|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\inst5|altsyncram_component|auto_generated|q_a\(7) <= \inst5|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\inst5|altsyncram_component|auto_generated|q_a\(8) <= \inst5|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\inst5|altsyncram_component|auto_generated|q_a\(9) <= \inst5|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\inst5|altsyncram_component|auto_generated|q_a\(10) <= \inst5|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\inst5|altsyncram_component|auto_generated|q_a\(11) <= \inst5|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\inst5|altsyncram_component|auto_generated|q_a\(12) <= \inst5|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\inst5|altsyncram_component|auto_generated|q_a\(13) <= \inst5|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\inst5|altsyncram_component|auto_generated|q_a\(14) <= \inst5|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\inst5|altsyncram_component|auto_generated|q_a\(15) <= \inst5|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);

\CLOCK_FPGA~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_FPGA~input_o\);

\inst16|out_key~2clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst16|out_key~2_combout\);
\inst16|ALT_INV_out_key~2clkctrl_outclk\ <= NOT \inst16|out_key~2clkctrl_outclk\;
\ALT_INV_RESET~input_o\ <= NOT \RESET~input_o\;
\inst|ALT_INV_inst4~0_combout\ <= NOT \inst|inst4~0_combout\;
\inst|ALT_INV_inst2~0_combout\ <= NOT \inst|inst2~0_combout\;
\inst|ALT_INV_inst~0_combout\ <= NOT \inst|inst~0_combout\;
\inst|ALT_INV_inst1~0_combout\ <= NOT \inst|inst1~0_combout\;
\ALT_INV_inst17~combout\ <= NOT \inst17~combout\;
\ALT_INV_inst19~combout\ <= NOT \inst19~combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X115_Y69_N2
\HEXMEM0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst10~0_combout\,
	devoe => ww_devoe,
	o => \HEXMEM0[6]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEXMEM0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst8~combout\,
	devoe => ww_devoe,
	o => \HEXMEM0[5]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEXMEM0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst7~0_combout\,
	devoe => ww_devoe,
	o => \HEXMEM0[4]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEXMEM0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst5~0_combout\,
	devoe => ww_devoe,
	o => \HEXMEM0[3]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEXMEM0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst4~0_combout\,
	devoe => ww_devoe,
	o => \HEXMEM0[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEXMEM0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst3~0_combout\,
	devoe => ww_devoe,
	o => \HEXMEM0[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\HEXMEM0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst2~0_combout\,
	devoe => ww_devoe,
	o => \HEXMEM0[0]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\HEXMEM1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst10~0_combout\,
	devoe => ww_devoe,
	o => \HEXMEM1[6]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\HEXMEM1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst8~combout\,
	devoe => ww_devoe,
	o => \HEXMEM1[5]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\HEXMEM1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst7~0_combout\,
	devoe => ww_devoe,
	o => \HEXMEM1[4]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\HEXMEM1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst5~0_combout\,
	devoe => ww_devoe,
	o => \HEXMEM1[3]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\HEXMEM1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst4~0_combout\,
	devoe => ww_devoe,
	o => \HEXMEM1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\HEXMEM1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst3~0_combout\,
	devoe => ww_devoe,
	o => \HEXMEM1[1]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\HEXMEM1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst2~0_combout\,
	devoe => ww_devoe,
	o => \HEXMEM1[0]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\HEXMEM2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|inst10~0_combout\,
	devoe => ww_devoe,
	o => \HEXMEM2[6]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\HEXMEM2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|inst8~0_combout\,
	devoe => ww_devoe,
	o => \HEXMEM2[5]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\HEXMEM2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|inst7~0_combout\,
	devoe => ww_devoe,
	o => \HEXMEM2[4]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\HEXMEM2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|inst5~0_combout\,
	devoe => ww_devoe,
	o => \HEXMEM2[3]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\HEXMEM2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|inst4~0_combout\,
	devoe => ww_devoe,
	o => \HEXMEM2[2]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\HEXMEM2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|inst3~0_combout\,
	devoe => ww_devoe,
	o => \HEXMEM2[1]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\HEXMEM2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|inst2~0_combout\,
	devoe => ww_devoe,
	o => \HEXMEM2[0]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\HEXMEM3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|inst10~0_combout\,
	devoe => ww_devoe,
	o => \HEXMEM3[6]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\HEXMEM3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|inst8~combout\,
	devoe => ww_devoe,
	o => \HEXMEM3[5]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\HEXMEM3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|inst7~0_combout\,
	devoe => ww_devoe,
	o => \HEXMEM3[4]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\HEXMEM3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|inst5~0_combout\,
	devoe => ww_devoe,
	o => \HEXMEM3[3]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\HEXMEM3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|inst4~0_combout\,
	devoe => ww_devoe,
	o => \HEXMEM3[2]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\HEXMEM3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|inst3~0_combout\,
	devoe => ww_devoe,
	o => \HEXMEM3[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\HEXMEM3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|inst2~0_combout\,
	devoe => ww_devoe,
	o => \HEXMEM3[0]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\HEXREG1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst10~0_combout\,
	devoe => ww_devoe,
	o => \HEXREG1[6]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\HEXREG1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst8~combout\,
	devoe => ww_devoe,
	o => \HEXREG1[5]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\HEXREG1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst7~0_combout\,
	devoe => ww_devoe,
	o => \HEXREG1[4]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\HEXREG1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst5~0_combout\,
	devoe => ww_devoe,
	o => \HEXREG1[3]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\HEXREG1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst4~0_combout\,
	devoe => ww_devoe,
	o => \HEXREG1[2]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\HEXREG1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst3~0_combout\,
	devoe => ww_devoe,
	o => \HEXREG1[1]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\HEXREG1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst2~0_combout\,
	devoe => ww_devoe,
	o => \HEXREG1[0]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\HEXREG2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst10~0_combout\,
	devoe => ww_devoe,
	o => \HEXREG2[6]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\HEXREG2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst8~0_combout\,
	devoe => ww_devoe,
	o => \HEXREG2[5]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\HEXREG2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst7~0_combout\,
	devoe => ww_devoe,
	o => \HEXREG2[4]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\HEXREG2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst5~0_combout\,
	devoe => ww_devoe,
	o => \HEXREG2[3]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\HEXREG2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst4~0_combout\,
	devoe => ww_devoe,
	o => \HEXREG2[2]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\HEXREG2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst3~0_combout\,
	devoe => ww_devoe,
	o => \HEXREG2[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\HEXREG2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst2~0_combout\,
	devoe => ww_devoe,
	o => \HEXREG2[0]~output_o\);

-- Location: IOIBUF_X115_Y14_N8
\RESET~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET,
	o => \RESET~input_o\);

-- Location: IOIBUF_X115_Y17_N1
\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: LCCOMB_X114_Y16_N22
\inst16|out_key~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|out_key~1_combout\ = (\RESET~input_o\ & ((\CLK~input_o\))) # (!\RESET~input_o\ & (\inst16|out_key~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|out_key~1_combout\,
	datac => \RESET~input_o\,
	datad => \CLK~input_o\,
	combout => \inst16|out_key~1_combout\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_FPGA~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_FPGA,
	o => \CLOCK_FPGA~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_FPGA~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_FPGA~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_FPGA~inputclkctrl_outclk\);

-- Location: LCCOMB_X113_Y16_N0
\inst16|counter[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|counter[0]~16_combout\ = \inst16|counter\(0) $ (VCC)
-- \inst16|counter[0]~17\ = CARRY(\inst16|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst16|counter\(0),
	datad => VCC,
	combout => \inst16|counter[0]~16_combout\,
	cout => \inst16|counter[0]~17\);

-- Location: LCCOMB_X114_Y16_N24
\inst16|intermediate~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|intermediate~1_combout\ = \CLK~input_o\ $ (\inst16|out_key~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK~input_o\,
	datac => \inst16|out_key~1_combout\,
	combout => \inst16|intermediate~1_combout\);

-- Location: LCCOMB_X114_Y16_N14
\inst16|intermediate~_emulatedfeeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|intermediate~_emulatedfeeder_combout\ = \inst16|intermediate~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst16|intermediate~1_combout\,
	combout => \inst16|intermediate~_emulatedfeeder_combout\);

-- Location: FF_X114_Y16_N15
\inst16|intermediate~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_FPGA~inputclkctrl_outclk\,
	d => \inst16|intermediate~_emulatedfeeder_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|intermediate~_emulated_q\);

-- Location: LCCOMB_X114_Y16_N28
\inst16|intermediate~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|intermediate~0_combout\ = (\RESET~input_o\ & (((\CLK~input_o\)))) # (!\RESET~input_o\ & (\inst16|intermediate~_emulated_q\ $ ((\inst16|out_key~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \inst16|intermediate~_emulated_q\,
	datac => \inst16|out_key~1_combout\,
	datad => \CLK~input_o\,
	combout => \inst16|intermediate~0_combout\);

-- Location: LCCOMB_X114_Y16_N30
\inst16|always0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|always0~0_combout\ = \CLK~input_o\ $ (\inst16|intermediate~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK~input_o\,
	datab => \inst16|intermediate~0_combout\,
	combout => \inst16|always0~0_combout\);

-- Location: FF_X113_Y16_N1
\inst16|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_FPGA~inputclkctrl_outclk\,
	d => \inst16|counter[0]~16_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \inst16|always0~0_combout\,
	ena => \inst16|out_key~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|counter\(0));

-- Location: LCCOMB_X113_Y16_N2
\inst16|counter[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|counter[1]~18_combout\ = (\inst16|counter\(1) & (!\inst16|counter[0]~17\)) # (!\inst16|counter\(1) & ((\inst16|counter[0]~17\) # (GND)))
-- \inst16|counter[1]~19\ = CARRY((!\inst16|counter[0]~17\) # (!\inst16|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst16|counter\(1),
	datad => VCC,
	cin => \inst16|counter[0]~17\,
	combout => \inst16|counter[1]~18_combout\,
	cout => \inst16|counter[1]~19\);

-- Location: FF_X113_Y16_N3
\inst16|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_FPGA~inputclkctrl_outclk\,
	d => \inst16|counter[1]~18_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \inst16|always0~0_combout\,
	ena => \inst16|out_key~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|counter\(1));

-- Location: LCCOMB_X113_Y16_N4
\inst16|counter[2]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|counter[2]~20_combout\ = (\inst16|counter\(2) & (\inst16|counter[1]~19\ $ (GND))) # (!\inst16|counter\(2) & (!\inst16|counter[1]~19\ & VCC))
-- \inst16|counter[2]~21\ = CARRY((\inst16|counter\(2) & !\inst16|counter[1]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst16|counter\(2),
	datad => VCC,
	cin => \inst16|counter[1]~19\,
	combout => \inst16|counter[2]~20_combout\,
	cout => \inst16|counter[2]~21\);

-- Location: FF_X113_Y16_N5
\inst16|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_FPGA~inputclkctrl_outclk\,
	d => \inst16|counter[2]~20_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \inst16|always0~0_combout\,
	ena => \inst16|out_key~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|counter\(2));

-- Location: LCCOMB_X113_Y16_N6
\inst16|counter[3]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|counter[3]~22_combout\ = (\inst16|counter\(3) & (!\inst16|counter[2]~21\)) # (!\inst16|counter\(3) & ((\inst16|counter[2]~21\) # (GND)))
-- \inst16|counter[3]~23\ = CARRY((!\inst16|counter[2]~21\) # (!\inst16|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|counter\(3),
	datad => VCC,
	cin => \inst16|counter[2]~21\,
	combout => \inst16|counter[3]~22_combout\,
	cout => \inst16|counter[3]~23\);

-- Location: FF_X113_Y16_N7
\inst16|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_FPGA~inputclkctrl_outclk\,
	d => \inst16|counter[3]~22_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \inst16|always0~0_combout\,
	ena => \inst16|out_key~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|counter\(3));

-- Location: LCCOMB_X113_Y16_N8
\inst16|counter[4]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|counter[4]~24_combout\ = (\inst16|counter\(4) & (\inst16|counter[3]~23\ $ (GND))) # (!\inst16|counter\(4) & (!\inst16|counter[3]~23\ & VCC))
-- \inst16|counter[4]~25\ = CARRY((\inst16|counter\(4) & !\inst16|counter[3]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst16|counter\(4),
	datad => VCC,
	cin => \inst16|counter[3]~23\,
	combout => \inst16|counter[4]~24_combout\,
	cout => \inst16|counter[4]~25\);

-- Location: FF_X113_Y16_N9
\inst16|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_FPGA~inputclkctrl_outclk\,
	d => \inst16|counter[4]~24_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \inst16|always0~0_combout\,
	ena => \inst16|out_key~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|counter\(4));

-- Location: LCCOMB_X113_Y16_N10
\inst16|counter[5]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|counter[5]~26_combout\ = (\inst16|counter\(5) & (!\inst16|counter[4]~25\)) # (!\inst16|counter\(5) & ((\inst16|counter[4]~25\) # (GND)))
-- \inst16|counter[5]~27\ = CARRY((!\inst16|counter[4]~25\) # (!\inst16|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|counter\(5),
	datad => VCC,
	cin => \inst16|counter[4]~25\,
	combout => \inst16|counter[5]~26_combout\,
	cout => \inst16|counter[5]~27\);

-- Location: FF_X113_Y16_N11
\inst16|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_FPGA~inputclkctrl_outclk\,
	d => \inst16|counter[5]~26_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \inst16|always0~0_combout\,
	ena => \inst16|out_key~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|counter\(5));

-- Location: LCCOMB_X113_Y16_N12
\inst16|counter[6]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|counter[6]~28_combout\ = (\inst16|counter\(6) & (\inst16|counter[5]~27\ $ (GND))) # (!\inst16|counter\(6) & (!\inst16|counter[5]~27\ & VCC))
-- \inst16|counter[6]~29\ = CARRY((\inst16|counter\(6) & !\inst16|counter[5]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|counter\(6),
	datad => VCC,
	cin => \inst16|counter[5]~27\,
	combout => \inst16|counter[6]~28_combout\,
	cout => \inst16|counter[6]~29\);

-- Location: FF_X113_Y16_N13
\inst16|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_FPGA~inputclkctrl_outclk\,
	d => \inst16|counter[6]~28_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \inst16|always0~0_combout\,
	ena => \inst16|out_key~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|counter\(6));

-- Location: LCCOMB_X113_Y16_N14
\inst16|counter[7]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|counter[7]~30_combout\ = (\inst16|counter\(7) & (!\inst16|counter[6]~29\)) # (!\inst16|counter\(7) & ((\inst16|counter[6]~29\) # (GND)))
-- \inst16|counter[7]~31\ = CARRY((!\inst16|counter[6]~29\) # (!\inst16|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst16|counter\(7),
	datad => VCC,
	cin => \inst16|counter[6]~29\,
	combout => \inst16|counter[7]~30_combout\,
	cout => \inst16|counter[7]~31\);

-- Location: FF_X113_Y16_N15
\inst16|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_FPGA~inputclkctrl_outclk\,
	d => \inst16|counter[7]~30_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \inst16|always0~0_combout\,
	ena => \inst16|out_key~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|counter\(7));

-- Location: LCCOMB_X113_Y16_N16
\inst16|counter[8]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|counter[8]~32_combout\ = (\inst16|counter\(8) & (\inst16|counter[7]~31\ $ (GND))) # (!\inst16|counter\(8) & (!\inst16|counter[7]~31\ & VCC))
-- \inst16|counter[8]~33\ = CARRY((\inst16|counter\(8) & !\inst16|counter[7]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst16|counter\(8),
	datad => VCC,
	cin => \inst16|counter[7]~31\,
	combout => \inst16|counter[8]~32_combout\,
	cout => \inst16|counter[8]~33\);

-- Location: FF_X113_Y16_N17
\inst16|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_FPGA~inputclkctrl_outclk\,
	d => \inst16|counter[8]~32_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \inst16|always0~0_combout\,
	ena => \inst16|out_key~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|counter\(8));

-- Location: LCCOMB_X113_Y16_N18
\inst16|counter[9]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|counter[9]~34_combout\ = (\inst16|counter\(9) & (!\inst16|counter[8]~33\)) # (!\inst16|counter\(9) & ((\inst16|counter[8]~33\) # (GND)))
-- \inst16|counter[9]~35\ = CARRY((!\inst16|counter[8]~33\) # (!\inst16|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst16|counter\(9),
	datad => VCC,
	cin => \inst16|counter[8]~33\,
	combout => \inst16|counter[9]~34_combout\,
	cout => \inst16|counter[9]~35\);

-- Location: FF_X113_Y16_N19
\inst16|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_FPGA~inputclkctrl_outclk\,
	d => \inst16|counter[9]~34_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \inst16|always0~0_combout\,
	ena => \inst16|out_key~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|counter\(9));

-- Location: LCCOMB_X113_Y16_N20
\inst16|counter[10]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|counter[10]~36_combout\ = (\inst16|counter\(10) & (\inst16|counter[9]~35\ $ (GND))) # (!\inst16|counter\(10) & (!\inst16|counter[9]~35\ & VCC))
-- \inst16|counter[10]~37\ = CARRY((\inst16|counter\(10) & !\inst16|counter[9]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst16|counter\(10),
	datad => VCC,
	cin => \inst16|counter[9]~35\,
	combout => \inst16|counter[10]~36_combout\,
	cout => \inst16|counter[10]~37\);

-- Location: FF_X113_Y16_N21
\inst16|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_FPGA~inputclkctrl_outclk\,
	d => \inst16|counter[10]~36_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \inst16|always0~0_combout\,
	ena => \inst16|out_key~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|counter\(10));

-- Location: LCCOMB_X113_Y16_N22
\inst16|counter[11]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|counter[11]~38_combout\ = (\inst16|counter\(11) & (!\inst16|counter[10]~37\)) # (!\inst16|counter\(11) & ((\inst16|counter[10]~37\) # (GND)))
-- \inst16|counter[11]~39\ = CARRY((!\inst16|counter[10]~37\) # (!\inst16|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|counter\(11),
	datad => VCC,
	cin => \inst16|counter[10]~37\,
	combout => \inst16|counter[11]~38_combout\,
	cout => \inst16|counter[11]~39\);

-- Location: FF_X113_Y16_N23
\inst16|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_FPGA~inputclkctrl_outclk\,
	d => \inst16|counter[11]~38_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \inst16|always0~0_combout\,
	ena => \inst16|out_key~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|counter\(11));

-- Location: LCCOMB_X113_Y16_N24
\inst16|counter[12]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|counter[12]~40_combout\ = (\inst16|counter\(12) & (\inst16|counter[11]~39\ $ (GND))) # (!\inst16|counter\(12) & (!\inst16|counter[11]~39\ & VCC))
-- \inst16|counter[12]~41\ = CARRY((\inst16|counter\(12) & !\inst16|counter[11]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst16|counter\(12),
	datad => VCC,
	cin => \inst16|counter[11]~39\,
	combout => \inst16|counter[12]~40_combout\,
	cout => \inst16|counter[12]~41\);

-- Location: FF_X113_Y16_N25
\inst16|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_FPGA~inputclkctrl_outclk\,
	d => \inst16|counter[12]~40_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \inst16|always0~0_combout\,
	ena => \inst16|out_key~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|counter\(12));

-- Location: LCCOMB_X113_Y16_N26
\inst16|counter[13]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|counter[13]~42_combout\ = (\inst16|counter\(13) & (!\inst16|counter[12]~41\)) # (!\inst16|counter\(13) & ((\inst16|counter[12]~41\) # (GND)))
-- \inst16|counter[13]~43\ = CARRY((!\inst16|counter[12]~41\) # (!\inst16|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|counter\(13),
	datad => VCC,
	cin => \inst16|counter[12]~41\,
	combout => \inst16|counter[13]~42_combout\,
	cout => \inst16|counter[13]~43\);

-- Location: FF_X113_Y16_N27
\inst16|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_FPGA~inputclkctrl_outclk\,
	d => \inst16|counter[13]~42_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \inst16|always0~0_combout\,
	ena => \inst16|out_key~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|counter\(13));

-- Location: LCCOMB_X113_Y16_N28
\inst16|counter[14]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|counter[14]~44_combout\ = (\inst16|counter\(14) & (\inst16|counter[13]~43\ $ (GND))) # (!\inst16|counter\(14) & (!\inst16|counter[13]~43\ & VCC))
-- \inst16|counter[14]~45\ = CARRY((\inst16|counter\(14) & !\inst16|counter[13]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst16|counter\(14),
	datad => VCC,
	cin => \inst16|counter[13]~43\,
	combout => \inst16|counter[14]~44_combout\,
	cout => \inst16|counter[14]~45\);

-- Location: FF_X113_Y16_N29
\inst16|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_FPGA~inputclkctrl_outclk\,
	d => \inst16|counter[14]~44_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \inst16|always0~0_combout\,
	ena => \inst16|out_key~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|counter\(14));

-- Location: LCCOMB_X113_Y16_N30
\inst16|counter[15]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|counter[15]~46_combout\ = \inst16|counter\(15) $ (\inst16|counter[14]~45\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|counter\(15),
	cin => \inst16|counter[14]~45\,
	combout => \inst16|counter[15]~46_combout\);

-- Location: FF_X113_Y16_N31
\inst16|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_FPGA~inputclkctrl_outclk\,
	d => \inst16|counter[15]~46_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \inst16|always0~0_combout\,
	ena => \inst16|out_key~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|counter\(15));

-- Location: LCCOMB_X114_Y16_N26
\inst16|out_key~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|out_key~6_combout\ = (\inst16|counter\(8) & (\inst16|counter\(9) & (\inst16|counter\(15) & \inst16|counter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|counter\(8),
	datab => \inst16|counter\(9),
	datac => \inst16|counter\(15),
	datad => \inst16|counter\(14),
	combout => \inst16|out_key~6_combout\);

-- Location: LCCOMB_X114_Y16_N8
\inst16|out_key~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|out_key~7_combout\ = (\inst16|counter\(7) & (\inst16|counter\(12) & (\inst16|counter\(13) & \inst16|counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|counter\(7),
	datab => \inst16|counter\(12),
	datac => \inst16|counter\(13),
	datad => \inst16|counter\(6),
	combout => \inst16|out_key~7_combout\);

-- Location: LCCOMB_X114_Y16_N10
\inst16|out_key~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|out_key~5_combout\ = (\inst16|counter\(1) & (\inst16|counter\(0) & (\CLK~input_o\ $ (!\inst16|intermediate~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|counter\(1),
	datab => \CLK~input_o\,
	datac => \inst16|counter\(0),
	datad => \inst16|intermediate~0_combout\,
	combout => \inst16|out_key~5_combout\);

-- Location: LCCOMB_X114_Y16_N18
\inst16|out_key~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|out_key~8_combout\ = (\inst16|counter\(5) & (\inst16|counter\(3) & (\inst16|counter\(2) & \inst16|counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|counter\(5),
	datab => \inst16|counter\(3),
	datac => \inst16|counter\(2),
	datad => \inst16|counter\(4),
	combout => \inst16|out_key~8_combout\);

-- Location: LCCOMB_X114_Y16_N12
\inst16|out_key~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|out_key~9_combout\ = (\inst16|counter\(10) & (\inst16|counter\(11) & \inst16|out_key~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst16|counter\(10),
	datac => \inst16|counter\(11),
	datad => \inst16|out_key~8_combout\,
	combout => \inst16|out_key~9_combout\);

-- Location: LCCOMB_X114_Y16_N16
\inst16|out_key~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|out_key~10_combout\ = (((!\inst16|out_key~9_combout\) # (!\inst16|out_key~5_combout\)) # (!\inst16|out_key~7_combout\)) # (!\inst16|out_key~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|out_key~6_combout\,
	datab => \inst16|out_key~7_combout\,
	datac => \inst16|out_key~5_combout\,
	datad => \inst16|out_key~9_combout\,
	combout => \inst16|out_key~10_combout\);

-- Location: LCCOMB_X114_Y16_N20
\inst16|out_key~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|out_key~3_combout\ = \inst16|out_key~1_combout\ $ (((\inst16|out_key~10_combout\ & (\inst16|out_key~2_combout\)) # (!\inst16|out_key~10_combout\ & ((\inst16|intermediate~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|out_key~10_combout\,
	datab => \inst16|out_key~1_combout\,
	datac => \inst16|out_key~2_combout\,
	datad => \inst16|intermediate~0_combout\,
	combout => \inst16|out_key~3_combout\);

-- Location: FF_X114_Y16_N21
\inst16|out_key~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_FPGA~input_o\,
	d => \inst16|out_key~3_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|out_key~_emulated_q\);

-- Location: LCCOMB_X114_Y16_N2
\inst16|out_key~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|out_key~2_combout\ = (\RESET~input_o\ & (((\CLK~input_o\)))) # (!\RESET~input_o\ & (\inst16|out_key~1_combout\ $ (((\inst16|out_key~_emulated_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|out_key~1_combout\,
	datab => \RESET~input_o\,
	datac => \CLK~input_o\,
	datad => \inst16|out_key~_emulated_q\,
	combout => \inst16|out_key~2_combout\);

-- Location: CLKCTRL_G9
\inst16|out_key~2clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst16|out_key~2clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst16|out_key~2clkctrl_outclk\);

-- Location: IOIBUF_X115_Y14_N1
\CLEAR~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLEAR,
	o => \CLEAR~input_o\);

-- Location: LCCOMB_X106_Y19_N8
\inst|inst20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst20~combout\ = (\CLEAR~input_o\) # ((\inst5|altsyncram_component|auto_generated|q_a\(11) & ((!\inst5|altsyncram_component|auto_generated|q_a\(10)) # (!\inst5|altsyncram_component|auto_generated|q_a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|altsyncram_component|auto_generated|q_a\(11),
	datab => \CLEAR~input_o\,
	datac => \inst5|altsyncram_component|auto_generated|q_a\(3),
	datad => \inst5|altsyncram_component|auto_generated|q_a\(10),
	combout => \inst|inst20~combout\);

-- Location: LCCOMB_X106_Y19_N6
\inst|inst15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst15~combout\ = (\inst5|altsyncram_component|auto_generated|q_a\(10) & (\inst5|altsyncram_component|auto_generated|q_a\(11) & \inst5|altsyncram_component|auto_generated|q_a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|altsyncram_component|auto_generated|q_a\(10),
	datac => \inst5|altsyncram_component|auto_generated|q_a\(11),
	datad => \inst5|altsyncram_component|auto_generated|q_a\(3),
	combout => \inst|inst15~combout\);

-- Location: LCCOMB_X106_Y19_N10
\inst|inst4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4~1_combout\ = (!\inst|inst20~combout\ & ((\inst|inst15~combout\) # (\inst|inst4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst20~combout\,
	datac => \inst|inst15~combout\,
	datad => \inst|inst4~1_combout\,
	combout => \inst|inst4~1_combout\);

-- Location: LCCOMB_X106_Y19_N0
\inst|inst3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3~combout\ = (\inst|inst~2_combout\ & \inst|inst1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst~2_combout\,
	datad => \inst|inst1~2_combout\,
	combout => \inst|inst3~combout\);

-- Location: LCCOMB_X106_Y19_N4
\inst|inst4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4~3_combout\ = \inst|inst4~1_combout\ $ (\inst|inst4~2_combout\ $ (((\inst|inst2~2_combout\ & \inst|inst3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4~1_combout\,
	datab => \inst|inst4~2_combout\,
	datac => \inst|inst2~2_combout\,
	datad => \inst|inst3~combout\,
	combout => \inst|inst4~3_combout\);

-- Location: LCCOMB_X106_Y19_N16
\inst|inst4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4~0_combout\ = (\inst|inst20~combout\) # (\inst|inst15~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst20~combout\,
	datad => \inst|inst15~combout\,
	combout => \inst|inst4~0_combout\);

-- Location: FF_X106_Y19_N5
\inst|inst4~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst16|out_key~2clkctrl_outclk\,
	d => \inst|inst4~3_combout\,
	clrn => \inst|ALT_INV_inst4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4~_emulated_q\);

-- Location: LCCOMB_X106_Y19_N18
\inst|inst4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4~2_combout\ = (!\inst|inst20~combout\ & ((\inst|inst15~combout\) # (\inst|inst4~1_combout\ $ (\inst|inst4~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4~1_combout\,
	datab => \inst|inst20~combout\,
	datac => \inst|inst4~_emulated_q\,
	datad => \inst|inst15~combout\,
	combout => \inst|inst4~2_combout\);

-- Location: LCCOMB_X106_Y19_N20
\inst|inst6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst6~0_combout\ = \inst|inst6~q\ $ (((\inst|inst4~2_combout\ & (\inst|inst3~combout\ & \inst|inst2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4~2_combout\,
	datab => \inst|inst3~combout\,
	datac => \inst|inst6~q\,
	datad => \inst|inst2~2_combout\,
	combout => \inst|inst6~0_combout\);

-- Location: LCCOMB_X106_Y19_N2
inst17 : cycloneive_lcell_comb
-- Equation(s):
-- \inst17~combout\ = (\CLEAR~input_o\) # ((\inst5|altsyncram_component|auto_generated|q_a\(11) & !\inst5|altsyncram_component|auto_generated|q_a\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLEAR~input_o\,
	datac => \inst5|altsyncram_component|auto_generated|q_a\(11),
	datad => \inst5|altsyncram_component|auto_generated|q_a\(10),
	combout => \inst17~combout\);

-- Location: FF_X106_Y19_N21
\inst|inst6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst16|out_key~2clkctrl_outclk\,
	d => \inst|inst6~0_combout\,
	clrn => \ALT_INV_inst17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst6~q\);

-- Location: LCCOMB_X106_Y19_N28
\inst|inst9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst9~combout\ = (\inst|inst4~2_combout\ & (\inst|inst6~q\ & (\inst|inst2~2_combout\ & \inst|inst3~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4~2_combout\,
	datab => \inst|inst6~q\,
	datac => \inst|inst2~2_combout\,
	datad => \inst|inst3~combout\,
	combout => \inst|inst9~combout\);

-- Location: LCCOMB_X106_Y19_N22
\inst|inst8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst8~0_combout\ = \inst|inst8~q\ $ (\inst|inst9~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst8~q\,
	datad => \inst|inst9~combout\,
	combout => \inst|inst8~0_combout\);

-- Location: FF_X106_Y19_N23
\inst|inst8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst16|out_key~2clkctrl_outclk\,
	d => \inst|inst8~0_combout\,
	clrn => \ALT_INV_inst17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst8~q\);

-- Location: LCCOMB_X106_Y19_N24
\inst|inst10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst10~0_combout\ = \inst|inst10~q\ $ (((\inst|inst8~q\ & \inst|inst9~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst8~q\,
	datac => \inst|inst10~q\,
	datad => \inst|inst9~combout\,
	combout => \inst|inst10~0_combout\);

-- Location: FF_X106_Y19_N25
\inst|inst10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst16|out_key~2clkctrl_outclk\,
	d => \inst|inst10~0_combout\,
	clrn => \ALT_INV_inst17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst10~q\);

-- Location: LCCOMB_X106_Y19_N30
\inst|inst12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst12~0_combout\ = (((!\inst|inst4~2_combout\) # (!\inst|inst10~q\)) # (!\inst|inst6~q\)) # (!\inst|inst8~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst8~q\,
	datab => \inst|inst6~q\,
	datac => \inst|inst10~q\,
	datad => \inst|inst4~2_combout\,
	combout => \inst|inst12~0_combout\);

-- Location: LCCOMB_X106_Y19_N26
\inst|inst12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst12~1_combout\ = \inst|inst12~q\ $ (((!\inst|inst12~0_combout\ & (\inst|inst3~combout\ & \inst|inst2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst12~0_combout\,
	datab => \inst|inst3~combout\,
	datac => \inst|inst12~q\,
	datad => \inst|inst2~2_combout\,
	combout => \inst|inst12~1_combout\);

-- Location: FF_X106_Y19_N27
\inst|inst12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst16|out_key~2clkctrl_outclk\,
	d => \inst|inst12~1_combout\,
	clrn => \ALT_INV_inst17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst12~q\);

-- Location: M9K_X104_Y19_N0
\inst5|altsyncram_component|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000020006001188009302184086302240089001180040400000000000000000C0818C106202244046005",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "Mem01.mif",
	init_file_layout => "port_a",
	logical_ram_name => "rom:inst5|altsyncram:altsyncram_component|altsyncram_nnr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \inst16|ALT_INV_out_key~2clkctrl_outclk\,
	portaaddr => \inst5|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst5|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X103_Y19_N24
\inst|inst91\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst91~combout\ = (\inst5|altsyncram_component|auto_generated|q_a\(2) & (\inst5|altsyncram_component|auto_generated|q_a\(11) & \inst5|altsyncram_component|auto_generated|q_a\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|altsyncram_component|auto_generated|q_a\(2),
	datac => \inst5|altsyncram_component|auto_generated|q_a\(11),
	datad => \inst5|altsyncram_component|auto_generated|q_a\(10),
	combout => \inst|inst91~combout\);

-- Location: LCCOMB_X103_Y19_N26
\inst|inst33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst33~combout\ = (\CLEAR~input_o\) # ((\inst5|altsyncram_component|auto_generated|q_a\(11) & ((!\inst5|altsyncram_component|auto_generated|q_a\(10)) # (!\inst5|altsyncram_component|auto_generated|q_a\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLEAR~input_o\,
	datab => \inst5|altsyncram_component|auto_generated|q_a\(2),
	datac => \inst5|altsyncram_component|auto_generated|q_a\(11),
	datad => \inst5|altsyncram_component|auto_generated|q_a\(10),
	combout => \inst|inst33~combout\);

-- Location: LCCOMB_X100_Y19_N24
\inst|inst2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2~1_combout\ = (!\inst|inst33~combout\ & ((\inst|inst91~combout\) # (\inst|inst2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst91~combout\,
	datac => \inst|inst33~combout\,
	datad => \inst|inst2~1_combout\,
	combout => \inst|inst2~1_combout\);

-- Location: LCCOMB_X103_Y19_N30
\inst|inst2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2~3_combout\ = \inst|inst2~1_combout\ $ (\inst|inst2~2_combout\ $ (((\inst|inst1~2_combout\ & \inst|inst~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2~1_combout\,
	datab => \inst|inst2~2_combout\,
	datac => \inst|inst1~2_combout\,
	datad => \inst|inst~2_combout\,
	combout => \inst|inst2~3_combout\);

-- Location: LCCOMB_X103_Y19_N18
\inst|inst2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2~0_combout\ = (\inst|inst33~combout\) # (\inst|inst91~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst33~combout\,
	datad => \inst|inst91~combout\,
	combout => \inst|inst2~0_combout\);

-- Location: FF_X103_Y19_N31
\inst|inst2~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst16|out_key~2clkctrl_outclk\,
	d => \inst|inst2~3_combout\,
	clrn => \inst|ALT_INV_inst2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2~_emulated_q\);

-- Location: LCCOMB_X103_Y19_N8
\inst|inst2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2~2_combout\ = (!\inst|inst33~combout\ & ((\inst|inst91~combout\) # (\inst|inst2~_emulated_q\ $ (\inst|inst2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2~_emulated_q\,
	datab => \inst|inst2~1_combout\,
	datac => \inst|inst33~combout\,
	datad => \inst|inst91~combout\,
	combout => \inst|inst2~2_combout\);

-- Location: LCCOMB_X105_Y19_N16
\inst|inst71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst71~combout\ = (\inst5|altsyncram_component|auto_generated|q_a\(10) & (\inst5|altsyncram_component|auto_generated|q_a\(11) & \inst5|altsyncram_component|auto_generated|q_a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|altsyncram_component|auto_generated|q_a\(10),
	datac => \inst5|altsyncram_component|auto_generated|q_a\(11),
	datad => \inst5|altsyncram_component|auto_generated|q_a\(1),
	combout => \inst|inst71~combout\);

-- Location: LCCOMB_X105_Y19_N22
\inst|inst18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst18~combout\ = (\CLEAR~input_o\) # ((\inst5|altsyncram_component|auto_generated|q_a\(11) & ((!\inst5|altsyncram_component|auto_generated|q_a\(1)) # (!\inst5|altsyncram_component|auto_generated|q_a\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLEAR~input_o\,
	datab => \inst5|altsyncram_component|auto_generated|q_a\(10),
	datac => \inst5|altsyncram_component|auto_generated|q_a\(11),
	datad => \inst5|altsyncram_component|auto_generated|q_a\(1),
	combout => \inst|inst18~combout\);

-- Location: LCCOMB_X105_Y19_N18
\inst|inst~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst~1_combout\ = (!\inst|inst18~combout\ & ((\inst|inst71~combout\) # (\inst|inst~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst71~combout\,
	datac => \inst|inst18~combout\,
	datad => \inst|inst~1_combout\,
	combout => \inst|inst~1_combout\);

-- Location: LCCOMB_X105_Y19_N8
\inst|inst~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst~3_combout\ = \inst|inst~1_combout\ $ (\inst|inst1~2_combout\ $ (\inst|inst~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst~1_combout\,
	datac => \inst|inst1~2_combout\,
	datad => \inst|inst~2_combout\,
	combout => \inst|inst~3_combout\);

-- Location: LCCOMB_X105_Y19_N30
\inst|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst~0_combout\ = (\inst|inst18~combout\) # (\inst|inst71~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst18~combout\,
	datad => \inst|inst71~combout\,
	combout => \inst|inst~0_combout\);

-- Location: FF_X105_Y19_N9
\inst|inst~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst16|out_key~2clkctrl_outclk\,
	d => \inst|inst~3_combout\,
	clrn => \inst|ALT_INV_inst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst~_emulated_q\);

-- Location: LCCOMB_X105_Y19_N6
\inst|inst~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst~2_combout\ = (!\inst|inst18~combout\ & ((\inst|inst71~combout\) # (\inst|inst~1_combout\ $ (\inst|inst~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst~1_combout\,
	datab => \inst|inst~_emulated_q\,
	datac => \inst|inst18~combout\,
	datad => \inst|inst71~combout\,
	combout => \inst|inst~2_combout\);

-- Location: LCCOMB_X105_Y19_N26
\inst|inst61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst61~combout\ = (\inst5|altsyncram_component|auto_generated|q_a\(10) & (\inst5|altsyncram_component|auto_generated|q_a\(11) & \inst5|altsyncram_component|auto_generated|q_a\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|altsyncram_component|auto_generated|q_a\(10),
	datac => \inst5|altsyncram_component|auto_generated|q_a\(11),
	datad => \inst5|altsyncram_component|auto_generated|q_a\(0),
	combout => \inst|inst61~combout\);

-- Location: LCCOMB_X105_Y19_N12
\inst|inst29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst29~combout\ = (\CLEAR~input_o\) # ((\inst5|altsyncram_component|auto_generated|q_a\(11) & ((!\inst5|altsyncram_component|auto_generated|q_a\(0)) # (!\inst5|altsyncram_component|auto_generated|q_a\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLEAR~input_o\,
	datab => \inst5|altsyncram_component|auto_generated|q_a\(10),
	datac => \inst5|altsyncram_component|auto_generated|q_a\(11),
	datad => \inst5|altsyncram_component|auto_generated|q_a\(0),
	combout => \inst|inst29~combout\);

-- Location: LCCOMB_X105_Y19_N20
\inst|inst1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1~1_combout\ = (!\inst|inst29~combout\ & ((\inst|inst61~combout\) # (\inst|inst1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst61~combout\,
	datac => \inst|inst29~combout\,
	datad => \inst|inst1~1_combout\,
	combout => \inst|inst1~1_combout\);

-- Location: LCCOMB_X105_Y19_N4
\inst|inst1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1~3_combout\ = \inst|inst1~2_combout\ $ (!\inst|inst1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst1~2_combout\,
	datad => \inst|inst1~1_combout\,
	combout => \inst|inst1~3_combout\);

-- Location: LCCOMB_X105_Y19_N24
\inst|inst1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1~0_combout\ = (\inst|inst61~combout\) # (\inst|inst29~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst61~combout\,
	datad => \inst|inst29~combout\,
	combout => \inst|inst1~0_combout\);

-- Location: FF_X105_Y19_N5
\inst|inst1~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst16|out_key~2clkctrl_outclk\,
	d => \inst|inst1~3_combout\,
	clrn => \inst|ALT_INV_inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1~_emulated_q\);

-- Location: LCCOMB_X105_Y19_N14
\inst|inst1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1~2_combout\ = (!\inst|inst29~combout\ & ((\inst|inst61~combout\) # (\inst|inst1~1_combout\ $ (\inst|inst1~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1~1_combout\,
	datab => \inst|inst1~_emulated_q\,
	datac => \inst|inst61~combout\,
	datad => \inst|inst29~combout\,
	combout => \inst|inst1~2_combout\);

-- Location: LCCOMB_X107_Y50_N24
\inst10|inst10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst10~0_combout\ = (\inst5|altsyncram_component|auto_generated|q_a\(0) & (!\inst5|altsyncram_component|auto_generated|q_a\(3) & (\inst5|altsyncram_component|auto_generated|q_a\(2) $ (!\inst5|altsyncram_component|auto_generated|q_a\(1))))) # 
-- (!\inst5|altsyncram_component|auto_generated|q_a\(0) & (!\inst5|altsyncram_component|auto_generated|q_a\(1) & (\inst5|altsyncram_component|auto_generated|q_a\(3) $ (!\inst5|altsyncram_component|auto_generated|q_a\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|altsyncram_component|auto_generated|q_a\(3),
	datab => \inst5|altsyncram_component|auto_generated|q_a\(2),
	datac => \inst5|altsyncram_component|auto_generated|q_a\(0),
	datad => \inst5|altsyncram_component|auto_generated|q_a\(1),
	combout => \inst10|inst10~0_combout\);

-- Location: LCCOMB_X107_Y50_N2
\inst10|inst8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst8~combout\ = (\inst5|altsyncram_component|auto_generated|q_a\(2) & (\inst5|altsyncram_component|auto_generated|q_a\(0) & (\inst5|altsyncram_component|auto_generated|q_a\(3) $ (\inst5|altsyncram_component|auto_generated|q_a\(1))))) # 
-- (!\inst5|altsyncram_component|auto_generated|q_a\(2) & (!\inst5|altsyncram_component|auto_generated|q_a\(3) & ((\inst5|altsyncram_component|auto_generated|q_a\(0)) # (\inst5|altsyncram_component|auto_generated|q_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|altsyncram_component|auto_generated|q_a\(3),
	datab => \inst5|altsyncram_component|auto_generated|q_a\(2),
	datac => \inst5|altsyncram_component|auto_generated|q_a\(0),
	datad => \inst5|altsyncram_component|auto_generated|q_a\(1),
	combout => \inst10|inst8~combout\);

-- Location: LCCOMB_X107_Y50_N12
\inst10|inst7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst7~0_combout\ = (\inst5|altsyncram_component|auto_generated|q_a\(1) & (!\inst5|altsyncram_component|auto_generated|q_a\(3) & ((\inst5|altsyncram_component|auto_generated|q_a\(0))))) # (!\inst5|altsyncram_component|auto_generated|q_a\(1) & 
-- ((\inst5|altsyncram_component|auto_generated|q_a\(2) & (!\inst5|altsyncram_component|auto_generated|q_a\(3))) # (!\inst5|altsyncram_component|auto_generated|q_a\(2) & ((\inst5|altsyncram_component|auto_generated|q_a\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|altsyncram_component|auto_generated|q_a\(3),
	datab => \inst5|altsyncram_component|auto_generated|q_a\(2),
	datac => \inst5|altsyncram_component|auto_generated|q_a\(0),
	datad => \inst5|altsyncram_component|auto_generated|q_a\(1),
	combout => \inst10|inst7~0_combout\);

-- Location: LCCOMB_X107_Y50_N6
\inst10|inst5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst5~0_combout\ = (\inst5|altsyncram_component|auto_generated|q_a\(1) & ((\inst5|altsyncram_component|auto_generated|q_a\(2) & ((\inst5|altsyncram_component|auto_generated|q_a\(0)))) # (!\inst5|altsyncram_component|auto_generated|q_a\(2) & 
-- (\inst5|altsyncram_component|auto_generated|q_a\(3) & !\inst5|altsyncram_component|auto_generated|q_a\(0))))) # (!\inst5|altsyncram_component|auto_generated|q_a\(1) & (!\inst5|altsyncram_component|auto_generated|q_a\(3) & 
-- (\inst5|altsyncram_component|auto_generated|q_a\(2) $ (\inst5|altsyncram_component|auto_generated|q_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|altsyncram_component|auto_generated|q_a\(3),
	datab => \inst5|altsyncram_component|auto_generated|q_a\(2),
	datac => \inst5|altsyncram_component|auto_generated|q_a\(0),
	datad => \inst5|altsyncram_component|auto_generated|q_a\(1),
	combout => \inst10|inst5~0_combout\);

-- Location: LCCOMB_X107_Y50_N4
\inst10|inst4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst4~0_combout\ = (\inst5|altsyncram_component|auto_generated|q_a\(3) & (\inst5|altsyncram_component|auto_generated|q_a\(2) & ((\inst5|altsyncram_component|auto_generated|q_a\(1)) # (!\inst5|altsyncram_component|auto_generated|q_a\(0))))) # 
-- (!\inst5|altsyncram_component|auto_generated|q_a\(3) & (!\inst5|altsyncram_component|auto_generated|q_a\(2) & (!\inst5|altsyncram_component|auto_generated|q_a\(0) & \inst5|altsyncram_component|auto_generated|q_a\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|altsyncram_component|auto_generated|q_a\(3),
	datab => \inst5|altsyncram_component|auto_generated|q_a\(2),
	datac => \inst5|altsyncram_component|auto_generated|q_a\(0),
	datad => \inst5|altsyncram_component|auto_generated|q_a\(1),
	combout => \inst10|inst4~0_combout\);

-- Location: LCCOMB_X107_Y50_N18
\inst10|inst3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst3~0_combout\ = (\inst5|altsyncram_component|auto_generated|q_a\(3) & ((\inst5|altsyncram_component|auto_generated|q_a\(0) & ((\inst5|altsyncram_component|auto_generated|q_a\(1)))) # (!\inst5|altsyncram_component|auto_generated|q_a\(0) & 
-- (\inst5|altsyncram_component|auto_generated|q_a\(2))))) # (!\inst5|altsyncram_component|auto_generated|q_a\(3) & (\inst5|altsyncram_component|auto_generated|q_a\(2) & (\inst5|altsyncram_component|auto_generated|q_a\(0) $ 
-- (\inst5|altsyncram_component|auto_generated|q_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|altsyncram_component|auto_generated|q_a\(3),
	datab => \inst5|altsyncram_component|auto_generated|q_a\(2),
	datac => \inst5|altsyncram_component|auto_generated|q_a\(0),
	datad => \inst5|altsyncram_component|auto_generated|q_a\(1),
	combout => \inst10|inst3~0_combout\);

-- Location: LCCOMB_X107_Y50_N0
\inst10|inst2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst2~0_combout\ = (\inst5|altsyncram_component|auto_generated|q_a\(3) & (\inst5|altsyncram_component|auto_generated|q_a\(0) & (\inst5|altsyncram_component|auto_generated|q_a\(2) $ (\inst5|altsyncram_component|auto_generated|q_a\(1))))) # 
-- (!\inst5|altsyncram_component|auto_generated|q_a\(3) & (!\inst5|altsyncram_component|auto_generated|q_a\(1) & (\inst5|altsyncram_component|auto_generated|q_a\(2) $ (\inst5|altsyncram_component|auto_generated|q_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|altsyncram_component|auto_generated|q_a\(3),
	datab => \inst5|altsyncram_component|auto_generated|q_a\(2),
	datac => \inst5|altsyncram_component|auto_generated|q_a\(0),
	datad => \inst5|altsyncram_component|auto_generated|q_a\(1),
	combout => \inst10|inst2~0_combout\);

-- Location: LCCOMB_X111_Y22_N16
\inst9|inst10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst10~0_combout\ = (\inst5|altsyncram_component|auto_generated|q_a\(4) & (!\inst5|altsyncram_component|auto_generated|q_a\(7) & (\inst5|altsyncram_component|auto_generated|q_a\(6) $ (!\inst5|altsyncram_component|auto_generated|q_a\(5))))) # 
-- (!\inst5|altsyncram_component|auto_generated|q_a\(4) & (!\inst5|altsyncram_component|auto_generated|q_a\(5) & (\inst5|altsyncram_component|auto_generated|q_a\(6) $ (!\inst5|altsyncram_component|auto_generated|q_a\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|altsyncram_component|auto_generated|q_a\(6),
	datab => \inst5|altsyncram_component|auto_generated|q_a\(7),
	datac => \inst5|altsyncram_component|auto_generated|q_a\(4),
	datad => \inst5|altsyncram_component|auto_generated|q_a\(5),
	combout => \inst9|inst10~0_combout\);

-- Location: LCCOMB_X111_Y22_N14
\inst9|inst8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst8~combout\ = (\inst5|altsyncram_component|auto_generated|q_a\(6) & (\inst5|altsyncram_component|auto_generated|q_a\(4) & (\inst5|altsyncram_component|auto_generated|q_a\(7) $ (\inst5|altsyncram_component|auto_generated|q_a\(5))))) # 
-- (!\inst5|altsyncram_component|auto_generated|q_a\(6) & (!\inst5|altsyncram_component|auto_generated|q_a\(7) & ((\inst5|altsyncram_component|auto_generated|q_a\(4)) # (\inst5|altsyncram_component|auto_generated|q_a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|altsyncram_component|auto_generated|q_a\(6),
	datab => \inst5|altsyncram_component|auto_generated|q_a\(7),
	datac => \inst5|altsyncram_component|auto_generated|q_a\(4),
	datad => \inst5|altsyncram_component|auto_generated|q_a\(5),
	combout => \inst9|inst8~combout\);

-- Location: LCCOMB_X111_Y22_N4
\inst9|inst7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst7~0_combout\ = (\inst5|altsyncram_component|auto_generated|q_a\(5) & (((!\inst5|altsyncram_component|auto_generated|q_a\(7) & \inst5|altsyncram_component|auto_generated|q_a\(4))))) # (!\inst5|altsyncram_component|auto_generated|q_a\(5) & 
-- ((\inst5|altsyncram_component|auto_generated|q_a\(6) & (!\inst5|altsyncram_component|auto_generated|q_a\(7))) # (!\inst5|altsyncram_component|auto_generated|q_a\(6) & ((\inst5|altsyncram_component|auto_generated|q_a\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|altsyncram_component|auto_generated|q_a\(6),
	datab => \inst5|altsyncram_component|auto_generated|q_a\(7),
	datac => \inst5|altsyncram_component|auto_generated|q_a\(4),
	datad => \inst5|altsyncram_component|auto_generated|q_a\(5),
	combout => \inst9|inst7~0_combout\);

-- Location: LCCOMB_X111_Y22_N18
\inst9|inst5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst5~0_combout\ = (\inst5|altsyncram_component|auto_generated|q_a\(5) & ((\inst5|altsyncram_component|auto_generated|q_a\(6) & ((\inst5|altsyncram_component|auto_generated|q_a\(4)))) # (!\inst5|altsyncram_component|auto_generated|q_a\(6) & 
-- (\inst5|altsyncram_component|auto_generated|q_a\(7) & !\inst5|altsyncram_component|auto_generated|q_a\(4))))) # (!\inst5|altsyncram_component|auto_generated|q_a\(5) & (!\inst5|altsyncram_component|auto_generated|q_a\(7) & 
-- (\inst5|altsyncram_component|auto_generated|q_a\(6) $ (\inst5|altsyncram_component|auto_generated|q_a\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|altsyncram_component|auto_generated|q_a\(6),
	datab => \inst5|altsyncram_component|auto_generated|q_a\(7),
	datac => \inst5|altsyncram_component|auto_generated|q_a\(4),
	datad => \inst5|altsyncram_component|auto_generated|q_a\(5),
	combout => \inst9|inst5~0_combout\);

-- Location: LCCOMB_X111_Y22_N12
\inst9|inst4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst4~0_combout\ = (\inst5|altsyncram_component|auto_generated|q_a\(6) & (\inst5|altsyncram_component|auto_generated|q_a\(7) & ((\inst5|altsyncram_component|auto_generated|q_a\(5)) # (!\inst5|altsyncram_component|auto_generated|q_a\(4))))) # 
-- (!\inst5|altsyncram_component|auto_generated|q_a\(6) & (!\inst5|altsyncram_component|auto_generated|q_a\(7) & (!\inst5|altsyncram_component|auto_generated|q_a\(4) & \inst5|altsyncram_component|auto_generated|q_a\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|altsyncram_component|auto_generated|q_a\(6),
	datab => \inst5|altsyncram_component|auto_generated|q_a\(7),
	datac => \inst5|altsyncram_component|auto_generated|q_a\(4),
	datad => \inst5|altsyncram_component|auto_generated|q_a\(5),
	combout => \inst9|inst4~0_combout\);

-- Location: LCCOMB_X111_Y22_N10
\inst9|inst3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst3~0_combout\ = (\inst5|altsyncram_component|auto_generated|q_a\(7) & ((\inst5|altsyncram_component|auto_generated|q_a\(4) & ((\inst5|altsyncram_component|auto_generated|q_a\(5)))) # (!\inst5|altsyncram_component|auto_generated|q_a\(4) & 
-- (\inst5|altsyncram_component|auto_generated|q_a\(6))))) # (!\inst5|altsyncram_component|auto_generated|q_a\(7) & (\inst5|altsyncram_component|auto_generated|q_a\(6) & (\inst5|altsyncram_component|auto_generated|q_a\(4) $ 
-- (\inst5|altsyncram_component|auto_generated|q_a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|altsyncram_component|auto_generated|q_a\(6),
	datab => \inst5|altsyncram_component|auto_generated|q_a\(7),
	datac => \inst5|altsyncram_component|auto_generated|q_a\(4),
	datad => \inst5|altsyncram_component|auto_generated|q_a\(5),
	combout => \inst9|inst3~0_combout\);

-- Location: LCCOMB_X111_Y22_N20
\inst9|inst2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst2~0_combout\ = (\inst5|altsyncram_component|auto_generated|q_a\(6) & (!\inst5|altsyncram_component|auto_generated|q_a\(5) & (\inst5|altsyncram_component|auto_generated|q_a\(7) $ (!\inst5|altsyncram_component|auto_generated|q_a\(4))))) # 
-- (!\inst5|altsyncram_component|auto_generated|q_a\(6) & (\inst5|altsyncram_component|auto_generated|q_a\(4) & (\inst5|altsyncram_component|auto_generated|q_a\(7) $ (!\inst5|altsyncram_component|auto_generated|q_a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|altsyncram_component|auto_generated|q_a\(6),
	datab => \inst5|altsyncram_component|auto_generated|q_a\(7),
	datac => \inst5|altsyncram_component|auto_generated|q_a\(4),
	datad => \inst5|altsyncram_component|auto_generated|q_a\(5),
	combout => \inst9|inst2~0_combout\);

-- Location: LCCOMB_X101_Y19_N0
\inst8|inst10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst10~0_combout\ = (\inst5|altsyncram_component|auto_generated|q_a\(8) & (!\inst5|altsyncram_component|auto_generated|q_a\(11) & (\inst5|altsyncram_component|auto_generated|q_a\(10) $ (!\inst5|altsyncram_component|auto_generated|q_a\(9))))) # 
-- (!\inst5|altsyncram_component|auto_generated|q_a\(8) & (!\inst5|altsyncram_component|auto_generated|q_a\(9) & (\inst5|altsyncram_component|auto_generated|q_a\(10) $ (!\inst5|altsyncram_component|auto_generated|q_a\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|altsyncram_component|auto_generated|q_a\(10),
	datab => \inst5|altsyncram_component|auto_generated|q_a\(11),
	datac => \inst5|altsyncram_component|auto_generated|q_a\(8),
	datad => \inst5|altsyncram_component|auto_generated|q_a\(9),
	combout => \inst8|inst10~0_combout\);

-- Location: LCCOMB_X101_Y19_N30
\inst8|inst8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst8~0_combout\ = (\inst5|altsyncram_component|auto_generated|q_a\(10) & (\inst5|altsyncram_component|auto_generated|q_a\(8) & (\inst5|altsyncram_component|auto_generated|q_a\(11) $ (\inst5|altsyncram_component|auto_generated|q_a\(9))))) # 
-- (!\inst5|altsyncram_component|auto_generated|q_a\(10) & (!\inst5|altsyncram_component|auto_generated|q_a\(11) & ((\inst5|altsyncram_component|auto_generated|q_a\(8)) # (\inst5|altsyncram_component|auto_generated|q_a\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|altsyncram_component|auto_generated|q_a\(10),
	datab => \inst5|altsyncram_component|auto_generated|q_a\(11),
	datac => \inst5|altsyncram_component|auto_generated|q_a\(8),
	datad => \inst5|altsyncram_component|auto_generated|q_a\(9),
	combout => \inst8|inst8~0_combout\);

-- Location: LCCOMB_X101_Y19_N4
\inst8|inst7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst7~0_combout\ = (\inst5|altsyncram_component|auto_generated|q_a\(9) & (((!\inst5|altsyncram_component|auto_generated|q_a\(11) & \inst5|altsyncram_component|auto_generated|q_a\(8))))) # (!\inst5|altsyncram_component|auto_generated|q_a\(9) & 
-- ((\inst5|altsyncram_component|auto_generated|q_a\(10) & (!\inst5|altsyncram_component|auto_generated|q_a\(11))) # (!\inst5|altsyncram_component|auto_generated|q_a\(10) & ((\inst5|altsyncram_component|auto_generated|q_a\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|altsyncram_component|auto_generated|q_a\(10),
	datab => \inst5|altsyncram_component|auto_generated|q_a\(11),
	datac => \inst5|altsyncram_component|auto_generated|q_a\(8),
	datad => \inst5|altsyncram_component|auto_generated|q_a\(9),
	combout => \inst8|inst7~0_combout\);

-- Location: LCCOMB_X101_Y19_N6
\inst8|inst5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst5~0_combout\ = (\inst5|altsyncram_component|auto_generated|q_a\(9) & ((\inst5|altsyncram_component|auto_generated|q_a\(10) & ((\inst5|altsyncram_component|auto_generated|q_a\(8)))) # (!\inst5|altsyncram_component|auto_generated|q_a\(10) & 
-- (\inst5|altsyncram_component|auto_generated|q_a\(11) & !\inst5|altsyncram_component|auto_generated|q_a\(8))))) # (!\inst5|altsyncram_component|auto_generated|q_a\(9) & (!\inst5|altsyncram_component|auto_generated|q_a\(11) & 
-- (\inst5|altsyncram_component|auto_generated|q_a\(10) $ (\inst5|altsyncram_component|auto_generated|q_a\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|altsyncram_component|auto_generated|q_a\(10),
	datab => \inst5|altsyncram_component|auto_generated|q_a\(11),
	datac => \inst5|altsyncram_component|auto_generated|q_a\(8),
	datad => \inst5|altsyncram_component|auto_generated|q_a\(9),
	combout => \inst8|inst5~0_combout\);

-- Location: LCCOMB_X101_Y19_N12
\inst8|inst4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst4~0_combout\ = (\inst5|altsyncram_component|auto_generated|q_a\(10) & (\inst5|altsyncram_component|auto_generated|q_a\(11) & ((\inst5|altsyncram_component|auto_generated|q_a\(9)) # (!\inst5|altsyncram_component|auto_generated|q_a\(8))))) # 
-- (!\inst5|altsyncram_component|auto_generated|q_a\(10) & (!\inst5|altsyncram_component|auto_generated|q_a\(11) & (!\inst5|altsyncram_component|auto_generated|q_a\(8) & \inst5|altsyncram_component|auto_generated|q_a\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|altsyncram_component|auto_generated|q_a\(10),
	datab => \inst5|altsyncram_component|auto_generated|q_a\(11),
	datac => \inst5|altsyncram_component|auto_generated|q_a\(8),
	datad => \inst5|altsyncram_component|auto_generated|q_a\(9),
	combout => \inst8|inst4~0_combout\);

-- Location: LCCOMB_X101_Y19_N2
\inst8|inst3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst3~0_combout\ = (\inst5|altsyncram_component|auto_generated|q_a\(11) & ((\inst5|altsyncram_component|auto_generated|q_a\(8) & ((\inst5|altsyncram_component|auto_generated|q_a\(9)))) # (!\inst5|altsyncram_component|auto_generated|q_a\(8) & 
-- (\inst5|altsyncram_component|auto_generated|q_a\(10))))) # (!\inst5|altsyncram_component|auto_generated|q_a\(11) & (\inst5|altsyncram_component|auto_generated|q_a\(10) & (\inst5|altsyncram_component|auto_generated|q_a\(8) $ 
-- (\inst5|altsyncram_component|auto_generated|q_a\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|altsyncram_component|auto_generated|q_a\(10),
	datab => \inst5|altsyncram_component|auto_generated|q_a\(11),
	datac => \inst5|altsyncram_component|auto_generated|q_a\(8),
	datad => \inst5|altsyncram_component|auto_generated|q_a\(9),
	combout => \inst8|inst3~0_combout\);

-- Location: LCCOMB_X101_Y19_N8
\inst8|inst2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2~0_combout\ = (\inst5|altsyncram_component|auto_generated|q_a\(10) & (!\inst5|altsyncram_component|auto_generated|q_a\(9) & (\inst5|altsyncram_component|auto_generated|q_a\(11) $ (!\inst5|altsyncram_component|auto_generated|q_a\(8))))) # 
-- (!\inst5|altsyncram_component|auto_generated|q_a\(10) & (\inst5|altsyncram_component|auto_generated|q_a\(8) & (\inst5|altsyncram_component|auto_generated|q_a\(11) $ (!\inst5|altsyncram_component|auto_generated|q_a\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|altsyncram_component|auto_generated|q_a\(10),
	datab => \inst5|altsyncram_component|auto_generated|q_a\(11),
	datac => \inst5|altsyncram_component|auto_generated|q_a\(8),
	datad => \inst5|altsyncram_component|auto_generated|q_a\(9),
	combout => \inst8|inst2~0_combout\);

-- Location: LCCOMB_X101_Y19_N14
\inst7|inst10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst10~0_combout\ = (\inst5|altsyncram_component|auto_generated|q_a\(12) & (!\inst5|altsyncram_component|auto_generated|q_a\(15) & (\inst5|altsyncram_component|auto_generated|q_a\(13) $ (!\inst5|altsyncram_component|auto_generated|q_a\(14))))) # 
-- (!\inst5|altsyncram_component|auto_generated|q_a\(12) & (!\inst5|altsyncram_component|auto_generated|q_a\(13) & (\inst5|altsyncram_component|auto_generated|q_a\(14) $ (!\inst5|altsyncram_component|auto_generated|q_a\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|altsyncram_component|auto_generated|q_a\(12),
	datab => \inst5|altsyncram_component|auto_generated|q_a\(13),
	datac => \inst5|altsyncram_component|auto_generated|q_a\(14),
	datad => \inst5|altsyncram_component|auto_generated|q_a\(15),
	combout => \inst7|inst10~0_combout\);

-- Location: LCCOMB_X101_Y19_N28
\inst7|inst8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst8~combout\ = (\inst5|altsyncram_component|auto_generated|q_a\(12) & (\inst5|altsyncram_component|auto_generated|q_a\(15) $ (((\inst5|altsyncram_component|auto_generated|q_a\(13)) # (!\inst5|altsyncram_component|auto_generated|q_a\(14)))))) # 
-- (!\inst5|altsyncram_component|auto_generated|q_a\(12) & (\inst5|altsyncram_component|auto_generated|q_a\(13) & (!\inst5|altsyncram_component|auto_generated|q_a\(14) & !\inst5|altsyncram_component|auto_generated|q_a\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|altsyncram_component|auto_generated|q_a\(12),
	datab => \inst5|altsyncram_component|auto_generated|q_a\(13),
	datac => \inst5|altsyncram_component|auto_generated|q_a\(14),
	datad => \inst5|altsyncram_component|auto_generated|q_a\(15),
	combout => \inst7|inst8~combout\);

-- Location: LCCOMB_X101_Y19_N10
\inst7|inst7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst7~0_combout\ = (\inst5|altsyncram_component|auto_generated|q_a\(13) & (\inst5|altsyncram_component|auto_generated|q_a\(12) & ((!\inst5|altsyncram_component|auto_generated|q_a\(15))))) # (!\inst5|altsyncram_component|auto_generated|q_a\(13) & 
-- ((\inst5|altsyncram_component|auto_generated|q_a\(14) & ((!\inst5|altsyncram_component|auto_generated|q_a\(15)))) # (!\inst5|altsyncram_component|auto_generated|q_a\(14) & (\inst5|altsyncram_component|auto_generated|q_a\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|altsyncram_component|auto_generated|q_a\(12),
	datab => \inst5|altsyncram_component|auto_generated|q_a\(13),
	datac => \inst5|altsyncram_component|auto_generated|q_a\(14),
	datad => \inst5|altsyncram_component|auto_generated|q_a\(15),
	combout => \inst7|inst7~0_combout\);

-- Location: LCCOMB_X101_Y19_N20
\inst7|inst5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst5~0_combout\ = (\inst5|altsyncram_component|auto_generated|q_a\(13) & ((\inst5|altsyncram_component|auto_generated|q_a\(12) & (\inst5|altsyncram_component|auto_generated|q_a\(14))) # (!\inst5|altsyncram_component|auto_generated|q_a\(12) & 
-- (!\inst5|altsyncram_component|auto_generated|q_a\(14) & \inst5|altsyncram_component|auto_generated|q_a\(15))))) # (!\inst5|altsyncram_component|auto_generated|q_a\(13) & (!\inst5|altsyncram_component|auto_generated|q_a\(15) & 
-- (\inst5|altsyncram_component|auto_generated|q_a\(12) $ (\inst5|altsyncram_component|auto_generated|q_a\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|altsyncram_component|auto_generated|q_a\(12),
	datab => \inst5|altsyncram_component|auto_generated|q_a\(13),
	datac => \inst5|altsyncram_component|auto_generated|q_a\(14),
	datad => \inst5|altsyncram_component|auto_generated|q_a\(15),
	combout => \inst7|inst5~0_combout\);

-- Location: LCCOMB_X101_Y19_N26
\inst7|inst4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst4~0_combout\ = (\inst5|altsyncram_component|auto_generated|q_a\(14) & (\inst5|altsyncram_component|auto_generated|q_a\(15) & ((\inst5|altsyncram_component|auto_generated|q_a\(13)) # (!\inst5|altsyncram_component|auto_generated|q_a\(12))))) # 
-- (!\inst5|altsyncram_component|auto_generated|q_a\(14) & (!\inst5|altsyncram_component|auto_generated|q_a\(12) & (\inst5|altsyncram_component|auto_generated|q_a\(13) & !\inst5|altsyncram_component|auto_generated|q_a\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|altsyncram_component|auto_generated|q_a\(12),
	datab => \inst5|altsyncram_component|auto_generated|q_a\(13),
	datac => \inst5|altsyncram_component|auto_generated|q_a\(14),
	datad => \inst5|altsyncram_component|auto_generated|q_a\(15),
	combout => \inst7|inst4~0_combout\);

-- Location: LCCOMB_X101_Y19_N24
\inst7|inst3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst3~0_combout\ = (\inst5|altsyncram_component|auto_generated|q_a\(13) & ((\inst5|altsyncram_component|auto_generated|q_a\(12) & ((\inst5|altsyncram_component|auto_generated|q_a\(15)))) # (!\inst5|altsyncram_component|auto_generated|q_a\(12) & 
-- (\inst5|altsyncram_component|auto_generated|q_a\(14))))) # (!\inst5|altsyncram_component|auto_generated|q_a\(13) & (\inst5|altsyncram_component|auto_generated|q_a\(14) & (\inst5|altsyncram_component|auto_generated|q_a\(12) $ 
-- (\inst5|altsyncram_component|auto_generated|q_a\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|altsyncram_component|auto_generated|q_a\(12),
	datab => \inst5|altsyncram_component|auto_generated|q_a\(13),
	datac => \inst5|altsyncram_component|auto_generated|q_a\(14),
	datad => \inst5|altsyncram_component|auto_generated|q_a\(15),
	combout => \inst7|inst3~0_combout\);

-- Location: LCCOMB_X101_Y19_N18
\inst7|inst2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst2~0_combout\ = (\inst5|altsyncram_component|auto_generated|q_a\(14) & (!\inst5|altsyncram_component|auto_generated|q_a\(13) & (\inst5|altsyncram_component|auto_generated|q_a\(12) $ (!\inst5|altsyncram_component|auto_generated|q_a\(15))))) # 
-- (!\inst5|altsyncram_component|auto_generated|q_a\(14) & (\inst5|altsyncram_component|auto_generated|q_a\(12) & (\inst5|altsyncram_component|auto_generated|q_a\(13) $ (!\inst5|altsyncram_component|auto_generated|q_a\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|altsyncram_component|auto_generated|q_a\(12),
	datab => \inst5|altsyncram_component|auto_generated|q_a\(13),
	datac => \inst5|altsyncram_component|auto_generated|q_a\(14),
	datad => \inst5|altsyncram_component|auto_generated|q_a\(15),
	combout => \inst7|inst2~0_combout\);

-- Location: LCCOMB_X102_Y19_N22
\inst2|inst1|LPM_MUX_component|auto_generated|result_node[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|LPM_MUX_component|auto_generated|result_node[0]~4_combout\ = (!\inst5|altsyncram_component|auto_generated|q_a\(9) & (!\inst5|altsyncram_component|auto_generated|q_a\(8) & \inst12|LPM_MUX_component|auto_generated|result_node[1]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|altsyncram_component|auto_generated|q_a\(9),
	datac => \inst5|altsyncram_component|auto_generated|q_a\(8),
	datad => \inst12|LPM_MUX_component|auto_generated|result_node[1]~1_combout\,
	combout => \inst2|inst1|LPM_MUX_component|auto_generated|result_node[0]~4_combout\);

-- Location: LCCOMB_X102_Y19_N0
\inst2|inst1|LPM_MUX_component|auto_generated|result_node[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|LPM_MUX_component|auto_generated|result_node[0]~5_combout\ = (\inst2|inst1|LPM_MUX_component|auto_generated|result_node[0]~4_combout\) # ((\inst5|altsyncram_component|auto_generated|q_a\(9) & 
-- (\inst12|LPM_MUX_component|auto_generated|result_node[0]~2_combout\ $ (\inst5|altsyncram_component|auto_generated|q_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|altsyncram_component|auto_generated|q_a\(9),
	datab => \inst12|LPM_MUX_component|auto_generated|result_node[0]~2_combout\,
	datac => \inst2|inst1|LPM_MUX_component|auto_generated|result_node[0]~4_combout\,
	datad => \inst5|altsyncram_component|auto_generated|q_a\(0),
	combout => \inst2|inst1|LPM_MUX_component|auto_generated|result_node[0]~5_combout\);

-- Location: LCCOMB_X102_Y19_N16
inst19 : cycloneive_lcell_comb
-- Equation(s):
-- \inst19~combout\ = (\CLEAR~input_o\) # ((\inst5|altsyncram_component|auto_generated|q_a\(10) & !\inst5|altsyncram_component|auto_generated|q_a\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLEAR~input_o\,
	datac => \inst5|altsyncram_component|auto_generated|q_a\(10),
	datad => \inst5|altsyncram_component|auto_generated|q_a\(11),
	combout => \inst19~combout\);

-- Location: LCCOMB_X102_Y19_N12
\inst18|inst3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|inst3~0_combout\ = (\inst5|altsyncram_component|auto_generated|q_a\(14) & (!\inst5|altsyncram_component|auto_generated|q_a\(10) & !\inst5|altsyncram_component|auto_generated|q_a\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|altsyncram_component|auto_generated|q_a\(14),
	datab => \inst5|altsyncram_component|auto_generated|q_a\(10),
	datad => \inst5|altsyncram_component|auto_generated|q_a\(11),
	combout => \inst18|inst3~0_combout\);

-- Location: FF_X102_Y19_N1
\inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst16|ALT_INV_out_key~2clkctrl_outclk\,
	d => \inst2|inst1|LPM_MUX_component|auto_generated|result_node[0]~5_combout\,
	clrn => \ALT_INV_inst19~combout\,
	ena => \inst18|inst3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst~q\);

-- Location: LCCOMB_X101_Y19_N16
\inst18|inst21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|inst21~0_combout\ = (!\inst5|altsyncram_component|auto_generated|q_a\(11) & (!\inst5|altsyncram_component|auto_generated|q_a\(10) & \inst5|altsyncram_component|auto_generated|q_a\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|altsyncram_component|auto_generated|q_a\(11),
	datac => \inst5|altsyncram_component|auto_generated|q_a\(10),
	datad => \inst5|altsyncram_component|auto_generated|q_a\(15),
	combout => \inst18|inst21~0_combout\);

-- Location: FF_X102_Y19_N7
\inst4|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst16|ALT_INV_out_key~2clkctrl_outclk\,
	asdata => \inst2|inst1|LPM_MUX_component|auto_generated|result_node[0]~5_combout\,
	clrn => \ALT_INV_inst19~combout\,
	sload => VCC,
	ena => \inst18|inst21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst~q\);

-- Location: LCCOMB_X102_Y19_N6
\inst12|LPM_MUX_component|auto_generated|result_node[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|LPM_MUX_component|auto_generated|result_node[0]~2_combout\ = (\inst5|altsyncram_component|auto_generated|q_a\(13) & (\inst3|inst~q\)) # (!\inst5|altsyncram_component|auto_generated|q_a\(13) & ((\inst4|inst~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst~q\,
	datac => \inst4|inst~q\,
	datad => \inst5|altsyncram_component|auto_generated|q_a\(13),
	combout => \inst12|LPM_MUX_component|auto_generated|result_node[0]~2_combout\);

-- Location: LCCOMB_X103_Y19_N22
\inst2|inst4|inst|inst4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst4|inst|inst4~combout\ = (\inst5|altsyncram_component|auto_generated|q_a\(0) & ((\inst5|altsyncram_component|auto_generated|q_a\(13) & (\inst3|inst~q\)) # (!\inst5|altsyncram_component|auto_generated|q_a\(13) & ((\inst4|inst~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst~q\,
	datab => \inst4|inst~q\,
	datac => \inst5|altsyncram_component|auto_generated|q_a\(13),
	datad => \inst5|altsyncram_component|auto_generated|q_a\(0),
	combout => \inst2|inst4|inst|inst4~combout\);

-- Location: LCCOMB_X102_Y19_N10
\inst2|inst4|inst2|inst1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst4|inst2|inst1~combout\ = \inst5|altsyncram_component|auto_generated|q_a\(1) $ (\inst12|LPM_MUX_component|auto_generated|result_node[1]~1_combout\ $ (\inst2|inst4|inst|inst4~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|altsyncram_component|auto_generated|q_a\(1),
	datab => \inst12|LPM_MUX_component|auto_generated|result_node[1]~1_combout\,
	datad => \inst2|inst4|inst|inst4~combout\,
	combout => \inst2|inst4|inst2|inst1~combout\);

-- Location: FF_X102_Y19_N31
\inst3|inst7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst16|ALT_INV_out_key~2clkctrl_outclk\,
	d => \inst2|inst1|LPM_MUX_component|auto_generated|result_node[2]~3_combout\,
	clrn => \ALT_INV_inst19~combout\,
	ena => \inst18|inst3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst7~q\);

-- Location: LCCOMB_X103_Y19_N10
\inst12|LPM_MUX_component|auto_generated|result_node[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|LPM_MUX_component|auto_generated|result_node[2]~0_combout\ = (\inst5|altsyncram_component|auto_generated|q_a\(13) & ((\inst3|inst7~q\))) # (!\inst5|altsyncram_component|auto_generated|q_a\(13) & (\inst4|inst7~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst7~q\,
	datac => \inst3|inst7~q\,
	datad => \inst5|altsyncram_component|auto_generated|q_a\(13),
	combout => \inst12|LPM_MUX_component|auto_generated|result_node[2]~0_combout\);

-- Location: LCCOMB_X103_Y19_N6
\inst2|inst5|inst2|inst1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst5|inst2|inst1~combout\ = \inst5|altsyncram_component|auto_generated|q_a\(1) $ (\inst12|LPM_MUX_component|auto_generated|result_node[1]~1_combout\ $ (((\inst5|altsyncram_component|auto_generated|q_a\(0)) # 
-- (!\inst12|LPM_MUX_component|auto_generated|result_node[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110001100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|altsyncram_component|auto_generated|q_a\(0),
	datab => \inst5|altsyncram_component|auto_generated|q_a\(1),
	datac => \inst12|LPM_MUX_component|auto_generated|result_node[0]~2_combout\,
	datad => \inst12|LPM_MUX_component|auto_generated|result_node[1]~1_combout\,
	combout => \inst2|inst5|inst2|inst1~combout\);

-- Location: LCCOMB_X103_Y19_N28
\inst2|inst1|LPM_MUX_component|auto_generated|result_node[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|LPM_MUX_component|auto_generated|result_node[1]~6_combout\ = (\inst5|altsyncram_component|auto_generated|q_a\(9) & (((\inst5|altsyncram_component|auto_generated|q_a\(8)) # (!\inst2|inst5|inst2|inst1~combout\)))) # 
-- (!\inst5|altsyncram_component|auto_generated|q_a\(9) & (\inst12|LPM_MUX_component|auto_generated|result_node[2]~0_combout\ & (!\inst5|altsyncram_component|auto_generated|q_a\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|LPM_MUX_component|auto_generated|result_node[2]~0_combout\,
	datab => \inst5|altsyncram_component|auto_generated|q_a\(9),
	datac => \inst5|altsyncram_component|auto_generated|q_a\(8),
	datad => \inst2|inst5|inst2|inst1~combout\,
	combout => \inst2|inst1|LPM_MUX_component|auto_generated|result_node[1]~6_combout\);

-- Location: LCCOMB_X102_Y19_N4
\inst2|inst1|LPM_MUX_component|auto_generated|result_node[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|LPM_MUX_component|auto_generated|result_node[1]~7_combout\ = (\inst5|altsyncram_component|auto_generated|q_a\(8) & ((\inst2|inst1|LPM_MUX_component|auto_generated|result_node[1]~6_combout\ & ((\inst2|inst4|inst2|inst1~combout\))) # 
-- (!\inst2|inst1|LPM_MUX_component|auto_generated|result_node[1]~6_combout\ & (\inst12|LPM_MUX_component|auto_generated|result_node[0]~2_combout\)))) # (!\inst5|altsyncram_component|auto_generated|q_a\(8) & 
-- (((\inst2|inst1|LPM_MUX_component|auto_generated|result_node[1]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|LPM_MUX_component|auto_generated|result_node[0]~2_combout\,
	datab => \inst5|altsyncram_component|auto_generated|q_a\(8),
	datac => \inst2|inst4|inst2|inst1~combout\,
	datad => \inst2|inst1|LPM_MUX_component|auto_generated|result_node[1]~6_combout\,
	combout => \inst2|inst1|LPM_MUX_component|auto_generated|result_node[1]~7_combout\);

-- Location: FF_X102_Y19_N5
\inst3|inst6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst16|ALT_INV_out_key~2clkctrl_outclk\,
	d => \inst2|inst1|LPM_MUX_component|auto_generated|result_node[1]~7_combout\,
	clrn => \ALT_INV_inst19~combout\,
	ena => \inst18|inst3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst6~q\);

-- Location: FF_X102_Y19_N29
\inst4|inst6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst16|ALT_INV_out_key~2clkctrl_outclk\,
	asdata => \inst2|inst1|LPM_MUX_component|auto_generated|result_node[1]~7_combout\,
	clrn => \ALT_INV_inst19~combout\,
	sload => VCC,
	ena => \inst18|inst21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst6~q\);

-- Location: LCCOMB_X102_Y19_N28
\inst12|LPM_MUX_component|auto_generated|result_node[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|LPM_MUX_component|auto_generated|result_node[1]~1_combout\ = (\inst5|altsyncram_component|auto_generated|q_a\(13) & (\inst3|inst6~q\)) # (!\inst5|altsyncram_component|auto_generated|q_a\(13) & ((\inst4|inst6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst6~q\,
	datac => \inst4|inst6~q\,
	datad => \inst5|altsyncram_component|auto_generated|q_a\(13),
	combout => \inst12|LPM_MUX_component|auto_generated|result_node[1]~1_combout\);

-- Location: LCCOMB_X102_Y19_N14
\inst2|inst1|LPM_MUX_component|auto_generated|result_node[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|LPM_MUX_component|auto_generated|result_node[2]~1_combout\ = (\inst5|altsyncram_component|auto_generated|q_a\(9) & (\inst5|altsyncram_component|auto_generated|q_a\(2) $ 
-- (((\inst12|LPM_MUX_component|auto_generated|result_node[2]~0_combout\))))) # (!\inst5|altsyncram_component|auto_generated|q_a\(9) & (((\inst12|LPM_MUX_component|auto_generated|result_node[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|altsyncram_component|auto_generated|q_a\(2),
	datab => \inst12|LPM_MUX_component|auto_generated|result_node[1]~1_combout\,
	datac => \inst12|LPM_MUX_component|auto_generated|result_node[2]~0_combout\,
	datad => \inst5|altsyncram_component|auto_generated|q_a\(9),
	combout => \inst2|inst1|LPM_MUX_component|auto_generated|result_node[2]~1_combout\);

-- Location: LCCOMB_X103_Y19_N14
\inst2|inst1|LPM_MUX_component|auto_generated|result_node[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|LPM_MUX_component|auto_generated|result_node[3]~8_combout\ = (\inst5|altsyncram_component|auto_generated|q_a\(13) & ((\inst3|inst7~q\))) # (!\inst5|altsyncram_component|auto_generated|q_a\(13) & (\inst4|inst7~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst7~q\,
	datac => \inst3|inst7~q\,
	datad => \inst5|altsyncram_component|auto_generated|q_a\(13),
	combout => \inst2|inst1|LPM_MUX_component|auto_generated|result_node[3]~8_combout\);

-- Location: FF_X102_Y19_N9
\inst3|inst9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst16|ALT_INV_out_key~2clkctrl_outclk\,
	d => \inst2|inst1|LPM_MUX_component|auto_generated|result_node[3]~11_combout\,
	clrn => \ALT_INV_inst19~combout\,
	ena => \inst18|inst3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst9~q\);

-- Location: LCCOMB_X103_Y19_N12
\inst2|inst4|inst7|inst1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst4|inst7|inst1~0_combout\ = \inst5|altsyncram_component|auto_generated|q_a\(3) $ (((\inst5|altsyncram_component|auto_generated|q_a\(13) & ((\inst3|inst9~q\))) # (!\inst5|altsyncram_component|auto_generated|q_a\(13) & (\inst4|inst9~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|altsyncram_component|auto_generated|q_a\(13),
	datab => \inst4|inst9~q\,
	datac => \inst3|inst9~q\,
	datad => \inst5|altsyncram_component|auto_generated|q_a\(3),
	combout => \inst2|inst4|inst7|inst1~0_combout\);

-- Location: LCCOMB_X102_Y19_N2
\inst2|inst5|inst2|inst6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst5|inst2|inst6~0_combout\ = (\inst5|altsyncram_component|auto_generated|q_a\(1) & (((\inst5|altsyncram_component|auto_generated|q_a\(0)) # (!\inst12|LPM_MUX_component|auto_generated|result_node[1]~1_combout\)) # 
-- (!\inst12|LPM_MUX_component|auto_generated|result_node[0]~2_combout\))) # (!\inst5|altsyncram_component|auto_generated|q_a\(1) & (!\inst12|LPM_MUX_component|auto_generated|result_node[1]~1_combout\ & ((\inst5|altsyncram_component|auto_generated|q_a\(0)) # 
-- (!\inst12|LPM_MUX_component|auto_generated|result_node[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|LPM_MUX_component|auto_generated|result_node[0]~2_combout\,
	datab => \inst5|altsyncram_component|auto_generated|q_a\(0),
	datac => \inst5|altsyncram_component|auto_generated|q_a\(1),
	datad => \inst12|LPM_MUX_component|auto_generated|result_node[1]~1_combout\,
	combout => \inst2|inst5|inst2|inst6~0_combout\);

-- Location: LCCOMB_X102_Y19_N26
\inst2|inst1|LPM_MUX_component|auto_generated|result_node[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|LPM_MUX_component|auto_generated|result_node[3]~9_combout\ = (\inst5|altsyncram_component|auto_generated|q_a\(2) & ((\inst2|inst5|inst2|inst6~0_combout\) # (!\inst12|LPM_MUX_component|auto_generated|result_node[2]~0_combout\))) # 
-- (!\inst5|altsyncram_component|auto_generated|q_a\(2) & (!\inst12|LPM_MUX_component|auto_generated|result_node[2]~0_combout\ & \inst2|inst5|inst2|inst6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|altsyncram_component|auto_generated|q_a\(2),
	datac => \inst12|LPM_MUX_component|auto_generated|result_node[2]~0_combout\,
	datad => \inst2|inst5|inst2|inst6~0_combout\,
	combout => \inst2|inst1|LPM_MUX_component|auto_generated|result_node[3]~9_combout\);

-- Location: LCCOMB_X103_Y19_N20
\inst2|inst4|inst3|inst6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst4|inst3|inst6~0_combout\ = (\inst5|altsyncram_component|auto_generated|q_a\(13) & ((\inst3|inst7~q\))) # (!\inst5|altsyncram_component|auto_generated|q_a\(13) & (\inst4|inst7~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst7~q\,
	datac => \inst3|inst7~q\,
	datad => \inst5|altsyncram_component|auto_generated|q_a\(13),
	combout => \inst2|inst4|inst3|inst6~0_combout\);

-- Location: LCCOMB_X103_Y19_N4
\inst2|inst4|inst2|inst6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst4|inst2|inst6~0_combout\ = (\inst5|altsyncram_component|auto_generated|q_a\(1) & ((\inst3|inst6~q\) # ((\inst3|inst~q\ & \inst5|altsyncram_component|auto_generated|q_a\(0))))) # (!\inst5|altsyncram_component|auto_generated|q_a\(1) & 
-- (\inst3|inst~q\ & (\inst3|inst6~q\ & \inst5|altsyncram_component|auto_generated|q_a\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst~q\,
	datab => \inst5|altsyncram_component|auto_generated|q_a\(1),
	datac => \inst3|inst6~q\,
	datad => \inst5|altsyncram_component|auto_generated|q_a\(0),
	combout => \inst2|inst4|inst2|inst6~0_combout\);

-- Location: LCCOMB_X103_Y19_N2
\inst2|inst4|inst2|inst6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst4|inst2|inst6~1_combout\ = (\inst4|inst6~q\ & ((\inst5|altsyncram_component|auto_generated|q_a\(1)) # ((\inst4|inst~q\ & \inst5|altsyncram_component|auto_generated|q_a\(0))))) # (!\inst4|inst6~q\ & 
-- (\inst5|altsyncram_component|auto_generated|q_a\(1) & (\inst4|inst~q\ & \inst5|altsyncram_component|auto_generated|q_a\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst6~q\,
	datab => \inst5|altsyncram_component|auto_generated|q_a\(1),
	datac => \inst4|inst~q\,
	datad => \inst5|altsyncram_component|auto_generated|q_a\(0),
	combout => \inst2|inst4|inst2|inst6~1_combout\);

-- Location: LCCOMB_X103_Y19_N16
\inst2|inst4|inst2|inst6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst4|inst2|inst6~2_combout\ = (\inst5|altsyncram_component|auto_generated|q_a\(13) & (\inst2|inst4|inst2|inst6~0_combout\)) # (!\inst5|altsyncram_component|auto_generated|q_a\(13) & ((\inst2|inst4|inst2|inst6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|altsyncram_component|auto_generated|q_a\(13),
	datac => \inst2|inst4|inst2|inst6~0_combout\,
	datad => \inst2|inst4|inst2|inst6~1_combout\,
	combout => \inst2|inst4|inst2|inst6~2_combout\);

-- Location: LCCOMB_X102_Y19_N20
\inst2|inst4|inst3|inst6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst4|inst3|inst6~1_combout\ = (\inst5|altsyncram_component|auto_generated|q_a\(2) & ((\inst2|inst4|inst3|inst6~0_combout\) # (\inst2|inst4|inst2|inst6~2_combout\))) # (!\inst5|altsyncram_component|auto_generated|q_a\(2) & 
-- (\inst2|inst4|inst3|inst6~0_combout\ & \inst2|inst4|inst2|inst6~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|altsyncram_component|auto_generated|q_a\(2),
	datac => \inst2|inst4|inst3|inst6~0_combout\,
	datad => \inst2|inst4|inst2|inst6~2_combout\,
	combout => \inst2|inst4|inst3|inst6~1_combout\);

-- Location: LCCOMB_X102_Y19_N18
\inst2|inst1|LPM_MUX_component|auto_generated|result_node[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|LPM_MUX_component|auto_generated|result_node[3]~10_combout\ = \inst2|inst4|inst7|inst1~0_combout\ $ (((\inst5|altsyncram_component|auto_generated|q_a\(8) & ((\inst2|inst4|inst3|inst6~1_combout\))) # 
-- (!\inst5|altsyncram_component|auto_generated|q_a\(8) & (!\inst2|inst1|LPM_MUX_component|auto_generated|result_node[3]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001111001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|altsyncram_component|auto_generated|q_a\(8),
	datab => \inst2|inst4|inst7|inst1~0_combout\,
	datac => \inst2|inst1|LPM_MUX_component|auto_generated|result_node[3]~9_combout\,
	datad => \inst2|inst4|inst3|inst6~1_combout\,
	combout => \inst2|inst1|LPM_MUX_component|auto_generated|result_node[3]~10_combout\);

-- Location: LCCOMB_X102_Y19_N8
\inst2|inst1|LPM_MUX_component|auto_generated|result_node[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|LPM_MUX_component|auto_generated|result_node[3]~11_combout\ = (\inst5|altsyncram_component|auto_generated|q_a\(9) & (((\inst2|inst1|LPM_MUX_component|auto_generated|result_node[3]~10_combout\)))) # 
-- (!\inst5|altsyncram_component|auto_generated|q_a\(9) & (\inst5|altsyncram_component|auto_generated|q_a\(8) & (\inst2|inst1|LPM_MUX_component|auto_generated|result_node[3]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|altsyncram_component|auto_generated|q_a\(9),
	datab => \inst5|altsyncram_component|auto_generated|q_a\(8),
	datac => \inst2|inst1|LPM_MUX_component|auto_generated|result_node[3]~8_combout\,
	datad => \inst2|inst1|LPM_MUX_component|auto_generated|result_node[3]~10_combout\,
	combout => \inst2|inst1|LPM_MUX_component|auto_generated|result_node[3]~11_combout\);

-- Location: FF_X102_Y19_N11
\inst4|inst9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst16|ALT_INV_out_key~2clkctrl_outclk\,
	asdata => \inst2|inst1|LPM_MUX_component|auto_generated|result_node[3]~11_combout\,
	clrn => \ALT_INV_inst19~combout\,
	sload => VCC,
	ena => \inst18|inst21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst9~q\);

-- Location: LCCOMB_X103_Y19_N0
\inst2|inst1|LPM_MUX_component|auto_generated|result_node[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|LPM_MUX_component|auto_generated|result_node[2]~0_combout\ = (\inst5|altsyncram_component|auto_generated|q_a\(13) & ((\inst3|inst9~q\))) # (!\inst5|altsyncram_component|auto_generated|q_a\(13) & (\inst4|inst9~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst9~q\,
	datab => \inst3|inst9~q\,
	datac => \inst5|altsyncram_component|auto_generated|q_a\(13),
	combout => \inst2|inst1|LPM_MUX_component|auto_generated|result_node[2]~0_combout\);

-- Location: LCCOMB_X102_Y19_N24
\inst2|inst1|LPM_MUX_component|auto_generated|result_node[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|LPM_MUX_component|auto_generated|result_node[2]~2_combout\ = (\inst5|altsyncram_component|auto_generated|q_a\(9) & ((\inst5|altsyncram_component|auto_generated|q_a\(8) & ((!\inst2|inst4|inst2|inst6~2_combout\))) # 
-- (!\inst5|altsyncram_component|auto_generated|q_a\(8) & (\inst2|inst5|inst2|inst6~0_combout\)))) # (!\inst5|altsyncram_component|auto_generated|q_a\(9) & (((\inst5|altsyncram_component|auto_generated|q_a\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|altsyncram_component|auto_generated|q_a\(9),
	datab => \inst2|inst5|inst2|inst6~0_combout\,
	datac => \inst5|altsyncram_component|auto_generated|q_a\(8),
	datad => \inst2|inst4|inst2|inst6~2_combout\,
	combout => \inst2|inst1|LPM_MUX_component|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X102_Y19_N30
\inst2|inst1|LPM_MUX_component|auto_generated|result_node[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|LPM_MUX_component|auto_generated|result_node[2]~3_combout\ = (\inst2|inst1|LPM_MUX_component|auto_generated|result_node[2]~2_combout\ & (((\inst2|inst1|LPM_MUX_component|auto_generated|result_node[2]~1_combout\)))) # 
-- (!\inst2|inst1|LPM_MUX_component|auto_generated|result_node[2]~2_combout\ & ((\inst5|altsyncram_component|auto_generated|q_a\(9) & (!\inst2|inst1|LPM_MUX_component|auto_generated|result_node[2]~1_combout\)) # 
-- (!\inst5|altsyncram_component|auto_generated|q_a\(9) & ((\inst2|inst1|LPM_MUX_component|auto_generated|result_node[2]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|altsyncram_component|auto_generated|q_a\(9),
	datab => \inst2|inst1|LPM_MUX_component|auto_generated|result_node[2]~1_combout\,
	datac => \inst2|inst1|LPM_MUX_component|auto_generated|result_node[2]~0_combout\,
	datad => \inst2|inst1|LPM_MUX_component|auto_generated|result_node[2]~2_combout\,
	combout => \inst2|inst1|LPM_MUX_component|auto_generated|result_node[2]~3_combout\);

-- Location: FF_X102_Y19_N13
\inst4|inst7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst16|ALT_INV_out_key~2clkctrl_outclk\,
	asdata => \inst2|inst1|LPM_MUX_component|auto_generated|result_node[2]~3_combout\,
	clrn => \ALT_INV_inst19~combout\,
	sload => VCC,
	ena => \inst18|inst21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst7~q\);

-- Location: LCCOMB_X94_Y4_N4
\inst1|inst10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst10~0_combout\ = (\inst4|inst~q\ & (!\inst4|inst9~q\ & (\inst4|inst7~q\ $ (!\inst4|inst6~q\)))) # (!\inst4|inst~q\ & (!\inst4|inst6~q\ & (\inst4|inst7~q\ $ (!\inst4|inst9~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst7~q\,
	datab => \inst4|inst~q\,
	datac => \inst4|inst9~q\,
	datad => \inst4|inst6~q\,
	combout => \inst1|inst10~0_combout\);

-- Location: LCCOMB_X94_Y4_N30
\inst1|inst8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst8~combout\ = (\inst4|inst7~q\ & (\inst4|inst~q\ & (\inst4|inst9~q\ $ (\inst4|inst6~q\)))) # (!\inst4|inst7~q\ & (!\inst4|inst9~q\ & ((\inst4|inst~q\) # (\inst4|inst6~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst7~q\,
	datab => \inst4|inst~q\,
	datac => \inst4|inst9~q\,
	datad => \inst4|inst6~q\,
	combout => \inst1|inst8~combout\);

-- Location: LCCOMB_X94_Y4_N24
\inst1|inst7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst7~0_combout\ = (\inst4|inst6~q\ & (((\inst4|inst~q\ & !\inst4|inst9~q\)))) # (!\inst4|inst6~q\ & ((\inst4|inst7~q\ & ((!\inst4|inst9~q\))) # (!\inst4|inst7~q\ & (\inst4|inst~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst7~q\,
	datab => \inst4|inst~q\,
	datac => \inst4|inst9~q\,
	datad => \inst4|inst6~q\,
	combout => \inst1|inst7~0_combout\);

-- Location: LCCOMB_X94_Y4_N22
\inst1|inst5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst5~0_combout\ = (\inst4|inst6~q\ & ((\inst4|inst7~q\ & (\inst4|inst~q\)) # (!\inst4|inst7~q\ & (!\inst4|inst~q\ & \inst4|inst9~q\)))) # (!\inst4|inst6~q\ & (!\inst4|inst9~q\ & (\inst4|inst7~q\ $ (\inst4|inst~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst7~q\,
	datab => \inst4|inst~q\,
	datac => \inst4|inst9~q\,
	datad => \inst4|inst6~q\,
	combout => \inst1|inst5~0_combout\);

-- Location: LCCOMB_X94_Y4_N28
\inst1|inst4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst4~0_combout\ = (\inst4|inst7~q\ & (\inst4|inst9~q\ & ((\inst4|inst6~q\) # (!\inst4|inst~q\)))) # (!\inst4|inst7~q\ & (!\inst4|inst~q\ & (!\inst4|inst9~q\ & \inst4|inst6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst7~q\,
	datab => \inst4|inst~q\,
	datac => \inst4|inst9~q\,
	datad => \inst4|inst6~q\,
	combout => \inst1|inst4~0_combout\);

-- Location: LCCOMB_X94_Y4_N26
\inst1|inst3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst3~0_combout\ = (\inst4|inst9~q\ & ((\inst4|inst~q\ & ((\inst4|inst6~q\))) # (!\inst4|inst~q\ & (\inst4|inst7~q\)))) # (!\inst4|inst9~q\ & (\inst4|inst7~q\ & (\inst4|inst~q\ $ (\inst4|inst6~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst7~q\,
	datab => \inst4|inst~q\,
	datac => \inst4|inst9~q\,
	datad => \inst4|inst6~q\,
	combout => \inst1|inst3~0_combout\);

-- Location: LCCOMB_X94_Y4_N12
\inst1|inst2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst2~0_combout\ = (\inst4|inst7~q\ & (!\inst4|inst6~q\ & (\inst4|inst~q\ $ (!\inst4|inst9~q\)))) # (!\inst4|inst7~q\ & (\inst4|inst~q\ & (\inst4|inst9~q\ $ (!\inst4|inst6~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst7~q\,
	datab => \inst4|inst~q\,
	datac => \inst4|inst9~q\,
	datad => \inst4|inst6~q\,
	combout => \inst1|inst2~0_combout\);

-- Location: LCCOMB_X74_Y4_N28
\inst6|inst10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst10~0_combout\ = (\inst2|inst1|LPM_MUX_component|auto_generated|result_node[0]~5_combout\ & (!\inst2|inst1|LPM_MUX_component|auto_generated|result_node[3]~11_combout\ & (\inst2|inst1|LPM_MUX_component|auto_generated|result_node[1]~7_combout\ $ 
-- (!\inst2|inst1|LPM_MUX_component|auto_generated|result_node[2]~3_combout\)))) # (!\inst2|inst1|LPM_MUX_component|auto_generated|result_node[0]~5_combout\ & (!\inst2|inst1|LPM_MUX_component|auto_generated|result_node[1]~7_combout\ & 
-- (\inst2|inst1|LPM_MUX_component|auto_generated|result_node[3]~11_combout\ $ (!\inst2|inst1|LPM_MUX_component|auto_generated|result_node[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000101000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|LPM_MUX_component|auto_generated|result_node[1]~7_combout\,
	datab => \inst2|inst1|LPM_MUX_component|auto_generated|result_node[3]~11_combout\,
	datac => \inst2|inst1|LPM_MUX_component|auto_generated|result_node[2]~3_combout\,
	datad => \inst2|inst1|LPM_MUX_component|auto_generated|result_node[0]~5_combout\,
	combout => \inst6|inst10~0_combout\);

-- Location: LCCOMB_X74_Y4_N14
\inst6|inst8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst8~0_combout\ = (\inst2|inst1|LPM_MUX_component|auto_generated|result_node[1]~7_combout\ & (!\inst2|inst1|LPM_MUX_component|auto_generated|result_node[3]~11_combout\ & ((\inst2|inst1|LPM_MUX_component|auto_generated|result_node[0]~5_combout\) # 
-- (!\inst2|inst1|LPM_MUX_component|auto_generated|result_node[2]~3_combout\)))) # (!\inst2|inst1|LPM_MUX_component|auto_generated|result_node[1]~7_combout\ & (\inst2|inst1|LPM_MUX_component|auto_generated|result_node[0]~5_combout\ & 
-- (\inst2|inst1|LPM_MUX_component|auto_generated|result_node[3]~11_combout\ $ (!\inst2|inst1|LPM_MUX_component|auto_generated|result_node[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|LPM_MUX_component|auto_generated|result_node[1]~7_combout\,
	datab => \inst2|inst1|LPM_MUX_component|auto_generated|result_node[3]~11_combout\,
	datac => \inst2|inst1|LPM_MUX_component|auto_generated|result_node[2]~3_combout\,
	datad => \inst2|inst1|LPM_MUX_component|auto_generated|result_node[0]~5_combout\,
	combout => \inst6|inst8~0_combout\);

-- Location: LCCOMB_X74_Y4_N24
\inst6|inst7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst7~0_combout\ = (\inst2|inst1|LPM_MUX_component|auto_generated|result_node[1]~7_combout\ & (!\inst2|inst1|LPM_MUX_component|auto_generated|result_node[3]~11_combout\ & ((\inst2|inst1|LPM_MUX_component|auto_generated|result_node[0]~5_combout\)))) 
-- # (!\inst2|inst1|LPM_MUX_component|auto_generated|result_node[1]~7_combout\ & ((\inst2|inst1|LPM_MUX_component|auto_generated|result_node[2]~3_combout\ & (!\inst2|inst1|LPM_MUX_component|auto_generated|result_node[3]~11_combout\)) # 
-- (!\inst2|inst1|LPM_MUX_component|auto_generated|result_node[2]~3_combout\ & ((\inst2|inst1|LPM_MUX_component|auto_generated|result_node[0]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|LPM_MUX_component|auto_generated|result_node[1]~7_combout\,
	datab => \inst2|inst1|LPM_MUX_component|auto_generated|result_node[3]~11_combout\,
	datac => \inst2|inst1|LPM_MUX_component|auto_generated|result_node[2]~3_combout\,
	datad => \inst2|inst1|LPM_MUX_component|auto_generated|result_node[0]~5_combout\,
	combout => \inst6|inst7~0_combout\);

-- Location: LCCOMB_X74_Y4_N18
\inst6|inst5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst5~0_combout\ = (\inst2|inst1|LPM_MUX_component|auto_generated|result_node[1]~7_combout\ & ((\inst2|inst1|LPM_MUX_component|auto_generated|result_node[2]~3_combout\ & ((\inst2|inst1|LPM_MUX_component|auto_generated|result_node[0]~5_combout\))) # 
-- (!\inst2|inst1|LPM_MUX_component|auto_generated|result_node[2]~3_combout\ & (\inst2|inst1|LPM_MUX_component|auto_generated|result_node[3]~11_combout\ & !\inst2|inst1|LPM_MUX_component|auto_generated|result_node[0]~5_combout\)))) # 
-- (!\inst2|inst1|LPM_MUX_component|auto_generated|result_node[1]~7_combout\ & (!\inst2|inst1|LPM_MUX_component|auto_generated|result_node[3]~11_combout\ & (\inst2|inst1|LPM_MUX_component|auto_generated|result_node[2]~3_combout\ $ 
-- (\inst2|inst1|LPM_MUX_component|auto_generated|result_node[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|LPM_MUX_component|auto_generated|result_node[1]~7_combout\,
	datab => \inst2|inst1|LPM_MUX_component|auto_generated|result_node[3]~11_combout\,
	datac => \inst2|inst1|LPM_MUX_component|auto_generated|result_node[2]~3_combout\,
	datad => \inst2|inst1|LPM_MUX_component|auto_generated|result_node[0]~5_combout\,
	combout => \inst6|inst5~0_combout\);

-- Location: LCCOMB_X74_Y4_N4
\inst6|inst4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst4~0_combout\ = (\inst2|inst1|LPM_MUX_component|auto_generated|result_node[3]~11_combout\ & (\inst2|inst1|LPM_MUX_component|auto_generated|result_node[2]~3_combout\ & ((\inst2|inst1|LPM_MUX_component|auto_generated|result_node[1]~7_combout\) # 
-- (!\inst2|inst1|LPM_MUX_component|auto_generated|result_node[0]~5_combout\)))) # (!\inst2|inst1|LPM_MUX_component|auto_generated|result_node[3]~11_combout\ & (\inst2|inst1|LPM_MUX_component|auto_generated|result_node[1]~7_combout\ & 
-- (!\inst2|inst1|LPM_MUX_component|auto_generated|result_node[2]~3_combout\ & !\inst2|inst1|LPM_MUX_component|auto_generated|result_node[0]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|LPM_MUX_component|auto_generated|result_node[1]~7_combout\,
	datab => \inst2|inst1|LPM_MUX_component|auto_generated|result_node[3]~11_combout\,
	datac => \inst2|inst1|LPM_MUX_component|auto_generated|result_node[2]~3_combout\,
	datad => \inst2|inst1|LPM_MUX_component|auto_generated|result_node[0]~5_combout\,
	combout => \inst6|inst4~0_combout\);

-- Location: LCCOMB_X74_Y4_N26
\inst6|inst3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst3~0_combout\ = (\inst2|inst1|LPM_MUX_component|auto_generated|result_node[1]~7_combout\ & ((\inst2|inst1|LPM_MUX_component|auto_generated|result_node[0]~5_combout\ & (\inst2|inst1|LPM_MUX_component|auto_generated|result_node[3]~11_combout\)) # 
-- (!\inst2|inst1|LPM_MUX_component|auto_generated|result_node[0]~5_combout\ & ((\inst2|inst1|LPM_MUX_component|auto_generated|result_node[2]~3_combout\))))) # (!\inst2|inst1|LPM_MUX_component|auto_generated|result_node[1]~7_combout\ & 
-- (\inst2|inst1|LPM_MUX_component|auto_generated|result_node[2]~3_combout\ & (\inst2|inst1|LPM_MUX_component|auto_generated|result_node[3]~11_combout\ $ (\inst2|inst1|LPM_MUX_component|auto_generated|result_node[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|LPM_MUX_component|auto_generated|result_node[1]~7_combout\,
	datab => \inst2|inst1|LPM_MUX_component|auto_generated|result_node[3]~11_combout\,
	datac => \inst2|inst1|LPM_MUX_component|auto_generated|result_node[2]~3_combout\,
	datad => \inst2|inst1|LPM_MUX_component|auto_generated|result_node[0]~5_combout\,
	combout => \inst6|inst3~0_combout\);

-- Location: LCCOMB_X74_Y4_N12
\inst6|inst2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst2~0_combout\ = (\inst2|inst1|LPM_MUX_component|auto_generated|result_node[3]~11_combout\ & (\inst2|inst1|LPM_MUX_component|auto_generated|result_node[0]~5_combout\ & (\inst2|inst1|LPM_MUX_component|auto_generated|result_node[1]~7_combout\ $ 
-- (\inst2|inst1|LPM_MUX_component|auto_generated|result_node[2]~3_combout\)))) # (!\inst2|inst1|LPM_MUX_component|auto_generated|result_node[3]~11_combout\ & (!\inst2|inst1|LPM_MUX_component|auto_generated|result_node[1]~7_combout\ & 
-- (\inst2|inst1|LPM_MUX_component|auto_generated|result_node[2]~3_combout\ $ (\inst2|inst1|LPM_MUX_component|auto_generated|result_node[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|LPM_MUX_component|auto_generated|result_node[1]~7_combout\,
	datab => \inst2|inst1|LPM_MUX_component|auto_generated|result_node[3]~11_combout\,
	datac => \inst2|inst1|LPM_MUX_component|auto_generated|result_node[2]~3_combout\,
	datad => \inst2|inst1|LPM_MUX_component|auto_generated|result_node[0]~5_combout\,
	combout => \inst6|inst2~0_combout\);

ww_HEXMEM0(6) <= \HEXMEM0[6]~output_o\;

ww_HEXMEM0(5) <= \HEXMEM0[5]~output_o\;

ww_HEXMEM0(4) <= \HEXMEM0[4]~output_o\;

ww_HEXMEM0(3) <= \HEXMEM0[3]~output_o\;

ww_HEXMEM0(2) <= \HEXMEM0[2]~output_o\;

ww_HEXMEM0(1) <= \HEXMEM0[1]~output_o\;

ww_HEXMEM0(0) <= \HEXMEM0[0]~output_o\;

ww_HEXMEM1(6) <= \HEXMEM1[6]~output_o\;

ww_HEXMEM1(5) <= \HEXMEM1[5]~output_o\;

ww_HEXMEM1(4) <= \HEXMEM1[4]~output_o\;

ww_HEXMEM1(3) <= \HEXMEM1[3]~output_o\;

ww_HEXMEM1(2) <= \HEXMEM1[2]~output_o\;

ww_HEXMEM1(1) <= \HEXMEM1[1]~output_o\;

ww_HEXMEM1(0) <= \HEXMEM1[0]~output_o\;

ww_HEXMEM2(6) <= \HEXMEM2[6]~output_o\;

ww_HEXMEM2(5) <= \HEXMEM2[5]~output_o\;

ww_HEXMEM2(4) <= \HEXMEM2[4]~output_o\;

ww_HEXMEM2(3) <= \HEXMEM2[3]~output_o\;

ww_HEXMEM2(2) <= \HEXMEM2[2]~output_o\;

ww_HEXMEM2(1) <= \HEXMEM2[1]~output_o\;

ww_HEXMEM2(0) <= \HEXMEM2[0]~output_o\;

ww_HEXMEM3(6) <= \HEXMEM3[6]~output_o\;

ww_HEXMEM3(5) <= \HEXMEM3[5]~output_o\;

ww_HEXMEM3(4) <= \HEXMEM3[4]~output_o\;

ww_HEXMEM3(3) <= \HEXMEM3[3]~output_o\;

ww_HEXMEM3(2) <= \HEXMEM3[2]~output_o\;

ww_HEXMEM3(1) <= \HEXMEM3[1]~output_o\;

ww_HEXMEM3(0) <= \HEXMEM3[0]~output_o\;

ww_HEXREG1(6) <= \HEXREG1[6]~output_o\;

ww_HEXREG1(5) <= \HEXREG1[5]~output_o\;

ww_HEXREG1(4) <= \HEXREG1[4]~output_o\;

ww_HEXREG1(3) <= \HEXREG1[3]~output_o\;

ww_HEXREG1(2) <= \HEXREG1[2]~output_o\;

ww_HEXREG1(1) <= \HEXREG1[1]~output_o\;

ww_HEXREG1(0) <= \HEXREG1[0]~output_o\;

ww_HEXREG2(6) <= \HEXREG2[6]~output_o\;

ww_HEXREG2(5) <= \HEXREG2[5]~output_o\;

ww_HEXREG2(4) <= \HEXREG2[4]~output_o\;

ww_HEXREG2(3) <= \HEXREG2[3]~output_o\;

ww_HEXREG2(2) <= \HEXREG2[2]~output_o\;

ww_HEXREG2(1) <= \HEXREG2[1]~output_o\;

ww_HEXREG2(0) <= \HEXREG2[0]~output_o\;
END structure;


