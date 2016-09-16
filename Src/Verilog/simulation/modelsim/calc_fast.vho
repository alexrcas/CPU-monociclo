-- Copyright (C) 1991-2012 Altera Corporation
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
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 12.1 Build 243 01/31/2013 Service Pack 1 SJ Web Edition"

-- DATE "05/23/2016 12:57:37"

-- 
-- Device: Altera EP2C20F484C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	fpga IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	num : IN std_logic_vector(3 DOWNTO 0);
	suma : IN std_logic;
	resta : IN std_logic;
	display1 : OUT std_logic_vector(6 DOWNTO 0);
	display2 : OUT std_logic_vector(6 DOWNTO 0);
	display3 : OUT std_logic_vector(6 DOWNTO 0);
	display4 : OUT std_logic_vector(6 DOWNTO 0);
	s0 : OUT std_logic_vector(7 DOWNTO 0);
	s1 : OUT std_logic_vector(7 DOWNTO 0);
	s2 : OUT std_logic_vector(7 DOWNTO 0);
	s3 : OUT std_logic_vector(7 DOWNTO 0);
	pc_out : OUT std_logic_vector(9 DOWNTO 0)
	);
END fpga;

-- Design Ports Information
-- display1[0]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display1[1]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display1[2]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display1[3]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display1[4]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display1[5]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display1[6]	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display2[0]	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display2[1]	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display2[2]	=>  Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display2[3]	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display2[4]	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display2[5]	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display2[6]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display3[0]	=>  Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display3[1]	=>  Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display3[2]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display3[3]	=>  Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display3[4]	=>  Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display3[5]	=>  Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display3[6]	=>  Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display4[0]	=>  Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display4[1]	=>  Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display4[2]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display4[3]	=>  Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display4[4]	=>  Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display4[5]	=>  Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display4[6]	=>  Location: PIN_D4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s0[0]	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s0[1]	=>  Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s0[2]	=>  Location: PIN_U19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s0[3]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s0[4]	=>  Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s0[5]	=>  Location: PIN_V19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s0[6]	=>  Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s0[7]	=>  Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s1[0]	=>  Location: PIN_Y20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s1[1]	=>  Location: PIN_R14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s1[2]	=>  Location: PIN_U20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s1[3]	=>  Location: PIN_AB19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s1[4]	=>  Location: PIN_V15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s1[5]	=>  Location: PIN_U15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s1[6]	=>  Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s1[7]	=>  Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s2[0]	=>  Location: PIN_N15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s2[1]	=>  Location: PIN_AA18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s2[2]	=>  Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s2[3]	=>  Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s2[4]	=>  Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s2[5]	=>  Location: PIN_AB20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s2[6]	=>  Location: PIN_T16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s2[7]	=>  Location: PIN_R16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s3[0]	=>  Location: PIN_N22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s3[1]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s3[2]	=>  Location: PIN_Y17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s3[3]	=>  Location: PIN_M18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s3[4]	=>  Location: PIN_R18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s3[5]	=>  Location: PIN_N21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s3[6]	=>  Location: PIN_P15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s3[7]	=>  Location: PIN_W16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc_out[0]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc_out[1]	=>  Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc_out[2]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc_out[3]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc_out[4]	=>  Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc_out[5]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc_out[6]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc_out[7]	=>  Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc_out[8]	=>  Location: PIN_P17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc_out[9]	=>  Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- num[0]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- num[1]	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- num[2]	=>  Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- num[3]	=>  Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- resta	=>  Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- suma	=>  Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF fpga IS
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
SIGNAL ww_num : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_suma : std_logic;
SIGNAL ww_resta : std_logic;
SIGNAL ww_display1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_display2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_display3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_display4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_s0 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_s1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_s2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_s3 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_pc_out : std_logic_vector(9 DOWNTO 0);
SIGNAL \reset~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cpu1|micro1|mux_srel|y[1]~1_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~40_regout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~1_regout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~50_regout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~18_regout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~10_regout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~2_regout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~138_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~26_regout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~139_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~52_regout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~28_regout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~61_regout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~21_regout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~5_regout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~150_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~151_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~46_regout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~38_regout\ : std_logic;
SIGNAL \cpu1|micro1|muxademux|y[7]~14_combout\ : std_logic;
SIGNAL \cpu1|micro1|alu1|Add0~1_combout\ : std_logic;
SIGNAL \cpu1|micro1|alu1|Add0~5_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~173_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~174_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~176_combout\ : std_logic;
SIGNAL \cpu1|micro1|alu1|Add0~16_combout\ : std_logic;
SIGNAL \cpu1|micro1|alu1|Add0~17_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~179_combout\ : std_logic;
SIGNAL \cpu1|micro1|alu1|Add0~22_combout\ : std_logic;
SIGNAL \cpu1|micro1|alu1|Add0~29_combout\ : std_logic;
SIGNAL \cpu1|micro1|alu1|WideOr0~0_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~194_combout\ : std_logic;
SIGNAL \cpu1|micro1|alu1|Add0~37_combout\ : std_logic;
SIGNAL \cpu1|micro1|alu1|Add0~38_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|rd1[5]~6_combout\ : std_logic;
SIGNAL \cpu1|micro1|alu1|Add0~43_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~203_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~204_combout\ : std_logic;
SIGNAL \cpu1|micro1|alu1|Add0~52_combout\ : std_logic;
SIGNAL \cpu1|micro1|muxentradaregistro|y[3]~13_combout\ : std_logic;
SIGNAL \suma~combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~50feeder_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~28feeder_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~52feeder_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~61feeder_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~38feeder_combout\ : std_logic;
SIGNAL \e1[0]~feeder_combout\ : std_logic;
SIGNAL \deco1|WideOr5~0_combout\ : std_logic;
SIGNAL \deco1|WideOr4~0_combout\ : std_logic;
SIGNAL \deco1|d0[2]~0_combout\ : std_logic;
SIGNAL \deco1|WideOr3~0_combout\ : std_logic;
SIGNAL \deco1|WideOr2~0_combout\ : std_logic;
SIGNAL \deco1|WideOr1~0_combout\ : std_logic;
SIGNAL \deco1|WideOr0~0_combout\ : std_logic;
SIGNAL \deco1|WideOr6~0_combout\ : std_logic;
SIGNAL \cpu1|micro1|sum_pc|y[0]~0_combout\ : std_logic;
SIGNAL \cpu1|micro1|pc|q[0]~0_combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \reset~clkctrl_outclk\ : std_logic;
SIGNAL \cpu1|micro1|memoria|mem~25_combout\ : std_logic;
SIGNAL \cpu1|micro1|memoria|mem~26_combout\ : std_logic;
SIGNAL \cpu1|micro1|memoria|mem~13_combout\ : std_logic;
SIGNAL \cpu1|micro1|memoria|mem~14_combout\ : std_logic;
SIGNAL \cpu1|micro1|memoria|mem~11_combout\ : std_logic;
SIGNAL \cpu1|micro1|memoria|mem~12_combout\ : std_logic;
SIGNAL \cpu1|micro1|memoria|mem~7_combout\ : std_logic;
SIGNAL \cpu1|micro1|memoria|mem~8_combout\ : std_logic;
SIGNAL \cpu1|uc1|s_rel~0_combout\ : std_logic;
SIGNAL \cpu1|uc1|s_rel~1_combout\ : std_logic;
SIGNAL \cpu1|micro1|mux_srel|y[7]~6_combout\ : std_logic;
SIGNAL \cpu1|micro1|memoria|mem~29_combout\ : std_logic;
SIGNAL \cpu1|micro1|memoria|mem~23_combout\ : std_logic;
SIGNAL \cpu1|micro1|mux_srel|y[6]~5_combout\ : std_logic;
SIGNAL \cpu1|uc1|Selector0~1_combout\ : std_logic;
SIGNAL \cpu1|uc1|s_ret~0_combout\ : std_logic;
SIGNAL \cpu1|micro1|memoria|mem~21_combout\ : std_logic;
SIGNAL \cpu1|micro1|memoria|mem~22_combout\ : std_logic;
SIGNAL \cpu1|micro1|mux_srel|y[4]~4_combout\ : std_logic;
SIGNAL \cpu1|micro1|mux_srel|y[2]~2_combout\ : std_logic;
SIGNAL \cpu1|micro1|sum_pc|y[1]~3\ : std_logic;
SIGNAL \cpu1|micro1|sum_pc|y[2]~5\ : std_logic;
SIGNAL \cpu1|micro1|sum_pc|y[3]~7\ : std_logic;
SIGNAL \cpu1|micro1|sum_pc|y[4]~9\ : std_logic;
SIGNAL \cpu1|micro1|sum_pc|y[5]~10_combout\ : std_logic;
SIGNAL \cpu1|micro1|retornopc|y[5]~0_combout\ : std_logic;
SIGNAL \cpu1|micro1|sum_pc|y[5]~11\ : std_logic;
SIGNAL \cpu1|micro1|sum_pc|y[6]~13\ : std_logic;
SIGNAL \cpu1|micro1|sum_pc|y[7]~14_combout\ : std_logic;
SIGNAL \cpu1|micro1|pc|q[7]~6_combout\ : std_logic;
SIGNAL \cpu1|micro1|memoria|mem~19_combout\ : std_logic;
SIGNAL \cpu1|micro1|memoria|mem~20_combout\ : std_logic;
SIGNAL \cpu1|micro1|mux_srel|y[3]~3_combout\ : std_logic;
SIGNAL \cpu1|micro1|sum_pc|y[3]~6_combout\ : std_logic;
SIGNAL \cpu1|micro1|pc|q[3]~3_combout\ : std_logic;
SIGNAL \cpu1|micro1|memoria|mem~3_combout\ : std_logic;
SIGNAL \cpu1|micro1|memoria|mem~4_combout\ : std_logic;
SIGNAL \cpu1|uc1|s_bk~0_combout\ : std_logic;
SIGNAL \cpu1|micro1|memoria|mem~0_combout\ : std_logic;
SIGNAL \cpu1|micro1|memoria|mem~2_combout\ : std_logic;
SIGNAL \cpu1|micro1|mux_srel|y[0]~0_combout\ : std_logic;
SIGNAL \cpu1|micro1|sum_pc|y[0]~1\ : std_logic;
SIGNAL \cpu1|micro1|sum_pc|y[1]~2_combout\ : std_logic;
SIGNAL \cpu1|micro1|memoria|mem~15_combout\ : std_logic;
SIGNAL \cpu1|micro1|memoria|mem~16_combout\ : std_logic;
SIGNAL \cpu1|micro1|pc|q[1]~1_combout\ : std_logic;
SIGNAL \cpu1|micro1|memoria|mem~5_combout\ : std_logic;
SIGNAL \cpu1|micro1|memoria|mem~6_combout\ : std_logic;
SIGNAL \cpu1|micro1|memoria|mem~9_combout\ : std_logic;
SIGNAL \cpu1|micro1|memoria|mem~10_combout\ : std_logic;
SIGNAL \cpu1|uc1|s_sal~1_combout\ : std_logic;
SIGNAL \cpu1|micro1|alu1|Add0~3_combout\ : std_logic;
SIGNAL \cpu1|uc1|s_entr~0_combout\ : std_logic;
SIGNAL \cpu1|micro1|muxentradaregistro|y[0]~20_combout\ : std_logic;
SIGNAL \cpu1|micro1|muxentradaregistro|y[7]~2_combout\ : std_logic;
SIGNAL \cpu1|micro1|muxentradaregistro|y[2]~10_combout\ : std_logic;
SIGNAL \cpu1|micro1|muxentradaregistro|y[5]~16_combout\ : std_logic;
SIGNAL \cpu1|micro1|memoria|mem~24_combout\ : std_logic;
SIGNAL \cpu1|uc1|WideOr0~0_combout\ : std_logic;
SIGNAL \cpu1|uc1|WideOr0~1_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~214_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~29_regout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~212_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~13_regout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~191_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~192_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~53feeder_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~208_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~53_regout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~209_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~37_regout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~45feeder_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~207_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~45_regout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~189_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~190_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~193_combout\ : std_logic;
SIGNAL \cpu1|micro1|alu1|Add0~36_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|Equal0~0_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~210_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~60_regout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~144_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~145_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|Equal1~0_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~211_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~20_regout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~12_regout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~213_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~4_regout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~146_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~147_combout\ : std_logic;
SIGNAL \cpu1|micro1|muxademux|y[4]~8_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|rd1[4]~5_combout\ : std_logic;
SIGNAL \cpu1|micro1|alu1|Add0~34_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~27_regout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~11_regout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~3_regout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~142_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~143_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~59_regout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~51feeder_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~51_regout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~35_regout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~140_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~141_combout\ : std_logic;
SIGNAL \cpu1|micro1|muxademux|y[3]~6_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|rd1[3]~4_combout\ : std_logic;
SIGNAL \cpu1|micro1|alu1|Add0~27_combout\ : std_logic;
SIGNAL \cpu1|micro1|muxentradaregistro|y[2]~11_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~42_regout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~136_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~137_combout\ : std_logic;
SIGNAL \cpu1|micro1|muxademux|y[2]~4_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|rd1[2]~3_combout\ : std_logic;
SIGNAL \cpu1|micro1|alu1|Add0~20_combout\ : std_logic;
SIGNAL \cpu1|micro1|muxentradaregistro|y[3]~7_combout\ : std_logic;
SIGNAL \cpu1|uc1|s_inm~0_combout\ : std_logic;
SIGNAL \cpu1|micro1|muxentradaregistro|y[1]~8_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~41_regout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~33_regout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~132_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~133_combout\ : std_logic;
SIGNAL \cpu1|micro1|muxademux|y[1]~2_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~49feeder_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~49_regout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~57_regout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~161_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~162_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~17_regout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~25_regout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~163_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~164_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~165_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|rd1[1]~2_combout\ : std_logic;
SIGNAL \cpu1|micro1|alu1|Add0~13_combout\ : std_logic;
SIGNAL \cpu1|micro1|muxentradaregistro|y[0]~3_combout\ : std_logic;
SIGNAL \resta~combout\ : std_logic;
SIGNAL \cpu1|micro1|muxentradaregistro|y[0]~4_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~160_combout\ : std_logic;
SIGNAL \cpu1|micro1|muxentradaregistro|y[0]~5_combout\ : std_logic;
SIGNAL \cpu1|micro1|alu1|Add0~8_cout\ : std_logic;
SIGNAL \cpu1|micro1|alu1|Add0~9_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~24feeder_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~24_regout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~16_regout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~8_regout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~0_regout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~167_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~168_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|rd1[0]~0_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~48feeder_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~48_regout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~169_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~170_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|rd1[0]~1_combout\ : std_logic;
SIGNAL \cpu1|micro1|alu1|Add0~50_combout\ : std_logic;
SIGNAL \cpu1|micro1|alu1|Add0~51_combout\ : std_logic;
SIGNAL \cpu1|micro1|muxentradaregistro|y[0]~6_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~56feeder_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~56_regout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~32_regout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~128_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~129_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~130_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~131_combout\ : std_logic;
SIGNAL \cpu1|micro1|muxademux|y[0]~0_combout\ : std_logic;
SIGNAL \cpu1|micro1|alu1|Add0~6_combout\ : std_logic;
SIGNAL \cpu1|micro1|alu1|Add0~10\ : std_logic;
SIGNAL \cpu1|micro1|alu1|Add0~11_combout\ : std_logic;
SIGNAL \cpu1|micro1|alu1|Add0~14_combout\ : std_logic;
SIGNAL \cpu1|micro1|muxentradaregistro|y[1]~9_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~9_regout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~134_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~135_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~166_combout\ : std_logic;
SIGNAL \cpu1|micro1|alu1|Add0~2_combout\ : std_logic;
SIGNAL \cpu1|micro1|alu1|Add0~4_combout\ : std_logic;
SIGNAL \cpu1|micro1|alu1|Add0~12\ : std_logic;
SIGNAL \cpu1|micro1|alu1|Add0~18_combout\ : std_logic;
SIGNAL \cpu1|micro1|alu1|Add0~21_combout\ : std_logic;
SIGNAL \cpu1|micro1|muxentradaregistro|y[2]~12_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~34_regout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~58_regout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~171_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~172_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~175_combout\ : std_logic;
SIGNAL \cpu1|micro1|alu1|Add0~15_combout\ : std_logic;
SIGNAL \cpu1|micro1|alu1|Add0~19\ : std_logic;
SIGNAL \cpu1|micro1|alu1|Add0~25_combout\ : std_logic;
SIGNAL \cpu1|micro1|alu1|Add0~28_combout\ : std_logic;
SIGNAL \cpu1|micro1|muxentradaregistro|y[3]~14_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~19_regout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~180_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~43feeder_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~43_regout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~177_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~178_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~181_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~182_combout\ : std_logic;
SIGNAL \cpu1|micro1|alu1|Add0~23_combout\ : std_logic;
SIGNAL \cpu1|micro1|alu1|Add0~24_combout\ : std_logic;
SIGNAL \cpu1|micro1|alu1|Add0~26\ : std_logic;
SIGNAL \cpu1|micro1|alu1|Add0~32_combout\ : std_logic;
SIGNAL \cpu1|micro1|alu1|Add0~35_combout\ : std_logic;
SIGNAL \cpu1|micro1|muxentradaregistro|y[4]~15_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~36feeder_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~36_regout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~44feeder_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~44_regout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~183_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~184_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~185_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~186_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~187_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~188_combout\ : std_logic;
SIGNAL \cpu1|micro1|alu1|Add0~30_combout\ : std_logic;
SIGNAL \cpu1|micro1|alu1|Add0~31_combout\ : std_logic;
SIGNAL \cpu1|micro1|alu1|Add0~33\ : std_logic;
SIGNAL \cpu1|micro1|alu1|Add0~39_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~148_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~149_combout\ : std_logic;
SIGNAL \cpu1|micro1|muxademux|y[5]~10_combout\ : std_logic;
SIGNAL \cpu1|micro1|alu1|Add0~41_combout\ : std_logic;
SIGNAL \cpu1|micro1|alu1|Add0~42_combout\ : std_logic;
SIGNAL \cpu1|micro1|muxentradaregistro|y[6]~17_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~30_regout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~22_regout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~14_regout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~197_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~198_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~54_regout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~62_regout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~195_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~196_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~199_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|rd1[6]~7_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~154_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~155_combout\ : std_logic;
SIGNAL \cpu1|micro1|muxademux|y[6]~12_combout\ : std_logic;
SIGNAL \cpu1|micro1|alu1|Add0~48_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~6_regout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~152_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~153_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~200_combout\ : std_logic;
SIGNAL \cpu1|micro1|alu1|Add0~44_combout\ : std_logic;
SIGNAL \cpu1|micro1|alu1|Add0~45_combout\ : std_logic;
SIGNAL \cpu1|micro1|alu1|Add0~40\ : std_logic;
SIGNAL \cpu1|micro1|alu1|Add0~46_combout\ : std_logic;
SIGNAL \cpu1|micro1|alu1|Add0~49_combout\ : std_logic;
SIGNAL \cpu1|micro1|muxentradaregistro|y[7]~18_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~63_regout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~156_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~157_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~23_regout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~31_regout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~7_regout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~15_regout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~158_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~159_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~206_combout\ : std_logic;
SIGNAL \cpu1|micro1|alu1|Add0~53_combout\ : std_logic;
SIGNAL \cpu1|micro1|alu1|Add0~54_combout\ : std_logic;
SIGNAL \cpu1|micro1|alu1|Add0~47\ : std_logic;
SIGNAL \cpu1|micro1|alu1|Add0~55_combout\ : std_logic;
SIGNAL \cpu1|micro1|muxentradaregistro|y[7]~19_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~39_regout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~55_regout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~47feeder_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~47_regout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~201_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~202_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|regb~205_combout\ : std_logic;
SIGNAL \cpu1|micro1|registros|rd1[7]~8_combout\ : std_logic;
SIGNAL \cpu1|micro1|alu1|Add0~57_combout\ : std_logic;
SIGNAL \cpu1|micro1|alu1|WideOr0~1_combout\ : std_logic;
SIGNAL \cpu1|micro1|alu1|WideOr0~combout\ : std_logic;
SIGNAL \cpu1|uc1|Selector0~0_combout\ : std_logic;
SIGNAL \cpu1|uc1|Selector0~2_combout\ : std_logic;
SIGNAL \cpu1|micro1|mux_srel|y[8]~7_combout\ : std_logic;
SIGNAL \cpu1|micro1|sum_pc|y[7]~15\ : std_logic;
SIGNAL \cpu1|micro1|sum_pc|y[8]~17\ : std_logic;
SIGNAL \cpu1|micro1|sum_pc|y[9]~18_combout\ : std_logic;
SIGNAL \cpu1|micro1|retornopc|y[9]~1_combout\ : std_logic;
SIGNAL \cpu1|micro1|sum_pc|y[4]~8_combout\ : std_logic;
SIGNAL \cpu1|micro1|pc|q[4]~4_combout\ : std_logic;
SIGNAL \cpu1|micro1|sum_pc|y[6]~12_combout\ : std_logic;
SIGNAL \cpu1|micro1|pc|q[6]~5_combout\ : std_logic;
SIGNAL \cpu1|micro1|memoria|mem~1_combout\ : std_logic;
SIGNAL \cpu1|micro1|memoria|mem~27_combout\ : std_logic;
SIGNAL \cpu1|micro1|memoria|mem~28_combout\ : std_logic;
SIGNAL \cpu1|micro1|sum_pc|y[8]~16_combout\ : std_logic;
SIGNAL \cpu1|micro1|pc|q[8]~7_combout\ : std_logic;
SIGNAL \cpu1|micro1|memoria|mem~17_combout\ : std_logic;
SIGNAL \cpu1|micro1|memoria|mem~18_combout\ : std_logic;
SIGNAL \cpu1|micro1|sum_pc|y[2]~4_combout\ : std_logic;
SIGNAL \cpu1|micro1|pc|q[2]~2_combout\ : std_logic;
SIGNAL \deco2|WideOr5~0_combout\ : std_logic;
SIGNAL \deco2|WideOr4~0_combout\ : std_logic;
SIGNAL \deco2|d0[2]~0_combout\ : std_logic;
SIGNAL \deco2|WideOr3~0_combout\ : std_logic;
SIGNAL \deco2|WideOr2~0_combout\ : std_logic;
SIGNAL \deco2|WideOr1~0_combout\ : std_logic;
SIGNAL \deco2|WideOr0~0_combout\ : std_logic;
SIGNAL \deco2|WideOr6~0_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \cpu1|uc1|s_sal~0_combout\ : std_logic;
SIGNAL \cpu1|uc1|s_sal~2_combout\ : std_logic;
SIGNAL \cpu1|micro1|muxademux|y[0]~1_combout\ : std_logic;
SIGNAL \cpu1|micro1|salida0|q[0]~feeder_combout\ : std_logic;
SIGNAL \cpu1|uc1|WideOr4~0_combout\ : std_logic;
SIGNAL \cpu1|uc1|w_port0~0_combout\ : std_logic;
SIGNAL \cpu1|micro1|muxademux|y[1]~3_combout\ : std_logic;
SIGNAL \cpu1|micro1|salida0|q[1]~feeder_combout\ : std_logic;
SIGNAL \cpu1|micro1|muxademux|y[2]~5_combout\ : std_logic;
SIGNAL \cpu1|micro1|muxademux|y[3]~7_combout\ : std_logic;
SIGNAL \cpu1|micro1|salida0|q[3]~feeder_combout\ : std_logic;
SIGNAL \cpu1|micro1|muxademux|y[4]~9_combout\ : std_logic;
SIGNAL \cpu1|micro1|salida0|q[4]~feeder_combout\ : std_logic;
SIGNAL \cpu1|micro1|muxademux|y[5]~11_combout\ : std_logic;
SIGNAL \cpu1|micro1|muxademux|y[6]~13_combout\ : std_logic;
SIGNAL \cpu1|micro1|salida0|q[6]~feeder_combout\ : std_logic;
SIGNAL \cpu1|micro1|muxademux|y[7]~15_combout\ : std_logic;
SIGNAL \cpu1|uc1|w_port1~2_combout\ : std_logic;
SIGNAL \cpu1|micro1|salida1|q[1]~feeder_combout\ : std_logic;
SIGNAL \cpu1|micro1|salida1|q[3]~feeder_combout\ : std_logic;
SIGNAL \cpu1|uc1|w_port2~0_combout\ : std_logic;
SIGNAL \cpu1|micro1|salida2|q[2]~feeder_combout\ : std_logic;
SIGNAL \cpu1|micro1|salida2|q[6]~feeder_combout\ : std_logic;
SIGNAL \cpu1|uc1|w_port3~0_combout\ : std_logic;
SIGNAL \cpu1|micro1|salida3|q[1]~feeder_combout\ : std_logic;
SIGNAL \cpu1|micro1|salida3|q[6]~feeder_combout\ : std_logic;
SIGNAL \cpu1|micro1|salida3|q[7]~feeder_combout\ : std_logic;
SIGNAL \cpu1|micro1|salida1|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \cpu1|micro1|salida2|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \cpu1|micro1|salida3|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL e2 : std_logic_vector(7 DOWNTO 0);
SIGNAL e1 : std_logic_vector(7 DOWNTO 0);
SIGNAL e0 : std_logic_vector(7 DOWNTO 0);
SIGNAL \cpu1|micro1|pcbackup|q\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \cpu1|micro1|pc|q\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \cpu1|micro1|regzero|q\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \cpu1|micro1|salida0|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \num~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \deco2|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \deco1|ALT_INV_WideOr0~0_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_num <= num;
ww_suma <= suma;
ww_resta <= resta;
display1 <= ww_display1;
display2 <= ww_display2;
display3 <= ww_display3;
display4 <= ww_display4;
s0 <= ww_s0;
s1 <= ww_s1;
s2 <= ww_s2;
s3 <= ww_s3;
pc_out <= ww_pc_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reset~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \reset~combout\);
\deco2|ALT_INV_WideOr0~0_combout\ <= NOT \deco2|WideOr0~0_combout\;
\deco1|ALT_INV_WideOr0~0_combout\ <= NOT \deco1|WideOr0~0_combout\;

-- Location: LCCOMB_X49_Y10_N6
\cpu1|micro1|mux_srel|y[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|mux_srel|y[1]~1_combout\ = (\cpu1|micro1|memoria|mem~16_combout\ & \cpu1|uc1|s_rel~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu1|micro1|memoria|mem~16_combout\,
	datad => \cpu1|uc1|s_rel~1_combout\,
	combout => \cpu1|micro1|mux_srel|y[1]~1_combout\);

-- Location: LCFF_X47_Y6_N21
\cpu1|micro1|registros|regb~40\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \cpu1|micro1|muxentradaregistro|y[0]~6_combout\,
	sload => VCC,
	ena => \cpu1|micro1|registros|regb~207_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|registros|regb~40_regout\);

-- Location: LCFF_X47_Y9_N1
\cpu1|micro1|registros|regb~1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \cpu1|micro1|muxentradaregistro|y[1]~9_combout\,
	sload => VCC,
	ena => \cpu1|micro1|registros|regb~213_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|registros|regb~1_regout\);

-- Location: LCFF_X49_Y9_N9
\cpu1|micro1|registros|regb~50\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \cpu1|micro1|registros|regb~50feeder_combout\,
	ena => \cpu1|micro1|registros|regb~208_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|registros|regb~50_regout\);

-- Location: LCFF_X47_Y9_N27
\cpu1|micro1|registros|regb~18\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \cpu1|micro1|muxentradaregistro|y[2]~12_combout\,
	sload => VCC,
	ena => \cpu1|micro1|registros|regb~211_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|registros|regb~18_regout\);

-- Location: LCFF_X47_Y10_N21
\cpu1|micro1|registros|regb~10\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \cpu1|micro1|muxentradaregistro|y[2]~12_combout\,
	sload => VCC,
	ena => \cpu1|micro1|registros|regb~212_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|registros|regb~10_regout\);

-- Location: LCFF_X47_Y9_N29
\cpu1|micro1|registros|regb~2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \cpu1|micro1|muxentradaregistro|y[2]~12_combout\,
	sload => VCC,
	ena => \cpu1|micro1|registros|regb~213_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|registros|regb~2_regout\);

-- Location: LCCOMB_X47_Y9_N28
\cpu1|micro1|registros|regb~138\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~138_combout\ = (\cpu1|micro1|memoria|mem~18_combout\ & ((\cpu1|micro1|registros|regb~10_regout\) # ((\cpu1|micro1|memoria|mem~20_combout\)))) # (!\cpu1|micro1|memoria|mem~18_combout\ & (((\cpu1|micro1|registros|regb~2_regout\ & 
-- !\cpu1|micro1|memoria|mem~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|registros|regb~10_regout\,
	datab => \cpu1|micro1|memoria|mem~18_combout\,
	datac => \cpu1|micro1|registros|regb~2_regout\,
	datad => \cpu1|micro1|memoria|mem~20_combout\,
	combout => \cpu1|micro1|registros|regb~138_combout\);

-- Location: LCFF_X48_Y9_N17
\cpu1|micro1|registros|regb~26\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \cpu1|micro1|muxentradaregistro|y[2]~12_combout\,
	sload => VCC,
	ena => \cpu1|micro1|registros|regb~214_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|registros|regb~26_regout\);

-- Location: LCCOMB_X47_Y9_N26
\cpu1|micro1|registros|regb~139\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~139_combout\ = (\cpu1|micro1|memoria|mem~20_combout\ & ((\cpu1|micro1|registros|regb~138_combout\ & (\cpu1|micro1|registros|regb~26_regout\)) # (!\cpu1|micro1|registros|regb~138_combout\ & 
-- ((\cpu1|micro1|registros|regb~18_regout\))))) # (!\cpu1|micro1|memoria|mem~20_combout\ & (((\cpu1|micro1|registros|regb~138_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|registros|regb~26_regout\,
	datab => \cpu1|micro1|memoria|mem~20_combout\,
	datac => \cpu1|micro1|registros|regb~18_regout\,
	datad => \cpu1|micro1|registros|regb~138_combout\,
	combout => \cpu1|micro1|registros|regb~139_combout\);

-- Location: LCFF_X49_Y9_N25
\cpu1|micro1|registros|regb~52\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \cpu1|micro1|registros|regb~52feeder_combout\,
	ena => \cpu1|micro1|registros|regb~208_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|registros|regb~52_regout\);

-- Location: LCFF_X48_Y8_N25
\cpu1|micro1|registros|regb~28\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \cpu1|micro1|registros|regb~28feeder_combout\,
	ena => \cpu1|micro1|registros|regb~214_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|registros|regb~28_regout\);

-- Location: LCFF_X49_Y6_N7
\cpu1|micro1|registros|regb~61\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \cpu1|micro1|registros|regb~61feeder_combout\,
	ena => \cpu1|micro1|registros|regb~210_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|registros|regb~61_regout\);

-- Location: LCFF_X48_Y8_N23
\cpu1|micro1|registros|regb~21\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \cpu1|micro1|muxentradaregistro|y[5]~16_combout\,
	sload => VCC,
	ena => \cpu1|micro1|registros|regb~211_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|registros|regb~21_regout\);

-- Location: LCFF_X47_Y8_N29
\cpu1|micro1|registros|regb~5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \cpu1|micro1|muxentradaregistro|y[5]~16_combout\,
	sload => VCC,
	ena => \cpu1|micro1|registros|regb~213_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|registros|regb~5_regout\);

-- Location: LCCOMB_X47_Y8_N28
\cpu1|micro1|registros|regb~150\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~150_combout\ = (\cpu1|micro1|memoria|mem~20_combout\ & (((\cpu1|micro1|memoria|mem~18_combout\)))) # (!\cpu1|micro1|memoria|mem~20_combout\ & ((\cpu1|micro1|memoria|mem~18_combout\ & (\cpu1|micro1|registros|regb~13_regout\)) # 
-- (!\cpu1|micro1|memoria|mem~18_combout\ & ((\cpu1|micro1|registros|regb~5_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|memoria|mem~20_combout\,
	datab => \cpu1|micro1|registros|regb~13_regout\,
	datac => \cpu1|micro1|registros|regb~5_regout\,
	datad => \cpu1|micro1|memoria|mem~18_combout\,
	combout => \cpu1|micro1|registros|regb~150_combout\);

-- Location: LCCOMB_X48_Y8_N6
\cpu1|micro1|registros|regb~151\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~151_combout\ = (\cpu1|micro1|memoria|mem~20_combout\ & ((\cpu1|micro1|registros|regb~150_combout\ & ((\cpu1|micro1|registros|regb~29_regout\))) # (!\cpu1|micro1|registros|regb~150_combout\ & 
-- (\cpu1|micro1|registros|regb~21_regout\)))) # (!\cpu1|micro1|memoria|mem~20_combout\ & (((\cpu1|micro1|registros|regb~150_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|registros|regb~21_regout\,
	datab => \cpu1|micro1|registros|regb~29_regout\,
	datac => \cpu1|micro1|memoria|mem~20_combout\,
	datad => \cpu1|micro1|registros|regb~150_combout\,
	combout => \cpu1|micro1|registros|regb~151_combout\);

-- Location: LCFF_X48_Y7_N1
\cpu1|micro1|registros|regb~46\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \cpu1|micro1|muxentradaregistro|y[6]~17_combout\,
	ena => \cpu1|micro1|registros|regb~207_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|registros|regb~46_regout\);

-- Location: LCFF_X49_Y8_N25
\cpu1|micro1|registros|regb~38\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \cpu1|micro1|registros|regb~38feeder_combout\,
	ena => \cpu1|micro1|registros|regb~209_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|registros|regb~38_regout\);

-- Location: LCCOMB_X47_Y8_N10
\cpu1|micro1|muxademux|y[7]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|muxademux|y[7]~14_combout\ = (!\cpu1|micro1|registros|Equal1~0_combout\ & ((\cpu1|micro1|memoria|mem~22_combout\ & (\cpu1|micro1|registros|regb~157_combout\)) # (!\cpu1|micro1|memoria|mem~22_combout\ & 
-- ((\cpu1|micro1|registros|regb~159_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|registros|regb~157_combout\,
	datab => \cpu1|micro1|memoria|mem~22_combout\,
	datac => \cpu1|micro1|registros|Equal1~0_combout\,
	datad => \cpu1|micro1|registros|regb~159_combout\,
	combout => \cpu1|micro1|muxademux|y[7]~14_combout\);

-- Location: LCFF_X49_Y10_N19
\cpu1|micro1|pcbackup|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \cpu1|micro1|sum_pc|y[5]~10_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu1|uc1|s_bk~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|pcbackup|q\(5));

-- Location: LCFF_X49_Y10_N27
\cpu1|micro1|pcbackup|q[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \cpu1|micro1|sum_pc|y[9]~18_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu1|uc1|s_bk~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|pcbackup|q\(9));

-- Location: LCCOMB_X48_Y7_N10
\cpu1|micro1|alu1|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|alu1|Add0~1_combout\ = (!\cpu1|micro1|memoria|mem~6_combout\ & (!\cpu1|micro1|registros|Equal0~0_combout\ & \cpu1|micro1|registros|regb~165_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu1|micro1|memoria|mem~6_combout\,
	datac => \cpu1|micro1|registros|Equal0~0_combout\,
	datad => \cpu1|micro1|registros|regb~165_combout\,
	combout => \cpu1|micro1|alu1|Add0~1_combout\);

-- Location: LCCOMB_X49_Y9_N0
\cpu1|micro1|alu1|Add0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|alu1|Add0~5_combout\ = (\cpu1|micro1|memoria|mem~6_combout\) # ((\cpu1|micro1|registros|rd1[0]~0_combout\) # ((\cpu1|micro1|registros|regb~170_combout\ & \cpu1|micro1|registros|regb~160_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|memoria|mem~6_combout\,
	datab => \cpu1|micro1|registros|regb~170_combout\,
	datac => \cpu1|micro1|registros|rd1[0]~0_combout\,
	datad => \cpu1|micro1|registros|regb~160_combout\,
	combout => \cpu1|micro1|alu1|Add0~5_combout\);

-- Location: LCCOMB_X47_Y10_N20
\cpu1|micro1|registros|regb~173\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~173_combout\ = (\cpu1|micro1|memoria|mem~10_combout\ & ((\cpu1|micro1|registros|regb~2_regout\) # ((\cpu1|micro1|memoria|mem~14_combout\)))) # (!\cpu1|micro1|memoria|mem~10_combout\ & (((\cpu1|micro1|registros|regb~10_regout\ & 
-- !\cpu1|micro1|memoria|mem~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|registros|regb~2_regout\,
	datab => \cpu1|micro1|memoria|mem~10_combout\,
	datac => \cpu1|micro1|registros|regb~10_regout\,
	datad => \cpu1|micro1|memoria|mem~14_combout\,
	combout => \cpu1|micro1|registros|regb~173_combout\);

-- Location: LCCOMB_X47_Y9_N6
\cpu1|micro1|registros|regb~174\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~174_combout\ = (\cpu1|micro1|memoria|mem~14_combout\ & ((\cpu1|micro1|registros|regb~173_combout\ & ((\cpu1|micro1|registros|regb~18_regout\))) # (!\cpu1|micro1|registros|regb~173_combout\ & 
-- (\cpu1|micro1|registros|regb~26_regout\)))) # (!\cpu1|micro1|memoria|mem~14_combout\ & (((\cpu1|micro1|registros|regb~173_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|registros|regb~26_regout\,
	datab => \cpu1|micro1|registros|regb~18_regout\,
	datac => \cpu1|micro1|memoria|mem~14_combout\,
	datad => \cpu1|micro1|registros|regb~173_combout\,
	combout => \cpu1|micro1|registros|regb~174_combout\);

-- Location: LCCOMB_X47_Y6_N6
\cpu1|micro1|registros|regb~176\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~176_combout\ = (\cpu1|micro1|memoria|mem~22_combout\ & (\cpu1|micro1|registros|regb~137_combout\)) # (!\cpu1|micro1|memoria|mem~22_combout\ & ((\cpu1|micro1|registros|regb~139_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu1|micro1|memoria|mem~22_combout\,
	datac => \cpu1|micro1|registros|regb~137_combout\,
	datad => \cpu1|micro1|registros|regb~139_combout\,
	combout => \cpu1|micro1|registros|regb~176_combout\);

-- Location: LCCOMB_X47_Y6_N24
\cpu1|micro1|alu1|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|alu1|Add0~16_combout\ = (\cpu1|micro1|registros|Equal1~0_combout\ & (((\cpu1|micro1|memoria|mem~4_combout\)))) # (!\cpu1|micro1|registros|Equal1~0_combout\ & ((\cpu1|micro1|memoria|mem~4_combout\ & 
-- ((!\cpu1|micro1|registros|regb~176_combout\))) # (!\cpu1|micro1|memoria|mem~4_combout\ & (!\cpu1|micro1|memoria|mem~6_combout\ & \cpu1|micro1|registros|regb~176_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|registros|Equal1~0_combout\,
	datab => \cpu1|micro1|memoria|mem~6_combout\,
	datac => \cpu1|micro1|memoria|mem~4_combout\,
	datad => \cpu1|micro1|registros|regb~176_combout\,
	combout => \cpu1|micro1|alu1|Add0~16_combout\);

-- Location: LCCOMB_X48_Y7_N6
\cpu1|micro1|alu1|Add0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|alu1|Add0~17_combout\ = (\cpu1|micro1|alu1|Add0~16_combout\) # ((\cpu1|micro1|alu1|Add0~3_combout\ & ((\cpu1|micro1|registros|Equal0~0_combout\) # (!\cpu1|micro1|registros|regb~175_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|registros|Equal0~0_combout\,
	datab => \cpu1|micro1|alu1|Add0~3_combout\,
	datac => \cpu1|micro1|registros|regb~175_combout\,
	datad => \cpu1|micro1|alu1|Add0~16_combout\,
	combout => \cpu1|micro1|alu1|Add0~17_combout\);

-- Location: LCCOMB_X47_Y9_N20
\cpu1|micro1|registros|regb~179\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~179_combout\ = (\cpu1|micro1|memoria|mem~14_combout\ & (((\cpu1|micro1|memoria|mem~10_combout\)))) # (!\cpu1|micro1|memoria|mem~14_combout\ & ((\cpu1|micro1|memoria|mem~10_combout\ & ((\cpu1|micro1|registros|regb~3_regout\))) # 
-- (!\cpu1|micro1|memoria|mem~10_combout\ & (\cpu1|micro1|registros|regb~11_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|registros|regb~11_regout\,
	datab => \cpu1|micro1|registros|regb~3_regout\,
	datac => \cpu1|micro1|memoria|mem~14_combout\,
	datad => \cpu1|micro1|memoria|mem~10_combout\,
	combout => \cpu1|micro1|registros|regb~179_combout\);

-- Location: LCCOMB_X47_Y9_N4
\cpu1|micro1|alu1|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|alu1|Add0~22_combout\ = (!\cpu1|micro1|registros|Equal0~0_combout\ & (!\cpu1|micro1|memoria|mem~6_combout\ & \cpu1|micro1|registros|regb~181_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|registros|Equal0~0_combout\,
	datab => \cpu1|micro1|memoria|mem~6_combout\,
	datac => \cpu1|micro1|registros|regb~181_combout\,
	combout => \cpu1|micro1|alu1|Add0~22_combout\);

-- Location: LCCOMB_X49_Y7_N2
\cpu1|micro1|alu1|Add0~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|alu1|Add0~29_combout\ = (!\cpu1|micro1|registros|Equal0~0_combout\ & (\cpu1|micro1|registros|regb~187_combout\ & !\cpu1|micro1|memoria|mem~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu1|micro1|registros|Equal0~0_combout\,
	datac => \cpu1|micro1|registros|regb~187_combout\,
	datad => \cpu1|micro1|memoria|mem~6_combout\,
	combout => \cpu1|micro1|alu1|Add0~29_combout\);

-- Location: LCCOMB_X47_Y7_N24
\cpu1|micro1|alu1|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|alu1|WideOr0~0_combout\ = (\cpu1|micro1|alu1|Add0~14_combout\) # ((\cpu1|micro1|alu1|Add0~35_combout\) # ((\cpu1|micro1|alu1|Add0~21_combout\) # (\cpu1|micro1|alu1|Add0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|alu1|Add0~14_combout\,
	datab => \cpu1|micro1|alu1|Add0~35_combout\,
	datac => \cpu1|micro1|alu1|Add0~21_combout\,
	datad => \cpu1|micro1|alu1|Add0~28_combout\,
	combout => \cpu1|micro1|alu1|WideOr0~0_combout\);

-- Location: LCCOMB_X48_Y6_N2
\cpu1|micro1|registros|regb~194\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~194_combout\ = (\cpu1|micro1|memoria|mem~22_combout\ & ((\cpu1|micro1|registros|regb~149_combout\))) # (!\cpu1|micro1|memoria|mem~22_combout\ & (\cpu1|micro1|registros|regb~151_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu1|micro1|memoria|mem~22_combout\,
	datac => \cpu1|micro1|registros|regb~151_combout\,
	datad => \cpu1|micro1|registros|regb~149_combout\,
	combout => \cpu1|micro1|registros|regb~194_combout\);

-- Location: LCCOMB_X48_Y6_N28
\cpu1|micro1|alu1|Add0~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|alu1|Add0~37_combout\ = (\cpu1|micro1|registros|Equal1~0_combout\ & (((\cpu1|micro1|memoria|mem~4_combout\)))) # (!\cpu1|micro1|registros|Equal1~0_combout\ & ((\cpu1|micro1|memoria|mem~4_combout\ & 
-- ((!\cpu1|micro1|registros|regb~194_combout\))) # (!\cpu1|micro1|memoria|mem~4_combout\ & (!\cpu1|micro1|memoria|mem~6_combout\ & \cpu1|micro1|registros|regb~194_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|registros|Equal1~0_combout\,
	datab => \cpu1|micro1|memoria|mem~6_combout\,
	datac => \cpu1|micro1|memoria|mem~4_combout\,
	datad => \cpu1|micro1|registros|regb~194_combout\,
	combout => \cpu1|micro1|alu1|Add0~37_combout\);

-- Location: LCCOMB_X48_Y6_N22
\cpu1|micro1|alu1|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|alu1|Add0~38_combout\ = (\cpu1|micro1|alu1|Add0~37_combout\) # ((\cpu1|micro1|alu1|Add0~3_combout\ & ((\cpu1|micro1|registros|Equal0~0_combout\) # (!\cpu1|micro1|registros|regb~193_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|registros|Equal0~0_combout\,
	datab => \cpu1|micro1|registros|regb~193_combout\,
	datac => \cpu1|micro1|alu1|Add0~3_combout\,
	datad => \cpu1|micro1|alu1|Add0~37_combout\,
	combout => \cpu1|micro1|alu1|Add0~38_combout\);

-- Location: LCCOMB_X48_Y6_N6
\cpu1|micro1|registros|rd1[5]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|rd1[5]~6_combout\ = (\cpu1|micro1|registros|Equal0~0_combout\) # (!\cpu1|micro1|registros|regb~193_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|registros|Equal0~0_combout\,
	datad => \cpu1|micro1|registros|regb~193_combout\,
	combout => \cpu1|micro1|registros|rd1[5]~6_combout\);

-- Location: LCCOMB_X48_Y8_N30
\cpu1|micro1|alu1|Add0~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|alu1|Add0~43_combout\ = (!\cpu1|micro1|registros|Equal0~0_combout\ & (\cpu1|micro1|registros|regb~199_combout\ & !\cpu1|micro1|memoria|mem~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu1|micro1|registros|Equal0~0_combout\,
	datac => \cpu1|micro1|registros|regb~199_combout\,
	datad => \cpu1|micro1|memoria|mem~6_combout\,
	combout => \cpu1|micro1|alu1|Add0~43_combout\);

-- Location: LCCOMB_X48_Y8_N12
\cpu1|micro1|registros|regb~203\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~203_combout\ = (\cpu1|micro1|memoria|mem~14_combout\ & (((\cpu1|micro1|memoria|mem~10_combout\)))) # (!\cpu1|micro1|memoria|mem~14_combout\ & ((\cpu1|micro1|memoria|mem~10_combout\ & (\cpu1|micro1|registros|regb~7_regout\)) # 
-- (!\cpu1|micro1|memoria|mem~10_combout\ & ((\cpu1|micro1|registros|regb~15_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|registros|regb~7_regout\,
	datab => \cpu1|micro1|memoria|mem~14_combout\,
	datac => \cpu1|micro1|registros|regb~15_regout\,
	datad => \cpu1|micro1|memoria|mem~10_combout\,
	combout => \cpu1|micro1|registros|regb~203_combout\);

-- Location: LCCOMB_X48_Y8_N0
\cpu1|micro1|registros|regb~204\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~204_combout\ = (\cpu1|micro1|memoria|mem~14_combout\ & ((\cpu1|micro1|registros|regb~203_combout\ & ((\cpu1|micro1|registros|regb~23_regout\))) # (!\cpu1|micro1|registros|regb~203_combout\ & 
-- (\cpu1|micro1|registros|regb~31_regout\)))) # (!\cpu1|micro1|memoria|mem~14_combout\ & (((\cpu1|micro1|registros|regb~203_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|memoria|mem~14_combout\,
	datab => \cpu1|micro1|registros|regb~31_regout\,
	datac => \cpu1|micro1|registros|regb~23_regout\,
	datad => \cpu1|micro1|registros|regb~203_combout\,
	combout => \cpu1|micro1|registros|regb~204_combout\);

-- Location: LCCOMB_X48_Y8_N16
\cpu1|micro1|alu1|Add0~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|alu1|Add0~52_combout\ = (!\cpu1|micro1|memoria|mem~6_combout\ & (!\cpu1|micro1|registros|Equal0~0_combout\ & \cpu1|micro1|registros|regb~205_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|memoria|mem~6_combout\,
	datac => \cpu1|micro1|registros|Equal0~0_combout\,
	datad => \cpu1|micro1|registros|regb~205_combout\,
	combout => \cpu1|micro1|alu1|Add0~52_combout\);

-- Location: LCFF_X49_Y10_N1
\e0[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \num~combout\(0),
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => e0(0));

-- Location: LCFF_X49_Y10_N3
\e1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \e1[0]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => e1(0));

-- Location: LCFF_X46_Y9_N15
\e0[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \num~combout\(3),
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => e0(3));

-- Location: LCCOMB_X46_Y9_N14
\cpu1|micro1|muxentradaregistro|y[3]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|muxentradaregistro|y[3]~13_combout\ = (\cpu1|micro1|muxentradaregistro|y[3]~7_combout\ & ((e0(3)) # ((\cpu1|micro1|muxentradaregistro|y[2]~10_combout\ & \cpu1|micro1|memoria|mem~16_combout\)))) # 
-- (!\cpu1|micro1|muxentradaregistro|y[3]~7_combout\ & (\cpu1|micro1|muxentradaregistro|y[2]~10_combout\ & ((\cpu1|micro1|memoria|mem~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|muxentradaregistro|y[3]~7_combout\,
	datab => \cpu1|micro1|muxentradaregistro|y[2]~10_combout\,
	datac => e0(3),
	datad => \cpu1|micro1|memoria|mem~16_combout\,
	combout => \cpu1|micro1|muxentradaregistro|y[3]~13_combout\);

-- Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\suma~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_suma,
	combout => \suma~combout\);

-- Location: LCCOMB_X49_Y9_N8
\cpu1|micro1|registros|regb~50feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~50feeder_combout\ = \cpu1|micro1|muxentradaregistro|y[2]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu1|micro1|muxentradaregistro|y[2]~12_combout\,
	combout => \cpu1|micro1|registros|regb~50feeder_combout\);

-- Location: LCCOMB_X48_Y8_N24
\cpu1|micro1|registros|regb~28feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~28feeder_combout\ = \cpu1|micro1|muxentradaregistro|y[4]~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu1|micro1|muxentradaregistro|y[4]~15_combout\,
	combout => \cpu1|micro1|registros|regb~28feeder_combout\);

-- Location: LCCOMB_X49_Y9_N24
\cpu1|micro1|registros|regb~52feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~52feeder_combout\ = \cpu1|micro1|muxentradaregistro|y[4]~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu1|micro1|muxentradaregistro|y[4]~15_combout\,
	combout => \cpu1|micro1|registros|regb~52feeder_combout\);

-- Location: LCCOMB_X49_Y6_N6
\cpu1|micro1|registros|regb~61feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~61feeder_combout\ = \cpu1|micro1|muxentradaregistro|y[5]~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu1|micro1|muxentradaregistro|y[5]~16_combout\,
	combout => \cpu1|micro1|registros|regb~61feeder_combout\);

-- Location: LCCOMB_X49_Y8_N24
\cpu1|micro1|registros|regb~38feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~38feeder_combout\ = \cpu1|micro1|muxentradaregistro|y[6]~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu1|micro1|muxentradaregistro|y[6]~17_combout\,
	combout => \cpu1|micro1|registros|regb~38feeder_combout\);

-- Location: LCCOMB_X49_Y10_N2
\e1[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \e1[0]~feeder_combout\ = \suma~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \suma~combout\,
	combout => \e1[0]~feeder_combout\);

-- Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\num[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_num(0),
	combout => \num~combout\(0));

-- Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\num[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_num(2),
	combout => \num~combout\(2));

-- Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\num[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_num(3),
	combout => \num~combout\(3));

-- Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\num[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_num(1),
	combout => \num~combout\(1));

-- Location: LCCOMB_X46_Y9_N20
\deco1|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \deco1|WideOr5~0_combout\ = (\num~combout\(0) & (!\num~combout\(2) & (\num~combout\(3) $ (!\num~combout\(1))))) # (!\num~combout\(0) & (\num~combout\(2) & (\num~combout\(3) $ (!\num~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num~combout\(0),
	datab => \num~combout\(2),
	datac => \num~combout\(3),
	datad => \num~combout\(1),
	combout => \deco1|WideOr5~0_combout\);

-- Location: LCCOMB_X46_Y9_N26
\deco1|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \deco1|WideOr4~0_combout\ = (\num~combout\(2) & ((\num~combout\(0) & (\num~combout\(3) $ (!\num~combout\(1)))) # (!\num~combout\(0) & (!\num~combout\(3) & \num~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num~combout\(0),
	datab => \num~combout\(2),
	datac => \num~combout\(3),
	datad => \num~combout\(1),
	combout => \deco1|WideOr4~0_combout\);

-- Location: LCCOMB_X46_Y9_N24
\deco1|d0[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \deco1|d0[2]~0_combout\ = (!\num~combout\(0) & ((\num~combout\(2) & (\num~combout\(3) & !\num~combout\(1))) # (!\num~combout\(2) & (!\num~combout\(3) & \num~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num~combout\(0),
	datab => \num~combout\(2),
	datac => \num~combout\(3),
	datad => \num~combout\(1),
	combout => \deco1|d0[2]~0_combout\);

-- Location: LCCOMB_X46_Y9_N6
\deco1|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \deco1|WideOr3~0_combout\ = (\num~combout\(0) & (\num~combout\(2) $ (((\num~combout\(3)) # (!\num~combout\(1)))))) # (!\num~combout\(0) & (\num~combout\(2) & (\num~combout\(3) $ (!\num~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num~combout\(0),
	datab => \num~combout\(2),
	datac => \num~combout\(3),
	datad => \num~combout\(1),
	combout => \deco1|WideOr3~0_combout\);

-- Location: LCCOMB_X46_Y9_N8
\deco1|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \deco1|WideOr2~0_combout\ = (\num~combout\(0)) # ((\num~combout\(2) & (\num~combout\(3) $ (!\num~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num~combout\(0),
	datab => \num~combout\(2),
	datac => \num~combout\(3),
	datad => \num~combout\(1),
	combout => \deco1|WideOr2~0_combout\);

-- Location: LCCOMB_X46_Y9_N2
\deco1|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \deco1|WideOr1~0_combout\ = (\num~combout\(2) & ((\num~combout\(3) & ((!\num~combout\(1)))) # (!\num~combout\(3) & (\num~combout\(0) & \num~combout\(1))))) # (!\num~combout\(2) & ((\num~combout\(0) & ((\num~combout\(1)) # (!\num~combout\(3)))) # 
-- (!\num~combout\(0) & (!\num~combout\(3) & \num~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num~combout\(0),
	datab => \num~combout\(2),
	datac => \num~combout\(3),
	datad => \num~combout\(1),
	combout => \deco1|WideOr1~0_combout\);

-- Location: LCCOMB_X46_Y9_N28
\deco1|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \deco1|WideOr0~0_combout\ = (\num~combout\(2) & (((\num~combout\(3)) # (!\num~combout\(1))) # (!\num~combout\(0)))) # (!\num~combout\(2) & ((\num~combout\(3) $ (\num~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num~combout\(0),
	datab => \num~combout\(2),
	datac => \num~combout\(3),
	datad => \num~combout\(1),
	combout => \deco1|WideOr0~0_combout\);

-- Location: LCCOMB_X46_Y9_N10
\deco1|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \deco1|WideOr6~0_combout\ = ((!\num~combout\(2) & !\num~combout\(1))) # (!\num~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \num~combout\(2),
	datac => \num~combout\(3),
	datad => \num~combout\(1),
	combout => \deco1|WideOr6~0_combout\);

-- Location: LCCOMB_X49_Y10_N8
\cpu1|micro1|sum_pc|y[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|sum_pc|y[0]~0_combout\ = (\cpu1|micro1|pc|q\(0) & (\cpu1|micro1|mux_srel|y[0]~0_combout\ $ (VCC))) # (!\cpu1|micro1|pc|q\(0) & (\cpu1|micro1|mux_srel|y[0]~0_combout\ & VCC))
-- \cpu1|micro1|sum_pc|y[0]~1\ = CARRY((\cpu1|micro1|pc|q\(0) & \cpu1|micro1|mux_srel|y[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|pc|q\(0),
	datab => \cpu1|micro1|mux_srel|y[0]~0_combout\,
	datad => VCC,
	combout => \cpu1|micro1|sum_pc|y[0]~0_combout\,
	cout => \cpu1|micro1|sum_pc|y[0]~1\);

-- Location: LCCOMB_X48_Y10_N4
\cpu1|micro1|pc|q[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|pc|q[0]~0_combout\ = (\cpu1|uc1|Selector0~2_combout\ & ((\cpu1|micro1|sum_pc|y[0]~0_combout\))) # (!\cpu1|uc1|Selector0~2_combout\ & (\cpu1|micro1|memoria|mem~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|uc1|Selector0~2_combout\,
	datab => \cpu1|micro1|memoria|mem~2_combout\,
	datad => \cpu1|micro1|sum_pc|y[0]~0_combout\,
	combout => \cpu1|micro1|pc|q[0]~0_combout\);

-- Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reset,
	combout => \reset~combout\);

-- Location: CLKCTRL_G6
\reset~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~clkctrl_outclk\);

-- Location: LCCOMB_X46_Y8_N26
\cpu1|micro1|memoria|mem~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|memoria|mem~25_combout\ = (!\cpu1|micro1|pc|q\(3) & ((\cpu1|micro1|pc|q\(1) & ((\cpu1|micro1|pc|q\(0)))) # (!\cpu1|micro1|pc|q\(1) & (\cpu1|micro1|pc|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|pc|q\(2),
	datab => \cpu1|micro1|pc|q\(3),
	datac => \cpu1|micro1|pc|q\(0),
	datad => \cpu1|micro1|pc|q\(1),
	combout => \cpu1|micro1|memoria|mem~25_combout\);

-- Location: LCCOMB_X46_Y7_N22
\cpu1|micro1|memoria|mem~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|memoria|mem~26_combout\ = (!\cpu1|micro1|pc|q\(8) & (!\cpu1|micro1|pc|q\(7) & (\cpu1|micro1|memoria|mem~1_combout\ & \cpu1|micro1|memoria|mem~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|pc|q\(8),
	datab => \cpu1|micro1|pc|q\(7),
	datac => \cpu1|micro1|memoria|mem~1_combout\,
	datad => \cpu1|micro1|memoria|mem~25_combout\,
	combout => \cpu1|micro1|memoria|mem~26_combout\);

-- Location: LCCOMB_X48_Y10_N8
\cpu1|micro1|memoria|mem~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|memoria|mem~13_combout\ = (\cpu1|micro1|pc|q\(2) & (\cpu1|micro1|pc|q\(0) & !\cpu1|micro1|pc|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu1|micro1|pc|q\(2),
	datac => \cpu1|micro1|pc|q\(0),
	datad => \cpu1|micro1|pc|q\(3),
	combout => \cpu1|micro1|memoria|mem~13_combout\);

-- Location: LCCOMB_X48_Y10_N26
\cpu1|micro1|memoria|mem~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|memoria|mem~14_combout\ = (!\cpu1|micro1|pc|q\(7) & (!\cpu1|micro1|pc|q\(8) & (\cpu1|micro1|memoria|mem~13_combout\ & \cpu1|micro1|memoria|mem~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|pc|q\(7),
	datab => \cpu1|micro1|pc|q\(8),
	datac => \cpu1|micro1|memoria|mem~13_combout\,
	datad => \cpu1|micro1|memoria|mem~1_combout\,
	combout => \cpu1|micro1|memoria|mem~14_combout\);

-- Location: LCCOMB_X46_Y8_N12
\cpu1|micro1|memoria|mem~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|memoria|mem~11_combout\ = (\cpu1|micro1|pc|q\(0) & ((\cpu1|micro1|pc|q\(2)) # ((\cpu1|micro1|pc|q\(3) & \cpu1|micro1|pc|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|pc|q\(0),
	datab => \cpu1|micro1|pc|q\(3),
	datac => \cpu1|micro1|pc|q\(2),
	datad => \cpu1|micro1|pc|q\(1),
	combout => \cpu1|micro1|memoria|mem~11_combout\);

-- Location: LCCOMB_X46_Y8_N6
\cpu1|micro1|memoria|mem~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|memoria|mem~12_combout\ = ((\cpu1|micro1|pc|q\(8)) # ((\cpu1|micro1|pc|q\(7)) # (\cpu1|micro1|memoria|mem~11_combout\))) # (!\cpu1|micro1|memoria|mem~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|memoria|mem~1_combout\,
	datab => \cpu1|micro1|pc|q\(8),
	datac => \cpu1|micro1|pc|q\(7),
	datad => \cpu1|micro1|memoria|mem~11_combout\,
	combout => \cpu1|micro1|memoria|mem~12_combout\);

-- Location: LCCOMB_X46_Y10_N10
\cpu1|micro1|memoria|mem~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|memoria|mem~7_combout\ = (\cpu1|micro1|pc|q\(2) & ((\cpu1|micro1|pc|q\(1) & ((!\cpu1|micro1|pc|q\(3)))) # (!\cpu1|micro1|pc|q\(1) & (\cpu1|micro1|pc|q\(0))))) # (!\cpu1|micro1|pc|q\(2) & (\cpu1|micro1|pc|q\(3) & (\cpu1|micro1|pc|q\(0) $ 
-- (!\cpu1|micro1|pc|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|pc|q\(0),
	datab => \cpu1|micro1|pc|q\(1),
	datac => \cpu1|micro1|pc|q\(3),
	datad => \cpu1|micro1|pc|q\(2),
	combout => \cpu1|micro1|memoria|mem~7_combout\);

-- Location: LCCOMB_X46_Y10_N20
\cpu1|micro1|memoria|mem~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|memoria|mem~8_combout\ = (!\cpu1|micro1|pc|q\(7) & (!\cpu1|micro1|pc|q\(8) & (\cpu1|micro1|memoria|mem~1_combout\ & \cpu1|micro1|memoria|mem~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|pc|q\(7),
	datab => \cpu1|micro1|pc|q\(8),
	datac => \cpu1|micro1|memoria|mem~1_combout\,
	datad => \cpu1|micro1|memoria|mem~7_combout\,
	combout => \cpu1|micro1|memoria|mem~8_combout\);

-- Location: LCCOMB_X45_Y10_N12
\cpu1|uc1|s_rel~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|uc1|s_rel~0_combout\ = (!\cpu1|micro1|memoria|mem~10_combout\ & (!\cpu1|micro1|memoria|mem~6_combout\ & (\cpu1|micro1|memoria|mem~4_combout\ & !\cpu1|micro1|memoria|mem~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|memoria|mem~10_combout\,
	datab => \cpu1|micro1|memoria|mem~6_combout\,
	datac => \cpu1|micro1|memoria|mem~4_combout\,
	datad => \cpu1|micro1|memoria|mem~8_combout\,
	combout => \cpu1|uc1|s_rel~0_combout\);

-- Location: LCCOMB_X45_Y10_N18
\cpu1|uc1|s_rel~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|uc1|s_rel~1_combout\ = (!\reset~combout\ & (!\cpu1|micro1|memoria|mem~14_combout\ & (!\cpu1|micro1|memoria|mem~12_combout\ & \cpu1|uc1|s_rel~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datab => \cpu1|micro1|memoria|mem~14_combout\,
	datac => \cpu1|micro1|memoria|mem~12_combout\,
	datad => \cpu1|uc1|s_rel~0_combout\,
	combout => \cpu1|uc1|s_rel~1_combout\);

-- Location: LCCOMB_X46_Y9_N0
\cpu1|micro1|mux_srel|y[7]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|mux_srel|y[7]~6_combout\ = (\cpu1|micro1|memoria|mem~29_combout\ & (\cpu1|micro1|memoria|mem~25_combout\ & \cpu1|uc1|s_rel~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|memoria|mem~29_combout\,
	datac => \cpu1|micro1|memoria|mem~25_combout\,
	datad => \cpu1|uc1|s_rel~1_combout\,
	combout => \cpu1|micro1|mux_srel|y[7]~6_combout\);

-- Location: LCCOMB_X46_Y7_N12
\cpu1|micro1|memoria|mem~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|memoria|mem~29_combout\ = (!\cpu1|micro1|pc|q\(8) & (\cpu1|micro1|memoria|mem~1_combout\ & !\cpu1|micro1|pc|q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu1|micro1|pc|q\(8),
	datac => \cpu1|micro1|memoria|mem~1_combout\,
	datad => \cpu1|micro1|pc|q\(7),
	combout => \cpu1|micro1|memoria|mem~29_combout\);

-- Location: LCCOMB_X46_Y7_N30
\cpu1|micro1|memoria|mem~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|memoria|mem~23_combout\ = (\cpu1|micro1|pc|q\(0) & (\cpu1|micro1|pc|q\(1) $ (\cpu1|micro1|pc|q\(2) $ (!\cpu1|micro1|pc|q\(3))))) # (!\cpu1|micro1|pc|q\(0) & (!\cpu1|micro1|pc|q\(3) & (\cpu1|micro1|pc|q\(1) $ (\cpu1|micro1|pc|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|pc|q\(1),
	datab => \cpu1|micro1|pc|q\(2),
	datac => \cpu1|micro1|pc|q\(0),
	datad => \cpu1|micro1|pc|q\(3),
	combout => \cpu1|micro1|memoria|mem~23_combout\);

-- Location: LCCOMB_X45_Y10_N24
\cpu1|micro1|mux_srel|y[6]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|mux_srel|y[6]~5_combout\ = (\cpu1|uc1|s_rel~1_combout\ & (\cpu1|micro1|memoria|mem~29_combout\ & \cpu1|micro1|memoria|mem~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu1|uc1|s_rel~1_combout\,
	datac => \cpu1|micro1|memoria|mem~29_combout\,
	datad => \cpu1|micro1|memoria|mem~23_combout\,
	combout => \cpu1|micro1|mux_srel|y[6]~5_combout\);

-- Location: LCCOMB_X46_Y8_N8
\cpu1|uc1|Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|uc1|Selector0~1_combout\ = (!\cpu1|micro1|memoria|mem~14_combout\ & (!\reset~combout\ & (!\cpu1|micro1|memoria|mem~12_combout\ & !\cpu1|micro1|memoria|mem~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|memoria|mem~14_combout\,
	datab => \reset~combout\,
	datac => \cpu1|micro1|memoria|mem~12_combout\,
	datad => \cpu1|micro1|memoria|mem~6_combout\,
	combout => \cpu1|uc1|Selector0~1_combout\);

-- Location: LCCOMB_X49_Y8_N16
\cpu1|uc1|s_ret~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|uc1|s_ret~0_combout\ = (!\cpu1|micro1|memoria|mem~10_combout\ & (\cpu1|micro1|memoria|mem~4_combout\ & (\cpu1|micro1|memoria|mem~8_combout\ & \cpu1|uc1|Selector0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|memoria|mem~10_combout\,
	datab => \cpu1|micro1|memoria|mem~4_combout\,
	datac => \cpu1|micro1|memoria|mem~8_combout\,
	datad => \cpu1|uc1|Selector0~1_combout\,
	combout => \cpu1|uc1|s_ret~0_combout\);

-- Location: LCCOMB_X47_Y10_N2
\cpu1|micro1|memoria|mem~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|memoria|mem~21_combout\ = (\cpu1|micro1|pc|q\(0) & ((\cpu1|micro1|pc|q\(2) & ((!\cpu1|micro1|pc|q\(3)))) # (!\cpu1|micro1|pc|q\(2) & (!\cpu1|micro1|pc|q\(1) & \cpu1|micro1|pc|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|pc|q\(2),
	datab => \cpu1|micro1|pc|q\(1),
	datac => \cpu1|micro1|pc|q\(3),
	datad => \cpu1|micro1|pc|q\(0),
	combout => \cpu1|micro1|memoria|mem~21_combout\);

-- Location: LCCOMB_X47_Y6_N22
\cpu1|micro1|memoria|mem~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|memoria|mem~22_combout\ = (!\cpu1|micro1|pc|q\(8) & (\cpu1|micro1|memoria|mem~1_combout\ & (!\cpu1|micro1|pc|q\(7) & \cpu1|micro1|memoria|mem~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|pc|q\(8),
	datab => \cpu1|micro1|memoria|mem~1_combout\,
	datac => \cpu1|micro1|pc|q\(7),
	datad => \cpu1|micro1|memoria|mem~21_combout\,
	combout => \cpu1|micro1|memoria|mem~22_combout\);

-- Location: LCCOMB_X45_Y10_N30
\cpu1|micro1|mux_srel|y[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|mux_srel|y[4]~4_combout\ = (\cpu1|micro1|memoria|mem~22_combout\ & \cpu1|uc1|s_rel~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cpu1|micro1|memoria|mem~22_combout\,
	datad => \cpu1|uc1|s_rel~1_combout\,
	combout => \cpu1|micro1|mux_srel|y[4]~4_combout\);

-- Location: LCCOMB_X45_Y10_N26
\cpu1|micro1|mux_srel|y[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|mux_srel|y[2]~2_combout\ = (\cpu1|micro1|memoria|mem~18_combout\ & \cpu1|uc1|s_rel~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|memoria|mem~18_combout\,
	datad => \cpu1|uc1|s_rel~1_combout\,
	combout => \cpu1|micro1|mux_srel|y[2]~2_combout\);

-- Location: LCCOMB_X49_Y10_N10
\cpu1|micro1|sum_pc|y[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|sum_pc|y[1]~2_combout\ = (\cpu1|micro1|mux_srel|y[1]~1_combout\ & ((\cpu1|micro1|pc|q\(1) & (\cpu1|micro1|sum_pc|y[0]~1\ & VCC)) # (!\cpu1|micro1|pc|q\(1) & (!\cpu1|micro1|sum_pc|y[0]~1\)))) # (!\cpu1|micro1|mux_srel|y[1]~1_combout\ & 
-- ((\cpu1|micro1|pc|q\(1) & (!\cpu1|micro1|sum_pc|y[0]~1\)) # (!\cpu1|micro1|pc|q\(1) & ((\cpu1|micro1|sum_pc|y[0]~1\) # (GND)))))
-- \cpu1|micro1|sum_pc|y[1]~3\ = CARRY((\cpu1|micro1|mux_srel|y[1]~1_combout\ & (!\cpu1|micro1|pc|q\(1) & !\cpu1|micro1|sum_pc|y[0]~1\)) # (!\cpu1|micro1|mux_srel|y[1]~1_combout\ & ((!\cpu1|micro1|sum_pc|y[0]~1\) # (!\cpu1|micro1|pc|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|mux_srel|y[1]~1_combout\,
	datab => \cpu1|micro1|pc|q\(1),
	datad => VCC,
	cin => \cpu1|micro1|sum_pc|y[0]~1\,
	combout => \cpu1|micro1|sum_pc|y[1]~2_combout\,
	cout => \cpu1|micro1|sum_pc|y[1]~3\);

-- Location: LCCOMB_X49_Y10_N12
\cpu1|micro1|sum_pc|y[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|sum_pc|y[2]~4_combout\ = ((\cpu1|micro1|pc|q\(2) $ (\cpu1|micro1|mux_srel|y[2]~2_combout\ $ (!\cpu1|micro1|sum_pc|y[1]~3\)))) # (GND)
-- \cpu1|micro1|sum_pc|y[2]~5\ = CARRY((\cpu1|micro1|pc|q\(2) & ((\cpu1|micro1|mux_srel|y[2]~2_combout\) # (!\cpu1|micro1|sum_pc|y[1]~3\))) # (!\cpu1|micro1|pc|q\(2) & (\cpu1|micro1|mux_srel|y[2]~2_combout\ & !\cpu1|micro1|sum_pc|y[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|pc|q\(2),
	datab => \cpu1|micro1|mux_srel|y[2]~2_combout\,
	datad => VCC,
	cin => \cpu1|micro1|sum_pc|y[1]~3\,
	combout => \cpu1|micro1|sum_pc|y[2]~4_combout\,
	cout => \cpu1|micro1|sum_pc|y[2]~5\);

-- Location: LCCOMB_X49_Y10_N14
\cpu1|micro1|sum_pc|y[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|sum_pc|y[3]~6_combout\ = (\cpu1|micro1|pc|q\(3) & ((\cpu1|micro1|mux_srel|y[3]~3_combout\ & (\cpu1|micro1|sum_pc|y[2]~5\ & VCC)) # (!\cpu1|micro1|mux_srel|y[3]~3_combout\ & (!\cpu1|micro1|sum_pc|y[2]~5\)))) # (!\cpu1|micro1|pc|q\(3) & 
-- ((\cpu1|micro1|mux_srel|y[3]~3_combout\ & (!\cpu1|micro1|sum_pc|y[2]~5\)) # (!\cpu1|micro1|mux_srel|y[3]~3_combout\ & ((\cpu1|micro1|sum_pc|y[2]~5\) # (GND)))))
-- \cpu1|micro1|sum_pc|y[3]~7\ = CARRY((\cpu1|micro1|pc|q\(3) & (!\cpu1|micro1|mux_srel|y[3]~3_combout\ & !\cpu1|micro1|sum_pc|y[2]~5\)) # (!\cpu1|micro1|pc|q\(3) & ((!\cpu1|micro1|sum_pc|y[2]~5\) # (!\cpu1|micro1|mux_srel|y[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|pc|q\(3),
	datab => \cpu1|micro1|mux_srel|y[3]~3_combout\,
	datad => VCC,
	cin => \cpu1|micro1|sum_pc|y[2]~5\,
	combout => \cpu1|micro1|sum_pc|y[3]~6_combout\,
	cout => \cpu1|micro1|sum_pc|y[3]~7\);

-- Location: LCCOMB_X49_Y10_N16
\cpu1|micro1|sum_pc|y[4]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|sum_pc|y[4]~8_combout\ = ((\cpu1|micro1|pc|q\(4) $ (\cpu1|micro1|mux_srel|y[4]~4_combout\ $ (!\cpu1|micro1|sum_pc|y[3]~7\)))) # (GND)
-- \cpu1|micro1|sum_pc|y[4]~9\ = CARRY((\cpu1|micro1|pc|q\(4) & ((\cpu1|micro1|mux_srel|y[4]~4_combout\) # (!\cpu1|micro1|sum_pc|y[3]~7\))) # (!\cpu1|micro1|pc|q\(4) & (\cpu1|micro1|mux_srel|y[4]~4_combout\ & !\cpu1|micro1|sum_pc|y[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|pc|q\(4),
	datab => \cpu1|micro1|mux_srel|y[4]~4_combout\,
	datad => VCC,
	cin => \cpu1|micro1|sum_pc|y[3]~7\,
	combout => \cpu1|micro1|sum_pc|y[4]~8_combout\,
	cout => \cpu1|micro1|sum_pc|y[4]~9\);

-- Location: LCCOMB_X49_Y10_N18
\cpu1|micro1|sum_pc|y[5]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|sum_pc|y[5]~10_combout\ = (\cpu1|micro1|pc|q\(5) & (!\cpu1|micro1|sum_pc|y[4]~9\)) # (!\cpu1|micro1|pc|q\(5) & ((\cpu1|micro1|sum_pc|y[4]~9\) # (GND)))
-- \cpu1|micro1|sum_pc|y[5]~11\ = CARRY((!\cpu1|micro1|sum_pc|y[4]~9\) # (!\cpu1|micro1|pc|q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cpu1|micro1|pc|q\(5),
	datad => VCC,
	cin => \cpu1|micro1|sum_pc|y[4]~9\,
	combout => \cpu1|micro1|sum_pc|y[5]~10_combout\,
	cout => \cpu1|micro1|sum_pc|y[5]~11\);

-- Location: LCCOMB_X49_Y10_N4
\cpu1|micro1|retornopc|y[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|retornopc|y[5]~0_combout\ = (\cpu1|uc1|s_ret~0_combout\ & (\cpu1|micro1|pcbackup|q\(5))) # (!\cpu1|uc1|s_ret~0_combout\ & (((\cpu1|uc1|Selector0~2_combout\ & \cpu1|micro1|sum_pc|y[5]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|pcbackup|q\(5),
	datab => \cpu1|uc1|Selector0~2_combout\,
	datac => \cpu1|uc1|s_ret~0_combout\,
	datad => \cpu1|micro1|sum_pc|y[5]~10_combout\,
	combout => \cpu1|micro1|retornopc|y[5]~0_combout\);

-- Location: LCFF_X49_Y10_N5
\cpu1|micro1|pc|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \cpu1|micro1|retornopc|y[5]~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|pc|q\(5));

-- Location: LCCOMB_X49_Y10_N20
\cpu1|micro1|sum_pc|y[6]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|sum_pc|y[6]~12_combout\ = ((\cpu1|micro1|pc|q\(6) $ (\cpu1|micro1|mux_srel|y[6]~5_combout\ $ (!\cpu1|micro1|sum_pc|y[5]~11\)))) # (GND)
-- \cpu1|micro1|sum_pc|y[6]~13\ = CARRY((\cpu1|micro1|pc|q\(6) & ((\cpu1|micro1|mux_srel|y[6]~5_combout\) # (!\cpu1|micro1|sum_pc|y[5]~11\))) # (!\cpu1|micro1|pc|q\(6) & (\cpu1|micro1|mux_srel|y[6]~5_combout\ & !\cpu1|micro1|sum_pc|y[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|pc|q\(6),
	datab => \cpu1|micro1|mux_srel|y[6]~5_combout\,
	datad => VCC,
	cin => \cpu1|micro1|sum_pc|y[5]~11\,
	combout => \cpu1|micro1|sum_pc|y[6]~12_combout\,
	cout => \cpu1|micro1|sum_pc|y[6]~13\);

-- Location: LCCOMB_X49_Y10_N22
\cpu1|micro1|sum_pc|y[7]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|sum_pc|y[7]~14_combout\ = (\cpu1|micro1|pc|q\(7) & ((\cpu1|micro1|mux_srel|y[7]~6_combout\ & (\cpu1|micro1|sum_pc|y[6]~13\ & VCC)) # (!\cpu1|micro1|mux_srel|y[7]~6_combout\ & (!\cpu1|micro1|sum_pc|y[6]~13\)))) # (!\cpu1|micro1|pc|q\(7) & 
-- ((\cpu1|micro1|mux_srel|y[7]~6_combout\ & (!\cpu1|micro1|sum_pc|y[6]~13\)) # (!\cpu1|micro1|mux_srel|y[7]~6_combout\ & ((\cpu1|micro1|sum_pc|y[6]~13\) # (GND)))))
-- \cpu1|micro1|sum_pc|y[7]~15\ = CARRY((\cpu1|micro1|pc|q\(7) & (!\cpu1|micro1|mux_srel|y[7]~6_combout\ & !\cpu1|micro1|sum_pc|y[6]~13\)) # (!\cpu1|micro1|pc|q\(7) & ((!\cpu1|micro1|sum_pc|y[6]~13\) # (!\cpu1|micro1|mux_srel|y[7]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|pc|q\(7),
	datab => \cpu1|micro1|mux_srel|y[7]~6_combout\,
	datad => VCC,
	cin => \cpu1|micro1|sum_pc|y[6]~13\,
	combout => \cpu1|micro1|sum_pc|y[7]~14_combout\,
	cout => \cpu1|micro1|sum_pc|y[7]~15\);

-- Location: LCCOMB_X48_Y10_N16
\cpu1|micro1|pc|q[7]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|pc|q[7]~6_combout\ = (\cpu1|uc1|Selector0~2_combout\ & ((\cpu1|micro1|sum_pc|y[7]~14_combout\))) # (!\cpu1|uc1|Selector0~2_combout\ & (\cpu1|micro1|memoria|mem~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|uc1|Selector0~2_combout\,
	datab => \cpu1|micro1|memoria|mem~26_combout\,
	datad => \cpu1|micro1|sum_pc|y[7]~14_combout\,
	combout => \cpu1|micro1|pc|q[7]~6_combout\);

-- Location: LCFF_X49_Y10_N23
\cpu1|micro1|pcbackup|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \cpu1|micro1|sum_pc|y[7]~14_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu1|uc1|s_bk~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|pcbackup|q\(7));

-- Location: LCFF_X48_Y10_N17
\cpu1|micro1|pc|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \cpu1|micro1|pc|q[7]~6_combout\,
	sdata => \cpu1|micro1|pcbackup|q\(7),
	aclr => \reset~clkctrl_outclk\,
	sload => \cpu1|uc1|s_ret~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|pc|q\(7));

-- Location: LCCOMB_X48_Y10_N12
\cpu1|micro1|memoria|mem~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|memoria|mem~19_combout\ = (!\cpu1|micro1|pc|q\(0) & ((\cpu1|micro1|pc|q\(1) & (\cpu1|micro1|pc|q\(2))) # (!\cpu1|micro1|pc|q\(1) & ((\cpu1|micro1|pc|q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|pc|q\(2),
	datab => \cpu1|micro1|pc|q\(1),
	datac => \cpu1|micro1|pc|q\(0),
	datad => \cpu1|micro1|pc|q\(3),
	combout => \cpu1|micro1|memoria|mem~19_combout\);

-- Location: LCCOMB_X48_Y10_N6
\cpu1|micro1|memoria|mem~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|memoria|mem~20_combout\ = (!\cpu1|micro1|pc|q\(8) & (\cpu1|micro1|memoria|mem~1_combout\ & (!\cpu1|micro1|pc|q\(7) & \cpu1|micro1|memoria|mem~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|pc|q\(8),
	datab => \cpu1|micro1|memoria|mem~1_combout\,
	datac => \cpu1|micro1|pc|q\(7),
	datad => \cpu1|micro1|memoria|mem~19_combout\,
	combout => \cpu1|micro1|memoria|mem~20_combout\);

-- Location: LCCOMB_X45_Y10_N4
\cpu1|micro1|mux_srel|y[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|mux_srel|y[3]~3_combout\ = (\cpu1|micro1|memoria|mem~20_combout\ & \cpu1|uc1|s_rel~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cpu1|micro1|memoria|mem~20_combout\,
	datad => \cpu1|uc1|s_rel~1_combout\,
	combout => \cpu1|micro1|mux_srel|y[3]~3_combout\);

-- Location: LCCOMB_X48_Y10_N10
\cpu1|micro1|pc|q[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|pc|q[3]~3_combout\ = (\cpu1|uc1|Selector0~2_combout\ & (\cpu1|micro1|sum_pc|y[3]~6_combout\)) # (!\cpu1|uc1|Selector0~2_combout\ & ((\cpu1|micro1|memoria|mem~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|uc1|Selector0~2_combout\,
	datab => \cpu1|micro1|sum_pc|y[3]~6_combout\,
	datad => \cpu1|micro1|memoria|mem~20_combout\,
	combout => \cpu1|micro1|pc|q[3]~3_combout\);

-- Location: LCFF_X49_Y10_N15
\cpu1|micro1|pcbackup|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \cpu1|micro1|sum_pc|y[3]~6_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu1|uc1|s_bk~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|pcbackup|q\(3));

-- Location: LCFF_X48_Y10_N11
\cpu1|micro1|pc|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \cpu1|micro1|pc|q[3]~3_combout\,
	sdata => \cpu1|micro1|pcbackup|q\(3),
	aclr => \reset~clkctrl_outclk\,
	sload => \cpu1|uc1|s_ret~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|pc|q\(3));

-- Location: LCCOMB_X46_Y10_N26
\cpu1|micro1|memoria|mem~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|memoria|mem~3_combout\ = (\cpu1|micro1|pc|q\(0) & ((\cpu1|micro1|pc|q\(3) & (!\cpu1|micro1|pc|q\(1))) # (!\cpu1|micro1|pc|q\(3) & ((\cpu1|micro1|pc|q\(2)))))) # (!\cpu1|micro1|pc|q\(0) & (\cpu1|micro1|pc|q\(3) & ((\cpu1|micro1|pc|q\(1)) # 
-- (\cpu1|micro1|pc|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|pc|q\(0),
	datab => \cpu1|micro1|pc|q\(3),
	datac => \cpu1|micro1|pc|q\(1),
	datad => \cpu1|micro1|pc|q\(2),
	combout => \cpu1|micro1|memoria|mem~3_combout\);

-- Location: LCCOMB_X46_Y10_N8
\cpu1|micro1|memoria|mem~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|memoria|mem~4_combout\ = (!\cpu1|micro1|pc|q\(7) & (!\cpu1|micro1|pc|q\(8) & (\cpu1|micro1|memoria|mem~1_combout\ & \cpu1|micro1|memoria|mem~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|pc|q\(7),
	datab => \cpu1|micro1|pc|q\(8),
	datac => \cpu1|micro1|memoria|mem~1_combout\,
	datad => \cpu1|micro1|memoria|mem~3_combout\,
	combout => \cpu1|micro1|memoria|mem~4_combout\);

-- Location: LCCOMB_X49_Y8_N6
\cpu1|uc1|s_bk~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|uc1|s_bk~0_combout\ = (!\cpu1|micro1|memoria|mem~10_combout\ & (!\cpu1|micro1|memoria|mem~4_combout\ & (\cpu1|micro1|memoria|mem~8_combout\ & \cpu1|uc1|Selector0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|memoria|mem~10_combout\,
	datab => \cpu1|micro1|memoria|mem~4_combout\,
	datac => \cpu1|micro1|memoria|mem~8_combout\,
	datad => \cpu1|uc1|Selector0~1_combout\,
	combout => \cpu1|uc1|s_bk~0_combout\);

-- Location: LCFF_X49_Y10_N9
\cpu1|micro1|pcbackup|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \cpu1|micro1|sum_pc|y[0]~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu1|uc1|s_bk~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|pcbackup|q\(0));

-- Location: LCFF_X48_Y10_N5
\cpu1|micro1|pc|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \cpu1|micro1|pc|q[0]~0_combout\,
	sdata => \cpu1|micro1|pcbackup|q\(0),
	aclr => \reset~clkctrl_outclk\,
	sload => \cpu1|uc1|s_ret~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|pc|q\(0));

-- Location: LCCOMB_X48_Y10_N0
\cpu1|micro1|memoria|mem~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|memoria|mem~0_combout\ = (\cpu1|micro1|pc|q\(1) & ((\cpu1|micro1|pc|q\(2) $ (\cpu1|micro1|pc|q\(0))))) # (!\cpu1|micro1|pc|q\(1) & (\cpu1|micro1|pc|q\(3) & ((\cpu1|micro1|pc|q\(2)) # (!\cpu1|micro1|pc|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|pc|q\(3),
	datab => \cpu1|micro1|pc|q\(2),
	datac => \cpu1|micro1|pc|q\(0),
	datad => \cpu1|micro1|pc|q\(1),
	combout => \cpu1|micro1|memoria|mem~0_combout\);

-- Location: LCCOMB_X47_Y10_N8
\cpu1|micro1|memoria|mem~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|memoria|mem~2_combout\ = (!\cpu1|micro1|pc|q\(7) & (!\cpu1|micro1|pc|q\(8) & (\cpu1|micro1|memoria|mem~0_combout\ & \cpu1|micro1|memoria|mem~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|pc|q\(7),
	datab => \cpu1|micro1|pc|q\(8),
	datac => \cpu1|micro1|memoria|mem~0_combout\,
	datad => \cpu1|micro1|memoria|mem~1_combout\,
	combout => \cpu1|micro1|memoria|mem~2_combout\);

-- Location: LCCOMB_X49_Y10_N28
\cpu1|micro1|mux_srel|y[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|mux_srel|y[0]~0_combout\ = (\cpu1|micro1|memoria|mem~2_combout\) # (!\cpu1|uc1|s_rel~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu1|micro1|memoria|mem~2_combout\,
	datad => \cpu1|uc1|s_rel~1_combout\,
	combout => \cpu1|micro1|mux_srel|y[0]~0_combout\);

-- Location: LCCOMB_X47_Y10_N6
\cpu1|micro1|memoria|mem~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|memoria|mem~15_combout\ = (!\cpu1|micro1|pc|q\(0) & ((\cpu1|micro1|pc|q\(3) & (\cpu1|micro1|pc|q\(1) & !\cpu1|micro1|pc|q\(2))) # (!\cpu1|micro1|pc|q\(3) & ((\cpu1|micro1|pc|q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|pc|q\(0),
	datab => \cpu1|micro1|pc|q\(3),
	datac => \cpu1|micro1|pc|q\(1),
	datad => \cpu1|micro1|pc|q\(2),
	combout => \cpu1|micro1|memoria|mem~15_combout\);

-- Location: LCCOMB_X47_Y10_N0
\cpu1|micro1|memoria|mem~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|memoria|mem~16_combout\ = (!\cpu1|micro1|pc|q\(7) & (!\cpu1|micro1|pc|q\(8) & (\cpu1|micro1|memoria|mem~1_combout\ & \cpu1|micro1|memoria|mem~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|pc|q\(7),
	datab => \cpu1|micro1|pc|q\(8),
	datac => \cpu1|micro1|memoria|mem~1_combout\,
	datad => \cpu1|micro1|memoria|mem~15_combout\,
	combout => \cpu1|micro1|memoria|mem~16_combout\);

-- Location: LCCOMB_X48_Y10_N14
\cpu1|micro1|pc|q[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|pc|q[1]~1_combout\ = (\cpu1|uc1|Selector0~2_combout\ & (\cpu1|micro1|sum_pc|y[1]~2_combout\)) # (!\cpu1|uc1|Selector0~2_combout\ & ((\cpu1|micro1|memoria|mem~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|uc1|Selector0~2_combout\,
	datab => \cpu1|micro1|sum_pc|y[1]~2_combout\,
	datad => \cpu1|micro1|memoria|mem~16_combout\,
	combout => \cpu1|micro1|pc|q[1]~1_combout\);

-- Location: LCFF_X49_Y10_N11
\cpu1|micro1|pcbackup|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \cpu1|micro1|sum_pc|y[1]~2_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu1|uc1|s_bk~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|pcbackup|q\(1));

-- Location: LCFF_X48_Y10_N15
\cpu1|micro1|pc|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \cpu1|micro1|pc|q[1]~1_combout\,
	sdata => \cpu1|micro1|pcbackup|q\(1),
	aclr => \reset~clkctrl_outclk\,
	sload => \cpu1|uc1|s_ret~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|pc|q\(1));

-- Location: LCCOMB_X47_Y10_N30
\cpu1|micro1|memoria|mem~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|memoria|mem~5_combout\ = (\cpu1|micro1|pc|q\(0) & (!\cpu1|micro1|pc|q\(2) & (\cpu1|micro1|pc|q\(1) $ (\cpu1|micro1|pc|q\(3))))) # (!\cpu1|micro1|pc|q\(0) & (!\cpu1|micro1|pc|q\(3) & (\cpu1|micro1|pc|q\(1) $ (\cpu1|micro1|pc|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|pc|q\(0),
	datab => \cpu1|micro1|pc|q\(1),
	datac => \cpu1|micro1|pc|q\(3),
	datad => \cpu1|micro1|pc|q\(2),
	combout => \cpu1|micro1|memoria|mem~5_combout\);

-- Location: LCCOMB_X47_Y10_N24
\cpu1|micro1|memoria|mem~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|memoria|mem~6_combout\ = (!\cpu1|micro1|pc|q\(7) & (!\cpu1|micro1|pc|q\(8) & (\cpu1|micro1|memoria|mem~1_combout\ & \cpu1|micro1|memoria|mem~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|pc|q\(7),
	datab => \cpu1|micro1|pc|q\(8),
	datac => \cpu1|micro1|memoria|mem~1_combout\,
	datad => \cpu1|micro1|memoria|mem~5_combout\,
	combout => \cpu1|micro1|memoria|mem~6_combout\);

-- Location: LCCOMB_X47_Y10_N14
\cpu1|micro1|memoria|mem~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|memoria|mem~9_combout\ = (\cpu1|micro1|pc|q\(0) & ((\cpu1|micro1|pc|q\(1) & (\cpu1|micro1|pc|q\(3) $ (!\cpu1|micro1|pc|q\(2)))) # (!\cpu1|micro1|pc|q\(1) & ((!\cpu1|micro1|pc|q\(2)) # (!\cpu1|micro1|pc|q\(3)))))) # (!\cpu1|micro1|pc|q\(0) & 
-- ((\cpu1|micro1|pc|q\(1)) # ((\cpu1|micro1|pc|q\(3)) # (\cpu1|micro1|pc|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|pc|q\(0),
	datab => \cpu1|micro1|pc|q\(1),
	datac => \cpu1|micro1|pc|q\(3),
	datad => \cpu1|micro1|pc|q\(2),
	combout => \cpu1|micro1|memoria|mem~9_combout\);

-- Location: LCCOMB_X47_Y10_N4
\cpu1|micro1|memoria|mem~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|memoria|mem~10_combout\ = (\cpu1|micro1|pc|q\(7)) # ((\cpu1|micro1|pc|q\(8)) # ((\cpu1|micro1|memoria|mem~9_combout\) # (!\cpu1|micro1|memoria|mem~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|pc|q\(7),
	datab => \cpu1|micro1|pc|q\(8),
	datac => \cpu1|micro1|memoria|mem~9_combout\,
	datad => \cpu1|micro1|memoria|mem~1_combout\,
	combout => \cpu1|micro1|memoria|mem~10_combout\);

-- Location: LCCOMB_X46_Y8_N22
\cpu1|uc1|s_sal~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|uc1|s_sal~1_combout\ = (!\cpu1|micro1|memoria|mem~14_combout\ & (!\reset~combout\ & \cpu1|micro1|memoria|mem~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|memoria|mem~14_combout\,
	datab => \reset~combout\,
	datad => \cpu1|micro1|memoria|mem~10_combout\,
	combout => \cpu1|uc1|s_sal~1_combout\);

-- Location: LCCOMB_X47_Y8_N0
\cpu1|micro1|alu1|Add0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|alu1|Add0~3_combout\ = (\cpu1|micro1|memoria|mem~6_combout\ & !\cpu1|micro1|memoria|mem~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cpu1|micro1|memoria|mem~6_combout\,
	datad => \cpu1|micro1|memoria|mem~4_combout\,
	combout => \cpu1|micro1|alu1|Add0~3_combout\);

-- Location: LCCOMB_X46_Y8_N2
\cpu1|uc1|s_entr~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|uc1|s_entr~0_combout\ = (!\cpu1|micro1|memoria|mem~12_combout\ & (\cpu1|uc1|s_sal~1_combout\ & (\cpu1|micro1|alu1|Add0~3_combout\ & !\cpu1|micro1|memoria|mem~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|memoria|mem~12_combout\,
	datab => \cpu1|uc1|s_sal~1_combout\,
	datac => \cpu1|micro1|alu1|Add0~3_combout\,
	datad => \cpu1|micro1|memoria|mem~8_combout\,
	combout => \cpu1|uc1|s_entr~0_combout\);

-- Location: LCCOMB_X48_Y8_N22
\cpu1|micro1|muxentradaregistro|y[0]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|muxentradaregistro|y[0]~20_combout\ = (!\cpu1|uc1|s_entr~0_combout\ & ((\cpu1|micro1|memoria|mem~6_combout\) # (!\cpu1|micro1|muxentradaregistro|y[7]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|muxentradaregistro|y[7]~2_combout\,
	datab => \cpu1|uc1|s_entr~0_combout\,
	datad => \cpu1|micro1|memoria|mem~6_combout\,
	combout => \cpu1|micro1|muxentradaregistro|y[0]~20_combout\);

-- Location: LCCOMB_X46_Y8_N28
\cpu1|micro1|muxentradaregistro|y[7]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|muxentradaregistro|y[7]~2_combout\ = (!\cpu1|micro1|memoria|mem~8_combout\ & (!\reset~combout\ & (!\cpu1|micro1|memoria|mem~4_combout\ & !\cpu1|micro1|memoria|mem~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|memoria|mem~8_combout\,
	datab => \reset~combout\,
	datac => \cpu1|micro1|memoria|mem~4_combout\,
	datad => \cpu1|micro1|memoria|mem~12_combout\,
	combout => \cpu1|micro1|muxentradaregistro|y[7]~2_combout\);

-- Location: LCCOMB_X46_Y8_N0
\cpu1|micro1|muxentradaregistro|y[2]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|muxentradaregistro|y[2]~10_combout\ = (!\cpu1|micro1|memoria|mem~6_combout\ & (\cpu1|micro1|muxentradaregistro|y[7]~2_combout\ & !\cpu1|uc1|s_entr~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu1|micro1|memoria|mem~6_combout\,
	datac => \cpu1|micro1|muxentradaregistro|y[7]~2_combout\,
	datad => \cpu1|uc1|s_entr~0_combout\,
	combout => \cpu1|micro1|muxentradaregistro|y[2]~10_combout\);

-- Location: LCCOMB_X48_Y8_N14
\cpu1|micro1|muxentradaregistro|y[5]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|muxentradaregistro|y[5]~16_combout\ = (\cpu1|micro1|memoria|mem~20_combout\ & ((\cpu1|micro1|muxentradaregistro|y[2]~10_combout\) # ((\cpu1|micro1|muxentradaregistro|y[0]~20_combout\ & \cpu1|micro1|alu1|Add0~42_combout\)))) # 
-- (!\cpu1|micro1|memoria|mem~20_combout\ & (\cpu1|micro1|muxentradaregistro|y[0]~20_combout\ & ((\cpu1|micro1|alu1|Add0~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|memoria|mem~20_combout\,
	datab => \cpu1|micro1|muxentradaregistro|y[0]~20_combout\,
	datac => \cpu1|micro1|muxentradaregistro|y[2]~10_combout\,
	datad => \cpu1|micro1|alu1|Add0~42_combout\,
	combout => \cpu1|micro1|muxentradaregistro|y[5]~16_combout\);

-- Location: LCCOMB_X46_Y7_N20
\cpu1|micro1|memoria|mem~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|memoria|mem~24_combout\ = (!\cpu1|micro1|pc|q\(8) & (!\cpu1|micro1|pc|q\(7) & (\cpu1|micro1|memoria|mem~1_combout\ & \cpu1|micro1|memoria|mem~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|pc|q\(8),
	datab => \cpu1|micro1|pc|q\(7),
	datac => \cpu1|micro1|memoria|mem~1_combout\,
	datad => \cpu1|micro1|memoria|mem~23_combout\,
	combout => \cpu1|micro1|memoria|mem~24_combout\);

-- Location: LCCOMB_X46_Y8_N20
\cpu1|uc1|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|uc1|WideOr0~0_combout\ = (\cpu1|micro1|memoria|mem~4_combout\) # ((\cpu1|micro1|memoria|mem~6_combout\ & ((\cpu1|micro1|memoria|mem~14_combout\) # (!\cpu1|micro1|memoria|mem~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|memoria|mem~14_combout\,
	datab => \cpu1|micro1|memoria|mem~6_combout\,
	datac => \cpu1|micro1|memoria|mem~4_combout\,
	datad => \cpu1|micro1|memoria|mem~10_combout\,
	combout => \cpu1|uc1|WideOr0~0_combout\);

-- Location: LCCOMB_X46_Y8_N14
\cpu1|uc1|WideOr0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|uc1|WideOr0~1_combout\ = (!\reset~combout\ & ((\cpu1|micro1|memoria|mem~12_combout\) # ((!\cpu1|uc1|WideOr0~0_combout\ & !\cpu1|micro1|memoria|mem~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|memoria|mem~12_combout\,
	datab => \reset~combout\,
	datac => \cpu1|uc1|WideOr0~0_combout\,
	datad => \cpu1|micro1|memoria|mem~8_combout\,
	combout => \cpu1|uc1|WideOr0~1_combout\);

-- Location: LCCOMB_X49_Y8_N10
\cpu1|micro1|registros|regb~214\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~214_combout\ = (\cpu1|micro1|memoria|mem~26_combout\ & (\cpu1|micro1|memoria|mem~24_combout\ & (\cpu1|micro1|memoria|mem~28_combout\ & \cpu1|uc1|WideOr0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|memoria|mem~26_combout\,
	datab => \cpu1|micro1|memoria|mem~24_combout\,
	datac => \cpu1|micro1|memoria|mem~28_combout\,
	datad => \cpu1|uc1|WideOr0~1_combout\,
	combout => \cpu1|micro1|registros|regb~214_combout\);

-- Location: LCFF_X48_Y8_N29
\cpu1|micro1|registros|regb~29\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \cpu1|micro1|muxentradaregistro|y[5]~16_combout\,
	sload => VCC,
	ena => \cpu1|micro1|registros|regb~214_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|registros|regb~29_regout\);

-- Location: LCCOMB_X48_Y6_N0
\cpu1|micro1|registros|regb~212\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~212_combout\ = (\cpu1|uc1|WideOr0~1_combout\ & (\cpu1|micro1|memoria|mem~28_combout\ & (\cpu1|micro1|memoria|mem~24_combout\ & !\cpu1|micro1|memoria|mem~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|uc1|WideOr0~1_combout\,
	datab => \cpu1|micro1|memoria|mem~28_combout\,
	datac => \cpu1|micro1|memoria|mem~24_combout\,
	datad => \cpu1|micro1|memoria|mem~26_combout\,
	combout => \cpu1|micro1|registros|regb~212_combout\);

-- Location: LCFF_X48_Y6_N11
\cpu1|micro1|registros|regb~13\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \cpu1|micro1|muxentradaregistro|y[5]~16_combout\,
	sload => VCC,
	ena => \cpu1|micro1|registros|regb~212_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|registros|regb~13_regout\);

-- Location: LCCOMB_X48_Y6_N10
\cpu1|micro1|registros|regb~191\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~191_combout\ = (\cpu1|micro1|memoria|mem~14_combout\ & (((\cpu1|micro1|memoria|mem~10_combout\)))) # (!\cpu1|micro1|memoria|mem~14_combout\ & ((\cpu1|micro1|memoria|mem~10_combout\ & (\cpu1|micro1|registros|regb~5_regout\)) # 
-- (!\cpu1|micro1|memoria|mem~10_combout\ & ((\cpu1|micro1|registros|regb~13_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|registros|regb~5_regout\,
	datab => \cpu1|micro1|memoria|mem~14_combout\,
	datac => \cpu1|micro1|registros|regb~13_regout\,
	datad => \cpu1|micro1|memoria|mem~10_combout\,
	combout => \cpu1|micro1|registros|regb~191_combout\);

-- Location: LCCOMB_X48_Y6_N16
\cpu1|micro1|registros|regb~192\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~192_combout\ = (\cpu1|micro1|memoria|mem~14_combout\ & ((\cpu1|micro1|registros|regb~191_combout\ & (\cpu1|micro1|registros|regb~21_regout\)) # (!\cpu1|micro1|registros|regb~191_combout\ & 
-- ((\cpu1|micro1|registros|regb~29_regout\))))) # (!\cpu1|micro1|memoria|mem~14_combout\ & (((\cpu1|micro1|registros|regb~191_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|registros|regb~21_regout\,
	datab => \cpu1|micro1|registros|regb~29_regout\,
	datac => \cpu1|micro1|memoria|mem~14_combout\,
	datad => \cpu1|micro1|registros|regb~191_combout\,
	combout => \cpu1|micro1|registros|regb~192_combout\);

-- Location: LCCOMB_X49_Y8_N18
\cpu1|micro1|registros|regb~53feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~53feeder_combout\ = \cpu1|micro1|muxentradaregistro|y[5]~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu1|micro1|muxentradaregistro|y[5]~16_combout\,
	combout => \cpu1|micro1|registros|regb~53feeder_combout\);

-- Location: LCCOMB_X49_Y8_N0
\cpu1|micro1|registros|regb~208\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~208_combout\ = (\cpu1|micro1|memoria|mem~26_combout\ & (!\cpu1|micro1|memoria|mem~24_combout\ & (!\cpu1|micro1|memoria|mem~28_combout\ & \cpu1|uc1|WideOr0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|memoria|mem~26_combout\,
	datab => \cpu1|micro1|memoria|mem~24_combout\,
	datac => \cpu1|micro1|memoria|mem~28_combout\,
	datad => \cpu1|uc1|WideOr0~1_combout\,
	combout => \cpu1|micro1|registros|regb~208_combout\);

-- Location: LCFF_X49_Y8_N19
\cpu1|micro1|registros|regb~53\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \cpu1|micro1|registros|regb~53feeder_combout\,
	ena => \cpu1|micro1|registros|regb~208_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|registros|regb~53_regout\);

-- Location: LCCOMB_X49_Y8_N26
\cpu1|micro1|registros|regb~209\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~209_combout\ = (!\cpu1|micro1|memoria|mem~28_combout\ & (!\cpu1|micro1|memoria|mem~24_combout\ & (!\cpu1|micro1|memoria|mem~26_combout\ & \cpu1|uc1|WideOr0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|memoria|mem~28_combout\,
	datab => \cpu1|micro1|memoria|mem~24_combout\,
	datac => \cpu1|micro1|memoria|mem~26_combout\,
	datad => \cpu1|uc1|WideOr0~1_combout\,
	combout => \cpu1|micro1|registros|regb~209_combout\);

-- Location: LCFF_X48_Y6_N25
\cpu1|micro1|registros|regb~37\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \cpu1|micro1|muxentradaregistro|y[5]~16_combout\,
	sload => VCC,
	ena => \cpu1|micro1|registros|regb~209_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|registros|regb~37_regout\);

-- Location: LCCOMB_X49_Y6_N8
\cpu1|micro1|registros|regb~45feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~45feeder_combout\ = \cpu1|micro1|muxentradaregistro|y[5]~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu1|micro1|muxentradaregistro|y[5]~16_combout\,
	combout => \cpu1|micro1|registros|regb~45feeder_combout\);

-- Location: LCCOMB_X48_Y6_N30
\cpu1|micro1|registros|regb~207\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~207_combout\ = (\cpu1|uc1|WideOr0~1_combout\ & (!\cpu1|micro1|memoria|mem~28_combout\ & (\cpu1|micro1|memoria|mem~24_combout\ & !\cpu1|micro1|memoria|mem~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|uc1|WideOr0~1_combout\,
	datab => \cpu1|micro1|memoria|mem~28_combout\,
	datac => \cpu1|micro1|memoria|mem~24_combout\,
	datad => \cpu1|micro1|memoria|mem~26_combout\,
	combout => \cpu1|micro1|registros|regb~207_combout\);

-- Location: LCFF_X49_Y6_N9
\cpu1|micro1|registros|regb~45\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \cpu1|micro1|registros|regb~45feeder_combout\,
	ena => \cpu1|micro1|registros|regb~207_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|registros|regb~45_regout\);

-- Location: LCCOMB_X49_Y6_N4
\cpu1|micro1|registros|regb~189\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~189_combout\ = (\cpu1|micro1|memoria|mem~10_combout\ & (((\cpu1|micro1|memoria|mem~14_combout\)))) # (!\cpu1|micro1|memoria|mem~10_combout\ & ((\cpu1|micro1|memoria|mem~14_combout\ & (\cpu1|micro1|registros|regb~61_regout\)) # 
-- (!\cpu1|micro1|memoria|mem~14_combout\ & ((\cpu1|micro1|registros|regb~45_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|registros|regb~61_regout\,
	datab => \cpu1|micro1|registros|regb~45_regout\,
	datac => \cpu1|micro1|memoria|mem~10_combout\,
	datad => \cpu1|micro1|memoria|mem~14_combout\,
	combout => \cpu1|micro1|registros|regb~189_combout\);

-- Location: LCCOMB_X48_Y6_N18
\cpu1|micro1|registros|regb~190\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~190_combout\ = (\cpu1|micro1|memoria|mem~10_combout\ & ((\cpu1|micro1|registros|regb~189_combout\ & (\cpu1|micro1|registros|regb~53_regout\)) # (!\cpu1|micro1|registros|regb~189_combout\ & 
-- ((\cpu1|micro1|registros|regb~37_regout\))))) # (!\cpu1|micro1|memoria|mem~10_combout\ & (((\cpu1|micro1|registros|regb~189_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|memoria|mem~10_combout\,
	datab => \cpu1|micro1|registros|regb~53_regout\,
	datac => \cpu1|micro1|registros|regb~37_regout\,
	datad => \cpu1|micro1|registros|regb~189_combout\,
	combout => \cpu1|micro1|registros|regb~190_combout\);

-- Location: LCCOMB_X48_Y6_N14
\cpu1|micro1|registros|regb~193\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~193_combout\ = (!\cpu1|micro1|memoria|mem~16_combout\ & ((\cpu1|micro1|memoria|mem~2_combout\ & ((\cpu1|micro1|registros|regb~190_combout\))) # (!\cpu1|micro1|memoria|mem~2_combout\ & 
-- (\cpu1|micro1|registros|regb~192_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|memoria|mem~2_combout\,
	datab => \cpu1|micro1|memoria|mem~16_combout\,
	datac => \cpu1|micro1|registros|regb~192_combout\,
	datad => \cpu1|micro1|registros|regb~190_combout\,
	combout => \cpu1|micro1|registros|regb~193_combout\);

-- Location: LCCOMB_X48_Y6_N20
\cpu1|micro1|alu1|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|alu1|Add0~36_combout\ = (!\cpu1|micro1|registros|Equal0~0_combout\ & (!\cpu1|micro1|memoria|mem~6_combout\ & \cpu1|micro1|registros|regb~193_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|registros|Equal0~0_combout\,
	datab => \cpu1|micro1|memoria|mem~6_combout\,
	datad => \cpu1|micro1|registros|regb~193_combout\,
	combout => \cpu1|micro1|alu1|Add0~36_combout\);

-- Location: LCCOMB_X47_Y10_N10
\cpu1|micro1|registros|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|Equal0~0_combout\ = (!\cpu1|micro1|memoria|mem~14_combout\ & (!\cpu1|micro1|memoria|mem~2_combout\ & (\cpu1|micro1|memoria|mem~10_combout\ & !\cpu1|micro1|memoria|mem~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|memoria|mem~14_combout\,
	datab => \cpu1|micro1|memoria|mem~2_combout\,
	datac => \cpu1|micro1|memoria|mem~10_combout\,
	datad => \cpu1|micro1|memoria|mem~16_combout\,
	combout => \cpu1|micro1|registros|Equal0~0_combout\);

-- Location: LCCOMB_X49_Y8_N20
\cpu1|micro1|registros|regb~210\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~210_combout\ = (\cpu1|uc1|WideOr0~1_combout\ & (\cpu1|micro1|memoria|mem~24_combout\ & (!\cpu1|micro1|memoria|mem~28_combout\ & \cpu1|micro1|memoria|mem~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|uc1|WideOr0~1_combout\,
	datab => \cpu1|micro1|memoria|mem~24_combout\,
	datac => \cpu1|micro1|memoria|mem~28_combout\,
	datad => \cpu1|micro1|memoria|mem~26_combout\,
	combout => \cpu1|micro1|registros|regb~210_combout\);

-- Location: LCFF_X49_Y7_N9
\cpu1|micro1|registros|regb~60\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \cpu1|micro1|muxentradaregistro|y[4]~15_combout\,
	sload => VCC,
	ena => \cpu1|micro1|registros|regb~210_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|registros|regb~60_regout\);

-- Location: LCCOMB_X49_Y9_N6
\cpu1|micro1|registros|regb~144\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~144_combout\ = (\cpu1|micro1|memoria|mem~20_combout\ & ((\cpu1|micro1|registros|regb~52_regout\) # ((\cpu1|micro1|memoria|mem~18_combout\)))) # (!\cpu1|micro1|memoria|mem~20_combout\ & (((\cpu1|micro1|registros|regb~36_regout\ 
-- & !\cpu1|micro1|memoria|mem~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|registros|regb~52_regout\,
	datab => \cpu1|micro1|registros|regb~36_regout\,
	datac => \cpu1|micro1|memoria|mem~20_combout\,
	datad => \cpu1|micro1|memoria|mem~18_combout\,
	combout => \cpu1|micro1|registros|regb~144_combout\);

-- Location: LCCOMB_X49_Y7_N8
\cpu1|micro1|registros|regb~145\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~145_combout\ = (\cpu1|micro1|memoria|mem~18_combout\ & ((\cpu1|micro1|registros|regb~144_combout\ & ((\cpu1|micro1|registros|regb~60_regout\))) # (!\cpu1|micro1|registros|regb~144_combout\ & 
-- (\cpu1|micro1|registros|regb~44_regout\)))) # (!\cpu1|micro1|memoria|mem~18_combout\ & (((\cpu1|micro1|registros|regb~144_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|registros|regb~44_regout\,
	datab => \cpu1|micro1|memoria|mem~18_combout\,
	datac => \cpu1|micro1|registros|regb~60_regout\,
	datad => \cpu1|micro1|registros|regb~144_combout\,
	combout => \cpu1|micro1|registros|regb~145_combout\);

-- Location: LCCOMB_X47_Y6_N20
\cpu1|micro1|registros|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|Equal1~0_combout\ = (!\cpu1|micro1|memoria|mem~20_combout\ & (!\cpu1|micro1|memoria|mem~18_combout\ & !\cpu1|micro1|memoria|mem~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|memoria|mem~20_combout\,
	datab => \cpu1|micro1|memoria|mem~18_combout\,
	datad => \cpu1|micro1|memoria|mem~22_combout\,
	combout => \cpu1|micro1|registros|Equal1~0_combout\);

-- Location: LCCOMB_X46_Y7_N14
\cpu1|micro1|registros|regb~211\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~211_combout\ = (\cpu1|micro1|memoria|mem~28_combout\ & (\cpu1|micro1|memoria|mem~26_combout\ & (!\cpu1|micro1|memoria|mem~24_combout\ & \cpu1|uc1|WideOr0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|memoria|mem~28_combout\,
	datab => \cpu1|micro1|memoria|mem~26_combout\,
	datac => \cpu1|micro1|memoria|mem~24_combout\,
	datad => \cpu1|uc1|WideOr0~1_combout\,
	combout => \cpu1|micro1|registros|regb~211_combout\);

-- Location: LCFF_X49_Y7_N7
\cpu1|micro1|registros|regb~20\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \cpu1|micro1|muxentradaregistro|y[4]~15_combout\,
	sload => VCC,
	ena => \cpu1|micro1|registros|regb~211_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|registros|regb~20_regout\);

-- Location: LCFF_X47_Y8_N9
\cpu1|micro1|registros|regb~12\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \cpu1|micro1|muxentradaregistro|y[4]~15_combout\,
	sload => VCC,
	ena => \cpu1|micro1|registros|regb~212_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|registros|regb~12_regout\);

-- Location: LCCOMB_X47_Y8_N20
\cpu1|micro1|registros|regb~213\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~213_combout\ = (!\cpu1|micro1|memoria|mem~26_combout\ & (!\cpu1|micro1|memoria|mem~24_combout\ & (\cpu1|micro1|memoria|mem~28_combout\ & \cpu1|uc1|WideOr0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|memoria|mem~26_combout\,
	datab => \cpu1|micro1|memoria|mem~24_combout\,
	datac => \cpu1|micro1|memoria|mem~28_combout\,
	datad => \cpu1|uc1|WideOr0~1_combout\,
	combout => \cpu1|micro1|registros|regb~213_combout\);

-- Location: LCFF_X47_Y8_N7
\cpu1|micro1|registros|regb~4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \cpu1|micro1|muxentradaregistro|y[4]~15_combout\,
	sload => VCC,
	ena => \cpu1|micro1|registros|regb~213_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|registros|regb~4_regout\);

-- Location: LCCOMB_X47_Y8_N6
\cpu1|micro1|registros|regb~146\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~146_combout\ = (\cpu1|micro1|memoria|mem~20_combout\ & (((\cpu1|micro1|memoria|mem~18_combout\)))) # (!\cpu1|micro1|memoria|mem~20_combout\ & ((\cpu1|micro1|memoria|mem~18_combout\ & (\cpu1|micro1|registros|regb~12_regout\)) # 
-- (!\cpu1|micro1|memoria|mem~18_combout\ & ((\cpu1|micro1|registros|regb~4_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|memoria|mem~20_combout\,
	datab => \cpu1|micro1|registros|regb~12_regout\,
	datac => \cpu1|micro1|registros|regb~4_regout\,
	datad => \cpu1|micro1|memoria|mem~18_combout\,
	combout => \cpu1|micro1|registros|regb~146_combout\);

-- Location: LCCOMB_X49_Y7_N6
\cpu1|micro1|registros|regb~147\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~147_combout\ = (\cpu1|micro1|memoria|mem~20_combout\ & ((\cpu1|micro1|registros|regb~146_combout\ & (\cpu1|micro1|registros|regb~28_regout\)) # (!\cpu1|micro1|registros|regb~146_combout\ & 
-- ((\cpu1|micro1|registros|regb~20_regout\))))) # (!\cpu1|micro1|memoria|mem~20_combout\ & (((\cpu1|micro1|registros|regb~146_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|registros|regb~28_regout\,
	datab => \cpu1|micro1|memoria|mem~20_combout\,
	datac => \cpu1|micro1|registros|regb~20_regout\,
	datad => \cpu1|micro1|registros|regb~146_combout\,
	combout => \cpu1|micro1|registros|regb~147_combout\);

-- Location: LCCOMB_X49_Y7_N24
\cpu1|micro1|muxademux|y[4]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|muxademux|y[4]~8_combout\ = (!\cpu1|micro1|registros|Equal1~0_combout\ & ((\cpu1|micro1|memoria|mem~22_combout\ & (\cpu1|micro1|registros|regb~145_combout\)) # (!\cpu1|micro1|memoria|mem~22_combout\ & 
-- ((\cpu1|micro1|registros|regb~147_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|memoria|mem~22_combout\,
	datab => \cpu1|micro1|registros|regb~145_combout\,
	datac => \cpu1|micro1|registros|Equal1~0_combout\,
	datad => \cpu1|micro1|registros|regb~147_combout\,
	combout => \cpu1|micro1|muxademux|y[4]~8_combout\);

-- Location: LCCOMB_X49_Y7_N30
\cpu1|micro1|registros|rd1[4]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|rd1[4]~5_combout\ = (\cpu1|micro1|registros|Equal0~0_combout\) # (!\cpu1|micro1|registros|regb~187_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu1|micro1|registros|Equal0~0_combout\,
	datac => \cpu1|micro1|registros|regb~187_combout\,
	combout => \cpu1|micro1|registros|rd1[4]~5_combout\);

-- Location: LCCOMB_X47_Y7_N16
\cpu1|micro1|alu1|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|alu1|Add0~34_combout\ = (\cpu1|micro1|memoria|mem~4_combout\ & ((\cpu1|micro1|memoria|mem~6_combout\ & ((\cpu1|micro1|muxademux|y[4]~8_combout\) # (!\cpu1|micro1|registros|rd1[4]~5_combout\))) # (!\cpu1|micro1|memoria|mem~6_combout\ & 
-- ((\cpu1|micro1|registros|rd1[4]~5_combout\))))) # (!\cpu1|micro1|memoria|mem~4_combout\ & (!\cpu1|micro1|registros|rd1[4]~5_combout\ & ((\cpu1|micro1|muxademux|y[4]~8_combout\) # (!\cpu1|micro1|memoria|mem~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|memoria|mem~4_combout\,
	datab => \cpu1|micro1|muxademux|y[4]~8_combout\,
	datac => \cpu1|micro1|memoria|mem~6_combout\,
	datad => \cpu1|micro1|registros|rd1[4]~5_combout\,
	combout => \cpu1|micro1|alu1|Add0~34_combout\);

-- Location: LCFF_X48_Y9_N13
\cpu1|micro1|registros|regb~27\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \cpu1|micro1|muxentradaregistro|y[3]~14_combout\,
	sload => VCC,
	ena => \cpu1|micro1|registros|regb~214_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|registros|regb~27_regout\);

-- Location: LCFF_X48_Y6_N7
\cpu1|micro1|registros|regb~11\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \cpu1|micro1|muxentradaregistro|y[3]~14_combout\,
	sload => VCC,
	ena => \cpu1|micro1|registros|regb~212_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|registros|regb~11_regout\);

-- Location: LCFF_X47_Y9_N25
\cpu1|micro1|registros|regb~3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \cpu1|micro1|muxentradaregistro|y[3]~14_combout\,
	sload => VCC,
	ena => \cpu1|micro1|registros|regb~213_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|registros|regb~3_regout\);

-- Location: LCCOMB_X47_Y9_N24
\cpu1|micro1|registros|regb~142\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~142_combout\ = (\cpu1|micro1|memoria|mem~18_combout\ & ((\cpu1|micro1|registros|regb~11_regout\) # ((\cpu1|micro1|memoria|mem~20_combout\)))) # (!\cpu1|micro1|memoria|mem~18_combout\ & (((\cpu1|micro1|registros|regb~3_regout\ & 
-- !\cpu1|micro1|memoria|mem~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|memoria|mem~18_combout\,
	datab => \cpu1|micro1|registros|regb~11_regout\,
	datac => \cpu1|micro1|registros|regb~3_regout\,
	datad => \cpu1|micro1|memoria|mem~20_combout\,
	combout => \cpu1|micro1|registros|regb~142_combout\);

-- Location: LCCOMB_X48_Y9_N12
\cpu1|micro1|registros|regb~143\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~143_combout\ = (\cpu1|micro1|memoria|mem~20_combout\ & ((\cpu1|micro1|registros|regb~142_combout\ & ((\cpu1|micro1|registros|regb~27_regout\))) # (!\cpu1|micro1|registros|regb~142_combout\ & 
-- (\cpu1|micro1|registros|regb~19_regout\)))) # (!\cpu1|micro1|memoria|mem~20_combout\ & (((\cpu1|micro1|registros|regb~142_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|registros|regb~19_regout\,
	datab => \cpu1|micro1|memoria|mem~20_combout\,
	datac => \cpu1|micro1|registros|regb~27_regout\,
	datad => \cpu1|micro1|registros|regb~142_combout\,
	combout => \cpu1|micro1|registros|regb~143_combout\);

-- Location: LCFF_X48_Y9_N7
\cpu1|micro1|registros|regb~59\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \cpu1|micro1|muxentradaregistro|y[3]~14_combout\,
	sload => VCC,
	ena => \cpu1|micro1|registros|regb~210_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|registros|regb~59_regout\);

-- Location: LCCOMB_X49_Y9_N20
\cpu1|micro1|registros|regb~51feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~51feeder_combout\ = \cpu1|micro1|muxentradaregistro|y[3]~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu1|micro1|muxentradaregistro|y[3]~14_combout\,
	combout => \cpu1|micro1|registros|regb~51feeder_combout\);

-- Location: LCFF_X49_Y9_N21
\cpu1|micro1|registros|regb~51\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \cpu1|micro1|registros|regb~51feeder_combout\,
	ena => \cpu1|micro1|registros|regb~208_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|registros|regb~51_regout\);

-- Location: LCFF_X48_Y6_N13
\cpu1|micro1|registros|regb~35\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \cpu1|micro1|muxentradaregistro|y[3]~14_combout\,
	sload => VCC,
	ena => \cpu1|micro1|registros|regb~209_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|registros|regb~35_regout\);

-- Location: LCCOMB_X48_Y6_N12
\cpu1|micro1|registros|regb~140\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~140_combout\ = (\cpu1|micro1|memoria|mem~20_combout\ & ((\cpu1|micro1|registros|regb~51_regout\) # ((\cpu1|micro1|memoria|mem~18_combout\)))) # (!\cpu1|micro1|memoria|mem~20_combout\ & (((\cpu1|micro1|registros|regb~35_regout\ 
-- & !\cpu1|micro1|memoria|mem~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|memoria|mem~20_combout\,
	datab => \cpu1|micro1|registros|regb~51_regout\,
	datac => \cpu1|micro1|registros|regb~35_regout\,
	datad => \cpu1|micro1|memoria|mem~18_combout\,
	combout => \cpu1|micro1|registros|regb~140_combout\);

-- Location: LCCOMB_X48_Y9_N6
\cpu1|micro1|registros|regb~141\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~141_combout\ = (\cpu1|micro1|memoria|mem~18_combout\ & ((\cpu1|micro1|registros|regb~140_combout\ & ((\cpu1|micro1|registros|regb~59_regout\))) # (!\cpu1|micro1|registros|regb~140_combout\ & 
-- (\cpu1|micro1|registros|regb~43_regout\)))) # (!\cpu1|micro1|memoria|mem~18_combout\ & (((\cpu1|micro1|registros|regb~140_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|registros|regb~43_regout\,
	datab => \cpu1|micro1|memoria|mem~18_combout\,
	datac => \cpu1|micro1|registros|regb~59_regout\,
	datad => \cpu1|micro1|registros|regb~140_combout\,
	combout => \cpu1|micro1|registros|regb~141_combout\);

-- Location: LCCOMB_X48_Y9_N18
\cpu1|micro1|muxademux|y[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|muxademux|y[3]~6_combout\ = (!\cpu1|micro1|registros|Equal1~0_combout\ & ((\cpu1|micro1|memoria|mem~22_combout\ & ((\cpu1|micro1|registros|regb~141_combout\))) # (!\cpu1|micro1|memoria|mem~22_combout\ & 
-- (\cpu1|micro1|registros|regb~143_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|registros|Equal1~0_combout\,
	datab => \cpu1|micro1|registros|regb~143_combout\,
	datac => \cpu1|micro1|memoria|mem~22_combout\,
	datad => \cpu1|micro1|registros|regb~141_combout\,
	combout => \cpu1|micro1|muxademux|y[3]~6_combout\);

-- Location: LCCOMB_X47_Y9_N16
\cpu1|micro1|registros|rd1[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|rd1[3]~4_combout\ = (\cpu1|micro1|registros|Equal0~0_combout\) # (!\cpu1|micro1|registros|regb~181_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|registros|Equal0~0_combout\,
	datab => \cpu1|micro1|registros|regb~181_combout\,
	combout => \cpu1|micro1|registros|rd1[3]~4_combout\);

-- Location: LCCOMB_X47_Y7_N28
\cpu1|micro1|alu1|Add0~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|alu1|Add0~27_combout\ = (\cpu1|micro1|memoria|mem~4_combout\ & ((\cpu1|micro1|memoria|mem~6_combout\ & ((\cpu1|micro1|muxademux|y[3]~6_combout\) # (!\cpu1|micro1|registros|rd1[3]~4_combout\))) # (!\cpu1|micro1|memoria|mem~6_combout\ & 
-- ((\cpu1|micro1|registros|rd1[3]~4_combout\))))) # (!\cpu1|micro1|memoria|mem~4_combout\ & (!\cpu1|micro1|registros|rd1[3]~4_combout\ & ((\cpu1|micro1|muxademux|y[3]~6_combout\) # (!\cpu1|micro1|memoria|mem~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|memoria|mem~4_combout\,
	datab => \cpu1|micro1|memoria|mem~6_combout\,
	datac => \cpu1|micro1|muxademux|y[3]~6_combout\,
	datad => \cpu1|micro1|registros|rd1[3]~4_combout\,
	combout => \cpu1|micro1|alu1|Add0~27_combout\);

-- Location: LCFF_X46_Y9_N13
\e0[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \num~combout\(2),
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => e0(2));

-- Location: LCCOMB_X46_Y9_N12
\cpu1|micro1|muxentradaregistro|y[2]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|muxentradaregistro|y[2]~11_combout\ = (\cpu1|micro1|muxentradaregistro|y[3]~7_combout\ & ((e0(2)) # ((\cpu1|micro1|memoria|mem~2_combout\ & \cpu1|micro1|muxentradaregistro|y[2]~10_combout\)))) # 
-- (!\cpu1|micro1|muxentradaregistro|y[3]~7_combout\ & (\cpu1|micro1|memoria|mem~2_combout\ & ((\cpu1|micro1|muxentradaregistro|y[2]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|muxentradaregistro|y[3]~7_combout\,
	datab => \cpu1|micro1|memoria|mem~2_combout\,
	datac => e0(2),
	datad => \cpu1|micro1|muxentradaregistro|y[2]~10_combout\,
	combout => \cpu1|micro1|muxentradaregistro|y[2]~11_combout\);

-- Location: LCFF_X47_Y6_N15
\cpu1|micro1|registros|regb~42\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \cpu1|micro1|muxentradaregistro|y[2]~12_combout\,
	sload => VCC,
	ena => \cpu1|micro1|registros|regb~207_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|registros|regb~42_regout\);

-- Location: LCCOMB_X47_Y6_N0
\cpu1|micro1|registros|regb~136\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~136_combout\ = (\cpu1|micro1|memoria|mem~18_combout\ & (((\cpu1|micro1|memoria|mem~20_combout\)))) # (!\cpu1|micro1|memoria|mem~18_combout\ & ((\cpu1|micro1|memoria|mem~20_combout\ & (\cpu1|micro1|registros|regb~50_regout\)) # 
-- (!\cpu1|micro1|memoria|mem~20_combout\ & ((\cpu1|micro1|registros|regb~34_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|registros|regb~50_regout\,
	datab => \cpu1|micro1|memoria|mem~18_combout\,
	datac => \cpu1|micro1|registros|regb~34_regout\,
	datad => \cpu1|micro1|memoria|mem~20_combout\,
	combout => \cpu1|micro1|registros|regb~136_combout\);

-- Location: LCCOMB_X47_Y6_N14
\cpu1|micro1|registros|regb~137\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~137_combout\ = (\cpu1|micro1|memoria|mem~18_combout\ & ((\cpu1|micro1|registros|regb~136_combout\ & (\cpu1|micro1|registros|regb~58_regout\)) # (!\cpu1|micro1|registros|regb~136_combout\ & 
-- ((\cpu1|micro1|registros|regb~42_regout\))))) # (!\cpu1|micro1|memoria|mem~18_combout\ & (((\cpu1|micro1|registros|regb~136_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|registros|regb~58_regout\,
	datab => \cpu1|micro1|memoria|mem~18_combout\,
	datac => \cpu1|micro1|registros|regb~42_regout\,
	datad => \cpu1|micro1|registros|regb~136_combout\,
	combout => \cpu1|micro1|registros|regb~137_combout\);

-- Location: LCCOMB_X47_Y6_N2
\cpu1|micro1|muxademux|y[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|muxademux|y[2]~4_combout\ = (!\cpu1|micro1|registros|Equal1~0_combout\ & ((\cpu1|micro1|memoria|mem~22_combout\ & ((\cpu1|micro1|registros|regb~137_combout\))) # (!\cpu1|micro1|memoria|mem~22_combout\ & 
-- (\cpu1|micro1|registros|regb~139_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|registros|regb~139_combout\,
	datab => \cpu1|micro1|registros|regb~137_combout\,
	datac => \cpu1|micro1|registros|Equal1~0_combout\,
	datad => \cpu1|micro1|memoria|mem~22_combout\,
	combout => \cpu1|micro1|muxademux|y[2]~4_combout\);

-- Location: LCCOMB_X47_Y9_N0
\cpu1|micro1|registros|rd1[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|rd1[2]~3_combout\ = (\cpu1|micro1|registros|Equal0~0_combout\) # (!\cpu1|micro1|registros|regb~175_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|registros|Equal0~0_combout\,
	datab => \cpu1|micro1|registros|regb~175_combout\,
	combout => \cpu1|micro1|registros|rd1[2]~3_combout\);

-- Location: LCCOMB_X47_Y7_N8
\cpu1|micro1|alu1|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|alu1|Add0~20_combout\ = (\cpu1|micro1|memoria|mem~6_combout\ & ((\cpu1|micro1|muxademux|y[2]~4_combout\ & ((\cpu1|micro1|memoria|mem~4_combout\) # (!\cpu1|micro1|registros|rd1[2]~3_combout\))) # (!\cpu1|micro1|muxademux|y[2]~4_combout\ & 
-- (!\cpu1|micro1|registros|rd1[2]~3_combout\ & \cpu1|micro1|memoria|mem~4_combout\)))) # (!\cpu1|micro1|memoria|mem~6_combout\ & ((\cpu1|micro1|registros|rd1[2]~3_combout\ $ (!\cpu1|micro1|memoria|mem~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|memoria|mem~6_combout\,
	datab => \cpu1|micro1|muxademux|y[2]~4_combout\,
	datac => \cpu1|micro1|registros|rd1[2]~3_combout\,
	datad => \cpu1|micro1|memoria|mem~4_combout\,
	combout => \cpu1|micro1|alu1|Add0~20_combout\);

-- Location: LCFF_X49_Y10_N29
\e0[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \num~combout\(1),
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => e0(1));

-- Location: LCCOMB_X46_Y9_N16
\cpu1|micro1|muxentradaregistro|y[3]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|muxentradaregistro|y[3]~7_combout\ = (\cpu1|uc1|s_entr~0_combout\ & (((!\cpu1|micro1|memoria|mem~0_combout\ & !\cpu1|micro1|memoria|mem~15_combout\)) # (!\cpu1|micro1|memoria|mem~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|memoria|mem~29_combout\,
	datab => \cpu1|micro1|memoria|mem~0_combout\,
	datac => \cpu1|micro1|memoria|mem~15_combout\,
	datad => \cpu1|uc1|s_entr~0_combout\,
	combout => \cpu1|micro1|muxentradaregistro|y[3]~7_combout\);

-- Location: LCCOMB_X46_Y9_N30
\cpu1|uc1|s_inm~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|uc1|s_inm~0_combout\ = (!\cpu1|micro1|memoria|mem~6_combout\ & \cpu1|micro1|muxentradaregistro|y[7]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu1|micro1|memoria|mem~6_combout\,
	datac => \cpu1|micro1|muxentradaregistro|y[7]~2_combout\,
	combout => \cpu1|uc1|s_inm~0_combout\);

-- Location: LCCOMB_X46_Y9_N22
\cpu1|micro1|muxentradaregistro|y[1]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|muxentradaregistro|y[1]~8_combout\ = (\cpu1|micro1|memoria|mem~14_combout\ & ((\cpu1|uc1|s_inm~0_combout\) # ((e0(1) & \cpu1|micro1|muxentradaregistro|y[3]~7_combout\)))) # (!\cpu1|micro1|memoria|mem~14_combout\ & (e0(1) & 
-- (\cpu1|micro1|muxentradaregistro|y[3]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|memoria|mem~14_combout\,
	datab => e0(1),
	datac => \cpu1|micro1|muxentradaregistro|y[3]~7_combout\,
	datad => \cpu1|uc1|s_inm~0_combout\,
	combout => \cpu1|micro1|muxentradaregistro|y[1]~8_combout\);

-- Location: LCFF_X47_Y6_N31
\cpu1|micro1|registros|regb~41\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \cpu1|micro1|muxentradaregistro|y[1]~9_combout\,
	sload => VCC,
	ena => \cpu1|micro1|registros|regb~207_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|registros|regb~41_regout\);

-- Location: LCFF_X47_Y6_N29
\cpu1|micro1|registros|regb~33\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \cpu1|micro1|muxentradaregistro|y[1]~9_combout\,
	sload => VCC,
	ena => \cpu1|micro1|registros|regb~209_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|registros|regb~33_regout\);

-- Location: LCCOMB_X47_Y6_N28
\cpu1|micro1|registros|regb~132\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~132_combout\ = (\cpu1|micro1|memoria|mem~18_combout\ & (((\cpu1|micro1|memoria|mem~20_combout\)))) # (!\cpu1|micro1|memoria|mem~18_combout\ & ((\cpu1|micro1|memoria|mem~20_combout\ & (\cpu1|micro1|registros|regb~49_regout\)) # 
-- (!\cpu1|micro1|memoria|mem~20_combout\ & ((\cpu1|micro1|registros|regb~33_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|registros|regb~49_regout\,
	datab => \cpu1|micro1|memoria|mem~18_combout\,
	datac => \cpu1|micro1|registros|regb~33_regout\,
	datad => \cpu1|micro1|memoria|mem~20_combout\,
	combout => \cpu1|micro1|registros|regb~132_combout\);

-- Location: LCCOMB_X47_Y6_N30
\cpu1|micro1|registros|regb~133\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~133_combout\ = (\cpu1|micro1|memoria|mem~18_combout\ & ((\cpu1|micro1|registros|regb~132_combout\ & (\cpu1|micro1|registros|regb~57_regout\)) # (!\cpu1|micro1|registros|regb~132_combout\ & 
-- ((\cpu1|micro1|registros|regb~41_regout\))))) # (!\cpu1|micro1|memoria|mem~18_combout\ & (((\cpu1|micro1|registros|regb~132_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|registros|regb~57_regout\,
	datab => \cpu1|micro1|memoria|mem~18_combout\,
	datac => \cpu1|micro1|registros|regb~41_regout\,
	datad => \cpu1|micro1|registros|regb~132_combout\,
	combout => \cpu1|micro1|registros|regb~133_combout\);

-- Location: LCCOMB_X47_Y7_N2
\cpu1|micro1|muxademux|y[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|muxademux|y[1]~2_combout\ = (!\cpu1|micro1|registros|Equal1~0_combout\ & ((\cpu1|micro1|memoria|mem~22_combout\ & ((\cpu1|micro1|registros|regb~133_combout\))) # (!\cpu1|micro1|memoria|mem~22_combout\ & 
-- (\cpu1|micro1|registros|regb~135_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|registros|Equal1~0_combout\,
	datab => \cpu1|micro1|memoria|mem~22_combout\,
	datac => \cpu1|micro1|registros|regb~135_combout\,
	datad => \cpu1|micro1|registros|regb~133_combout\,
	combout => \cpu1|micro1|muxademux|y[1]~2_combout\);

-- Location: LCCOMB_X49_Y9_N30
\cpu1|micro1|registros|regb~49feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~49feeder_combout\ = \cpu1|micro1|muxentradaregistro|y[1]~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu1|micro1|muxentradaregistro|y[1]~9_combout\,
	combout => \cpu1|micro1|registros|regb~49feeder_combout\);

-- Location: LCFF_X49_Y9_N31
\cpu1|micro1|registros|regb~49\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \cpu1|micro1|registros|regb~49feeder_combout\,
	ena => \cpu1|micro1|registros|regb~208_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|registros|regb~49_regout\);

-- Location: LCFF_X48_Y9_N23
\cpu1|micro1|registros|regb~57\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \cpu1|micro1|muxentradaregistro|y[1]~9_combout\,
	sload => VCC,
	ena => \cpu1|micro1|registros|regb~210_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|registros|regb~57_regout\);

-- Location: LCCOMB_X48_Y9_N22
\cpu1|micro1|registros|regb~161\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~161_combout\ = (\cpu1|micro1|memoria|mem~14_combout\ & (((\cpu1|micro1|registros|regb~57_regout\) # (\cpu1|micro1|memoria|mem~10_combout\)))) # (!\cpu1|micro1|memoria|mem~14_combout\ & (\cpu1|micro1|registros|regb~41_regout\ & 
-- ((!\cpu1|micro1|memoria|mem~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|registros|regb~41_regout\,
	datab => \cpu1|micro1|memoria|mem~14_combout\,
	datac => \cpu1|micro1|registros|regb~57_regout\,
	datad => \cpu1|micro1|memoria|mem~10_combout\,
	combout => \cpu1|micro1|registros|regb~161_combout\);

-- Location: LCCOMB_X49_Y9_N16
\cpu1|micro1|registros|regb~162\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~162_combout\ = (\cpu1|micro1|memoria|mem~10_combout\ & ((\cpu1|micro1|registros|regb~161_combout\ & ((\cpu1|micro1|registros|regb~49_regout\))) # (!\cpu1|micro1|registros|regb~161_combout\ & 
-- (\cpu1|micro1|registros|regb~33_regout\)))) # (!\cpu1|micro1|memoria|mem~10_combout\ & (((\cpu1|micro1|registros|regb~161_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|registros|regb~33_regout\,
	datab => \cpu1|micro1|registros|regb~49_regout\,
	datac => \cpu1|micro1|memoria|mem~10_combout\,
	datad => \cpu1|micro1|registros|regb~161_combout\,
	combout => \cpu1|micro1|registros|regb~162_combout\);

-- Location: LCFF_X47_Y10_N13
\cpu1|micro1|registros|regb~17\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \cpu1|micro1|muxentradaregistro|y[1]~9_combout\,
	sload => VCC,
	ena => \cpu1|micro1|registros|regb~211_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|registros|regb~17_regout\);

-- Location: LCFF_X48_Y9_N5
\cpu1|micro1|registros|regb~25\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \cpu1|micro1|muxentradaregistro|y[1]~9_combout\,
	sload => VCC,
	ena => \cpu1|micro1|registros|regb~214_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|registros|regb~25_regout\);

-- Location: LCCOMB_X48_Y9_N28
\cpu1|micro1|registros|regb~163\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~163_combout\ = (\cpu1|micro1|memoria|mem~14_combout\ & (((\cpu1|micro1|memoria|mem~10_combout\)))) # (!\cpu1|micro1|memoria|mem~14_combout\ & ((\cpu1|micro1|memoria|mem~10_combout\ & (\cpu1|micro1|registros|regb~1_regout\)) # 
-- (!\cpu1|micro1|memoria|mem~10_combout\ & ((\cpu1|micro1|registros|regb~9_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|registros|regb~1_regout\,
	datab => \cpu1|micro1|registros|regb~9_regout\,
	datac => \cpu1|micro1|memoria|mem~14_combout\,
	datad => \cpu1|micro1|memoria|mem~10_combout\,
	combout => \cpu1|micro1|registros|regb~163_combout\);

-- Location: LCCOMB_X48_Y9_N30
\cpu1|micro1|registros|regb~164\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~164_combout\ = (\cpu1|micro1|memoria|mem~14_combout\ & ((\cpu1|micro1|registros|regb~163_combout\ & (\cpu1|micro1|registros|regb~17_regout\)) # (!\cpu1|micro1|registros|regb~163_combout\ & 
-- ((\cpu1|micro1|registros|regb~25_regout\))))) # (!\cpu1|micro1|memoria|mem~14_combout\ & (((\cpu1|micro1|registros|regb~163_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|memoria|mem~14_combout\,
	datab => \cpu1|micro1|registros|regb~17_regout\,
	datac => \cpu1|micro1|registros|regb~25_regout\,
	datad => \cpu1|micro1|registros|regb~163_combout\,
	combout => \cpu1|micro1|registros|regb~164_combout\);

-- Location: LCCOMB_X48_Y9_N8
\cpu1|micro1|registros|regb~165\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~165_combout\ = (!\cpu1|micro1|memoria|mem~16_combout\ & ((\cpu1|micro1|memoria|mem~2_combout\ & (\cpu1|micro1|registros|regb~162_combout\)) # (!\cpu1|micro1|memoria|mem~2_combout\ & 
-- ((\cpu1|micro1|registros|regb~164_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|memoria|mem~16_combout\,
	datab => \cpu1|micro1|memoria|mem~2_combout\,
	datac => \cpu1|micro1|registros|regb~162_combout\,
	datad => \cpu1|micro1|registros|regb~164_combout\,
	combout => \cpu1|micro1|registros|regb~165_combout\);

-- Location: LCCOMB_X47_Y7_N30
\cpu1|micro1|registros|rd1[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|rd1[1]~2_combout\ = (\cpu1|micro1|registros|Equal0~0_combout\) # (!\cpu1|micro1|registros|regb~165_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cpu1|micro1|registros|regb~165_combout\,
	datad => \cpu1|micro1|registros|Equal0~0_combout\,
	combout => \cpu1|micro1|registros|rd1[1]~2_combout\);

-- Location: LCCOMB_X47_Y7_N20
\cpu1|micro1|alu1|Add0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|alu1|Add0~13_combout\ = (\cpu1|micro1|memoria|mem~4_combout\ & ((\cpu1|micro1|memoria|mem~6_combout\ & ((\cpu1|micro1|muxademux|y[1]~2_combout\) # (!\cpu1|micro1|registros|rd1[1]~2_combout\))) # (!\cpu1|micro1|memoria|mem~6_combout\ & 
-- ((\cpu1|micro1|registros|rd1[1]~2_combout\))))) # (!\cpu1|micro1|memoria|mem~4_combout\ & (!\cpu1|micro1|registros|rd1[1]~2_combout\ & ((\cpu1|micro1|muxademux|y[1]~2_combout\) # (!\cpu1|micro1|memoria|mem~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|memoria|mem~4_combout\,
	datab => \cpu1|micro1|muxademux|y[1]~2_combout\,
	datac => \cpu1|micro1|memoria|mem~6_combout\,
	datad => \cpu1|micro1|registros|rd1[1]~2_combout\,
	combout => \cpu1|micro1|alu1|Add0~13_combout\);

-- Location: LCCOMB_X46_Y6_N26
\cpu1|micro1|muxentradaregistro|y[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|muxentradaregistro|y[0]~3_combout\ = (!\cpu1|micro1|memoria|mem~6_combout\ & (!\cpu1|micro1|memoria|mem~10_combout\ & \cpu1|micro1|muxentradaregistro|y[7]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|memoria|mem~6_combout\,
	datab => \cpu1|micro1|memoria|mem~10_combout\,
	datad => \cpu1|micro1|muxentradaregistro|y[7]~2_combout\,
	combout => \cpu1|micro1|muxentradaregistro|y[0]~3_combout\);

-- Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\resta~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_resta,
	combout => \resta~combout\);

-- Location: LCFF_X49_Y10_N7
\e2[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \resta~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => e2(0));

-- Location: LCCOMB_X46_Y9_N18
\cpu1|micro1|muxentradaregistro|y[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|muxentradaregistro|y[0]~4_combout\ = (!\cpu1|micro1|memoria|mem~2_combout\ & ((\cpu1|micro1|memoria|mem~16_combout\ & ((e2(0)))) # (!\cpu1|micro1|memoria|mem~16_combout\ & (e0(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => e0(0),
	datab => e2(0),
	datac => \cpu1|micro1|memoria|mem~16_combout\,
	datad => \cpu1|micro1|memoria|mem~2_combout\,
	combout => \cpu1|micro1|muxentradaregistro|y[0]~4_combout\);

-- Location: LCCOMB_X48_Y9_N16
\cpu1|micro1|registros|regb~160\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~160_combout\ = (\cpu1|micro1|memoria|mem~2_combout\ & !\cpu1|micro1|memoria|mem~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu1|micro1|memoria|mem~2_combout\,
	datad => \cpu1|micro1|memoria|mem~16_combout\,
	combout => \cpu1|micro1|registros|regb~160_combout\);

-- Location: LCCOMB_X46_Y9_N4
\cpu1|micro1|muxentradaregistro|y[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|muxentradaregistro|y[0]~5_combout\ = (\cpu1|uc1|s_entr~0_combout\ & ((\cpu1|micro1|muxentradaregistro|y[0]~4_combout\) # ((e1(0) & \cpu1|micro1|registros|regb~160_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => e1(0),
	datab => \cpu1|micro1|muxentradaregistro|y[0]~4_combout\,
	datac => \cpu1|micro1|registros|regb~160_combout\,
	datad => \cpu1|uc1|s_entr~0_combout\,
	combout => \cpu1|micro1|muxentradaregistro|y[0]~5_combout\);

-- Location: LCCOMB_X48_Y7_N14
\cpu1|micro1|alu1|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|alu1|Add0~8_cout\ = CARRY((\cpu1|micro1|memoria|mem~4_combout\ & !\cpu1|micro1|memoria|mem~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|memoria|mem~4_combout\,
	datab => \cpu1|micro1|memoria|mem~6_combout\,
	datad => VCC,
	cout => \cpu1|micro1|alu1|Add0~8_cout\);

-- Location: LCCOMB_X48_Y7_N16
\cpu1|micro1|alu1|Add0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|alu1|Add0~9_combout\ = (\cpu1|micro1|alu1|Add0~5_combout\ & ((\cpu1|micro1|alu1|Add0~6_combout\ & (\cpu1|micro1|alu1|Add0~8_cout\ & VCC)) # (!\cpu1|micro1|alu1|Add0~6_combout\ & (!\cpu1|micro1|alu1|Add0~8_cout\)))) # 
-- (!\cpu1|micro1|alu1|Add0~5_combout\ & ((\cpu1|micro1|alu1|Add0~6_combout\ & (!\cpu1|micro1|alu1|Add0~8_cout\)) # (!\cpu1|micro1|alu1|Add0~6_combout\ & ((\cpu1|micro1|alu1|Add0~8_cout\) # (GND)))))
-- \cpu1|micro1|alu1|Add0~10\ = CARRY((\cpu1|micro1|alu1|Add0~5_combout\ & (!\cpu1|micro1|alu1|Add0~6_combout\ & !\cpu1|micro1|alu1|Add0~8_cout\)) # (!\cpu1|micro1|alu1|Add0~5_combout\ & ((!\cpu1|micro1|alu1|Add0~8_cout\) # 
-- (!\cpu1|micro1|alu1|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|alu1|Add0~5_combout\,
	datab => \cpu1|micro1|alu1|Add0~6_combout\,
	datad => VCC,
	cin => \cpu1|micro1|alu1|Add0~8_cout\,
	combout => \cpu1|micro1|alu1|Add0~9_combout\,
	cout => \cpu1|micro1|alu1|Add0~10\);

-- Location: LCCOMB_X48_Y9_N2
\cpu1|micro1|registros|regb~24feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~24feeder_combout\ = \cpu1|micro1|muxentradaregistro|y[0]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu1|micro1|muxentradaregistro|y[0]~6_combout\,
	combout => \cpu1|micro1|registros|regb~24feeder_combout\);

-- Location: LCFF_X48_Y9_N3
\cpu1|micro1|registros|regb~24\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \cpu1|micro1|registros|regb~24feeder_combout\,
	ena => \cpu1|micro1|registros|regb~214_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|registros|regb~24_regout\);

-- Location: LCFF_X47_Y10_N23
\cpu1|micro1|registros|regb~16\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \cpu1|micro1|muxentradaregistro|y[0]~6_combout\,
	sload => VCC,
	ena => \cpu1|micro1|registros|regb~211_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|registros|regb~16_regout\);

-- Location: LCFF_X47_Y10_N29
\cpu1|micro1|registros|regb~8\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \cpu1|micro1|muxentradaregistro|y[0]~6_combout\,
	sload => VCC,
	ena => \cpu1|micro1|registros|regb~212_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|registros|regb~8_regout\);

-- Location: LCFF_X47_Y9_N17
\cpu1|micro1|registros|regb~0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \cpu1|micro1|muxentradaregistro|y[0]~6_combout\,
	sload => VCC,
	ena => \cpu1|micro1|registros|regb~213_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|registros|regb~0_regout\);

-- Location: LCCOMB_X47_Y10_N28
\cpu1|micro1|registros|regb~167\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~167_combout\ = (\cpu1|micro1|memoria|mem~14_combout\ & (\cpu1|micro1|memoria|mem~10_combout\)) # (!\cpu1|micro1|memoria|mem~14_combout\ & ((\cpu1|micro1|memoria|mem~10_combout\ & ((\cpu1|micro1|registros|regb~0_regout\))) # 
-- (!\cpu1|micro1|memoria|mem~10_combout\ & (\cpu1|micro1|registros|regb~8_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|memoria|mem~14_combout\,
	datab => \cpu1|micro1|memoria|mem~10_combout\,
	datac => \cpu1|micro1|registros|regb~8_regout\,
	datad => \cpu1|micro1|registros|regb~0_regout\,
	combout => \cpu1|micro1|registros|regb~167_combout\);

-- Location: LCCOMB_X47_Y10_N22
\cpu1|micro1|registros|regb~168\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~168_combout\ = (\cpu1|micro1|memoria|mem~14_combout\ & ((\cpu1|micro1|registros|regb~167_combout\ & ((\cpu1|micro1|registros|regb~16_regout\))) # (!\cpu1|micro1|registros|regb~167_combout\ & 
-- (\cpu1|micro1|registros|regb~24_regout\)))) # (!\cpu1|micro1|memoria|mem~14_combout\ & (((\cpu1|micro1|registros|regb~167_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|memoria|mem~14_combout\,
	datab => \cpu1|micro1|registros|regb~24_regout\,
	datac => \cpu1|micro1|registros|regb~16_regout\,
	datad => \cpu1|micro1|registros|regb~167_combout\,
	combout => \cpu1|micro1|registros|regb~168_combout\);

-- Location: LCCOMB_X47_Y10_N16
\cpu1|micro1|registros|rd1[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|rd1[0]~0_combout\ = (!\cpu1|micro1|registros|Equal0~0_combout\ & (!\cpu1|micro1|memoria|mem~16_combout\ & (!\cpu1|micro1|memoria|mem~2_combout\ & \cpu1|micro1|registros|regb~168_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|registros|Equal0~0_combout\,
	datab => \cpu1|micro1|memoria|mem~16_combout\,
	datac => \cpu1|micro1|memoria|mem~2_combout\,
	datad => \cpu1|micro1|registros|regb~168_combout\,
	combout => \cpu1|micro1|registros|rd1[0]~0_combout\);

-- Location: LCCOMB_X49_Y9_N12
\cpu1|micro1|registros|regb~48feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~48feeder_combout\ = \cpu1|micro1|muxentradaregistro|y[0]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu1|micro1|muxentradaregistro|y[0]~6_combout\,
	combout => \cpu1|micro1|registros|regb~48feeder_combout\);

-- Location: LCFF_X49_Y9_N13
\cpu1|micro1|registros|regb~48\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \cpu1|micro1|registros|regb~48feeder_combout\,
	ena => \cpu1|micro1|registros|regb~208_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|registros|regb~48_regout\);

-- Location: LCCOMB_X48_Y9_N14
\cpu1|micro1|registros|regb~169\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~169_combout\ = (\cpu1|micro1|memoria|mem~14_combout\ & (((\cpu1|micro1|registros|regb~56_regout\) # (\cpu1|micro1|memoria|mem~10_combout\)))) # (!\cpu1|micro1|memoria|mem~14_combout\ & (\cpu1|micro1|registros|regb~40_regout\ & 
-- ((!\cpu1|micro1|memoria|mem~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|registros|regb~40_regout\,
	datab => \cpu1|micro1|registros|regb~56_regout\,
	datac => \cpu1|micro1|memoria|mem~14_combout\,
	datad => \cpu1|micro1|memoria|mem~10_combout\,
	combout => \cpu1|micro1|registros|regb~169_combout\);

-- Location: LCCOMB_X49_Y9_N18
\cpu1|micro1|registros|regb~170\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~170_combout\ = (\cpu1|micro1|memoria|mem~10_combout\ & ((\cpu1|micro1|registros|regb~169_combout\ & ((\cpu1|micro1|registros|regb~48_regout\))) # (!\cpu1|micro1|registros|regb~169_combout\ & 
-- (\cpu1|micro1|registros|regb~32_regout\)))) # (!\cpu1|micro1|memoria|mem~10_combout\ & (((\cpu1|micro1|registros|regb~169_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|registros|regb~32_regout\,
	datab => \cpu1|micro1|registros|regb~48_regout\,
	datac => \cpu1|micro1|memoria|mem~10_combout\,
	datad => \cpu1|micro1|registros|regb~169_combout\,
	combout => \cpu1|micro1|registros|regb~170_combout\);

-- Location: LCCOMB_X47_Y10_N18
\cpu1|micro1|registros|rd1[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|rd1[0]~1_combout\ = (\cpu1|micro1|registros|rd1[0]~0_combout\) # ((!\cpu1|micro1|memoria|mem~16_combout\ & (\cpu1|micro1|memoria|mem~2_combout\ & \cpu1|micro1|registros|regb~170_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|memoria|mem~16_combout\,
	datab => \cpu1|micro1|memoria|mem~2_combout\,
	datac => \cpu1|micro1|registros|rd1[0]~0_combout\,
	datad => \cpu1|micro1|registros|regb~170_combout\,
	combout => \cpu1|micro1|registros|rd1[0]~1_combout\);

-- Location: LCCOMB_X47_Y6_N10
\cpu1|micro1|alu1|Add0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|alu1|Add0~50_combout\ = (\cpu1|micro1|memoria|mem~6_combout\ & ((\cpu1|micro1|memoria|mem~4_combout\ & ((\cpu1|micro1|muxademux|y[0]~0_combout\) # (\cpu1|micro1|registros|rd1[0]~1_combout\))) # (!\cpu1|micro1|memoria|mem~4_combout\ & 
-- (\cpu1|micro1|muxademux|y[0]~0_combout\ & \cpu1|micro1|registros|rd1[0]~1_combout\)))) # (!\cpu1|micro1|memoria|mem~6_combout\ & (\cpu1|micro1|memoria|mem~4_combout\ $ (((\cpu1|micro1|registros|rd1[0]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|memoria|mem~6_combout\,
	datab => \cpu1|micro1|memoria|mem~4_combout\,
	datac => \cpu1|micro1|muxademux|y[0]~0_combout\,
	datad => \cpu1|micro1|registros|rd1[0]~1_combout\,
	combout => \cpu1|micro1|alu1|Add0~50_combout\);

-- Location: LCCOMB_X47_Y6_N12
\cpu1|micro1|alu1|Add0~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|alu1|Add0~51_combout\ = (\cpu1|micro1|memoria|mem~8_combout\ & (\cpu1|micro1|alu1|Add0~9_combout\)) # (!\cpu1|micro1|memoria|mem~8_combout\ & ((\cpu1|micro1|alu1|Add0~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu1|micro1|memoria|mem~8_combout\,
	datac => \cpu1|micro1|alu1|Add0~9_combout\,
	datad => \cpu1|micro1|alu1|Add0~50_combout\,
	combout => \cpu1|micro1|alu1|Add0~51_combout\);

-- Location: LCCOMB_X47_Y6_N26
\cpu1|micro1|muxentradaregistro|y[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|muxentradaregistro|y[0]~6_combout\ = (\cpu1|micro1|muxentradaregistro|y[0]~3_combout\) # ((\cpu1|micro1|muxentradaregistro|y[0]~5_combout\) # ((\cpu1|micro1|muxentradaregistro|y[0]~20_combout\ & \cpu1|micro1|alu1|Add0~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|muxentradaregistro|y[0]~20_combout\,
	datab => \cpu1|micro1|muxentradaregistro|y[0]~3_combout\,
	datac => \cpu1|micro1|muxentradaregistro|y[0]~5_combout\,
	datad => \cpu1|micro1|alu1|Add0~51_combout\,
	combout => \cpu1|micro1|muxentradaregistro|y[0]~6_combout\);

-- Location: LCCOMB_X48_Y9_N0
\cpu1|micro1|registros|regb~56feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~56feeder_combout\ = \cpu1|micro1|muxentradaregistro|y[0]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu1|micro1|muxentradaregistro|y[0]~6_combout\,
	combout => \cpu1|micro1|registros|regb~56feeder_combout\);

-- Location: LCFF_X48_Y9_N1
\cpu1|micro1|registros|regb~56\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \cpu1|micro1|registros|regb~56feeder_combout\,
	ena => \cpu1|micro1|registros|regb~210_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|registros|regb~56_regout\);

-- Location: LCFF_X47_Y6_N19
\cpu1|micro1|registros|regb~32\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \cpu1|micro1|muxentradaregistro|y[0]~6_combout\,
	sload => VCC,
	ena => \cpu1|micro1|registros|regb~209_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|registros|regb~32_regout\);

-- Location: LCCOMB_X47_Y6_N18
\cpu1|micro1|registros|regb~128\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~128_combout\ = (\cpu1|micro1|memoria|mem~18_combout\ & (((\cpu1|micro1|memoria|mem~20_combout\)))) # (!\cpu1|micro1|memoria|mem~18_combout\ & ((\cpu1|micro1|memoria|mem~20_combout\ & (\cpu1|micro1|registros|regb~48_regout\)) # 
-- (!\cpu1|micro1|memoria|mem~20_combout\ & ((\cpu1|micro1|registros|regb~32_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|registros|regb~48_regout\,
	datab => \cpu1|micro1|memoria|mem~18_combout\,
	datac => \cpu1|micro1|registros|regb~32_regout\,
	datad => \cpu1|micro1|memoria|mem~20_combout\,
	combout => \cpu1|micro1|registros|regb~128_combout\);

-- Location: LCCOMB_X47_Y6_N8
\cpu1|micro1|registros|regb~129\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~129_combout\ = (\cpu1|micro1|memoria|mem~18_combout\ & ((\cpu1|micro1|registros|regb~128_combout\ & ((\cpu1|micro1|registros|regb~56_regout\))) # (!\cpu1|micro1|registros|regb~128_combout\ & 
-- (\cpu1|micro1|registros|regb~40_regout\)))) # (!\cpu1|micro1|memoria|mem~18_combout\ & (((\cpu1|micro1|registros|regb~128_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|registros|regb~40_regout\,
	datab => \cpu1|micro1|memoria|mem~18_combout\,
	datac => \cpu1|micro1|registros|regb~56_regout\,
	datad => \cpu1|micro1|registros|regb~128_combout\,
	combout => \cpu1|micro1|registros|regb~129_combout\);

-- Location: LCCOMB_X47_Y9_N10
\cpu1|micro1|registros|regb~130\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~130_combout\ = (\cpu1|micro1|memoria|mem~18_combout\ & (((\cpu1|micro1|registros|regb~8_regout\) # (\cpu1|micro1|memoria|mem~20_combout\)))) # (!\cpu1|micro1|memoria|mem~18_combout\ & (\cpu1|micro1|registros|regb~0_regout\ & 
-- ((!\cpu1|micro1|memoria|mem~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|memoria|mem~18_combout\,
	datab => \cpu1|micro1|registros|regb~0_regout\,
	datac => \cpu1|micro1|registros|regb~8_regout\,
	datad => \cpu1|micro1|memoria|mem~20_combout\,
	combout => \cpu1|micro1|registros|regb~130_combout\);

-- Location: LCCOMB_X48_Y9_N20
\cpu1|micro1|registros|regb~131\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~131_combout\ = (\cpu1|micro1|memoria|mem~20_combout\ & ((\cpu1|micro1|registros|regb~130_combout\ & ((\cpu1|micro1|registros|regb~24_regout\))) # (!\cpu1|micro1|registros|regb~130_combout\ & 
-- (\cpu1|micro1|registros|regb~16_regout\)))) # (!\cpu1|micro1|memoria|mem~20_combout\ & (((\cpu1|micro1|registros|regb~130_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|registros|regb~16_regout\,
	datab => \cpu1|micro1|memoria|mem~20_combout\,
	datac => \cpu1|micro1|registros|regb~24_regout\,
	datad => \cpu1|micro1|registros|regb~130_combout\,
	combout => \cpu1|micro1|registros|regb~131_combout\);

-- Location: LCCOMB_X47_Y6_N16
\cpu1|micro1|muxademux|y[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|muxademux|y[0]~0_combout\ = (!\cpu1|micro1|registros|Equal1~0_combout\ & ((\cpu1|micro1|memoria|mem~22_combout\ & (\cpu1|micro1|registros|regb~129_combout\)) # (!\cpu1|micro1|memoria|mem~22_combout\ & 
-- ((\cpu1|micro1|registros|regb~131_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|registros|Equal1~0_combout\,
	datab => \cpu1|micro1|memoria|mem~22_combout\,
	datac => \cpu1|micro1|registros|regb~129_combout\,
	datad => \cpu1|micro1|registros|regb~131_combout\,
	combout => \cpu1|micro1|muxademux|y[0]~0_combout\);

-- Location: LCCOMB_X48_Y7_N8
\cpu1|micro1|alu1|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|alu1|Add0~6_combout\ = (\cpu1|micro1|memoria|mem~4_combout\ & (((!\cpu1|micro1|muxademux|y[0]~0_combout\)))) # (!\cpu1|micro1|memoria|mem~4_combout\ & ((\cpu1|micro1|memoria|mem~6_combout\ & ((!\cpu1|micro1|registros|rd1[0]~1_combout\))) # 
-- (!\cpu1|micro1|memoria|mem~6_combout\ & (\cpu1|micro1|muxademux|y[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101001011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|memoria|mem~4_combout\,
	datab => \cpu1|micro1|memoria|mem~6_combout\,
	datac => \cpu1|micro1|muxademux|y[0]~0_combout\,
	datad => \cpu1|micro1|registros|rd1[0]~1_combout\,
	combout => \cpu1|micro1|alu1|Add0~6_combout\);

-- Location: LCCOMB_X48_Y7_N18
\cpu1|micro1|alu1|Add0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|alu1|Add0~11_combout\ = ((\cpu1|micro1|alu1|Add0~1_combout\ $ (\cpu1|micro1|alu1|Add0~4_combout\ $ (!\cpu1|micro1|alu1|Add0~10\)))) # (GND)
-- \cpu1|micro1|alu1|Add0~12\ = CARRY((\cpu1|micro1|alu1|Add0~1_combout\ & ((\cpu1|micro1|alu1|Add0~4_combout\) # (!\cpu1|micro1|alu1|Add0~10\))) # (!\cpu1|micro1|alu1|Add0~1_combout\ & (\cpu1|micro1|alu1|Add0~4_combout\ & !\cpu1|micro1|alu1|Add0~10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|alu1|Add0~1_combout\,
	datab => \cpu1|micro1|alu1|Add0~4_combout\,
	datad => VCC,
	cin => \cpu1|micro1|alu1|Add0~10\,
	combout => \cpu1|micro1|alu1|Add0~11_combout\,
	cout => \cpu1|micro1|alu1|Add0~12\);

-- Location: LCCOMB_X47_Y7_N10
\cpu1|micro1|alu1|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|alu1|Add0~14_combout\ = (\cpu1|micro1|memoria|mem~8_combout\ & ((\cpu1|micro1|alu1|Add0~11_combout\))) # (!\cpu1|micro1|memoria|mem~8_combout\ & (\cpu1|micro1|alu1|Add0~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|memoria|mem~8_combout\,
	datac => \cpu1|micro1|alu1|Add0~13_combout\,
	datad => \cpu1|micro1|alu1|Add0~11_combout\,
	combout => \cpu1|micro1|alu1|Add0~14_combout\);

-- Location: LCCOMB_X47_Y9_N30
\cpu1|micro1|muxentradaregistro|y[1]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|muxentradaregistro|y[1]~9_combout\ = (\cpu1|micro1|muxentradaregistro|y[1]~8_combout\) # ((\cpu1|micro1|muxentradaregistro|y[0]~20_combout\ & \cpu1|micro1|alu1|Add0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu1|micro1|muxentradaregistro|y[1]~8_combout\,
	datac => \cpu1|micro1|muxentradaregistro|y[0]~20_combout\,
	datad => \cpu1|micro1|alu1|Add0~14_combout\,
	combout => \cpu1|micro1|muxentradaregistro|y[1]~9_combout\);

-- Location: LCFF_X47_Y10_N27
\cpu1|micro1|registros|regb~9\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \cpu1|micro1|muxentradaregistro|y[1]~9_combout\,
	sload => VCC,
	ena => \cpu1|micro1|registros|regb~212_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|registros|regb~9_regout\);

-- Location: LCCOMB_X47_Y10_N26
\cpu1|micro1|registros|regb~134\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~134_combout\ = (\cpu1|micro1|memoria|mem~18_combout\ & (((\cpu1|micro1|registros|regb~9_regout\) # (\cpu1|micro1|memoria|mem~20_combout\)))) # (!\cpu1|micro1|memoria|mem~18_combout\ & (\cpu1|micro1|registros|regb~1_regout\ & 
-- ((!\cpu1|micro1|memoria|mem~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|registros|regb~1_regout\,
	datab => \cpu1|micro1|memoria|mem~18_combout\,
	datac => \cpu1|micro1|registros|regb~9_regout\,
	datad => \cpu1|micro1|memoria|mem~20_combout\,
	combout => \cpu1|micro1|registros|regb~134_combout\);

-- Location: LCCOMB_X47_Y10_N12
\cpu1|micro1|registros|regb~135\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~135_combout\ = (\cpu1|micro1|registros|regb~134_combout\ & ((\cpu1|micro1|registros|regb~25_regout\) # ((!\cpu1|micro1|memoria|mem~20_combout\)))) # (!\cpu1|micro1|registros|regb~134_combout\ & 
-- (((\cpu1|micro1|registros|regb~17_regout\ & \cpu1|micro1|memoria|mem~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|registros|regb~25_regout\,
	datab => \cpu1|micro1|registros|regb~134_combout\,
	datac => \cpu1|micro1|registros|regb~17_regout\,
	datad => \cpu1|micro1|memoria|mem~20_combout\,
	combout => \cpu1|micro1|registros|regb~135_combout\);

-- Location: LCCOMB_X47_Y6_N4
\cpu1|micro1|registros|regb~166\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~166_combout\ = (\cpu1|micro1|memoria|mem~22_combout\ & ((\cpu1|micro1|registros|regb~133_combout\))) # (!\cpu1|micro1|memoria|mem~22_combout\ & (\cpu1|micro1|registros|regb~135_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu1|micro1|memoria|mem~22_combout\,
	datac => \cpu1|micro1|registros|regb~135_combout\,
	datad => \cpu1|micro1|registros|regb~133_combout\,
	combout => \cpu1|micro1|registros|regb~166_combout\);

-- Location: LCCOMB_X48_Y7_N4
\cpu1|micro1|alu1|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|alu1|Add0~2_combout\ = (\cpu1|micro1|memoria|mem~4_combout\ & (((\cpu1|micro1|registros|Equal1~0_combout\) # (!\cpu1|micro1|registros|regb~166_combout\)))) # (!\cpu1|micro1|memoria|mem~4_combout\ & (!\cpu1|micro1|memoria|mem~6_combout\ & 
-- (!\cpu1|micro1|registros|Equal1~0_combout\ & \cpu1|micro1|registros|regb~166_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|memoria|mem~4_combout\,
	datab => \cpu1|micro1|memoria|mem~6_combout\,
	datac => \cpu1|micro1|registros|Equal1~0_combout\,
	datad => \cpu1|micro1|registros|regb~166_combout\,
	combout => \cpu1|micro1|alu1|Add0~2_combout\);

-- Location: LCCOMB_X48_Y7_N2
\cpu1|micro1|alu1|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|alu1|Add0~4_combout\ = (\cpu1|micro1|alu1|Add0~2_combout\) # ((\cpu1|micro1|alu1|Add0~3_combout\ & ((\cpu1|micro1|registros|Equal0~0_combout\) # (!\cpu1|micro1|registros|regb~165_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|registros|Equal0~0_combout\,
	datab => \cpu1|micro1|alu1|Add0~3_combout\,
	datac => \cpu1|micro1|alu1|Add0~2_combout\,
	datad => \cpu1|micro1|registros|regb~165_combout\,
	combout => \cpu1|micro1|alu1|Add0~4_combout\);

-- Location: LCCOMB_X48_Y7_N20
\cpu1|micro1|alu1|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|alu1|Add0~18_combout\ = (\cpu1|micro1|alu1|Add0~17_combout\ & ((\cpu1|micro1|alu1|Add0~15_combout\ & (\cpu1|micro1|alu1|Add0~12\ & VCC)) # (!\cpu1|micro1|alu1|Add0~15_combout\ & (!\cpu1|micro1|alu1|Add0~12\)))) # 
-- (!\cpu1|micro1|alu1|Add0~17_combout\ & ((\cpu1|micro1|alu1|Add0~15_combout\ & (!\cpu1|micro1|alu1|Add0~12\)) # (!\cpu1|micro1|alu1|Add0~15_combout\ & ((\cpu1|micro1|alu1|Add0~12\) # (GND)))))
-- \cpu1|micro1|alu1|Add0~19\ = CARRY((\cpu1|micro1|alu1|Add0~17_combout\ & (!\cpu1|micro1|alu1|Add0~15_combout\ & !\cpu1|micro1|alu1|Add0~12\)) # (!\cpu1|micro1|alu1|Add0~17_combout\ & ((!\cpu1|micro1|alu1|Add0~12\) # 
-- (!\cpu1|micro1|alu1|Add0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|alu1|Add0~17_combout\,
	datab => \cpu1|micro1|alu1|Add0~15_combout\,
	datad => VCC,
	cin => \cpu1|micro1|alu1|Add0~12\,
	combout => \cpu1|micro1|alu1|Add0~18_combout\,
	cout => \cpu1|micro1|alu1|Add0~19\);

-- Location: LCCOMB_X47_Y7_N14
\cpu1|micro1|alu1|Add0~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|alu1|Add0~21_combout\ = (\cpu1|micro1|memoria|mem~8_combout\ & ((\cpu1|micro1|alu1|Add0~18_combout\))) # (!\cpu1|micro1|memoria|mem~8_combout\ & (\cpu1|micro1|alu1|Add0~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|memoria|mem~8_combout\,
	datac => \cpu1|micro1|alu1|Add0~20_combout\,
	datad => \cpu1|micro1|alu1|Add0~18_combout\,
	combout => \cpu1|micro1|alu1|Add0~21_combout\);

-- Location: LCCOMB_X48_Y9_N10
\cpu1|micro1|muxentradaregistro|y[2]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|muxentradaregistro|y[2]~12_combout\ = (\cpu1|micro1|muxentradaregistro|y[2]~11_combout\) # ((\cpu1|micro1|muxentradaregistro|y[0]~20_combout\ & \cpu1|micro1|alu1|Add0~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu1|micro1|muxentradaregistro|y[2]~11_combout\,
	datac => \cpu1|micro1|muxentradaregistro|y[0]~20_combout\,
	datad => \cpu1|micro1|alu1|Add0~21_combout\,
	combout => \cpu1|micro1|muxentradaregistro|y[2]~12_combout\);

-- Location: LCFF_X47_Y6_N1
\cpu1|micro1|registros|regb~34\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \cpu1|micro1|muxentradaregistro|y[2]~12_combout\,
	sload => VCC,
	ena => \cpu1|micro1|registros|regb~209_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|registros|regb~34_regout\);

-- Location: LCFF_X48_Y9_N27
\cpu1|micro1|registros|regb~58\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \cpu1|micro1|muxentradaregistro|y[2]~12_combout\,
	sload => VCC,
	ena => \cpu1|micro1|registros|regb~210_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|registros|regb~58_regout\);

-- Location: LCCOMB_X48_Y9_N26
\cpu1|micro1|registros|regb~171\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~171_combout\ = (\cpu1|micro1|memoria|mem~14_combout\ & (((\cpu1|micro1|registros|regb~58_regout\) # (\cpu1|micro1|memoria|mem~10_combout\)))) # (!\cpu1|micro1|memoria|mem~14_combout\ & (\cpu1|micro1|registros|regb~42_regout\ & 
-- ((!\cpu1|micro1|memoria|mem~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|registros|regb~42_regout\,
	datab => \cpu1|micro1|memoria|mem~14_combout\,
	datac => \cpu1|micro1|registros|regb~58_regout\,
	datad => \cpu1|micro1|memoria|mem~10_combout\,
	combout => \cpu1|micro1|registros|regb~171_combout\);

-- Location: LCCOMB_X49_Y9_N10
\cpu1|micro1|registros|regb~172\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~172_combout\ = (\cpu1|micro1|memoria|mem~10_combout\ & ((\cpu1|micro1|registros|regb~171_combout\ & (\cpu1|micro1|registros|regb~50_regout\)) # (!\cpu1|micro1|registros|regb~171_combout\ & 
-- ((\cpu1|micro1|registros|regb~34_regout\))))) # (!\cpu1|micro1|memoria|mem~10_combout\ & (((\cpu1|micro1|registros|regb~171_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|registros|regb~50_regout\,
	datab => \cpu1|micro1|registros|regb~34_regout\,
	datac => \cpu1|micro1|memoria|mem~10_combout\,
	datad => \cpu1|micro1|registros|regb~171_combout\,
	combout => \cpu1|micro1|registros|regb~172_combout\);

-- Location: LCCOMB_X47_Y9_N8
\cpu1|micro1|registros|regb~175\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~175_combout\ = (!\cpu1|micro1|memoria|mem~16_combout\ & ((\cpu1|micro1|memoria|mem~2_combout\ & ((\cpu1|micro1|registros|regb~172_combout\))) # (!\cpu1|micro1|memoria|mem~2_combout\ & 
-- (\cpu1|micro1|registros|regb~174_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|registros|regb~174_combout\,
	datab => \cpu1|micro1|memoria|mem~2_combout\,
	datac => \cpu1|micro1|memoria|mem~16_combout\,
	datad => \cpu1|micro1|registros|regb~172_combout\,
	combout => \cpu1|micro1|registros|regb~175_combout\);

-- Location: LCCOMB_X47_Y9_N22
\cpu1|micro1|alu1|Add0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|alu1|Add0~15_combout\ = (!\cpu1|micro1|registros|Equal0~0_combout\ & (!\cpu1|micro1|memoria|mem~6_combout\ & \cpu1|micro1|registros|regb~175_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|registros|Equal0~0_combout\,
	datab => \cpu1|micro1|memoria|mem~6_combout\,
	datac => \cpu1|micro1|registros|regb~175_combout\,
	combout => \cpu1|micro1|alu1|Add0~15_combout\);

-- Location: LCCOMB_X48_Y7_N22
\cpu1|micro1|alu1|Add0~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|alu1|Add0~25_combout\ = ((\cpu1|micro1|alu1|Add0~22_combout\ $ (\cpu1|micro1|alu1|Add0~24_combout\ $ (!\cpu1|micro1|alu1|Add0~19\)))) # (GND)
-- \cpu1|micro1|alu1|Add0~26\ = CARRY((\cpu1|micro1|alu1|Add0~22_combout\ & ((\cpu1|micro1|alu1|Add0~24_combout\) # (!\cpu1|micro1|alu1|Add0~19\))) # (!\cpu1|micro1|alu1|Add0~22_combout\ & (\cpu1|micro1|alu1|Add0~24_combout\ & !\cpu1|micro1|alu1|Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|alu1|Add0~22_combout\,
	datab => \cpu1|micro1|alu1|Add0~24_combout\,
	datad => VCC,
	cin => \cpu1|micro1|alu1|Add0~19\,
	combout => \cpu1|micro1|alu1|Add0~25_combout\,
	cout => \cpu1|micro1|alu1|Add0~26\);

-- Location: LCCOMB_X47_Y7_N6
\cpu1|micro1|alu1|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|alu1|Add0~28_combout\ = (\cpu1|micro1|memoria|mem~8_combout\ & ((\cpu1|micro1|alu1|Add0~25_combout\))) # (!\cpu1|micro1|memoria|mem~8_combout\ & (\cpu1|micro1|alu1|Add0~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu1|micro1|alu1|Add0~27_combout\,
	datac => \cpu1|micro1|memoria|mem~8_combout\,
	datad => \cpu1|micro1|alu1|Add0~25_combout\,
	combout => \cpu1|micro1|alu1|Add0~28_combout\);

-- Location: LCCOMB_X48_Y6_N26
\cpu1|micro1|muxentradaregistro|y[3]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|muxentradaregistro|y[3]~14_combout\ = (\cpu1|micro1|muxentradaregistro|y[3]~13_combout\) # ((\cpu1|micro1|muxentradaregistro|y[0]~20_combout\ & \cpu1|micro1|alu1|Add0~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|muxentradaregistro|y[3]~13_combout\,
	datac => \cpu1|micro1|muxentradaregistro|y[0]~20_combout\,
	datad => \cpu1|micro1|alu1|Add0~28_combout\,
	combout => \cpu1|micro1|muxentradaregistro|y[3]~14_combout\);

-- Location: LCFF_X47_Y9_N3
\cpu1|micro1|registros|regb~19\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \cpu1|micro1|muxentradaregistro|y[3]~14_combout\,
	sload => VCC,
	ena => \cpu1|micro1|registros|regb~211_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|registros|regb~19_regout\);

-- Location: LCCOMB_X47_Y9_N2
\cpu1|micro1|registros|regb~180\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~180_combout\ = (\cpu1|micro1|registros|regb~179_combout\ & (((\cpu1|micro1|registros|regb~19_regout\)) # (!\cpu1|micro1|memoria|mem~14_combout\))) # (!\cpu1|micro1|registros|regb~179_combout\ & 
-- (\cpu1|micro1|memoria|mem~14_combout\ & ((\cpu1|micro1|registros|regb~27_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|registros|regb~179_combout\,
	datab => \cpu1|micro1|memoria|mem~14_combout\,
	datac => \cpu1|micro1|registros|regb~19_regout\,
	datad => \cpu1|micro1|registros|regb~27_regout\,
	combout => \cpu1|micro1|registros|regb~180_combout\);

-- Location: LCCOMB_X49_Y9_N2
\cpu1|micro1|registros|regb~43feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~43feeder_combout\ = \cpu1|micro1|muxentradaregistro|y[3]~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu1|micro1|muxentradaregistro|y[3]~14_combout\,
	combout => \cpu1|micro1|registros|regb~43feeder_combout\);

-- Location: LCFF_X49_Y9_N3
\cpu1|micro1|registros|regb~43\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \cpu1|micro1|registros|regb~43feeder_combout\,
	ena => \cpu1|micro1|registros|regb~207_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|registros|regb~43_regout\);

-- Location: LCCOMB_X49_Y9_N28
\cpu1|micro1|registros|regb~177\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~177_combout\ = (\cpu1|micro1|memoria|mem~14_combout\ & ((\cpu1|micro1|registros|regb~59_regout\) # ((\cpu1|micro1|memoria|mem~10_combout\)))) # (!\cpu1|micro1|memoria|mem~14_combout\ & (((\cpu1|micro1|registros|regb~43_regout\ 
-- & !\cpu1|micro1|memoria|mem~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|registros|regb~59_regout\,
	datab => \cpu1|micro1|registros|regb~43_regout\,
	datac => \cpu1|micro1|memoria|mem~14_combout\,
	datad => \cpu1|micro1|memoria|mem~10_combout\,
	combout => \cpu1|micro1|registros|regb~177_combout\);

-- Location: LCCOMB_X49_Y9_N14
\cpu1|micro1|registros|regb~178\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~178_combout\ = (\cpu1|micro1|memoria|mem~10_combout\ & ((\cpu1|micro1|registros|regb~177_combout\ & (\cpu1|micro1|registros|regb~51_regout\)) # (!\cpu1|micro1|registros|regb~177_combout\ & 
-- ((\cpu1|micro1|registros|regb~35_regout\))))) # (!\cpu1|micro1|memoria|mem~10_combout\ & (((\cpu1|micro1|registros|regb~177_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|registros|regb~51_regout\,
	datab => \cpu1|micro1|registros|regb~35_regout\,
	datac => \cpu1|micro1|memoria|mem~10_combout\,
	datad => \cpu1|micro1|registros|regb~177_combout\,
	combout => \cpu1|micro1|registros|regb~178_combout\);

-- Location: LCCOMB_X47_Y9_N14
\cpu1|micro1|registros|regb~181\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~181_combout\ = (!\cpu1|micro1|memoria|mem~16_combout\ & ((\cpu1|micro1|memoria|mem~2_combout\ & ((\cpu1|micro1|registros|regb~178_combout\))) # (!\cpu1|micro1|memoria|mem~2_combout\ & 
-- (\cpu1|micro1|registros|regb~180_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|memoria|mem~16_combout\,
	datab => \cpu1|micro1|memoria|mem~2_combout\,
	datac => \cpu1|micro1|registros|regb~180_combout\,
	datad => \cpu1|micro1|registros|regb~178_combout\,
	combout => \cpu1|micro1|registros|regb~181_combout\);

-- Location: LCCOMB_X48_Y9_N24
\cpu1|micro1|registros|regb~182\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~182_combout\ = (\cpu1|micro1|memoria|mem~22_combout\ & ((\cpu1|micro1|registros|regb~141_combout\))) # (!\cpu1|micro1|memoria|mem~22_combout\ & (\cpu1|micro1|registros|regb~143_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|registros|regb~143_combout\,
	datac => \cpu1|micro1|memoria|mem~22_combout\,
	datad => \cpu1|micro1|registros|regb~141_combout\,
	combout => \cpu1|micro1|registros|regb~182_combout\);

-- Location: LCCOMB_X47_Y9_N18
\cpu1|micro1|alu1|Add0~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|alu1|Add0~23_combout\ = (\cpu1|micro1|memoria|mem~4_combout\ & (((\cpu1|micro1|registros|Equal1~0_combout\) # (!\cpu1|micro1|registros|regb~182_combout\)))) # (!\cpu1|micro1|memoria|mem~4_combout\ & (!\cpu1|micro1|memoria|mem~6_combout\ & 
-- (!\cpu1|micro1|registros|Equal1~0_combout\ & \cpu1|micro1|registros|regb~182_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|memoria|mem~4_combout\,
	datab => \cpu1|micro1|memoria|mem~6_combout\,
	datac => \cpu1|micro1|registros|Equal1~0_combout\,
	datad => \cpu1|micro1|registros|regb~182_combout\,
	combout => \cpu1|micro1|alu1|Add0~23_combout\);

-- Location: LCCOMB_X47_Y9_N12
\cpu1|micro1|alu1|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|alu1|Add0~24_combout\ = (\cpu1|micro1|alu1|Add0~23_combout\) # ((\cpu1|micro1|alu1|Add0~3_combout\ & ((\cpu1|micro1|registros|Equal0~0_combout\) # (!\cpu1|micro1|registros|regb~181_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|registros|Equal0~0_combout\,
	datab => \cpu1|micro1|alu1|Add0~3_combout\,
	datac => \cpu1|micro1|registros|regb~181_combout\,
	datad => \cpu1|micro1|alu1|Add0~23_combout\,
	combout => \cpu1|micro1|alu1|Add0~24_combout\);

-- Location: LCCOMB_X48_Y7_N24
\cpu1|micro1|alu1|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|alu1|Add0~32_combout\ = (\cpu1|micro1|alu1|Add0~29_combout\ & ((\cpu1|micro1|alu1|Add0~31_combout\ & (\cpu1|micro1|alu1|Add0~26\ & VCC)) # (!\cpu1|micro1|alu1|Add0~31_combout\ & (!\cpu1|micro1|alu1|Add0~26\)))) # 
-- (!\cpu1|micro1|alu1|Add0~29_combout\ & ((\cpu1|micro1|alu1|Add0~31_combout\ & (!\cpu1|micro1|alu1|Add0~26\)) # (!\cpu1|micro1|alu1|Add0~31_combout\ & ((\cpu1|micro1|alu1|Add0~26\) # (GND)))))
-- \cpu1|micro1|alu1|Add0~33\ = CARRY((\cpu1|micro1|alu1|Add0~29_combout\ & (!\cpu1|micro1|alu1|Add0~31_combout\ & !\cpu1|micro1|alu1|Add0~26\)) # (!\cpu1|micro1|alu1|Add0~29_combout\ & ((!\cpu1|micro1|alu1|Add0~26\) # 
-- (!\cpu1|micro1|alu1|Add0~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|alu1|Add0~29_combout\,
	datab => \cpu1|micro1|alu1|Add0~31_combout\,
	datad => VCC,
	cin => \cpu1|micro1|alu1|Add0~26\,
	combout => \cpu1|micro1|alu1|Add0~32_combout\,
	cout => \cpu1|micro1|alu1|Add0~33\);

-- Location: LCCOMB_X47_Y7_N22
\cpu1|micro1|alu1|Add0~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|alu1|Add0~35_combout\ = (\cpu1|micro1|memoria|mem~8_combout\ & ((\cpu1|micro1|alu1|Add0~32_combout\))) # (!\cpu1|micro1|memoria|mem~8_combout\ & (\cpu1|micro1|alu1|Add0~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|memoria|mem~8_combout\,
	datac => \cpu1|micro1|alu1|Add0~34_combout\,
	datad => \cpu1|micro1|alu1|Add0~32_combout\,
	combout => \cpu1|micro1|alu1|Add0~35_combout\);

-- Location: LCCOMB_X47_Y7_N18
\cpu1|micro1|muxentradaregistro|y[4]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|muxentradaregistro|y[4]~15_combout\ = (\cpu1|micro1|memoria|mem~18_combout\ & ((\cpu1|micro1|muxentradaregistro|y[2]~10_combout\) # ((\cpu1|micro1|muxentradaregistro|y[0]~20_combout\ & \cpu1|micro1|alu1|Add0~35_combout\)))) # 
-- (!\cpu1|micro1|memoria|mem~18_combout\ & (((\cpu1|micro1|muxentradaregistro|y[0]~20_combout\ & \cpu1|micro1|alu1|Add0~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|memoria|mem~18_combout\,
	datab => \cpu1|micro1|muxentradaregistro|y[2]~10_combout\,
	datac => \cpu1|micro1|muxentradaregistro|y[0]~20_combout\,
	datad => \cpu1|micro1|alu1|Add0~35_combout\,
	combout => \cpu1|micro1|muxentradaregistro|y[4]~15_combout\);

-- Location: LCCOMB_X47_Y7_N4
\cpu1|micro1|registros|regb~36feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~36feeder_combout\ = \cpu1|micro1|muxentradaregistro|y[4]~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu1|micro1|muxentradaregistro|y[4]~15_combout\,
	combout => \cpu1|micro1|registros|regb~36feeder_combout\);

-- Location: LCFF_X47_Y7_N5
\cpu1|micro1|registros|regb~36\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \cpu1|micro1|registros|regb~36feeder_combout\,
	ena => \cpu1|micro1|registros|regb~209_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|registros|regb~36_regout\);

-- Location: LCCOMB_X49_Y9_N22
\cpu1|micro1|registros|regb~44feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~44feeder_combout\ = \cpu1|micro1|muxentradaregistro|y[4]~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu1|micro1|muxentradaregistro|y[4]~15_combout\,
	combout => \cpu1|micro1|registros|regb~44feeder_combout\);

-- Location: LCFF_X49_Y9_N23
\cpu1|micro1|registros|regb~44\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \cpu1|micro1|registros|regb~44feeder_combout\,
	ena => \cpu1|micro1|registros|regb~207_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|registros|regb~44_regout\);

-- Location: LCCOMB_X49_Y9_N4
\cpu1|micro1|registros|regb~183\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~183_combout\ = (\cpu1|micro1|memoria|mem~14_combout\ & (((\cpu1|micro1|registros|regb~60_regout\) # (\cpu1|micro1|memoria|mem~10_combout\)))) # (!\cpu1|micro1|memoria|mem~14_combout\ & (\cpu1|micro1|registros|regb~44_regout\ & 
-- ((!\cpu1|micro1|memoria|mem~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|memoria|mem~14_combout\,
	datab => \cpu1|micro1|registros|regb~44_regout\,
	datac => \cpu1|micro1|registros|regb~60_regout\,
	datad => \cpu1|micro1|memoria|mem~10_combout\,
	combout => \cpu1|micro1|registros|regb~183_combout\);

-- Location: LCCOMB_X49_Y9_N26
\cpu1|micro1|registros|regb~184\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~184_combout\ = (\cpu1|micro1|registros|regb~183_combout\ & ((\cpu1|micro1|registros|regb~52_regout\) # ((!\cpu1|micro1|memoria|mem~10_combout\)))) # (!\cpu1|micro1|registros|regb~183_combout\ & 
-- (((\cpu1|micro1|registros|regb~36_regout\ & \cpu1|micro1|memoria|mem~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|registros|regb~52_regout\,
	datab => \cpu1|micro1|registros|regb~36_regout\,
	datac => \cpu1|micro1|registros|regb~183_combout\,
	datad => \cpu1|micro1|memoria|mem~10_combout\,
	combout => \cpu1|micro1|registros|regb~184_combout\);

-- Location: LCCOMB_X47_Y8_N22
\cpu1|micro1|registros|regb~185\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~185_combout\ = (\cpu1|micro1|memoria|mem~14_combout\ & (((\cpu1|micro1|memoria|mem~10_combout\)))) # (!\cpu1|micro1|memoria|mem~14_combout\ & ((\cpu1|micro1|memoria|mem~10_combout\ & (\cpu1|micro1|registros|regb~4_regout\)) # 
-- (!\cpu1|micro1|memoria|mem~10_combout\ & ((\cpu1|micro1|registros|regb~12_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|registros|regb~4_regout\,
	datab => \cpu1|micro1|memoria|mem~14_combout\,
	datac => \cpu1|micro1|registros|regb~12_regout\,
	datad => \cpu1|micro1|memoria|mem~10_combout\,
	combout => \cpu1|micro1|registros|regb~185_combout\);

-- Location: LCCOMB_X49_Y7_N26
\cpu1|micro1|registros|regb~186\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~186_combout\ = (\cpu1|micro1|memoria|mem~14_combout\ & ((\cpu1|micro1|registros|regb~185_combout\ & ((\cpu1|micro1|registros|regb~20_regout\))) # (!\cpu1|micro1|registros|regb~185_combout\ & 
-- (\cpu1|micro1|registros|regb~28_regout\)))) # (!\cpu1|micro1|memoria|mem~14_combout\ & (((\cpu1|micro1|registros|regb~185_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|registros|regb~28_regout\,
	datab => \cpu1|micro1|memoria|mem~14_combout\,
	datac => \cpu1|micro1|registros|regb~20_regout\,
	datad => \cpu1|micro1|registros|regb~185_combout\,
	combout => \cpu1|micro1|registros|regb~186_combout\);

-- Location: LCCOMB_X49_Y7_N20
\cpu1|micro1|registros|regb~187\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~187_combout\ = (!\cpu1|micro1|memoria|mem~16_combout\ & ((\cpu1|micro1|memoria|mem~2_combout\ & (\cpu1|micro1|registros|regb~184_combout\)) # (!\cpu1|micro1|memoria|mem~2_combout\ & 
-- ((\cpu1|micro1|registros|regb~186_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|memoria|mem~2_combout\,
	datab => \cpu1|micro1|memoria|mem~16_combout\,
	datac => \cpu1|micro1|registros|regb~184_combout\,
	datad => \cpu1|micro1|registros|regb~186_combout\,
	combout => \cpu1|micro1|registros|regb~187_combout\);

-- Location: LCCOMB_X49_Y7_N28
\cpu1|micro1|registros|regb~188\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~188_combout\ = (\cpu1|micro1|memoria|mem~22_combout\ & (\cpu1|micro1|registros|regb~145_combout\)) # (!\cpu1|micro1|memoria|mem~22_combout\ & ((\cpu1|micro1|registros|regb~147_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|memoria|mem~22_combout\,
	datac => \cpu1|micro1|registros|regb~145_combout\,
	datad => \cpu1|micro1|registros|regb~147_combout\,
	combout => \cpu1|micro1|registros|regb~188_combout\);

-- Location: LCCOMB_X49_Y7_N18
\cpu1|micro1|alu1|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|alu1|Add0~30_combout\ = (\cpu1|micro1|memoria|mem~4_combout\ & (((\cpu1|micro1|registros|Equal1~0_combout\) # (!\cpu1|micro1|registros|regb~188_combout\)))) # (!\cpu1|micro1|memoria|mem~4_combout\ & (!\cpu1|micro1|memoria|mem~6_combout\ & 
-- (!\cpu1|micro1|registros|Equal1~0_combout\ & \cpu1|micro1|registros|regb~188_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|memoria|mem~6_combout\,
	datab => \cpu1|micro1|memoria|mem~4_combout\,
	datac => \cpu1|micro1|registros|Equal1~0_combout\,
	datad => \cpu1|micro1|registros|regb~188_combout\,
	combout => \cpu1|micro1|alu1|Add0~30_combout\);

-- Location: LCCOMB_X49_Y7_N12
\cpu1|micro1|alu1|Add0~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|alu1|Add0~31_combout\ = (\cpu1|micro1|alu1|Add0~30_combout\) # ((\cpu1|micro1|alu1|Add0~3_combout\ & ((\cpu1|micro1|registros|Equal0~0_combout\) # (!\cpu1|micro1|registros|regb~187_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|alu1|Add0~3_combout\,
	datab => \cpu1|micro1|registros|Equal0~0_combout\,
	datac => \cpu1|micro1|registros|regb~187_combout\,
	datad => \cpu1|micro1|alu1|Add0~30_combout\,
	combout => \cpu1|micro1|alu1|Add0~31_combout\);

-- Location: LCCOMB_X48_Y7_N26
\cpu1|micro1|alu1|Add0~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|alu1|Add0~39_combout\ = ((\cpu1|micro1|alu1|Add0~38_combout\ $ (\cpu1|micro1|alu1|Add0~36_combout\ $ (!\cpu1|micro1|alu1|Add0~33\)))) # (GND)
-- \cpu1|micro1|alu1|Add0~40\ = CARRY((\cpu1|micro1|alu1|Add0~38_combout\ & ((\cpu1|micro1|alu1|Add0~36_combout\) # (!\cpu1|micro1|alu1|Add0~33\))) # (!\cpu1|micro1|alu1|Add0~38_combout\ & (\cpu1|micro1|alu1|Add0~36_combout\ & !\cpu1|micro1|alu1|Add0~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|alu1|Add0~38_combout\,
	datab => \cpu1|micro1|alu1|Add0~36_combout\,
	datad => VCC,
	cin => \cpu1|micro1|alu1|Add0~33\,
	combout => \cpu1|micro1|alu1|Add0~39_combout\,
	cout => \cpu1|micro1|alu1|Add0~40\);

-- Location: LCCOMB_X48_Y6_N24
\cpu1|micro1|registros|regb~148\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~148_combout\ = (\cpu1|micro1|memoria|mem~20_combout\ & ((\cpu1|micro1|registros|regb~53_regout\) # ((\cpu1|micro1|memoria|mem~18_combout\)))) # (!\cpu1|micro1|memoria|mem~20_combout\ & (((\cpu1|micro1|registros|regb~37_regout\ 
-- & !\cpu1|micro1|memoria|mem~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|memoria|mem~20_combout\,
	datab => \cpu1|micro1|registros|regb~53_regout\,
	datac => \cpu1|micro1|registros|regb~37_regout\,
	datad => \cpu1|micro1|memoria|mem~18_combout\,
	combout => \cpu1|micro1|registros|regb~148_combout\);

-- Location: LCCOMB_X49_Y6_N28
\cpu1|micro1|registros|regb~149\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~149_combout\ = (\cpu1|micro1|memoria|mem~18_combout\ & ((\cpu1|micro1|registros|regb~148_combout\ & (\cpu1|micro1|registros|regb~61_regout\)) # (!\cpu1|micro1|registros|regb~148_combout\ & 
-- ((\cpu1|micro1|registros|regb~45_regout\))))) # (!\cpu1|micro1|memoria|mem~18_combout\ & (((\cpu1|micro1|registros|regb~148_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|registros|regb~61_regout\,
	datab => \cpu1|micro1|registros|regb~45_regout\,
	datac => \cpu1|micro1|memoria|mem~18_combout\,
	datad => \cpu1|micro1|registros|regb~148_combout\,
	combout => \cpu1|micro1|registros|regb~149_combout\);

-- Location: LCCOMB_X48_Y6_N8
\cpu1|micro1|muxademux|y[5]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|muxademux|y[5]~10_combout\ = (!\cpu1|micro1|registros|Equal1~0_combout\ & ((\cpu1|micro1|memoria|mem~22_combout\ & ((\cpu1|micro1|registros|regb~149_combout\))) # (!\cpu1|micro1|memoria|mem~22_combout\ & 
-- (\cpu1|micro1|registros|regb~151_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|registros|regb~151_combout\,
	datab => \cpu1|micro1|registros|regb~149_combout\,
	datac => \cpu1|micro1|registros|Equal1~0_combout\,
	datad => \cpu1|micro1|memoria|mem~22_combout\,
	combout => \cpu1|micro1|muxademux|y[5]~10_combout\);

-- Location: LCCOMB_X48_Y6_N4
\cpu1|micro1|alu1|Add0~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|alu1|Add0~41_combout\ = (\cpu1|micro1|registros|rd1[5]~6_combout\ & (\cpu1|micro1|memoria|mem~4_combout\ & ((\cpu1|micro1|muxademux|y[5]~10_combout\) # (!\cpu1|micro1|memoria|mem~6_combout\)))) # (!\cpu1|micro1|registros|rd1[5]~6_combout\ & 
-- ((\cpu1|micro1|memoria|mem~4_combout\ & ((\cpu1|micro1|memoria|mem~6_combout\))) # (!\cpu1|micro1|memoria|mem~4_combout\ & ((\cpu1|micro1|muxademux|y[5]~10_combout\) # (!\cpu1|micro1|memoria|mem~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|registros|rd1[5]~6_combout\,
	datab => \cpu1|micro1|memoria|mem~4_combout\,
	datac => \cpu1|micro1|muxademux|y[5]~10_combout\,
	datad => \cpu1|micro1|memoria|mem~6_combout\,
	combout => \cpu1|micro1|alu1|Add0~41_combout\);

-- Location: LCCOMB_X47_Y7_N26
\cpu1|micro1|alu1|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|alu1|Add0~42_combout\ = (\cpu1|micro1|memoria|mem~8_combout\ & (\cpu1|micro1|alu1|Add0~39_combout\)) # (!\cpu1|micro1|memoria|mem~8_combout\ & ((\cpu1|micro1|alu1|Add0~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|memoria|mem~8_combout\,
	datac => \cpu1|micro1|alu1|Add0~39_combout\,
	datad => \cpu1|micro1|alu1|Add0~41_combout\,
	combout => \cpu1|micro1|alu1|Add0~42_combout\);

-- Location: LCCOMB_X48_Y7_N0
\cpu1|micro1|muxentradaregistro|y[6]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|muxentradaregistro|y[6]~17_combout\ = (\cpu1|micro1|muxentradaregistro|y[2]~10_combout\ & ((\cpu1|micro1|memoria|mem~22_combout\) # ((\cpu1|micro1|muxentradaregistro|y[0]~20_combout\ & \cpu1|micro1|alu1|Add0~49_combout\)))) # 
-- (!\cpu1|micro1|muxentradaregistro|y[2]~10_combout\ & (\cpu1|micro1|muxentradaregistro|y[0]~20_combout\ & ((\cpu1|micro1|alu1|Add0~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|muxentradaregistro|y[2]~10_combout\,
	datab => \cpu1|micro1|muxentradaregistro|y[0]~20_combout\,
	datac => \cpu1|micro1|memoria|mem~22_combout\,
	datad => \cpu1|micro1|alu1|Add0~49_combout\,
	combout => \cpu1|micro1|muxentradaregistro|y[6]~17_combout\);

-- Location: LCFF_X48_Y8_N3
\cpu1|micro1|registros|regb~30\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \cpu1|micro1|muxentradaregistro|y[6]~17_combout\,
	sload => VCC,
	ena => \cpu1|micro1|registros|regb~214_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|registros|regb~30_regout\);

-- Location: LCFF_X48_Y8_N9
\cpu1|micro1|registros|regb~22\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \cpu1|micro1|muxentradaregistro|y[6]~17_combout\,
	sload => VCC,
	ena => \cpu1|micro1|registros|regb~211_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|registros|regb~22_regout\);

-- Location: LCFF_X47_Y8_N27
\cpu1|micro1|registros|regb~14\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \cpu1|micro1|muxentradaregistro|y[6]~17_combout\,
	sload => VCC,
	ena => \cpu1|micro1|registros|regb~212_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|registros|regb~14_regout\);

-- Location: LCCOMB_X47_Y8_N26
\cpu1|micro1|registros|regb~197\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~197_combout\ = (\cpu1|micro1|memoria|mem~10_combout\ & ((\cpu1|micro1|registros|regb~6_regout\) # ((\cpu1|micro1|memoria|mem~14_combout\)))) # (!\cpu1|micro1|memoria|mem~10_combout\ & (((\cpu1|micro1|registros|regb~14_regout\ & 
-- !\cpu1|micro1|memoria|mem~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|registros|regb~6_regout\,
	datab => \cpu1|micro1|memoria|mem~10_combout\,
	datac => \cpu1|micro1|registros|regb~14_regout\,
	datad => \cpu1|micro1|memoria|mem~14_combout\,
	combout => \cpu1|micro1|registros|regb~197_combout\);

-- Location: LCCOMB_X48_Y8_N8
\cpu1|micro1|registros|regb~198\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~198_combout\ = (\cpu1|micro1|memoria|mem~14_combout\ & ((\cpu1|micro1|registros|regb~197_combout\ & ((\cpu1|micro1|registros|regb~22_regout\))) # (!\cpu1|micro1|registros|regb~197_combout\ & 
-- (\cpu1|micro1|registros|regb~30_regout\)))) # (!\cpu1|micro1|memoria|mem~14_combout\ & (((\cpu1|micro1|registros|regb~197_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|memoria|mem~14_combout\,
	datab => \cpu1|micro1|registros|regb~30_regout\,
	datac => \cpu1|micro1|registros|regb~22_regout\,
	datad => \cpu1|micro1|registros|regb~197_combout\,
	combout => \cpu1|micro1|registros|regb~198_combout\);

-- Location: LCFF_X49_Y8_N3
\cpu1|micro1|registros|regb~54\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \cpu1|micro1|muxentradaregistro|y[6]~17_combout\,
	sload => VCC,
	ena => \cpu1|micro1|registros|regb~208_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|registros|regb~54_regout\);

-- Location: LCFF_X49_Y7_N15
\cpu1|micro1|registros|regb~62\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \cpu1|micro1|muxentradaregistro|y[6]~17_combout\,
	sload => VCC,
	ena => \cpu1|micro1|registros|regb~210_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|registros|regb~62_regout\);

-- Location: LCCOMB_X49_Y7_N0
\cpu1|micro1|registros|regb~195\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~195_combout\ = (\cpu1|micro1|memoria|mem~10_combout\ & (((\cpu1|micro1|memoria|mem~14_combout\)))) # (!\cpu1|micro1|memoria|mem~10_combout\ & ((\cpu1|micro1|memoria|mem~14_combout\ & ((\cpu1|micro1|registros|regb~62_regout\))) 
-- # (!\cpu1|micro1|memoria|mem~14_combout\ & (\cpu1|micro1|registros|regb~46_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|registros|regb~46_regout\,
	datab => \cpu1|micro1|registros|regb~62_regout\,
	datac => \cpu1|micro1|memoria|mem~10_combout\,
	datad => \cpu1|micro1|memoria|mem~14_combout\,
	combout => \cpu1|micro1|registros|regb~195_combout\);

-- Location: LCCOMB_X49_Y8_N22
\cpu1|micro1|registros|regb~196\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~196_combout\ = (\cpu1|micro1|memoria|mem~10_combout\ & ((\cpu1|micro1|registros|regb~195_combout\ & ((\cpu1|micro1|registros|regb~54_regout\))) # (!\cpu1|micro1|registros|regb~195_combout\ & 
-- (\cpu1|micro1|registros|regb~38_regout\)))) # (!\cpu1|micro1|memoria|mem~10_combout\ & (((\cpu1|micro1|registros|regb~195_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|registros|regb~38_regout\,
	datab => \cpu1|micro1|registros|regb~54_regout\,
	datac => \cpu1|micro1|memoria|mem~10_combout\,
	datad => \cpu1|micro1|registros|regb~195_combout\,
	combout => \cpu1|micro1|registros|regb~196_combout\);

-- Location: LCCOMB_X48_Y8_N4
\cpu1|micro1|registros|regb~199\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~199_combout\ = (!\cpu1|micro1|memoria|mem~16_combout\ & ((\cpu1|micro1|memoria|mem~2_combout\ & ((\cpu1|micro1|registros|regb~196_combout\))) # (!\cpu1|micro1|memoria|mem~2_combout\ & 
-- (\cpu1|micro1|registros|regb~198_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|memoria|mem~16_combout\,
	datab => \cpu1|micro1|memoria|mem~2_combout\,
	datac => \cpu1|micro1|registros|regb~198_combout\,
	datad => \cpu1|micro1|registros|regb~196_combout\,
	combout => \cpu1|micro1|registros|regb~199_combout\);

-- Location: LCCOMB_X48_Y8_N20
\cpu1|micro1|registros|rd1[6]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|rd1[6]~7_combout\ = (\cpu1|micro1|registros|Equal0~0_combout\) # (!\cpu1|micro1|registros|regb~199_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu1|micro1|registros|Equal0~0_combout\,
	datac => \cpu1|micro1|registros|regb~199_combout\,
	combout => \cpu1|micro1|registros|rd1[6]~7_combout\);

-- Location: LCCOMB_X49_Y8_N14
\cpu1|micro1|registros|regb~154\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~154_combout\ = (\cpu1|micro1|memoria|mem~20_combout\ & (((\cpu1|micro1|registros|regb~54_regout\) # (\cpu1|micro1|memoria|mem~18_combout\)))) # (!\cpu1|micro1|memoria|mem~20_combout\ & (\cpu1|micro1|registros|regb~38_regout\ & 
-- ((!\cpu1|micro1|memoria|mem~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|registros|regb~38_regout\,
	datab => \cpu1|micro1|memoria|mem~20_combout\,
	datac => \cpu1|micro1|registros|regb~54_regout\,
	datad => \cpu1|micro1|memoria|mem~18_combout\,
	combout => \cpu1|micro1|registros|regb~154_combout\);

-- Location: LCCOMB_X49_Y7_N14
\cpu1|micro1|registros|regb~155\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~155_combout\ = (\cpu1|micro1|memoria|mem~18_combout\ & ((\cpu1|micro1|registros|regb~154_combout\ & ((\cpu1|micro1|registros|regb~62_regout\))) # (!\cpu1|micro1|registros|regb~154_combout\ & 
-- (\cpu1|micro1|registros|regb~46_regout\)))) # (!\cpu1|micro1|memoria|mem~18_combout\ & (((\cpu1|micro1|registros|regb~154_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|registros|regb~46_regout\,
	datab => \cpu1|micro1|memoria|mem~18_combout\,
	datac => \cpu1|micro1|registros|regb~62_regout\,
	datad => \cpu1|micro1|registros|regb~154_combout\,
	combout => \cpu1|micro1|registros|regb~155_combout\);

-- Location: LCCOMB_X49_Y7_N4
\cpu1|micro1|muxademux|y[6]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|muxademux|y[6]~12_combout\ = (\cpu1|micro1|registros|Equal1~0_combout\) # ((\cpu1|micro1|memoria|mem~22_combout\ & ((!\cpu1|micro1|registros|regb~155_combout\))) # (!\cpu1|micro1|memoria|mem~22_combout\ & 
-- (!\cpu1|micro1|registros|regb~153_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|registros|regb~153_combout\,
	datab => \cpu1|micro1|memoria|mem~22_combout\,
	datac => \cpu1|micro1|registros|Equal1~0_combout\,
	datad => \cpu1|micro1|registros|regb~155_combout\,
	combout => \cpu1|micro1|muxademux|y[6]~12_combout\);

-- Location: LCCOMB_X48_Y8_N26
\cpu1|micro1|alu1|Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|alu1|Add0~48_combout\ = (\cpu1|micro1|memoria|mem~6_combout\ & ((\cpu1|micro1|memoria|mem~4_combout\ & ((!\cpu1|micro1|muxademux|y[6]~12_combout\) # (!\cpu1|micro1|registros|rd1[6]~7_combout\))) # (!\cpu1|micro1|memoria|mem~4_combout\ & 
-- (!\cpu1|micro1|registros|rd1[6]~7_combout\ & !\cpu1|micro1|muxademux|y[6]~12_combout\)))) # (!\cpu1|micro1|memoria|mem~6_combout\ & (\cpu1|micro1|memoria|mem~4_combout\ $ ((!\cpu1|micro1|registros|rd1[6]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100111001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|memoria|mem~6_combout\,
	datab => \cpu1|micro1|memoria|mem~4_combout\,
	datac => \cpu1|micro1|registros|rd1[6]~7_combout\,
	datad => \cpu1|micro1|muxademux|y[6]~12_combout\,
	combout => \cpu1|micro1|alu1|Add0~48_combout\);

-- Location: LCFF_X47_Y8_N25
\cpu1|micro1|registros|regb~6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \cpu1|micro1|muxentradaregistro|y[6]~17_combout\,
	sload => VCC,
	ena => \cpu1|micro1|registros|regb~213_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|registros|regb~6_regout\);

-- Location: LCCOMB_X47_Y8_N24
\cpu1|micro1|registros|regb~152\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~152_combout\ = (\cpu1|micro1|memoria|mem~20_combout\ & (((\cpu1|micro1|memoria|mem~18_combout\)))) # (!\cpu1|micro1|memoria|mem~20_combout\ & ((\cpu1|micro1|memoria|mem~18_combout\ & (\cpu1|micro1|registros|regb~14_regout\)) # 
-- (!\cpu1|micro1|memoria|mem~18_combout\ & ((\cpu1|micro1|registros|regb~6_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|memoria|mem~20_combout\,
	datab => \cpu1|micro1|registros|regb~14_regout\,
	datac => \cpu1|micro1|registros|regb~6_regout\,
	datad => \cpu1|micro1|memoria|mem~18_combout\,
	combout => \cpu1|micro1|registros|regb~152_combout\);

-- Location: LCCOMB_X48_Y8_N2
\cpu1|micro1|registros|regb~153\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~153_combout\ = (\cpu1|micro1|memoria|mem~20_combout\ & ((\cpu1|micro1|registros|regb~152_combout\ & ((\cpu1|micro1|registros|regb~30_regout\))) # (!\cpu1|micro1|registros|regb~152_combout\ & 
-- (\cpu1|micro1|registros|regb~22_regout\)))) # (!\cpu1|micro1|memoria|mem~20_combout\ & (((\cpu1|micro1|registros|regb~152_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|memoria|mem~20_combout\,
	datab => \cpu1|micro1|registros|regb~22_regout\,
	datac => \cpu1|micro1|registros|regb~30_regout\,
	datad => \cpu1|micro1|registros|regb~152_combout\,
	combout => \cpu1|micro1|registros|regb~153_combout\);

-- Location: LCCOMB_X49_Y7_N22
\cpu1|micro1|registros|regb~200\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~200_combout\ = (\cpu1|micro1|memoria|mem~22_combout\ & ((\cpu1|micro1|registros|regb~155_combout\))) # (!\cpu1|micro1|memoria|mem~22_combout\ & (\cpu1|micro1|registros|regb~153_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|memoria|mem~22_combout\,
	datac => \cpu1|micro1|registros|regb~153_combout\,
	datad => \cpu1|micro1|registros|regb~155_combout\,
	combout => \cpu1|micro1|registros|regb~200_combout\);

-- Location: LCCOMB_X49_Y7_N16
\cpu1|micro1|alu1|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|alu1|Add0~44_combout\ = (\cpu1|micro1|memoria|mem~4_combout\ & (((\cpu1|micro1|registros|Equal1~0_combout\) # (!\cpu1|micro1|registros|regb~200_combout\)))) # (!\cpu1|micro1|memoria|mem~4_combout\ & (!\cpu1|micro1|memoria|mem~6_combout\ & 
-- (!\cpu1|micro1|registros|Equal1~0_combout\ & \cpu1|micro1|registros|regb~200_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|memoria|mem~6_combout\,
	datab => \cpu1|micro1|memoria|mem~4_combout\,
	datac => \cpu1|micro1|registros|Equal1~0_combout\,
	datad => \cpu1|micro1|registros|regb~200_combout\,
	combout => \cpu1|micro1|alu1|Add0~44_combout\);

-- Location: LCCOMB_X49_Y7_N10
\cpu1|micro1|alu1|Add0~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|alu1|Add0~45_combout\ = (\cpu1|micro1|alu1|Add0~44_combout\) # ((\cpu1|micro1|alu1|Add0~3_combout\ & ((\cpu1|micro1|registros|Equal0~0_combout\) # (!\cpu1|micro1|registros|regb~199_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|alu1|Add0~3_combout\,
	datab => \cpu1|micro1|registros|Equal0~0_combout\,
	datac => \cpu1|micro1|alu1|Add0~44_combout\,
	datad => \cpu1|micro1|registros|regb~199_combout\,
	combout => \cpu1|micro1|alu1|Add0~45_combout\);

-- Location: LCCOMB_X48_Y7_N28
\cpu1|micro1|alu1|Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|alu1|Add0~46_combout\ = (\cpu1|micro1|alu1|Add0~43_combout\ & ((\cpu1|micro1|alu1|Add0~45_combout\ & (\cpu1|micro1|alu1|Add0~40\ & VCC)) # (!\cpu1|micro1|alu1|Add0~45_combout\ & (!\cpu1|micro1|alu1|Add0~40\)))) # 
-- (!\cpu1|micro1|alu1|Add0~43_combout\ & ((\cpu1|micro1|alu1|Add0~45_combout\ & (!\cpu1|micro1|alu1|Add0~40\)) # (!\cpu1|micro1|alu1|Add0~45_combout\ & ((\cpu1|micro1|alu1|Add0~40\) # (GND)))))
-- \cpu1|micro1|alu1|Add0~47\ = CARRY((\cpu1|micro1|alu1|Add0~43_combout\ & (!\cpu1|micro1|alu1|Add0~45_combout\ & !\cpu1|micro1|alu1|Add0~40\)) # (!\cpu1|micro1|alu1|Add0~43_combout\ & ((!\cpu1|micro1|alu1|Add0~40\) # 
-- (!\cpu1|micro1|alu1|Add0~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|alu1|Add0~43_combout\,
	datab => \cpu1|micro1|alu1|Add0~45_combout\,
	datad => VCC,
	cin => \cpu1|micro1|alu1|Add0~40\,
	combout => \cpu1|micro1|alu1|Add0~46_combout\,
	cout => \cpu1|micro1|alu1|Add0~47\);

-- Location: LCCOMB_X48_Y7_N12
\cpu1|micro1|alu1|Add0~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|alu1|Add0~49_combout\ = (\cpu1|micro1|memoria|mem~8_combout\ & ((\cpu1|micro1|alu1|Add0~46_combout\))) # (!\cpu1|micro1|memoria|mem~8_combout\ & (\cpu1|micro1|alu1|Add0~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|memoria|mem~8_combout\,
	datac => \cpu1|micro1|alu1|Add0~48_combout\,
	datad => \cpu1|micro1|alu1|Add0~46_combout\,
	combout => \cpu1|micro1|alu1|Add0~49_combout\);

-- Location: LCCOMB_X47_Y8_N18
\cpu1|micro1|muxentradaregistro|y[7]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|muxentradaregistro|y[7]~18_combout\ = ((\cpu1|micro1|memoria|mem~6_combout\ & ((\cpu1|micro1|memoria|mem~14_combout\) # (!\cpu1|micro1|memoria|mem~10_combout\)))) # (!\cpu1|micro1|muxentradaregistro|y[7]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|memoria|mem~6_combout\,
	datab => \cpu1|micro1|memoria|mem~14_combout\,
	datac => \cpu1|micro1|memoria|mem~10_combout\,
	datad => \cpu1|micro1|muxentradaregistro|y[7]~2_combout\,
	combout => \cpu1|micro1|muxentradaregistro|y[7]~18_combout\);

-- Location: LCFF_X48_Y5_N29
\cpu1|micro1|registros|regb~63\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \cpu1|micro1|muxentradaregistro|y[7]~19_combout\,
	sload => VCC,
	ena => \cpu1|micro1|registros|regb~210_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|registros|regb~63_regout\);

-- Location: LCCOMB_X49_Y8_N30
\cpu1|micro1|registros|regb~156\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~156_combout\ = (\cpu1|micro1|memoria|mem~20_combout\ & ((\cpu1|micro1|registros|regb~55_regout\) # ((\cpu1|micro1|memoria|mem~18_combout\)))) # (!\cpu1|micro1|memoria|mem~20_combout\ & (((\cpu1|micro1|registros|regb~39_regout\ 
-- & !\cpu1|micro1|memoria|mem~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|registros|regb~55_regout\,
	datab => \cpu1|micro1|memoria|mem~20_combout\,
	datac => \cpu1|micro1|registros|regb~39_regout\,
	datad => \cpu1|micro1|memoria|mem~18_combout\,
	combout => \cpu1|micro1|registros|regb~156_combout\);

-- Location: LCCOMB_X49_Y8_N28
\cpu1|micro1|registros|regb~157\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~157_combout\ = (\cpu1|micro1|memoria|mem~18_combout\ & ((\cpu1|micro1|registros|regb~156_combout\ & ((\cpu1|micro1|registros|regb~63_regout\))) # (!\cpu1|micro1|registros|regb~156_combout\ & 
-- (\cpu1|micro1|registros|regb~47_regout\)))) # (!\cpu1|micro1|memoria|mem~18_combout\ & (((\cpu1|micro1|registros|regb~156_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|registros|regb~47_regout\,
	datab => \cpu1|micro1|registros|regb~63_regout\,
	datac => \cpu1|micro1|memoria|mem~18_combout\,
	datad => \cpu1|micro1|registros|regb~156_combout\,
	combout => \cpu1|micro1|registros|regb~157_combout\);

-- Location: LCFF_X48_Y8_N1
\cpu1|micro1|registros|regb~23\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \cpu1|micro1|muxentradaregistro|y[7]~19_combout\,
	sload => VCC,
	ena => \cpu1|micro1|registros|regb~211_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|registros|regb~23_regout\);

-- Location: LCFF_X48_Y8_N19
\cpu1|micro1|registros|regb~31\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \cpu1|micro1|muxentradaregistro|y[7]~19_combout\,
	sload => VCC,
	ena => \cpu1|micro1|registros|regb~214_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|registros|regb~31_regout\);

-- Location: LCFF_X47_Y8_N5
\cpu1|micro1|registros|regb~7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \cpu1|micro1|muxentradaregistro|y[7]~19_combout\,
	ena => \cpu1|micro1|registros|regb~213_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|registros|regb~7_regout\);

-- Location: LCFF_X47_Y8_N15
\cpu1|micro1|registros|regb~15\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \cpu1|micro1|muxentradaregistro|y[7]~19_combout\,
	sload => VCC,
	ena => \cpu1|micro1|registros|regb~212_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|registros|regb~15_regout\);

-- Location: LCCOMB_X47_Y8_N14
\cpu1|micro1|registros|regb~158\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~158_combout\ = (\cpu1|micro1|memoria|mem~20_combout\ & (((\cpu1|micro1|memoria|mem~18_combout\)))) # (!\cpu1|micro1|memoria|mem~20_combout\ & ((\cpu1|micro1|memoria|mem~18_combout\ & ((\cpu1|micro1|registros|regb~15_regout\))) 
-- # (!\cpu1|micro1|memoria|mem~18_combout\ & (\cpu1|micro1|registros|regb~7_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|memoria|mem~20_combout\,
	datab => \cpu1|micro1|registros|regb~7_regout\,
	datac => \cpu1|micro1|registros|regb~15_regout\,
	datad => \cpu1|micro1|memoria|mem~18_combout\,
	combout => \cpu1|micro1|registros|regb~158_combout\);

-- Location: LCCOMB_X48_Y8_N18
\cpu1|micro1|registros|regb~159\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~159_combout\ = (\cpu1|micro1|memoria|mem~20_combout\ & ((\cpu1|micro1|registros|regb~158_combout\ & ((\cpu1|micro1|registros|regb~31_regout\))) # (!\cpu1|micro1|registros|regb~158_combout\ & 
-- (\cpu1|micro1|registros|regb~23_regout\)))) # (!\cpu1|micro1|memoria|mem~20_combout\ & (((\cpu1|micro1|registros|regb~158_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|memoria|mem~20_combout\,
	datab => \cpu1|micro1|registros|regb~23_regout\,
	datac => \cpu1|micro1|registros|regb~31_regout\,
	datad => \cpu1|micro1|registros|regb~158_combout\,
	combout => \cpu1|micro1|registros|regb~159_combout\);

-- Location: LCCOMB_X47_Y8_N12
\cpu1|micro1|registros|regb~206\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~206_combout\ = (\cpu1|micro1|memoria|mem~22_combout\ & (\cpu1|micro1|registros|regb~157_combout\)) # (!\cpu1|micro1|memoria|mem~22_combout\ & ((\cpu1|micro1|registros|regb~159_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu1|micro1|memoria|mem~22_combout\,
	datac => \cpu1|micro1|registros|regb~157_combout\,
	datad => \cpu1|micro1|registros|regb~159_combout\,
	combout => \cpu1|micro1|registros|regb~206_combout\);

-- Location: LCCOMB_X47_Y8_N30
\cpu1|micro1|alu1|Add0~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|alu1|Add0~53_combout\ = (\cpu1|micro1|memoria|mem~4_combout\ & (((\cpu1|micro1|registros|Equal1~0_combout\) # (!\cpu1|micro1|registros|regb~206_combout\)))) # (!\cpu1|micro1|memoria|mem~4_combout\ & (!\cpu1|micro1|memoria|mem~6_combout\ & 
-- (!\cpu1|micro1|registros|Equal1~0_combout\ & \cpu1|micro1|registros|regb~206_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|memoria|mem~6_combout\,
	datab => \cpu1|micro1|memoria|mem~4_combout\,
	datac => \cpu1|micro1|registros|Equal1~0_combout\,
	datad => \cpu1|micro1|registros|regb~206_combout\,
	combout => \cpu1|micro1|alu1|Add0~53_combout\);

-- Location: LCCOMB_X47_Y8_N16
\cpu1|micro1|alu1|Add0~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|alu1|Add0~54_combout\ = (\cpu1|micro1|alu1|Add0~53_combout\) # ((\cpu1|micro1|alu1|Add0~3_combout\ & ((\cpu1|micro1|registros|Equal0~0_combout\) # (!\cpu1|micro1|registros|regb~205_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|registros|Equal0~0_combout\,
	datab => \cpu1|micro1|alu1|Add0~3_combout\,
	datac => \cpu1|micro1|registros|regb~205_combout\,
	datad => \cpu1|micro1|alu1|Add0~53_combout\,
	combout => \cpu1|micro1|alu1|Add0~54_combout\);

-- Location: LCCOMB_X48_Y7_N30
\cpu1|micro1|alu1|Add0~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|alu1|Add0~55_combout\ = \cpu1|micro1|alu1|Add0~52_combout\ $ (\cpu1|micro1|alu1|Add0~47\ $ (!\cpu1|micro1|alu1|Add0~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|alu1|Add0~52_combout\,
	datad => \cpu1|micro1|alu1|Add0~54_combout\,
	cin => \cpu1|micro1|alu1|Add0~47\,
	combout => \cpu1|micro1|alu1|Add0~55_combout\);

-- Location: LCCOMB_X47_Y8_N4
\cpu1|micro1|muxentradaregistro|y[7]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|muxentradaregistro|y[7]~19_combout\ = (\cpu1|micro1|muxentradaregistro|y[7]~18_combout\ & ((\cpu1|micro1|memoria|mem~8_combout\ & (\cpu1|micro1|alu1|Add0~55_combout\)) # (!\cpu1|micro1|memoria|mem~8_combout\ & 
-- ((\cpu1|micro1|alu1|Add0~57_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|memoria|mem~8_combout\,
	datab => \cpu1|micro1|muxentradaregistro|y[7]~18_combout\,
	datac => \cpu1|micro1|alu1|Add0~55_combout\,
	datad => \cpu1|micro1|alu1|Add0~57_combout\,
	combout => \cpu1|micro1|muxentradaregistro|y[7]~19_combout\);

-- Location: LCFF_X49_Y8_N31
\cpu1|micro1|registros|regb~39\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \cpu1|micro1|muxentradaregistro|y[7]~19_combout\,
	sload => VCC,
	ena => \cpu1|micro1|registros|regb~209_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|registros|regb~39_regout\);

-- Location: LCFF_X49_Y8_N9
\cpu1|micro1|registros|regb~55\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \cpu1|micro1|muxentradaregistro|y[7]~19_combout\,
	sload => VCC,
	ena => \cpu1|micro1|registros|regb~208_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|registros|regb~55_regout\);

-- Location: LCCOMB_X49_Y6_N2
\cpu1|micro1|registros|regb~47feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~47feeder_combout\ = \cpu1|micro1|muxentradaregistro|y[7]~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu1|micro1|muxentradaregistro|y[7]~19_combout\,
	combout => \cpu1|micro1|registros|regb~47feeder_combout\);

-- Location: LCFF_X49_Y6_N3
\cpu1|micro1|registros|regb~47\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \cpu1|micro1|registros|regb~47feeder_combout\,
	ena => \cpu1|micro1|registros|regb~207_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|registros|regb~47_regout\);

-- Location: LCCOMB_X49_Y8_N12
\cpu1|micro1|registros|regb~201\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~201_combout\ = (\cpu1|micro1|memoria|mem~10_combout\ & (((\cpu1|micro1|memoria|mem~14_combout\)))) # (!\cpu1|micro1|memoria|mem~10_combout\ & ((\cpu1|micro1|memoria|mem~14_combout\ & ((\cpu1|micro1|registros|regb~63_regout\))) 
-- # (!\cpu1|micro1|memoria|mem~14_combout\ & (\cpu1|micro1|registros|regb~47_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|memoria|mem~10_combout\,
	datab => \cpu1|micro1|registros|regb~47_regout\,
	datac => \cpu1|micro1|memoria|mem~14_combout\,
	datad => \cpu1|micro1|registros|regb~63_regout\,
	combout => \cpu1|micro1|registros|regb~201_combout\);

-- Location: LCCOMB_X49_Y8_N8
\cpu1|micro1|registros|regb~202\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~202_combout\ = (\cpu1|micro1|memoria|mem~10_combout\ & ((\cpu1|micro1|registros|regb~201_combout\ & ((\cpu1|micro1|registros|regb~55_regout\))) # (!\cpu1|micro1|registros|regb~201_combout\ & 
-- (\cpu1|micro1|registros|regb~39_regout\)))) # (!\cpu1|micro1|memoria|mem~10_combout\ & (((\cpu1|micro1|registros|regb~201_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|memoria|mem~10_combout\,
	datab => \cpu1|micro1|registros|regb~39_regout\,
	datac => \cpu1|micro1|registros|regb~55_regout\,
	datad => \cpu1|micro1|registros|regb~201_combout\,
	combout => \cpu1|micro1|registros|regb~202_combout\);

-- Location: LCCOMB_X48_Y8_N10
\cpu1|micro1|registros|regb~205\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|regb~205_combout\ = (!\cpu1|micro1|memoria|mem~16_combout\ & ((\cpu1|micro1|memoria|mem~2_combout\ & ((\cpu1|micro1|registros|regb~202_combout\))) # (!\cpu1|micro1|memoria|mem~2_combout\ & 
-- (\cpu1|micro1|registros|regb~204_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|registros|regb~204_combout\,
	datab => \cpu1|micro1|registros|regb~202_combout\,
	datac => \cpu1|micro1|memoria|mem~16_combout\,
	datad => \cpu1|micro1|memoria|mem~2_combout\,
	combout => \cpu1|micro1|registros|regb~205_combout\);

-- Location: LCCOMB_X48_Y8_N28
\cpu1|micro1|registros|rd1[7]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|registros|rd1[7]~8_combout\ = (\cpu1|micro1|registros|Equal0~0_combout\) # (!\cpu1|micro1|registros|regb~205_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu1|micro1|registros|Equal0~0_combout\,
	datad => \cpu1|micro1|registros|regb~205_combout\,
	combout => \cpu1|micro1|registros|rd1[7]~8_combout\);

-- Location: LCCOMB_X47_Y8_N2
\cpu1|micro1|alu1|Add0~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|alu1|Add0~57_combout\ = (\cpu1|micro1|memoria|mem~4_combout\ & ((\cpu1|micro1|memoria|mem~6_combout\ & ((\cpu1|micro1|muxademux|y[7]~14_combout\) # (!\cpu1|micro1|registros|rd1[7]~8_combout\))) # (!\cpu1|micro1|memoria|mem~6_combout\ & 
-- ((\cpu1|micro1|registros|rd1[7]~8_combout\))))) # (!\cpu1|micro1|memoria|mem~4_combout\ & (!\cpu1|micro1|registros|rd1[7]~8_combout\ & ((\cpu1|micro1|muxademux|y[7]~14_combout\) # (!\cpu1|micro1|memoria|mem~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|muxademux|y[7]~14_combout\,
	datab => \cpu1|micro1|memoria|mem~4_combout\,
	datac => \cpu1|micro1|memoria|mem~6_combout\,
	datad => \cpu1|micro1|registros|rd1[7]~8_combout\,
	combout => \cpu1|micro1|alu1|Add0~57_combout\);

-- Location: LCCOMB_X47_Y7_N12
\cpu1|micro1|alu1|WideOr0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|alu1|WideOr0~1_combout\ = (\cpu1|micro1|alu1|Add0~51_combout\) # ((\cpu1|micro1|memoria|mem~8_combout\ & ((\cpu1|micro1|alu1|Add0~55_combout\))) # (!\cpu1|micro1|memoria|mem~8_combout\ & (\cpu1|micro1|alu1|Add0~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|memoria|mem~8_combout\,
	datab => \cpu1|micro1|alu1|Add0~57_combout\,
	datac => \cpu1|micro1|alu1|Add0~55_combout\,
	datad => \cpu1|micro1|alu1|Add0~51_combout\,
	combout => \cpu1|micro1|alu1|WideOr0~1_combout\);

-- Location: LCCOMB_X47_Y7_N0
\cpu1|micro1|alu1|WideOr0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|alu1|WideOr0~combout\ = (!\cpu1|micro1|alu1|WideOr0~0_combout\ & (!\cpu1|micro1|alu1|Add0~42_combout\ & (!\cpu1|micro1|alu1|Add0~49_combout\ & !\cpu1|micro1|alu1|WideOr0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|alu1|WideOr0~0_combout\,
	datab => \cpu1|micro1|alu1|Add0~42_combout\,
	datac => \cpu1|micro1|alu1|Add0~49_combout\,
	datad => \cpu1|micro1|alu1|WideOr0~1_combout\,
	combout => \cpu1|micro1|alu1|WideOr0~combout\);

-- Location: LCFF_X47_Y7_N1
\cpu1|micro1|regzero|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \cpu1|micro1|alu1|WideOr0~combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|regzero|q\(0));

-- Location: LCCOMB_X49_Y8_N4
\cpu1|uc1|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|uc1|Selector0~0_combout\ = (\cpu1|micro1|memoria|mem~10_combout\ & (\cpu1|micro1|memoria|mem~4_combout\ $ (((!\cpu1|micro1|memoria|mem~8_combout\) # (!\cpu1|micro1|regzero|q\(0)))))) # (!\cpu1|micro1|memoria|mem~10_combout\ & 
-- (((!\cpu1|micro1|memoria|mem~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|memoria|mem~10_combout\,
	datab => \cpu1|micro1|regzero|q\(0),
	datac => \cpu1|micro1|memoria|mem~8_combout\,
	datad => \cpu1|micro1|memoria|mem~4_combout\,
	combout => \cpu1|uc1|Selector0~0_combout\);

-- Location: LCCOMB_X49_Y8_N2
\cpu1|uc1|Selector0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|uc1|Selector0~2_combout\ = (\cpu1|uc1|Selector0~0_combout\) # (!\cpu1|uc1|Selector0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu1|uc1|Selector0~0_combout\,
	datad => \cpu1|uc1|Selector0~1_combout\,
	combout => \cpu1|uc1|Selector0~2_combout\);

-- Location: LCCOMB_X45_Y10_N22
\cpu1|micro1|mux_srel|y[8]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|mux_srel|y[8]~7_combout\ = (!\cpu1|micro1|memoria|mem~27_combout\ & (\cpu1|uc1|s_rel~1_combout\ & \cpu1|micro1|memoria|mem~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|memoria|mem~27_combout\,
	datab => \cpu1|uc1|s_rel~1_combout\,
	datac => \cpu1|micro1|memoria|mem~29_combout\,
	combout => \cpu1|micro1|mux_srel|y[8]~7_combout\);

-- Location: LCCOMB_X49_Y10_N24
\cpu1|micro1|sum_pc|y[8]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|sum_pc|y[8]~16_combout\ = ((\cpu1|micro1|pc|q\(8) $ (\cpu1|micro1|mux_srel|y[8]~7_combout\ $ (!\cpu1|micro1|sum_pc|y[7]~15\)))) # (GND)
-- \cpu1|micro1|sum_pc|y[8]~17\ = CARRY((\cpu1|micro1|pc|q\(8) & ((\cpu1|micro1|mux_srel|y[8]~7_combout\) # (!\cpu1|micro1|sum_pc|y[7]~15\))) # (!\cpu1|micro1|pc|q\(8) & (\cpu1|micro1|mux_srel|y[8]~7_combout\ & !\cpu1|micro1|sum_pc|y[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|pc|q\(8),
	datab => \cpu1|micro1|mux_srel|y[8]~7_combout\,
	datad => VCC,
	cin => \cpu1|micro1|sum_pc|y[7]~15\,
	combout => \cpu1|micro1|sum_pc|y[8]~16_combout\,
	cout => \cpu1|micro1|sum_pc|y[8]~17\);

-- Location: LCCOMB_X49_Y10_N26
\cpu1|micro1|sum_pc|y[9]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|sum_pc|y[9]~18_combout\ = \cpu1|micro1|sum_pc|y[8]~17\ $ (\cpu1|micro1|pc|q\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \cpu1|micro1|pc|q\(9),
	cin => \cpu1|micro1|sum_pc|y[8]~17\,
	combout => \cpu1|micro1|sum_pc|y[9]~18_combout\);

-- Location: LCCOMB_X49_Y10_N30
\cpu1|micro1|retornopc|y[9]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|retornopc|y[9]~1_combout\ = (\cpu1|uc1|s_ret~0_combout\ & (\cpu1|micro1|pcbackup|q\(9))) # (!\cpu1|uc1|s_ret~0_combout\ & (((\cpu1|uc1|Selector0~2_combout\ & \cpu1|micro1|sum_pc|y[9]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|pcbackup|q\(9),
	datab => \cpu1|uc1|Selector0~2_combout\,
	datac => \cpu1|uc1|s_ret~0_combout\,
	datad => \cpu1|micro1|sum_pc|y[9]~18_combout\,
	combout => \cpu1|micro1|retornopc|y[9]~1_combout\);

-- Location: LCFF_X49_Y10_N31
\cpu1|micro1|pc|q[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \cpu1|micro1|retornopc|y[9]~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|pc|q\(9));

-- Location: LCCOMB_X48_Y10_N24
\cpu1|micro1|pc|q[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|pc|q[4]~4_combout\ = (\cpu1|uc1|Selector0~2_combout\ & ((\cpu1|micro1|sum_pc|y[4]~8_combout\))) # (!\cpu1|uc1|Selector0~2_combout\ & (\cpu1|micro1|memoria|mem~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|uc1|Selector0~2_combout\,
	datab => \cpu1|micro1|memoria|mem~22_combout\,
	datad => \cpu1|micro1|sum_pc|y[4]~8_combout\,
	combout => \cpu1|micro1|pc|q[4]~4_combout\);

-- Location: LCFF_X49_Y10_N17
\cpu1|micro1|pcbackup|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \cpu1|micro1|sum_pc|y[4]~8_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu1|uc1|s_bk~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|pcbackup|q\(4));

-- Location: LCFF_X48_Y10_N25
\cpu1|micro1|pc|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \cpu1|micro1|pc|q[4]~4_combout\,
	sdata => \cpu1|micro1|pcbackup|q\(4),
	aclr => \reset~clkctrl_outclk\,
	sload => \cpu1|uc1|s_ret~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|pc|q\(4));

-- Location: LCCOMB_X48_Y10_N2
\cpu1|micro1|pc|q[6]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|pc|q[6]~5_combout\ = (\cpu1|uc1|Selector0~2_combout\ & ((\cpu1|micro1|sum_pc|y[6]~12_combout\))) # (!\cpu1|uc1|Selector0~2_combout\ & (\cpu1|micro1|memoria|mem~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|uc1|Selector0~2_combout\,
	datab => \cpu1|micro1|memoria|mem~24_combout\,
	datad => \cpu1|micro1|sum_pc|y[6]~12_combout\,
	combout => \cpu1|micro1|pc|q[6]~5_combout\);

-- Location: LCFF_X49_Y10_N21
\cpu1|micro1|pcbackup|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \cpu1|micro1|sum_pc|y[6]~12_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu1|uc1|s_bk~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|pcbackup|q\(6));

-- Location: LCFF_X48_Y10_N3
\cpu1|micro1|pc|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \cpu1|micro1|pc|q[6]~5_combout\,
	sdata => \cpu1|micro1|pcbackup|q\(6),
	aclr => \reset~clkctrl_outclk\,
	sload => \cpu1|uc1|s_ret~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|pc|q\(6));

-- Location: LCCOMB_X48_Y10_N30
\cpu1|micro1|memoria|mem~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|memoria|mem~1_combout\ = (!\cpu1|micro1|pc|q\(5) & (!\cpu1|micro1|pc|q\(9) & (!\cpu1|micro1|pc|q\(4) & !\cpu1|micro1|pc|q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|pc|q\(5),
	datab => \cpu1|micro1|pc|q\(9),
	datac => \cpu1|micro1|pc|q\(4),
	datad => \cpu1|micro1|pc|q\(6),
	combout => \cpu1|micro1|memoria|mem~1_combout\);

-- Location: LCCOMB_X46_Y10_N30
\cpu1|micro1|memoria|mem~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|memoria|mem~27_combout\ = (\cpu1|micro1|pc|q\(3) & ((\cpu1|micro1|pc|q\(2) $ (!\cpu1|micro1|pc|q\(1))) # (!\cpu1|micro1|pc|q\(0)))) # (!\cpu1|micro1|pc|q\(3) & ((\cpu1|micro1|pc|q\(2)) # ((\cpu1|micro1|pc|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|pc|q\(2),
	datab => \cpu1|micro1|pc|q\(3),
	datac => \cpu1|micro1|pc|q\(1),
	datad => \cpu1|micro1|pc|q\(0),
	combout => \cpu1|micro1|memoria|mem~27_combout\);

-- Location: LCCOMB_X46_Y10_N28
\cpu1|micro1|memoria|mem~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|memoria|mem~28_combout\ = (\cpu1|micro1|pc|q\(7)) # ((\cpu1|micro1|pc|q\(8)) # ((\cpu1|micro1|memoria|mem~27_combout\) # (!\cpu1|micro1|memoria|mem~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|pc|q\(7),
	datab => \cpu1|micro1|pc|q\(8),
	datac => \cpu1|micro1|memoria|mem~1_combout\,
	datad => \cpu1|micro1|memoria|mem~27_combout\,
	combout => \cpu1|micro1|memoria|mem~28_combout\);

-- Location: LCCOMB_X48_Y10_N18
\cpu1|micro1|pc|q[8]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|pc|q[8]~7_combout\ = (\cpu1|uc1|Selector0~2_combout\ & ((\cpu1|micro1|sum_pc|y[8]~16_combout\))) # (!\cpu1|uc1|Selector0~2_combout\ & (!\cpu1|micro1|memoria|mem~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|uc1|Selector0~2_combout\,
	datab => \cpu1|micro1|memoria|mem~28_combout\,
	datad => \cpu1|micro1|sum_pc|y[8]~16_combout\,
	combout => \cpu1|micro1|pc|q[8]~7_combout\);

-- Location: LCFF_X49_Y10_N25
\cpu1|micro1|pcbackup|q[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \cpu1|micro1|sum_pc|y[8]~16_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu1|uc1|s_bk~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|pcbackup|q\(8));

-- Location: LCFF_X48_Y10_N19
\cpu1|micro1|pc|q[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \cpu1|micro1|pc|q[8]~7_combout\,
	sdata => \cpu1|micro1|pcbackup|q\(8),
	aclr => \reset~clkctrl_outclk\,
	sload => \cpu1|uc1|s_ret~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|pc|q\(8));

-- Location: LCCOMB_X48_Y10_N20
\cpu1|micro1|memoria|mem~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|memoria|mem~17_combout\ = (\cpu1|micro1|pc|q\(3) & ((\cpu1|micro1|pc|q\(1) & (\cpu1|micro1|pc|q\(0) & !\cpu1|micro1|pc|q\(2))) # (!\cpu1|micro1|pc|q\(1) & ((\cpu1|micro1|pc|q\(0)) # (!\cpu1|micro1|pc|q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|pc|q\(3),
	datab => \cpu1|micro1|pc|q\(1),
	datac => \cpu1|micro1|pc|q\(0),
	datad => \cpu1|micro1|pc|q\(2),
	combout => \cpu1|micro1|memoria|mem~17_combout\);

-- Location: LCCOMB_X48_Y10_N22
\cpu1|micro1|memoria|mem~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|memoria|mem~18_combout\ = (!\cpu1|micro1|pc|q\(7) & (!\cpu1|micro1|pc|q\(8) & (\cpu1|micro1|memoria|mem~17_combout\ & \cpu1|micro1|memoria|mem~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|pc|q\(7),
	datab => \cpu1|micro1|pc|q\(8),
	datac => \cpu1|micro1|memoria|mem~17_combout\,
	datad => \cpu1|micro1|memoria|mem~1_combout\,
	combout => \cpu1|micro1|memoria|mem~18_combout\);

-- Location: LCCOMB_X48_Y10_N28
\cpu1|micro1|pc|q[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|pc|q[2]~2_combout\ = (\cpu1|uc1|Selector0~2_combout\ & ((\cpu1|micro1|sum_pc|y[2]~4_combout\))) # (!\cpu1|uc1|Selector0~2_combout\ & (\cpu1|micro1|memoria|mem~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|uc1|Selector0~2_combout\,
	datab => \cpu1|micro1|memoria|mem~18_combout\,
	datad => \cpu1|micro1|sum_pc|y[2]~4_combout\,
	combout => \cpu1|micro1|pc|q[2]~2_combout\);

-- Location: LCFF_X49_Y10_N13
\cpu1|micro1|pcbackup|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \cpu1|micro1|sum_pc|y[2]~4_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu1|uc1|s_bk~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|pcbackup|q\(2));

-- Location: LCFF_X48_Y10_N29
\cpu1|micro1|pc|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \cpu1|micro1|pc|q[2]~2_combout\,
	sdata => \cpu1|micro1|pcbackup|q\(2),
	aclr => \reset~clkctrl_outclk\,
	sload => \cpu1|uc1|s_ret~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|pc|q\(2));

-- Location: LCCOMB_X46_Y11_N4
\deco2|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \deco2|WideOr5~0_combout\ = (\cpu1|micro1|pc|q\(2) & (!\cpu1|micro1|pc|q\(0) & (\cpu1|micro1|pc|q\(1) $ (!\cpu1|micro1|pc|q\(3))))) # (!\cpu1|micro1|pc|q\(2) & (\cpu1|micro1|pc|q\(0) & (\cpu1|micro1|pc|q\(1) $ (!\cpu1|micro1|pc|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|pc|q\(2),
	datab => \cpu1|micro1|pc|q\(1),
	datac => \cpu1|micro1|pc|q\(0),
	datad => \cpu1|micro1|pc|q\(3),
	combout => \deco2|WideOr5~0_combout\);

-- Location: LCCOMB_X46_Y11_N22
\deco2|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \deco2|WideOr4~0_combout\ = (\cpu1|micro1|pc|q\(2) & ((\cpu1|micro1|pc|q\(1) & (\cpu1|micro1|pc|q\(0) $ (!\cpu1|micro1|pc|q\(3)))) # (!\cpu1|micro1|pc|q\(1) & (\cpu1|micro1|pc|q\(0) & !\cpu1|micro1|pc|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|pc|q\(2),
	datab => \cpu1|micro1|pc|q\(1),
	datac => \cpu1|micro1|pc|q\(0),
	datad => \cpu1|micro1|pc|q\(3),
	combout => \deco2|WideOr4~0_combout\);

-- Location: LCCOMB_X46_Y11_N12
\deco2|d0[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \deco2|d0[2]~0_combout\ = (!\cpu1|micro1|pc|q\(0) & ((\cpu1|micro1|pc|q\(2) & (!\cpu1|micro1|pc|q\(1) & \cpu1|micro1|pc|q\(3))) # (!\cpu1|micro1|pc|q\(2) & (\cpu1|micro1|pc|q\(1) & !\cpu1|micro1|pc|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|pc|q\(2),
	datab => \cpu1|micro1|pc|q\(1),
	datac => \cpu1|micro1|pc|q\(0),
	datad => \cpu1|micro1|pc|q\(3),
	combout => \deco2|d0[2]~0_combout\);

-- Location: LCCOMB_X46_Y11_N10
\deco2|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \deco2|WideOr3~0_combout\ = (\cpu1|micro1|pc|q\(0) & (\cpu1|micro1|pc|q\(2) $ (((\cpu1|micro1|pc|q\(3)) # (!\cpu1|micro1|pc|q\(1)))))) # (!\cpu1|micro1|pc|q\(0) & (\cpu1|micro1|pc|q\(2) & (\cpu1|micro1|pc|q\(1) $ (!\cpu1|micro1|pc|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|pc|q\(2),
	datab => \cpu1|micro1|pc|q\(1),
	datac => \cpu1|micro1|pc|q\(0),
	datad => \cpu1|micro1|pc|q\(3),
	combout => \deco2|WideOr3~0_combout\);

-- Location: LCCOMB_X46_Y11_N0
\deco2|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \deco2|WideOr2~0_combout\ = (\cpu1|micro1|pc|q\(0)) # ((\cpu1|micro1|pc|q\(2) & (\cpu1|micro1|pc|q\(1) $ (!\cpu1|micro1|pc|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|pc|q\(2),
	datab => \cpu1|micro1|pc|q\(1),
	datac => \cpu1|micro1|pc|q\(0),
	datad => \cpu1|micro1|pc|q\(3),
	combout => \deco2|WideOr2~0_combout\);

-- Location: LCCOMB_X46_Y11_N18
\deco2|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \deco2|WideOr1~0_combout\ = (\cpu1|micro1|pc|q\(2) & ((\cpu1|micro1|pc|q\(1) & (\cpu1|micro1|pc|q\(0) & !\cpu1|micro1|pc|q\(3))) # (!\cpu1|micro1|pc|q\(1) & ((\cpu1|micro1|pc|q\(3)))))) # (!\cpu1|micro1|pc|q\(2) & ((\cpu1|micro1|pc|q\(1) & 
-- ((\cpu1|micro1|pc|q\(0)) # (!\cpu1|micro1|pc|q\(3)))) # (!\cpu1|micro1|pc|q\(1) & (\cpu1|micro1|pc|q\(0) & !\cpu1|micro1|pc|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|pc|q\(2),
	datab => \cpu1|micro1|pc|q\(1),
	datac => \cpu1|micro1|pc|q\(0),
	datad => \cpu1|micro1|pc|q\(3),
	combout => \deco2|WideOr1~0_combout\);

-- Location: LCCOMB_X46_Y11_N20
\deco2|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \deco2|WideOr0~0_combout\ = (\cpu1|micro1|pc|q\(2) & (((\cpu1|micro1|pc|q\(3)) # (!\cpu1|micro1|pc|q\(0))) # (!\cpu1|micro1|pc|q\(1)))) # (!\cpu1|micro1|pc|q\(2) & (\cpu1|micro1|pc|q\(1) $ (((\cpu1|micro1|pc|q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|pc|q\(2),
	datab => \cpu1|micro1|pc|q\(1),
	datac => \cpu1|micro1|pc|q\(0),
	datad => \cpu1|micro1|pc|q\(3),
	combout => \deco2|WideOr0~0_combout\);

-- Location: LCCOMB_X46_Y11_N2
\deco2|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \deco2|WideOr6~0_combout\ = ((!\cpu1|micro1|pc|q\(2) & !\cpu1|micro1|pc|q\(1))) # (!\cpu1|micro1|pc|q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|pc|q\(2),
	datab => \cpu1|micro1|pc|q\(1),
	datac => \cpu1|micro1|pc|q\(3),
	combout => \deco2|WideOr6~0_combout\);

-- Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: LCCOMB_X47_Y8_N8
\cpu1|uc1|s_sal~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|uc1|s_sal~0_combout\ = (\cpu1|micro1|memoria|mem~6_combout\ & \cpu1|micro1|memoria|mem~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|memoria|mem~6_combout\,
	datad => \cpu1|micro1|memoria|mem~4_combout\,
	combout => \cpu1|uc1|s_sal~0_combout\);

-- Location: LCCOMB_X46_Y8_N16
\cpu1|uc1|s_sal~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|uc1|s_sal~2_combout\ = (!\cpu1|micro1|memoria|mem~8_combout\ & (\cpu1|uc1|s_sal~1_combout\ & (\cpu1|uc1|s_sal~0_combout\ & !\cpu1|micro1|memoria|mem~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|memoria|mem~8_combout\,
	datab => \cpu1|uc1|s_sal~1_combout\,
	datac => \cpu1|uc1|s_sal~0_combout\,
	datad => \cpu1|micro1|memoria|mem~12_combout\,
	combout => \cpu1|uc1|s_sal~2_combout\);

-- Location: LCCOMB_X46_Y6_N18
\cpu1|micro1|muxademux|y[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|muxademux|y[0]~1_combout\ = (\cpu1|uc1|s_sal~2_combout\ & (\cpu1|micro1|muxademux|y[0]~0_combout\)) # (!\cpu1|uc1|s_sal~2_combout\ & ((\cpu1|micro1|memoria|mem~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|muxademux|y[0]~0_combout\,
	datac => \cpu1|micro1|memoria|mem~18_combout\,
	datad => \cpu1|uc1|s_sal~2_combout\,
	combout => \cpu1|micro1|muxademux|y[0]~1_combout\);

-- Location: LCCOMB_X46_Y6_N16
\cpu1|micro1|salida0|q[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|salida0|q[0]~feeder_combout\ = \cpu1|micro1|muxademux|y[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu1|micro1|muxademux|y[0]~1_combout\,
	combout => \cpu1|micro1|salida0|q[0]~feeder_combout\);

-- Location: LCCOMB_X46_Y8_N30
\cpu1|uc1|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|uc1|WideOr4~0_combout\ = (\cpu1|micro1|memoria|mem~6_combout\ & (!\cpu1|micro1|memoria|mem~12_combout\ & (\cpu1|micro1|memoria|mem~8_combout\ $ (\cpu1|micro1|memoria|mem~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|memoria|mem~8_combout\,
	datab => \cpu1|micro1|memoria|mem~6_combout\,
	datac => \cpu1|micro1|memoria|mem~4_combout\,
	datad => \cpu1|micro1|memoria|mem~12_combout\,
	combout => \cpu1|uc1|WideOr4~0_combout\);

-- Location: LCCOMB_X46_Y8_N4
\cpu1|uc1|w_port0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|uc1|w_port0~0_combout\ = (!\cpu1|micro1|memoria|mem~2_combout\ & (\cpu1|uc1|WideOr4~0_combout\ & (!\cpu1|micro1|memoria|mem~16_combout\ & \cpu1|uc1|s_sal~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|memoria|mem~2_combout\,
	datab => \cpu1|uc1|WideOr4~0_combout\,
	datac => \cpu1|micro1|memoria|mem~16_combout\,
	datad => \cpu1|uc1|s_sal~1_combout\,
	combout => \cpu1|uc1|w_port0~0_combout\);

-- Location: LCFF_X46_Y6_N17
\cpu1|micro1|salida0|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \cpu1|micro1|salida0|q[0]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu1|uc1|w_port0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|salida0|q\(0));

-- Location: LCCOMB_X46_Y7_N28
\cpu1|micro1|muxademux|y[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|muxademux|y[1]~3_combout\ = (\cpu1|uc1|s_sal~2_combout\ & ((\cpu1|micro1|muxademux|y[1]~2_combout\))) # (!\cpu1|uc1|s_sal~2_combout\ & (\cpu1|micro1|memoria|mem~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu1|micro1|memoria|mem~20_combout\,
	datac => \cpu1|uc1|s_sal~2_combout\,
	datad => \cpu1|micro1|muxademux|y[1]~2_combout\,
	combout => \cpu1|micro1|muxademux|y[1]~3_combout\);

-- Location: LCCOMB_X46_Y10_N24
\cpu1|micro1|salida0|q[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|salida0|q[1]~feeder_combout\ = \cpu1|micro1|muxademux|y[1]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu1|micro1|muxademux|y[1]~3_combout\,
	combout => \cpu1|micro1|salida0|q[1]~feeder_combout\);

-- Location: LCFF_X46_Y10_N25
\cpu1|micro1|salida0|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \cpu1|micro1|salida0|q[1]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu1|uc1|w_port0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|salida0|q\(1));

-- Location: LCCOMB_X46_Y7_N26
\cpu1|micro1|muxademux|y[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|muxademux|y[2]~5_combout\ = (\cpu1|uc1|s_sal~2_combout\ & ((\cpu1|micro1|muxademux|y[2]~4_combout\))) # (!\cpu1|uc1|s_sal~2_combout\ & (\cpu1|micro1|memoria|mem~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu1|micro1|memoria|mem~22_combout\,
	datac => \cpu1|uc1|s_sal~2_combout\,
	datad => \cpu1|micro1|muxademux|y[2]~4_combout\,
	combout => \cpu1|micro1|muxademux|y[2]~5_combout\);

-- Location: LCFF_X46_Y10_N15
\cpu1|micro1|salida0|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \cpu1|micro1|muxademux|y[2]~5_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu1|uc1|w_port0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|salida0|q\(2));

-- Location: LCCOMB_X46_Y10_N0
\cpu1|micro1|muxademux|y[3]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|muxademux|y[3]~7_combout\ = (\cpu1|uc1|s_sal~2_combout\ & \cpu1|micro1|muxademux|y[3]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cpu1|uc1|s_sal~2_combout\,
	datad => \cpu1|micro1|muxademux|y[3]~6_combout\,
	combout => \cpu1|micro1|muxademux|y[3]~7_combout\);

-- Location: LCCOMB_X46_Y10_N12
\cpu1|micro1|salida0|q[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|salida0|q[3]~feeder_combout\ = \cpu1|micro1|muxademux|y[3]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu1|micro1|muxademux|y[3]~7_combout\,
	combout => \cpu1|micro1|salida0|q[3]~feeder_combout\);

-- Location: LCFF_X46_Y10_N13
\cpu1|micro1|salida0|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \cpu1|micro1|salida0|q[3]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu1|uc1|w_port0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|salida0|q\(3));

-- Location: LCCOMB_X46_Y10_N22
\cpu1|micro1|muxademux|y[4]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|muxademux|y[4]~9_combout\ = (\cpu1|uc1|s_sal~2_combout\ & ((\cpu1|micro1|muxademux|y[4]~8_combout\))) # (!\cpu1|uc1|s_sal~2_combout\ & (\cpu1|micro1|memoria|mem~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|memoria|mem~24_combout\,
	datab => \cpu1|uc1|s_sal~2_combout\,
	datad => \cpu1|micro1|muxademux|y[4]~8_combout\,
	combout => \cpu1|micro1|muxademux|y[4]~9_combout\);

-- Location: LCCOMB_X46_Y10_N18
\cpu1|micro1|salida0|q[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|salida0|q[4]~feeder_combout\ = \cpu1|micro1|muxademux|y[4]~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu1|micro1|muxademux|y[4]~9_combout\,
	combout => \cpu1|micro1|salida0|q[4]~feeder_combout\);

-- Location: LCFF_X46_Y10_N19
\cpu1|micro1|salida0|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \cpu1|micro1|salida0|q[4]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu1|uc1|w_port0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|salida0|q\(4));

-- Location: LCCOMB_X46_Y10_N4
\cpu1|micro1|muxademux|y[5]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|muxademux|y[5]~11_combout\ = (\cpu1|uc1|s_sal~2_combout\ & ((\cpu1|micro1|muxademux|y[5]~10_combout\))) # (!\cpu1|uc1|s_sal~2_combout\ & (\cpu1|micro1|memoria|mem~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu1|micro1|memoria|mem~26_combout\,
	datac => \cpu1|uc1|s_sal~2_combout\,
	datad => \cpu1|micro1|muxademux|y[5]~10_combout\,
	combout => \cpu1|micro1|muxademux|y[5]~11_combout\);

-- Location: LCFF_X46_Y10_N17
\cpu1|micro1|salida0|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \cpu1|micro1|muxademux|y[5]~11_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu1|uc1|w_port0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|salida0|q\(5));

-- Location: LCCOMB_X46_Y6_N6
\cpu1|micro1|muxademux|y[6]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|muxademux|y[6]~13_combout\ = (\cpu1|uc1|s_sal~2_combout\ & (!\cpu1|micro1|muxademux|y[6]~12_combout\)) # (!\cpu1|uc1|s_sal~2_combout\ & ((!\cpu1|micro1|memoria|mem~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu1|uc1|s_sal~2_combout\,
	datac => \cpu1|micro1|muxademux|y[6]~12_combout\,
	datad => \cpu1|micro1|memoria|mem~28_combout\,
	combout => \cpu1|micro1|muxademux|y[6]~13_combout\);

-- Location: LCCOMB_X46_Y6_N22
\cpu1|micro1|salida0|q[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|salida0|q[6]~feeder_combout\ = \cpu1|micro1|muxademux|y[6]~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu1|micro1|muxademux|y[6]~13_combout\,
	combout => \cpu1|micro1|salida0|q[6]~feeder_combout\);

-- Location: LCFF_X46_Y6_N23
\cpu1|micro1|salida0|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \cpu1|micro1|salida0|q[6]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu1|uc1|w_port0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|salida0|q\(6));

-- Location: LCCOMB_X46_Y7_N18
\cpu1|micro1|muxademux|y[7]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|muxademux|y[7]~15_combout\ = (\cpu1|micro1|muxademux|y[7]~14_combout\ & \cpu1|uc1|s_sal~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|muxademux|y[7]~14_combout\,
	datac => \cpu1|uc1|s_sal~2_combout\,
	combout => \cpu1|micro1|muxademux|y[7]~15_combout\);

-- Location: LCFF_X46_Y6_N5
\cpu1|micro1|salida0|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \cpu1|micro1|muxademux|y[7]~15_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu1|uc1|w_port0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|salida0|q\(7));

-- Location: LCCOMB_X46_Y8_N18
\cpu1|uc1|w_port1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|uc1|w_port1~2_combout\ = (\cpu1|micro1|memoria|mem~2_combout\ & (\cpu1|uc1|WideOr4~0_combout\ & (!\cpu1|micro1|memoria|mem~16_combout\ & \cpu1|uc1|s_sal~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|memoria|mem~2_combout\,
	datab => \cpu1|uc1|WideOr4~0_combout\,
	datac => \cpu1|micro1|memoria|mem~16_combout\,
	datad => \cpu1|uc1|s_sal~1_combout\,
	combout => \cpu1|uc1|w_port1~2_combout\);

-- Location: LCFF_X46_Y6_N19
\cpu1|micro1|salida1|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \cpu1|micro1|muxademux|y[0]~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu1|uc1|w_port1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|salida1|q\(0));

-- Location: LCCOMB_X46_Y6_N24
\cpu1|micro1|salida1|q[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|salida1|q[1]~feeder_combout\ = \cpu1|micro1|muxademux|y[1]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu1|micro1|muxademux|y[1]~3_combout\,
	combout => \cpu1|micro1|salida1|q[1]~feeder_combout\);

-- Location: LCFF_X46_Y6_N25
\cpu1|micro1|salida1|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \cpu1|micro1|salida1|q[1]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu1|uc1|w_port1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|salida1|q\(1));

-- Location: LCFF_X46_Y6_N31
\cpu1|micro1|salida1|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \cpu1|micro1|muxademux|y[2]~5_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu1|uc1|w_port1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|salida1|q\(2));

-- Location: LCCOMB_X46_Y6_N12
\cpu1|micro1|salida1|q[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|salida1|q[3]~feeder_combout\ = \cpu1|micro1|muxademux|y[3]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu1|micro1|muxademux|y[3]~7_combout\,
	combout => \cpu1|micro1|salida1|q[3]~feeder_combout\);

-- Location: LCFF_X46_Y6_N13
\cpu1|micro1|salida1|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \cpu1|micro1|salida1|q[3]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu1|uc1|w_port1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|salida1|q\(3));

-- Location: LCFF_X46_Y6_N11
\cpu1|micro1|salida1|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \cpu1|micro1|muxademux|y[4]~9_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu1|uc1|w_port1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|salida1|q\(4));

-- Location: LCFF_X46_Y6_N9
\cpu1|micro1|salida1|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \cpu1|micro1|muxademux|y[5]~11_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu1|uc1|w_port1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|salida1|q\(5));

-- Location: LCFF_X46_Y6_N7
\cpu1|micro1|salida1|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \cpu1|micro1|muxademux|y[6]~13_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu1|uc1|w_port1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|salida1|q\(6));

-- Location: LCFF_X46_Y6_N21
\cpu1|micro1|salida1|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \cpu1|micro1|muxademux|y[7]~15_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu1|uc1|w_port1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|salida1|q\(7));

-- Location: LCCOMB_X46_Y8_N24
\cpu1|uc1|w_port2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|uc1|w_port2~0_combout\ = (!\cpu1|micro1|memoria|mem~2_combout\ & (\cpu1|uc1|WideOr4~0_combout\ & (\cpu1|micro1|memoria|mem~16_combout\ & \cpu1|uc1|s_sal~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|memoria|mem~2_combout\,
	datab => \cpu1|uc1|WideOr4~0_combout\,
	datac => \cpu1|micro1|memoria|mem~16_combout\,
	datad => \cpu1|uc1|s_sal~1_combout\,
	combout => \cpu1|uc1|w_port2~0_combout\);

-- Location: LCFF_X49_Y11_N1
\cpu1|micro1|salida2|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \cpu1|micro1|muxademux|y[0]~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu1|uc1|w_port2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|salida2|q\(0));

-- Location: LCFF_X46_Y7_N29
\cpu1|micro1|salida2|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \cpu1|micro1|muxademux|y[1]~3_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu1|uc1|w_port2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|salida2|q\(1));

-- Location: LCCOMB_X46_Y7_N10
\cpu1|micro1|salida2|q[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|salida2|q[2]~feeder_combout\ = \cpu1|micro1|muxademux|y[2]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu1|micro1|muxademux|y[2]~5_combout\,
	combout => \cpu1|micro1|salida2|q[2]~feeder_combout\);

-- Location: LCFF_X46_Y7_N11
\cpu1|micro1|salida2|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \cpu1|micro1|salida2|q[2]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu1|uc1|w_port2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|salida2|q\(2));

-- Location: LCFF_X45_Y10_N17
\cpu1|micro1|salida2|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \cpu1|micro1|muxademux|y[3]~7_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu1|uc1|w_port2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|salida2|q\(3));

-- Location: LCFF_X45_Y10_N27
\cpu1|micro1|salida2|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \cpu1|micro1|muxademux|y[4]~9_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu1|uc1|w_port2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|salida2|q\(4));

-- Location: LCFF_X46_Y7_N5
\cpu1|micro1|salida2|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \cpu1|micro1|muxademux|y[5]~11_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu1|uc1|w_port2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|salida2|q\(5));

-- Location: LCCOMB_X45_Y10_N8
\cpu1|micro1|salida2|q[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|salida2|q[6]~feeder_combout\ = \cpu1|micro1|muxademux|y[6]~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu1|micro1|muxademux|y[6]~13_combout\,
	combout => \cpu1|micro1|salida2|q[6]~feeder_combout\);

-- Location: LCFF_X45_Y10_N9
\cpu1|micro1|salida2|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \cpu1|micro1|salida2|q[6]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu1|uc1|w_port2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|salida2|q\(6));

-- Location: LCFF_X46_Y7_N19
\cpu1|micro1|salida2|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \cpu1|micro1|muxademux|y[7]~15_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu1|uc1|w_port2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|salida2|q\(7));

-- Location: LCCOMB_X46_Y8_N10
\cpu1|uc1|w_port3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|uc1|w_port3~0_combout\ = (\cpu1|micro1|memoria|mem~2_combout\ & (\cpu1|uc1|WideOr4~0_combout\ & (\cpu1|micro1|memoria|mem~16_combout\ & \cpu1|uc1|s_sal~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1|micro1|memoria|mem~2_combout\,
	datab => \cpu1|uc1|WideOr4~0_combout\,
	datac => \cpu1|micro1|memoria|mem~16_combout\,
	datad => \cpu1|uc1|s_sal~1_combout\,
	combout => \cpu1|uc1|w_port3~0_combout\);

-- Location: LCFF_X46_Y10_N3
\cpu1|micro1|salida3|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \cpu1|micro1|muxademux|y[0]~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu1|uc1|w_port3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|salida3|q\(0));

-- Location: LCCOMB_X46_Y7_N16
\cpu1|micro1|salida3|q[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|salida3|q[1]~feeder_combout\ = \cpu1|micro1|muxademux|y[1]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu1|micro1|muxademux|y[1]~3_combout\,
	combout => \cpu1|micro1|salida3|q[1]~feeder_combout\);

-- Location: LCFF_X46_Y7_N17
\cpu1|micro1|salida3|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \cpu1|micro1|salida3|q[1]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu1|uc1|w_port3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|salida3|q\(1));

-- Location: LCFF_X46_Y7_N27
\cpu1|micro1|salida3|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \cpu1|micro1|muxademux|y[2]~5_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu1|uc1|w_port3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|salida3|q\(2));

-- Location: LCFF_X46_Y10_N1
\cpu1|micro1|salida3|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \cpu1|micro1|muxademux|y[3]~7_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu1|uc1|w_port3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|salida3|q\(3));

-- Location: LCFF_X46_Y10_N23
\cpu1|micro1|salida3|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \cpu1|micro1|muxademux|y[4]~9_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu1|uc1|w_port3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|salida3|q\(4));

-- Location: LCFF_X46_Y10_N5
\cpu1|micro1|salida3|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \cpu1|micro1|muxademux|y[5]~11_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu1|uc1|w_port3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|salida3|q\(5));

-- Location: LCCOMB_X45_Y10_N6
\cpu1|micro1|salida3|q[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|salida3|q[6]~feeder_combout\ = \cpu1|micro1|muxademux|y[6]~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu1|micro1|muxademux|y[6]~13_combout\,
	combout => \cpu1|micro1|salida3|q[6]~feeder_combout\);

-- Location: LCFF_X45_Y10_N7
\cpu1|micro1|salida3|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \cpu1|micro1|salida3|q[6]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu1|uc1|w_port3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|salida3|q\(6));

-- Location: LCCOMB_X46_Y7_N24
\cpu1|micro1|salida3|q[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu1|micro1|salida3|q[7]~feeder_combout\ = \cpu1|micro1|muxademux|y[7]~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu1|micro1|muxademux|y[7]~15_combout\,
	combout => \cpu1|micro1|salida3|q[7]~feeder_combout\);

-- Location: LCFF_X46_Y7_N25
\cpu1|micro1|salida3|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \cpu1|micro1|salida3|q[7]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu1|uc1|w_port3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu1|micro1|salida3|q\(7));

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display1[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \deco1|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display1(0));

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display1[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \deco1|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display1(1));

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display1[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \deco1|d0[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display1(2));

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display1[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \deco1|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display1(3));

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display1[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \deco1|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display1(4));

-- Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display1[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \deco1|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display1(5));

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display1[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \deco1|ALT_INV_WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display1(6));

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display2[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display2(0));

-- Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display2[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \deco1|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display2(1));

-- Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display2[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \deco1|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display2(2));

-- Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display2[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display2(3));

-- Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display2[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display2(4));

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display2[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display2(5));

-- Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display2[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display2(6));

-- Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display3[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \deco2|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display3(0));

-- Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display3[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \deco2|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display3(1));

-- Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display3[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \deco2|d0[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display3(2));

-- Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display3[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \deco2|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display3(3));

-- Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display3[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \deco2|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display3(4));

-- Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display3[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \deco2|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display3(5));

-- Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display3[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \deco2|ALT_INV_WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display3(6));

-- Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display4[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display4(0));

-- Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display4[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \deco2|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display4(1));

-- Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display4[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \deco2|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display4(2));

-- Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display4[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display4(3));

-- Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display4[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display4(4));

-- Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display4[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display4(5));

-- Location: PIN_D4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display4[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display4(6));

-- Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s0[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \cpu1|micro1|salida0|q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s0(0));

-- Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s0[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \cpu1|micro1|salida0|q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s0(1));

-- Location: PIN_U19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s0[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \cpu1|micro1|salida0|q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s0(2));

-- Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s0[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \cpu1|micro1|salida0|q\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s0(3));

-- Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s0[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \cpu1|micro1|salida0|q\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s0(4));

-- Location: PIN_V19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s0[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \cpu1|micro1|salida0|q\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s0(5));

-- Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s0[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \cpu1|micro1|salida0|q\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s0(6));

-- Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s0[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \cpu1|micro1|salida0|q\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s0(7));

-- Location: PIN_Y20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s1[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \cpu1|micro1|salida1|q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s1(0));

-- Location: PIN_R14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s1[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \cpu1|micro1|salida1|q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s1(1));

-- Location: PIN_U20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s1[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \cpu1|micro1|salida1|q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s1(2));

-- Location: PIN_AB19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s1[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \cpu1|micro1|salida1|q\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s1(3));

-- Location: PIN_V15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s1[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \cpu1|micro1|salida1|q\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s1(4));

-- Location: PIN_U15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s1[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \cpu1|micro1|salida1|q\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s1(5));

-- Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s1[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \cpu1|micro1|salida1|q\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s1(6));

-- Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s1[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \cpu1|micro1|salida1|q\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s1(7));

-- Location: PIN_N15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s2[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \cpu1|micro1|salida2|q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s2(0));

-- Location: PIN_AA18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s2[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \cpu1|micro1|salida2|q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s2(1));

-- Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s2[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \cpu1|micro1|salida2|q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s2(2));

-- Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s2[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \cpu1|micro1|salida2|q\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s2(3));

-- Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s2[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \cpu1|micro1|salida2|q\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s2(4));

-- Location: PIN_AB20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s2[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \cpu1|micro1|salida2|q\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s2(5));

-- Location: PIN_T16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s2[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \cpu1|micro1|salida2|q\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s2(6));

-- Location: PIN_R16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s2[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \cpu1|micro1|salida2|q\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s2(7));

-- Location: PIN_N22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s3[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \cpu1|micro1|salida3|q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s3(0));

-- Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s3[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \cpu1|micro1|salida3|q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s3(1));

-- Location: PIN_Y17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s3[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \cpu1|micro1|salida3|q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s3(2));

-- Location: PIN_M18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s3[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \cpu1|micro1|salida3|q\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s3(3));

-- Location: PIN_R18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s3[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \cpu1|micro1|salida3|q\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s3(4));

-- Location: PIN_N21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s3[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \cpu1|micro1|salida3|q\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s3(5));

-- Location: PIN_P15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s3[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \cpu1|micro1|salida3|q\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s3(6));

-- Location: PIN_W16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s3[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \cpu1|micro1|salida3|q\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s3(7));

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pc_out[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \cpu1|micro1|pc|q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pc_out(0));

-- Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pc_out[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \cpu1|micro1|pc|q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pc_out(1));

-- Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pc_out[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \cpu1|micro1|pc|q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pc_out(2));

-- Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pc_out[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \cpu1|micro1|pc|q\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pc_out(3));

-- Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pc_out[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \cpu1|micro1|pc|q\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pc_out(4));

-- Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pc_out[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \cpu1|micro1|pc|q\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pc_out(5));

-- Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pc_out[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \cpu1|micro1|pc|q\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pc_out(6));

-- Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pc_out[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \cpu1|micro1|pc|q\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pc_out(7));

-- Location: PIN_P17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pc_out[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \cpu1|micro1|pc|q\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pc_out(8));

-- Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pc_out[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \cpu1|micro1|pc|q\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pc_out(9));
END structure;


