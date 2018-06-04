-- Copyright (C) 1991-2011 Altera Corporation
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
-- VERSION "Version 11.0 Build 208 07/03/2011 Service Pack 1 SJ Full Version"

-- DATE "06/03/2018 15:45:04"

-- 
-- Device: Altera EP4CE10F17C8 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	USB2_SDRAM_Project IS
    PORT (
	Check : OUT std_logic;
	SLRD : OUT std_logic;
	SLWR : OUT std_logic;
	IFCLK : OUT std_logic;
	Laser_En : OUT std_logic;
	Laser_ST : OUT std_logic;
	Laser_Clk : OUT std_logic;
	Laser_Data : OUT std_logic_vector(15 DOWNTO 0);
	CLK0 : OUT std_logic;
	CKE0 : OUT std_logic;
	CSn0 : OUT std_logic;
	RASn0 : OUT std_logic;
	CASn0 : OUT std_logic;
	WEn0 : OUT std_logic;
	UDQM0 : OUT std_logic;
	LDQM0 : OUT std_logic;
	BA0 : OUT std_logic_vector(1 DOWNTO 0);
	A0 : OUT std_logic_vector(12 DOWNTO 0);
	CLK1 : OUT std_logic;
	CKE1 : OUT std_logic;
	CSn1 : OUT std_logic;
	RASn1 : OUT std_logic;
	CASn1 : OUT std_logic;
	WEn1 : OUT std_logic;
	UDQM1 : OUT std_logic;
	LDQM1 : OUT std_logic;
	BA1 : OUT std_logic_vector(1 DOWNTO 0);
	A1 : OUT std_logic_vector(12 DOWNTO 0);
	RESETn : IN std_logic;
	CLK48M : IN std_logic;
	FLAGC : IN std_logic;
	FLAGB : IN std_logic;
	DATAIN : IN std_logic_vector(15 DOWNTO 0);
	CPU_Data : INOUT std_logic_vector(7 DOWNTO 0);
	CPU_WR : IN std_logic;
	CPU_RD : IN std_logic;
	CPU_Set : IN std_logic;
	Laser_On : IN std_logic;
	Encode_A : IN std_logic;
	Encode_B : IN std_logic;
	DQ0 : INOUT std_logic_vector(15 DOWNTO 0);
	DQ1 : INOUT std_logic_vector(15 DOWNTO 0)
	);
END USB2_SDRAM_Project;

-- Design Ports Information
-- Check	=>  Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SLRD	=>  Location: PIN_L11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SLWR	=>  Location: PIN_L10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- FLAGB	=>  Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IFCLK	=>  Location: PIN_L13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- Laser_On	=>  Location: PIN_N14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Laser_En	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- Laser_ST	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- Laser_Clk	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- Laser_Data[0]	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- Laser_Data[1]	=>  Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- Laser_Data[2]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- Laser_Data[3]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- Laser_Data[4]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- Laser_Data[5]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- Laser_Data[6]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- Laser_Data[7]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- Laser_Data[8]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- Laser_Data[9]	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- Laser_Data[10]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- Laser_Data[11]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- Laser_Data[12]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- Laser_Data[13]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- Laser_Data[14]	=>  Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- Laser_Data[15]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- Encode_A	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Encode_B	=>  Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLK0	=>  Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- CKE0	=>  Location: PIN_T8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- CSn0	=>  Location: PIN_N6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- RASn0	=>  Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- CASn0	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- WEn0	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- UDQM0	=>  Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LDQM0	=>  Location: PIN_R1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- BA0[0]	=>  Location: PIN_M7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- BA0[1]	=>  Location: PIN_N8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- A0[0]	=>  Location: PIN_M8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- A0[1]	=>  Location: PIN_P8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- A0[2]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- A0[3]	=>  Location: PIN_P11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- A0[4]	=>  Location: PIN_T12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- A0[5]	=>  Location: PIN_R11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- A0[6]	=>  Location: PIN_T11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- A0[7]	=>  Location: PIN_R10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- A0[8]	=>  Location: PIN_T10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- A0[9]	=>  Location: PIN_R9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- A0[10]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- A0[11]	=>  Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- A0[12]	=>  Location: PIN_R8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- CLK1	=>  Location: PIN_C3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- CKE1	=>  Location: PIN_B1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- CSn1	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- RASn1	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- CASn1	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- WEn1	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- UDQM1	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LDQM1	=>  Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- BA1[0]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- BA1[1]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- A1[0]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- A1[1]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- A1[2]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- A1[3]	=>  Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- A1[4]	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- A1[5]	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- A1[6]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- A1[7]	=>  Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- A1[8]	=>  Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- A1[9]	=>  Location: PIN_D4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- A1[10]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- A1[11]	=>  Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- A1[12]	=>  Location: PIN_A2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- CPU_Data[0]	=>  Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- CPU_Data[1]	=>  Location: PIN_L15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- CPU_Data[2]	=>  Location: PIN_L16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- CPU_Data[3]	=>  Location: PIN_L14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- CPU_Data[4]	=>  Location: PIN_N15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- CPU_Data[5]	=>  Location: PIN_N16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- CPU_Data[6]	=>  Location: PIN_P15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- CPU_Data[7]	=>  Location: PIN_P16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DQ0[0]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DQ0[1]	=>  Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DQ0[2]	=>  Location: PIN_N3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DQ0[3]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DQ0[4]	=>  Location: PIN_N5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DQ0[5]	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DQ0[6]	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DQ0[7]	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DQ0[8]	=>  Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DQ0[9]	=>  Location: PIN_T6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DQ0[10]	=>  Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DQ0[11]	=>  Location: PIN_T5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DQ0[12]	=>  Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DQ0[13]	=>  Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DQ0[14]	=>  Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DQ0[15]	=>  Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DQ1[0]	=>  Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DQ1[1]	=>  Location: PIN_A3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DQ1[2]	=>  Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DQ1[3]	=>  Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DQ1[4]	=>  Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DQ1[5]	=>  Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DQ1[6]	=>  Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DQ1[7]	=>  Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DQ1[8]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DQ1[9]	=>  Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DQ1[10]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DQ1[11]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DQ1[12]	=>  Location: PIN_G1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DQ1[13]	=>  Location: PIN_G2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DQ1[14]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DQ1[15]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- FLAGC	=>  Location: PIN_N12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RESETn	=>  Location: PIN_N13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLK48M	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CPU_Set	=>  Location: PIN_N11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CPU_RD	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DATAIN[0]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DATAIN[1]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DATAIN[2]	=>  Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DATAIN[3]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DATAIN[4]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DATAIN[5]	=>  Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DATAIN[6]	=>  Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DATAIN[7]	=>  Location: PIN_K15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DATAIN[8]	=>  Location: PIN_P14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DATAIN[9]	=>  Location: PIN_R16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DATAIN[10]	=>  Location: PIN_T15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DATAIN[11]	=>  Location: PIN_R14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DATAIN[12]	=>  Location: PIN_T14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DATAIN[13]	=>  Location: PIN_R13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DATAIN[14]	=>  Location: PIN_T13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DATAIN[15]	=>  Location: PIN_R12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CPU_WR	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF USB2_SDRAM_Project IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Check : std_logic;
SIGNAL ww_SLRD : std_logic;
SIGNAL ww_SLWR : std_logic;
SIGNAL ww_IFCLK : std_logic;
SIGNAL ww_Laser_En : std_logic;
SIGNAL ww_Laser_ST : std_logic;
SIGNAL ww_Laser_Clk : std_logic;
SIGNAL ww_Laser_Data : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_CLK0 : std_logic;
SIGNAL ww_CKE0 : std_logic;
SIGNAL ww_CSn0 : std_logic;
SIGNAL ww_RASn0 : std_logic;
SIGNAL ww_CASn0 : std_logic;
SIGNAL ww_WEn0 : std_logic;
SIGNAL ww_UDQM0 : std_logic;
SIGNAL ww_LDQM0 : std_logic;
SIGNAL ww_BA0 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_A0 : std_logic_vector(12 DOWNTO 0);
SIGNAL ww_CLK1 : std_logic;
SIGNAL ww_CKE1 : std_logic;
SIGNAL ww_CSn1 : std_logic;
SIGNAL ww_RASn1 : std_logic;
SIGNAL ww_CASn1 : std_logic;
SIGNAL ww_WEn1 : std_logic;
SIGNAL ww_UDQM1 : std_logic;
SIGNAL ww_LDQM1 : std_logic;
SIGNAL ww_BA1 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_A1 : std_logic_vector(12 DOWNTO 0);
SIGNAL ww_RESETn : std_logic;
SIGNAL ww_CLK48M : std_logic;
SIGNAL ww_FLAGC : std_logic;
SIGNAL ww_FLAGB : std_logic;
SIGNAL ww_DATAIN : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_CPU_WR : std_logic;
SIGNAL ww_CPU_RD : std_logic;
SIGNAL ww_CPU_Set : std_logic;
SIGNAL ww_Laser_On : std_logic;
SIGNAL ww_Encode_A : std_logic;
SIGNAL ww_Encode_B : std_logic;
SIGNAL \U0|U0|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U0|U0|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \U5|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a0_PORTADATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U5|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a0_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \U5|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a0_PORTBADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \U5|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a0_PORTBDATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U5|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a4_PORTADATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U5|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a4_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \U5|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a4_PORTBADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \U5|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a4_PORTBDATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U5|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a8_PORTADATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U5|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a8_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \U5|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a8_PORTBADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \U5|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a8_PORTBDATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U5|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a12_PORTADATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U5|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a12_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \U5|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a12_PORTBADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \U5|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a12_PORTBDATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U1|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a0_PORTADATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U1|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a0_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \U1|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a0_PORTBADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \U1|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a0_PORTBDATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U1|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a4_PORTADATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U1|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a4_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \U1|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a4_PORTBADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \U1|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a4_PORTBDATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U1|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a8_PORTADATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U1|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a8_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \U1|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a8_PORTBADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \U1|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a8_PORTBDATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U1|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a12_PORTADATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U1|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a12_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \U1|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a12_PORTBADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \U1|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a12_PORTBDATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Check_Led[7]~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U9|Low_Clk_Counter[19]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U0|U0|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK48M~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \resetn_t~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU_Read_1_t[7]~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U9|Check_Counter[2]~16_combout\ : std_logic;
SIGNAL \U9|Check_Counter[6]~27\ : std_logic;
SIGNAL \U9|Check_Counter[7]~28_combout\ : std_logic;
SIGNAL \U9|Low_Clk_Counter[1]~20\ : std_logic;
SIGNAL \U9|Low_Clk_Counter[1]~19_combout\ : std_logic;
SIGNAL \U9|Low_Clk_Counter[2]~22\ : std_logic;
SIGNAL \U9|Low_Clk_Counter[2]~21_combout\ : std_logic;
SIGNAL \U9|Low_Clk_Counter[3]~24\ : std_logic;
SIGNAL \U9|Low_Clk_Counter[3]~23_combout\ : std_logic;
SIGNAL \U9|Low_Clk_Counter[4]~26\ : std_logic;
SIGNAL \U9|Low_Clk_Counter[4]~25_combout\ : std_logic;
SIGNAL \U9|Low_Clk_Counter[5]~28\ : std_logic;
SIGNAL \U9|Low_Clk_Counter[5]~27_combout\ : std_logic;
SIGNAL \U9|Low_Clk_Counter[6]~30\ : std_logic;
SIGNAL \U9|Low_Clk_Counter[6]~29_combout\ : std_logic;
SIGNAL \U9|Low_Clk_Counter[7]~32\ : std_logic;
SIGNAL \U9|Low_Clk_Counter[7]~31_combout\ : std_logic;
SIGNAL \U9|Low_Clk_Counter[8]~34\ : std_logic;
SIGNAL \U9|Low_Clk_Counter[8]~33_combout\ : std_logic;
SIGNAL \U9|Low_Clk_Counter[9]~36\ : std_logic;
SIGNAL \U9|Low_Clk_Counter[9]~35_combout\ : std_logic;
SIGNAL \U9|Low_Clk_Counter[10]~38\ : std_logic;
SIGNAL \U9|Low_Clk_Counter[10]~37_combout\ : std_logic;
SIGNAL \U9|Low_Clk_Counter[11]~40\ : std_logic;
SIGNAL \U9|Low_Clk_Counter[11]~39_combout\ : std_logic;
SIGNAL \U9|Low_Clk_Counter[12]~42\ : std_logic;
SIGNAL \U9|Low_Clk_Counter[12]~41_combout\ : std_logic;
SIGNAL \U9|Low_Clk_Counter[13]~44\ : std_logic;
SIGNAL \U9|Low_Clk_Counter[13]~43_combout\ : std_logic;
SIGNAL \U9|Low_Clk_Counter[14]~46\ : std_logic;
SIGNAL \U9|Low_Clk_Counter[14]~45_combout\ : std_logic;
SIGNAL \U9|Low_Clk_Counter[15]~48\ : std_logic;
SIGNAL \U9|Low_Clk_Counter[15]~47_combout\ : std_logic;
SIGNAL \U9|Low_Clk_Counter[16]~50\ : std_logic;
SIGNAL \U9|Low_Clk_Counter[16]~49_combout\ : std_logic;
SIGNAL \U9|Low_Clk_Counter[17]~52\ : std_logic;
SIGNAL \U9|Low_Clk_Counter[17]~51_combout\ : std_logic;
SIGNAL \U9|Low_Clk_Counter[18]~54\ : std_logic;
SIGNAL \U9|Low_Clk_Counter[18]~53_combout\ : std_logic;
SIGNAL \U9|Low_Clk_Counter[19]~55_combout\ : std_logic;
SIGNAL \U3|col[1]~24_combout\ : std_logic;
SIGNAL \U3|row[5]~24_combout\ : std_logic;
SIGNAL \U4|col[6]~34_combout\ : std_logic;
SIGNAL \U4|row[10]~35\ : std_logic;
SIGNAL \U4|row[11]~37\ : std_logic;
SIGNAL \U4|row[11]~36_combout\ : std_logic;
SIGNAL \U4|row[12]~38_combout\ : std_logic;
SIGNAL \U3|Add0~0_combout\ : std_logic;
SIGNAL \U3|Add0~10_combout\ : std_logic;
SIGNAL \U3|Add0~18_combout\ : std_logic;
SIGNAL \U4|Add0~2_combout\ : std_logic;
SIGNAL \U4|Add0~6_combout\ : std_logic;
SIGNAL \U4|Add0~10_combout\ : std_logic;
SIGNAL \U4|Add0~12_combout\ : std_logic;
SIGNAL \U4|Add0~14_combout\ : std_logic;
SIGNAL \U4|Add0~16_combout\ : std_logic;
SIGNAL \U4|Add0~22_combout\ : std_logic;
SIGNAL \U4|Add0~25\ : std_logic;
SIGNAL \U4|Add0~26_combout\ : std_logic;
SIGNAL \U3|count_autorefresh[3]~14_combout\ : std_logic;
SIGNAL \U3|count_autorefresh[6]~21\ : std_logic;
SIGNAL \U3|count_autorefresh[7]~22_combout\ : std_logic;
SIGNAL \U4|count_autorefresh[5]~18_combout\ : std_logic;
SIGNAL \U3|WideOr0~1_combout\ : std_logic;
SIGNAL \U3|present_state~34_combout\ : std_logic;
SIGNAL \U3|Selector12~1_combout\ : std_logic;
SIGNAL \U3|Selector7~0_combout\ : std_logic;
SIGNAL \U4|WideOr0~1_combout\ : std_logic;
SIGNAL \U4|Selector12~3_combout\ : std_logic;
SIGNAL \U4|Selector8~0_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor9~combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor7~combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor5~combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor4~combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor2~combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor1~combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor0~combout\ : std_logic;
SIGNAL \U3|Equal9~0_combout\ : std_logic;
SIGNAL \U2|Selector1~1_combout\ : std_logic;
SIGNAL \U4|Equal9~1_combout\ : std_logic;
SIGNAL \U5|U0|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~3_combout\ : std_logic;
SIGNAL \U3|Selector81~1_combout\ : std_logic;
SIGNAL \U3|Selector79~0_combout\ : std_logic;
SIGNAL \U3|Selector79~1_combout\ : std_logic;
SIGNAL \U3|Equal1~3_combout\ : std_logic;
SIGNAL \U3|Equal10~1_combout\ : std_logic;
SIGNAL \U3|row~13_combout\ : std_logic;
SIGNAL \U3|Selector47~0_combout\ : std_logic;
SIGNAL \U4|Selector81~1_combout\ : std_logic;
SIGNAL \U4|present_state.CAS~q\ : std_logic;
SIGNAL \U4|Equal1~2_combout\ : std_logic;
SIGNAL \U4|Selector86~0_combout\ : std_logic;
SIGNAL \U4|Selector86~1_combout\ : std_logic;
SIGNAL \U4|Equal10~0_combout\ : std_logic;
SIGNAL \U4|WideOr21~0_combout\ : std_logic;
SIGNAL \U4|Selector41~0_combout\ : std_logic;
SIGNAL \U4|Selector40~0_combout\ : std_logic;
SIGNAL \U9|Check_Index[0]~3_combout\ : std_logic;
SIGNAL \U9|Check_Index[2]~4_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux_reg~q\ : std_logic;
SIGNAL \U3|Selector90~3_combout\ : std_logic;
SIGNAL \U4|Selector90~3_combout\ : std_logic;
SIGNAL \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|_~2_combout\ : std_logic;
SIGNAL \U3|Selector77~0_combout\ : std_logic;
SIGNAL \U3|Selector23~0_combout\ : std_logic;
SIGNAL \U3|Selector85~2_combout\ : std_logic;
SIGNAL \U3|Selector85~7_combout\ : std_logic;
SIGNAL \U3|Selector76~0_combout\ : std_logic;
SIGNAL \U3|count_init~3_combout\ : std_logic;
SIGNAL \U3|count_init~6_combout\ : std_logic;
SIGNAL \U4|Equal13~1_combout\ : std_logic;
SIGNAL \U4|Selector85~3_combout\ : std_logic;
SIGNAL \U4|Selector85~4_combout\ : std_logic;
SIGNAL \U4|Selector91~0_combout\ : std_logic;
SIGNAL \U4|Selector91~1_combout\ : std_logic;
SIGNAL \U4|Selector68~0_combout\ : std_logic;
SIGNAL \U4|count_init~0_combout\ : std_logic;
SIGNAL \U4|count_init~1_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_msb_aeb~q\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|_~0_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~1_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~5_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~0_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~1_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~2_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~3_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~4_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~5_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~6_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~7_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~8_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|_~4_combout\ : std_logic;
SIGNAL \U4|Selector25~1_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~1_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~4_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~0_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~1_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~2_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~3_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~4_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~5_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~6_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~7_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~8_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|_~2_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|_~3_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|_~4_combout\ : std_logic;
SIGNAL \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|_~9_combout\ : std_logic;
SIGNAL \U3|Selector37~0_combout\ : std_logic;
SIGNAL \U4|Selector37~0_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|_~10_combout\ : std_logic;
SIGNAL \U9|Low_Clk_Counter[0]~57_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|rdptr_g[0]~0_combout\ : std_logic;
SIGNAL \FLAGB~input_o\ : std_logic;
SIGNAL \Laser_On~input_o\ : std_logic;
SIGNAL \Encode_A~input_o\ : std_logic;
SIGNAL \Encode_B~input_o\ : std_logic;
SIGNAL \DQ0[0]~input_o\ : std_logic;
SIGNAL \DQ0[2]~input_o\ : std_logic;
SIGNAL \DQ0[5]~input_o\ : std_logic;
SIGNAL \DQ0[9]~input_o\ : std_logic;
SIGNAL \DQ0[10]~input_o\ : std_logic;
SIGNAL \DQ0[11]~input_o\ : std_logic;
SIGNAL \DQ0[15]~input_o\ : std_logic;
SIGNAL \DQ1[1]~input_o\ : std_logic;
SIGNAL \DQ1[3]~input_o\ : std_logic;
SIGNAL \DQ1[4]~input_o\ : std_logic;
SIGNAL \DQ1[7]~input_o\ : std_logic;
SIGNAL \DQ1[8]~input_o\ : std_logic;
SIGNAL \DQ1[14]~input_o\ : std_logic;
SIGNAL \CPU_WR~input_o\ : std_logic;
SIGNAL \CLK48M~inputclkctrl_outclk\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g[11]~feeder_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g[8]~feeder_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g[7]~feeder_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|ws_brp|dffe12a[5]~feeder_combout\ : std_logic;
SIGNAL \CPU_Command_2[6]~feeder_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a[9]~feeder_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a[5]~feeder_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|rdptr_g[7]~feeder_combout\ : std_logic;
SIGNAL \CPU_Set~input_o\ : std_logic;
SIGNAL \CPU_Data[2]~input_o\ : std_logic;
SIGNAL \CPU_Data[0]~input_o\ : std_logic;
SIGNAL \CPU_Command_1[0]~feeder_combout\ : std_logic;
SIGNAL \CPU_Data[4]~input_o\ : std_logic;
SIGNAL \CPU_Command_1[4]~feeder_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \CPU_Data[3]~input_o\ : std_logic;
SIGNAL \CPU_Data[6]~input_o\ : std_logic;
SIGNAL \CPU_Command_1[6]~feeder_combout\ : std_logic;
SIGNAL \CPU_Data[7]~input_o\ : std_logic;
SIGNAL \CPU_Data[5]~input_o\ : std_logic;
SIGNAL \CPU_Read_1_t[7]~0_combout\ : std_logic;
SIGNAL \CPU_Read_1_t[7]~1_combout\ : std_logic;
SIGNAL \CPU_Read_1_t[7]~1clkctrl_outclk\ : std_logic;
SIGNAL \CPU_Read_1[0]~latch_combout\ : std_logic;
SIGNAL \CPU_Read_1[0]~_emulated_q\ : std_logic;
SIGNAL \CPU_Read_1[0]~head_lut_combout\ : std_logic;
SIGNAL \CPU_RD~input_o\ : std_logic;
SIGNAL \CPU_Data[1]~input_o\ : std_logic;
SIGNAL \CPU_Command_1[1]~feeder_combout\ : std_logic;
SIGNAL \Check_Led[7]~0_combout\ : std_logic;
SIGNAL \Check_Led[7]~1_combout\ : std_logic;
SIGNAL \Check_Led[7]~1clkctrl_outclk\ : std_logic;
SIGNAL \CPU_Read_1[1]~latch_combout\ : std_logic;
SIGNAL \CPU_Read_1[1]~_emulated_q\ : std_logic;
SIGNAL \CPU_Read_1[1]~head_lut_combout\ : std_logic;
SIGNAL \CPU_Read_1[2]~latch_combout\ : std_logic;
SIGNAL \CPU_Read_1[2]~_emulated_q\ : std_logic;
SIGNAL \CPU_Read_1[2]~head_lut_combout\ : std_logic;
SIGNAL \CPU_Read_1[3]~latch_combout\ : std_logic;
SIGNAL \CPU_Read_1[3]~_emulated_q\ : std_logic;
SIGNAL \CPU_Read_1[3]~head_lut_combout\ : std_logic;
SIGNAL \CPU_Read_1[4]~latch_combout\ : std_logic;
SIGNAL \CPU_Read_1[4]~_emulated_q\ : std_logic;
SIGNAL \CPU_Read_1[4]~head_lut_combout\ : std_logic;
SIGNAL \CPU_Read_1[5]~latch_combout\ : std_logic;
SIGNAL \CPU_Read_1[5]~_emulatedfeeder_combout\ : std_logic;
SIGNAL \CPU_Read_1[5]~_emulated_q\ : std_logic;
SIGNAL \CPU_Read_1[5]~head_lut_combout\ : std_logic;
SIGNAL \CPU_Read_1[6]~latch_combout\ : std_logic;
SIGNAL \CPU_Read_1[6]~_emulated_q\ : std_logic;
SIGNAL \CPU_Read_1[6]~head_lut_combout\ : std_logic;
SIGNAL \CPU_Read_1[7]~latch_combout\ : std_logic;
SIGNAL \CPU_Read_1[7]~_emulated_q\ : std_logic;
SIGNAL \CPU_Read_1[7]~head_lut_combout\ : std_logic;
SIGNAL \U3|Add0~1\ : std_logic;
SIGNAL \U3|Add0~2_combout\ : std_logic;
SIGNAL \U3|Selector75~0_combout\ : std_logic;
SIGNAL \RESETn~input_o\ : std_logic;
SIGNAL \CLK48M~input_o\ : std_logic;
SIGNAL \U0|U0|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \U0|U0|altpll_component|auto_generated|wire_pll1_locked\ : std_logic;
SIGNAL \resetn_t~combout\ : std_logic;
SIGNAL \resetn_t~clkctrl_outclk\ : std_logic;
SIGNAL \U3|col[0]~21\ : std_logic;
SIGNAL \U3|col[1]~25\ : std_logic;
SIGNAL \U3|col[2]~26_combout\ : std_logic;
SIGNAL \U3|Selector28~0_combout\ : std_logic;
SIGNAL \U3|Selector30~0_combout\ : std_logic;
SIGNAL \U3|Selector29~0_combout\ : std_logic;
SIGNAL \U3|count_trcd[1]~2_combout\ : std_logic;
SIGNAL \U3|Selector89~0_combout\ : std_logic;
SIGNAL \U3|present_state.WRITEDATA_TWR~q\ : std_logic;
SIGNAL \U3|count_trcd[1]~3_combout\ : std_logic;
SIGNAL \U3|Selector87~0_combout\ : std_logic;
SIGNAL \U3|present_state.ACTIVEROW_TRCD~q\ : std_logic;
SIGNAL \U3|Selector27~0_combout\ : std_logic;
SIGNAL \U3|Selector90~0_combout\ : std_logic;
SIGNAL \U3|col[8]~38_combout\ : std_logic;
SIGNAL \U3|Selector90~1_combout\ : std_logic;
SIGNAL \U3|Selector90~2_combout\ : std_logic;
SIGNAL \U3|present_state.READDATA~q\ : std_logic;
SIGNAL \U3|col[6]~34_combout\ : std_logic;
SIGNAL \U3|Equal9~1_combout\ : std_logic;
SIGNAL \U3|Equal9~2_combout\ : std_logic;
SIGNAL \U3|Selector91~0_combout\ : std_logic;
SIGNAL \U3|Selector91~1_combout\ : std_logic;
SIGNAL \U3|present_state.CAS~q\ : std_logic;
SIGNAL \U3|WideOr21~0_combout\ : std_logic;
SIGNAL \U3|col[0]~23_combout\ : std_logic;
SIGNAL \U3|col[0]~20_combout\ : std_logic;
SIGNAL \U3|Equal10~0_combout\ : std_logic;
SIGNAL \U3|Equal10~2_combout\ : std_logic;
SIGNAL \U3|Selector88~0_combout\ : std_logic;
SIGNAL \U3|present_state.WRITEDATA~q\ : std_logic;
SIGNAL \U3|col[0]~22_combout\ : std_logic;
SIGNAL \U3|col[2]~27\ : std_logic;
SIGNAL \U3|col[3]~28_combout\ : std_logic;
SIGNAL \U3|col[3]~29\ : std_logic;
SIGNAL \U3|col[4]~30_combout\ : std_logic;
SIGNAL \U3|col[4]~31\ : std_logic;
SIGNAL \U3|col[5]~32_combout\ : std_logic;
SIGNAL \U3|col[5]~33\ : std_logic;
SIGNAL \U3|col[6]~35\ : std_logic;
SIGNAL \U3|col[7]~36_combout\ : std_logic;
SIGNAL \U3|col[7]~37\ : std_logic;
SIGNAL \U3|col[8]~39\ : std_logic;
SIGNAL \U3|col[9]~40_combout\ : std_logic;
SIGNAL \U3|Selector79~2_combout\ : std_logic;
SIGNAL \U3|Selector79~3_combout\ : std_logic;
SIGNAL \U3|present_state.PRECHARGE~q\ : std_logic;
SIGNAL \U3|Selector80~0_combout\ : std_logic;
SIGNAL \U3|present_state.PRECHARGE_TRP~q\ : std_logic;
SIGNAL \U3|Selector18~0_combout\ : std_logic;
SIGNAL \U3|Selector19~0_combout\ : std_logic;
SIGNAL \U3|Equal2~0_combout\ : std_logic;
SIGNAL \U3|row[0]~14_combout\ : std_logic;
SIGNAL \U3|Selector52~0_combout\ : std_logic;
SIGNAL \U3|row[0]~15\ : std_logic;
SIGNAL \U3|row[1]~16_combout\ : std_logic;
SIGNAL \U3|Selector51~0_combout\ : std_logic;
SIGNAL \U3|row[1]~17\ : std_logic;
SIGNAL \U3|row[2]~19\ : std_logic;
SIGNAL \U3|row[3]~20_combout\ : std_logic;
SIGNAL \U3|Selector49~0_combout\ : std_logic;
SIGNAL \U3|Equal3~0_combout\ : std_logic;
SIGNAL \U3|row[3]~21\ : std_logic;
SIGNAL \U3|row[4]~23\ : std_logic;
SIGNAL \U3|row[5]~25\ : std_logic;
SIGNAL \U3|row[6]~26_combout\ : std_logic;
SIGNAL \U3|Selector46~0_combout\ : std_logic;
SIGNAL \U3|row[6]~27\ : std_logic;
SIGNAL \U3|row[7]~28_combout\ : std_logic;
SIGNAL \U3|Selector45~0_combout\ : std_logic;
SIGNAL \U3|row[7]~29\ : std_logic;
SIGNAL \U3|row[8]~30_combout\ : std_logic;
SIGNAL \U3|Selector44~0_combout\ : std_logic;
SIGNAL \U3|row[8]~31\ : std_logic;
SIGNAL \U3|row[9]~32_combout\ : std_logic;
SIGNAL \U3|Selector43~0_combout\ : std_logic;
SIGNAL \U3|row[9]~33\ : std_logic;
SIGNAL \U3|row[10]~34_combout\ : std_logic;
SIGNAL \U3|Selector42~0_combout\ : std_logic;
SIGNAL \U3|Equal3~2_combout\ : std_logic;
SIGNAL \U3|row[4]~22_combout\ : std_logic;
SIGNAL \U3|Selector48~0_combout\ : std_logic;
SIGNAL \U3|Equal3~1_combout\ : std_logic;
SIGNAL \U3|Equal3~3_combout\ : std_logic;
SIGNAL \U3|Selector77~1_combout\ : std_logic;
SIGNAL \U3|init_precharge~q\ : std_logic;
SIGNAL \U3|Selector38~2_combout\ : std_logic;
SIGNAL \U3|Selector38~3_combout\ : std_logic;
SIGNAL \U2|Selector5~0_combout\ : std_logic;
SIGNAL \U2|present_state.S1~q\ : std_logic;
SIGNAL \U2|Selector7~0_combout\ : std_logic;
SIGNAL \U2|present_state.S3~q\ : std_logic;
SIGNAL \U2|Selector6~0_combout\ : std_logic;
SIGNAL \U2|present_state.S2~q\ : std_logic;
SIGNAL \U2|Selector2~0_combout\ : std_logic;
SIGNAL \U2|Selector8~0_combout\ : std_logic;
SIGNAL \U2|Selector8~1_combout\ : std_logic;
SIGNAL \U2|Selector8~2_combout\ : std_logic;
SIGNAL \U2|present_state.S4~q\ : std_logic;
SIGNAL \U3|process_2~0_combout\ : std_logic;
SIGNAL \U3|writemcufifo_t~q\ : std_logic;
SIGNAL \writeextfifo_t~0_combout\ : std_logic;
SIGNAL \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|_~5_combout\ : std_logic;
SIGNAL \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a8~0_combout\ : std_logic;
SIGNAL \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a8~q\ : std_logic;
SIGNAL \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a9~0_combout\ : std_logic;
SIGNAL \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a9~q\ : std_logic;
SIGNAL \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|_~7_combout\ : std_logic;
SIGNAL \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|_~8_combout\ : std_logic;
SIGNAL \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|_~6_combout\ : std_logic;
SIGNAL \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|parity9~q\ : std_logic;
SIGNAL \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|_~0_combout\ : std_logic;
SIGNAL \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a0~q\ : std_logic;
SIGNAL \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|_~1_combout\ : std_logic;
SIGNAL \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~0_combout\ : std_logic;
SIGNAL \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~q\ : std_logic;
SIGNAL \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|_~3_combout\ : std_logic;
SIGNAL \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~0_combout\ : std_logic;
SIGNAL \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~q\ : std_logic;
SIGNAL \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a7~0_combout\ : std_logic;
SIGNAL \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a7~q\ : std_logic;
SIGNAL \U5|U0|dcfifo_component|auto_generated|wrptr_g[6]~feeder_combout\ : std_logic;
SIGNAL \U5|U0|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~2_combout\ : std_logic;
SIGNAL \U5|U0|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~0_combout\ : std_logic;
SIGNAL \U5|U0|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~1_combout\ : std_logic;
SIGNAL \U5|U0|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~4_combout\ : std_logic;
SIGNAL \U5|U0|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux_reg~q\ : std_logic;
SIGNAL \U4|col[0]~20_combout\ : std_logic;
SIGNAL \U4|col[5]~32_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|_~1_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a0~q\ : std_logic;
SIGNAL \U4|Selector37~1_combout\ : std_logic;
SIGNAL \U4|readcamerafifo_t~q\ : std_logic;
SIGNAL \U4|ReadUSBFIFO~q\ : std_logic;
SIGNAL \readusbfifo_t~1_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|_~5_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a3~0_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a3~q\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|_~12_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a5~0_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a5~q\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|_~6_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a6~0_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a6~q\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|_~11_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|_~9_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|parity6~q\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a1~0_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a1~q\ : std_logic;
SIGNAL \FLAGC~input_o\ : std_logic;
SIGNAL \U2|process_1~0_combout\ : std_logic;
SIGNAL \U2|SLRD~q\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|rdptr_g[5]~feeder_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|_~2_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~0_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~q\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|_~3_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|cntr_cout[6]~0_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a8~0_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a8~q\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a9~0_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a9~q\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a10~0_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a10~q\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a11~0_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a11~q\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|_~7_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a7~0_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a7~q\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|_~8_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|_~9_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|_~6_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|parity9~q\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|_~5_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a0~q\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|_~1_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~0_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~q\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~4_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~6_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~7_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|rdptr_g[4]~feeder_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~0_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|wrptr_g[0]~0_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|wrptr_g[1]~feeder_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~2_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~3_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~8_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux_reg~q\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|valid_wrreq~combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~0_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~q\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~0_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~q\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~0_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~q\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~0_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~q\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g[4]~feeder_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|wrptr_g[5]~feeder_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g[5]~feeder_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~2_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~3_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|wrptr_g[2]~feeder_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g[2]~feeder_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|rdptr_g[2]~feeder_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~0_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g[0]~feeder_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~6_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~5_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~7_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~8_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_aeb~q\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|valid_rdreq~1_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|cntr_cout[0]~0_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a2~0_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a2~q\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a4~0_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a4~q\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a8~0_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a8~1_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a8~q\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|_~7_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|_~8_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a10~0_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a10~q\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a11~0_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a11~q\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor10~combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|wrptr_g[10]~feeder_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor10~combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor9~combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor8~combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor7~combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor8~combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor6~combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor5~combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|ws_bwp|dffe12a[5]~feeder_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor6~combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor4~combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor3~combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|ws_bwp|dffe12a[3]~feeder_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor2~combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|rdptr_g[3]~feeder_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a[3]~feeder_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor3~combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a[1]~feeder_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor1~combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor0~combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|op_2~1_cout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|op_2~3_cout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|op_2~5_cout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|op_2~7_cout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|op_2~9_cout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|op_2~11_cout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|op_2~13_cout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|op_2~15_cout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|op_2~17_cout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|op_2~19_cout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|op_2~20_combout\ : std_logic;
SIGNAL \U4|Selector86~2_combout\ : std_logic;
SIGNAL \U4|present_state.ACTIVEROW~q\ : std_logic;
SIGNAL \U4|Selector87~0_combout\ : std_logic;
SIGNAL \U4|present_state.ACTIVEROW_TRCD~q\ : std_logic;
SIGNAL \U4|Selector27~0_combout\ : std_logic;
SIGNAL \U4|count_init~6_combout\ : std_logic;
SIGNAL \U4|count_init~5_combout\ : std_logic;
SIGNAL \U4|Equal1~3_combout\ : std_logic;
SIGNAL \U4|Selector75~0_combout\ : std_logic;
SIGNAL \U4|Add0~1\ : std_logic;
SIGNAL \U4|Add0~3\ : std_logic;
SIGNAL \U4|Add0~4_combout\ : std_logic;
SIGNAL \U4|Selector74~0_combout\ : std_logic;
SIGNAL \U4|Add0~0_combout\ : std_logic;
SIGNAL \U4|Selector76~0_combout\ : std_logic;
SIGNAL \U4|Equal1~1_combout\ : std_logic;
SIGNAL \U4|Add0~5\ : std_logic;
SIGNAL \U4|Add0~7\ : std_logic;
SIGNAL \U4|Add0~8_combout\ : std_logic;
SIGNAL \U4|Selector72~0_combout\ : std_logic;
SIGNAL \U4|Selector73~0_combout\ : std_logic;
SIGNAL \U4|count_init~4_combout\ : std_logic;
SIGNAL \U4|Add0~9\ : std_logic;
SIGNAL \U4|Add0~11\ : std_logic;
SIGNAL \U4|Add0~13\ : std_logic;
SIGNAL \U4|Add0~15\ : std_logic;
SIGNAL \U4|Add0~17\ : std_logic;
SIGNAL \U4|Add0~18_combout\ : std_logic;
SIGNAL \U4|count_init~3_combout\ : std_logic;
SIGNAL \U4|Add0~19\ : std_logic;
SIGNAL \U4|Add0~20_combout\ : std_logic;
SIGNAL \U4|count_init~2_combout\ : std_logic;
SIGNAL \U4|Add0~21\ : std_logic;
SIGNAL \U4|Add0~23\ : std_logic;
SIGNAL \U4|Add0~24_combout\ : std_logic;
SIGNAL \U4|Selector64~0_combout\ : std_logic;
SIGNAL \U4|Equal1~0_combout\ : std_logic;
SIGNAL \U4|Equal1~4_combout\ : std_logic;
SIGNAL \U4|present_state.INIT~0_combout\ : std_logic;
SIGNAL \U4|present_state.INIT~q\ : std_logic;
SIGNAL \U4|Selector25~0_combout\ : std_logic;
SIGNAL \U4|Selector89~0_combout\ : std_logic;
SIGNAL \U4|present_state.WRITEDATA_TWR~q\ : std_logic;
SIGNAL \U4|Selector29~0_combout\ : std_logic;
SIGNAL \U4|Selector30~0_combout\ : std_logic;
SIGNAL \U4|count_trcd[1]~2_combout\ : std_logic;
SIGNAL \U4|count_trcd[1]~3_combout\ : std_logic;
SIGNAL \U4|Selector28~0_combout\ : std_logic;
SIGNAL \U4|Selector90~0_combout\ : std_logic;
SIGNAL \U4|Selector88~0_combout\ : std_logic;
SIGNAL \U4|present_state.WRITEDATA~feeder_combout\ : std_logic;
SIGNAL \U4|present_state.WRITEDATA~q\ : std_logic;
SIGNAL \U4|Selector90~1_combout\ : std_logic;
SIGNAL \U4|Selector90~2_combout\ : std_logic;
SIGNAL \U4|present_state.READDATA~q\ : std_logic;
SIGNAL \U4|col[7]~23_combout\ : std_logic;
SIGNAL \U4|Equal10~1_combout\ : std_logic;
SIGNAL \U4|col[8]~39\ : std_logic;
SIGNAL \U4|col[9]~40_combout\ : std_logic;
SIGNAL \U4|Equal10~2_combout\ : std_logic;
SIGNAL \U4|Selector79~2_combout\ : std_logic;
SIGNAL \U4|col[7]~22_combout\ : std_logic;
SIGNAL \U4|col[0]~21\ : std_logic;
SIGNAL \U4|col[1]~24_combout\ : std_logic;
SIGNAL \U4|col[1]~25\ : std_logic;
SIGNAL \U4|col[2]~26_combout\ : std_logic;
SIGNAL \U4|col[2]~27\ : std_logic;
SIGNAL \U4|col[3]~29\ : std_logic;
SIGNAL \U4|col[4]~30_combout\ : std_logic;
SIGNAL \U4|col[4]~31\ : std_logic;
SIGNAL \U4|col[5]~33\ : std_logic;
SIGNAL \U4|col[6]~35\ : std_logic;
SIGNAL \U4|col[7]~36_combout\ : std_logic;
SIGNAL \U4|col[7]~37\ : std_logic;
SIGNAL \U4|col[8]~38_combout\ : std_logic;
SIGNAL \U4|Equal9~0_combout\ : std_logic;
SIGNAL \U4|Equal9~2_combout\ : std_logic;
SIGNAL \U4|process_2~0_combout\ : std_logic;
SIGNAL \U4|writemcufifo_t~q\ : std_logic;
SIGNAL \writeextfifo_t~1_combout\ : std_logic;
SIGNAL \U5|U0|dcfifo_component|auto_generated|valid_wrreq~0_combout\ : std_logic;
SIGNAL \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~0_combout\ : std_logic;
SIGNAL \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~q\ : std_logic;
SIGNAL \U5|U0|dcfifo_component|auto_generated|wrptr_g[1]~feeder_combout\ : std_logic;
SIGNAL \U5|U0|dcfifo_component|auto_generated|wrptr_g[0]~0_combout\ : std_logic;
SIGNAL \U5|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~2_combout\ : std_logic;
SIGNAL \U5|U0|dcfifo_component|auto_generated|wrptr_g[2]~feeder_combout\ : std_logic;
SIGNAL \U5|U0|dcfifo_component|auto_generated|wrptr_g[3]~feeder_combout\ : std_logic;
SIGNAL \U5|U0|dcfifo_component|auto_generated|wrptr_g[5]~feeder_combout\ : std_logic;
SIGNAL \U5|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~3_combout\ : std_logic;
SIGNAL \U5|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~0_combout\ : std_logic;
SIGNAL \U5|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~1_combout\ : std_logic;
SIGNAL \U5|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~4_combout\ : std_logic;
SIGNAL \U5|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux_reg~q\ : std_logic;
SIGNAL \U5|U0|dcfifo_component|auto_generated|valid_wrreq~1_combout\ : std_logic;
SIGNAL \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|cntr_cout[0]~0_combout\ : std_logic;
SIGNAL \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~0_combout\ : std_logic;
SIGNAL \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~q\ : std_logic;
SIGNAL \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~0_combout\ : std_logic;
SIGNAL \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~q\ : std_logic;
SIGNAL \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~0_combout\ : std_logic;
SIGNAL \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~q\ : std_logic;
SIGNAL \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|_~4_combout\ : std_logic;
SIGNAL \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a10~0_combout\ : std_logic;
SIGNAL \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a10~q\ : std_logic;
SIGNAL \U5|U0|dcfifo_component|auto_generated|wrptr_g[10]~feeder_combout\ : std_logic;
SIGNAL \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a11~0_combout\ : std_logic;
SIGNAL \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a11~q\ : std_logic;
SIGNAL \U5|U0|dcfifo_component|auto_generated|wrptr_g[11]~feeder_combout\ : std_logic;
SIGNAL \U5|U0|dcfifo_component|auto_generated|ws_bwp|dffe12a[10]~feeder_combout\ : std_logic;
SIGNAL \U4|present_state~35_combout\ : std_logic;
SIGNAL \U4|count_autorefresh[0]~8_combout\ : std_logic;
SIGNAL \U4|Equal5~0_combout\ : std_logic;
SIGNAL \U4|Selector77~0_combout\ : std_logic;
SIGNAL \U4|Selector77~1_combout\ : std_logic;
SIGNAL \U4|init_precharge~q\ : std_logic;
SIGNAL \U4|Selector23~0_combout\ : std_logic;
SIGNAL \U4|Selector23~1_combout\ : std_logic;
SIGNAL \U4|count_trc_init~q\ : std_logic;
SIGNAL \U4|Selector81~0_combout\ : std_logic;
SIGNAL \U4|Selector81~2_combout\ : std_logic;
SIGNAL \U4|present_state.AUTOREFRESH~q\ : std_logic;
SIGNAL \U4|Selector82~0_combout\ : std_logic;
SIGNAL \U4|present_state.AUTOREFRESH_TRC~q\ : std_logic;
SIGNAL \U4|Selector22~0_combout\ : std_logic;
SIGNAL \U4|Selector21~0_combout\ : std_logic;
SIGNAL \U4|Selector20~0_combout\ : std_logic;
SIGNAL \U4|Selector20~1_combout\ : std_logic;
SIGNAL \U4|Selector26~0_combout\ : std_logic;
SIGNAL \U4|Selector26~1_combout\ : std_logic;
SIGNAL \U4|Selector26~2_combout\ : std_logic;
SIGNAL \U4|autorefresh_en~q\ : std_logic;
SIGNAL \U4|count_autorefresh[0]~9\ : std_logic;
SIGNAL \U4|count_autorefresh[1]~10_combout\ : std_logic;
SIGNAL \U4|count_autorefresh[1]~11\ : std_logic;
SIGNAL \U4|count_autorefresh[2]~12_combout\ : std_logic;
SIGNAL \U4|count_autorefresh[2]~13\ : std_logic;
SIGNAL \U4|count_autorefresh[3]~15\ : std_logic;
SIGNAL \U4|count_autorefresh[4]~16_combout\ : std_logic;
SIGNAL \U4|count_autorefresh[4]~17\ : std_logic;
SIGNAL \U4|count_autorefresh[5]~19\ : std_logic;
SIGNAL \U4|count_autorefresh[6]~20_combout\ : std_logic;
SIGNAL \U4|count_autorefresh[6]~21\ : std_logic;
SIGNAL \U4|count_autorefresh[7]~22_combout\ : std_logic;
SIGNAL \U4|count_autorefresh[3]~14_combout\ : std_logic;
SIGNAL \U4|Equal13~0_combout\ : std_logic;
SIGNAL \U4|Equal13~2_combout\ : std_logic;
SIGNAL \U4|refreshsdram~0_combout\ : std_logic;
SIGNAL \U4|refreshsdram~q\ : std_logic;
SIGNAL \U4|Selector85~0_combout\ : std_logic;
SIGNAL \U4|Selector19~0_combout\ : std_logic;
SIGNAL \U4|Selector18~0_combout\ : std_logic;
SIGNAL \U4|Selector38~0_combout\ : std_logic;
SIGNAL \U4|Equal0~0_combout\ : std_logic;
SIGNAL \U4|Selector85~1_combout\ : std_logic;
SIGNAL \U4|Selector83~0_combout\ : std_logic;
SIGNAL \U4|present_state.LOADMODE~q\ : std_logic;
SIGNAL \U4|Selector24~0_combout\ : std_logic;
SIGNAL \U4|Selector84~0_combout\ : std_logic;
SIGNAL \U4|present_state.LOADMODE_TRMD~q\ : std_logic;
SIGNAL \U4|Selector85~2_combout\ : std_logic;
SIGNAL \U4|Selector85~5_combout\ : std_logic;
SIGNAL \U4|Selector32~0_combout\ : std_logic;
SIGNAL \U4|count_done[0]~_wirecell_combout\ : std_logic;
SIGNAL \U4|Selector38~1_combout\ : std_logic;
SIGNAL \U4|Selector92~0_combout\ : std_logic;
SIGNAL \U4|present_state.COMMANDDONE~q\ : std_logic;
SIGNAL \U4|Selector31~0_combout\ : std_logic;
SIGNAL \U4|Selector85~6_combout\ : std_logic;
SIGNAL \U4|Selector85~7_combout\ : std_logic;
SIGNAL \U4|present_state.IDLE~q\ : std_logic;
SIGNAL \U4|Selector36~0_combout\ : std_logic;
SIGNAL \U4|readsdram_en~q\ : std_logic;
SIGNAL \U4|row~13_combout\ : std_logic;
SIGNAL \U4|row[0]~14_combout\ : std_logic;
SIGNAL \U4|Selector52~0_combout\ : std_logic;
SIGNAL \U4|Selector79~0_combout\ : std_logic;
SIGNAL \U4|Selector79~1_combout\ : std_logic;
SIGNAL \U4|Selector79~3_combout\ : std_logic;
SIGNAL \U4|present_state.PRECHARGE~q\ : std_logic;
SIGNAL \U4|Selector80~0_combout\ : std_logic;
SIGNAL \U4|present_state.PRECHARGE_TRP~q\ : std_logic;
SIGNAL \U4|row[0]~15\ : std_logic;
SIGNAL \U4|row[1]~16_combout\ : std_logic;
SIGNAL \U4|Selector51~0_combout\ : std_logic;
SIGNAL \U4|row[1]~17\ : std_logic;
SIGNAL \U4|row[2]~18_combout\ : std_logic;
SIGNAL \U4|Selector50~0_combout\ : std_logic;
SIGNAL \U4|Equal3~0_combout\ : std_logic;
SIGNAL \U4|row[2]~19\ : std_logic;
SIGNAL \U4|row[3]~21\ : std_logic;
SIGNAL \U4|row[4]~23\ : std_logic;
SIGNAL \U4|row[5]~24_combout\ : std_logic;
SIGNAL \U4|Selector47~0_combout\ : std_logic;
SIGNAL \U4|row[5]~25\ : std_logic;
SIGNAL \U4|row[6]~26_combout\ : std_logic;
SIGNAL \U4|Selector46~0_combout\ : std_logic;
SIGNAL \U4|row[6]~27\ : std_logic;
SIGNAL \U4|row[7]~28_combout\ : std_logic;
SIGNAL \U4|Selector45~0_combout\ : std_logic;
SIGNAL \U4|Equal3~1_combout\ : std_logic;
SIGNAL \U4|row[7]~29\ : std_logic;
SIGNAL \U4|row[8]~30_combout\ : std_logic;
SIGNAL \U4|Selector44~0_combout\ : std_logic;
SIGNAL \U4|row[8]~31\ : std_logic;
SIGNAL \U4|row[9]~33\ : std_logic;
SIGNAL \U4|row[10]~34_combout\ : std_logic;
SIGNAL \U4|Selector42~0_combout\ : std_logic;
SIGNAL \U4|row[9]~32_combout\ : std_logic;
SIGNAL \U4|Selector43~0_combout\ : std_logic;
SIGNAL \U4|Equal3~2_combout\ : std_logic;
SIGNAL \U4|Equal3~3_combout\ : std_logic;
SIGNAL \U4|present_state~34_combout\ : std_logic;
SIGNAL \U4|Selector38~2_combout\ : std_logic;
SIGNAL \U4|Selector38~3_combout\ : std_logic;
SIGNAL \U4|Selector38~4_combout\ : std_logic;
SIGNAL \U4|Selector39~0_combout\ : std_logic;
SIGNAL \U4|Equal2~0_combout\ : std_logic;
SIGNAL \U4|Selector39~1_combout\ : std_logic;
SIGNAL \U4|Selector39~2_combout\ : std_logic;
SIGNAL \U4|Selector34~1_combout\ : std_logic;
SIGNAL \U4|Selector34~0_combout\ : std_logic;
SIGNAL \U4|Selector34~2_combout\ : std_logic;
SIGNAL \U4|Empty~q\ : std_logic;
SIGNAL \U2|Selector9~1_combout\ : std_logic;
SIGNAL \U2|present_state.S5~q\ : std_logic;
SIGNAL \U2|Selector2~1_combout\ : std_logic;
SIGNAL \U2|Selector2~2_combout\ : std_logic;
SIGNAL \usbfifohalffull_t2~0_combout\ : std_logic;
SIGNAL \U4|Selector35~0_combout\ : std_logic;
SIGNAL \U4|writesdram_en~q\ : std_logic;
SIGNAL \U4|Selector33~0_combout\ : std_logic;
SIGNAL \U4|Full~q\ : std_logic;
SIGNAL \U2|Selector0~0_combout\ : std_logic;
SIGNAL \U2|Selector0~2_combout\ : std_logic;
SIGNAL \usbfifohalffull_t1~0_combout\ : std_logic;
SIGNAL \U3|count_autorefresh[0]~8_combout\ : std_logic;
SIGNAL \U3|Selector23~1_combout\ : std_logic;
SIGNAL \U3|count_trc_init~q\ : std_logic;
SIGNAL \U3|Selector22~0_combout\ : std_logic;
SIGNAL \U3|Selector21~0_combout\ : std_logic;
SIGNAL \U3|Equal5~0_combout\ : std_logic;
SIGNAL \U3|Selector81~0_combout\ : std_logic;
SIGNAL \U3|Selector81~2_combout\ : std_logic;
SIGNAL \U3|present_state.AUTOREFRESH~q\ : std_logic;
SIGNAL \U3|Selector82~0_combout\ : std_logic;
SIGNAL \U3|present_state.AUTOREFRESH_TRC~q\ : std_logic;
SIGNAL \U3|Selector20~0_combout\ : std_logic;
SIGNAL \U3|Selector20~1_combout\ : std_logic;
SIGNAL \U3|Selector26~0_combout\ : std_logic;
SIGNAL \U3|Selector26~1_combout\ : std_logic;
SIGNAL \U3|Selector26~2_combout\ : std_logic;
SIGNAL \U3|autorefresh_en~q\ : std_logic;
SIGNAL \U3|count_autorefresh[0]~9\ : std_logic;
SIGNAL \U3|count_autorefresh[1]~11\ : std_logic;
SIGNAL \U3|count_autorefresh[2]~12_combout\ : std_logic;
SIGNAL \U3|count_autorefresh[1]~10_combout\ : std_logic;
SIGNAL \U3|Equal13~0_combout\ : std_logic;
SIGNAL \U3|count_autorefresh[2]~13\ : std_logic;
SIGNAL \U3|count_autorefresh[3]~15\ : std_logic;
SIGNAL \U3|count_autorefresh[4]~17\ : std_logic;
SIGNAL \U3|count_autorefresh[5]~18_combout\ : std_logic;
SIGNAL \U3|count_autorefresh[4]~16_combout\ : std_logic;
SIGNAL \U3|Equal13~1_combout\ : std_logic;
SIGNAL \U3|count_autorefresh[5]~19\ : std_logic;
SIGNAL \U3|count_autorefresh[6]~20_combout\ : std_logic;
SIGNAL \U3|Equal13~2_combout\ : std_logic;
SIGNAL \U3|refreshsdram~0_combout\ : std_logic;
SIGNAL \U3|refreshsdram~q\ : std_logic;
SIGNAL \U3|Selector35~0_combout\ : std_logic;
SIGNAL \U3|writesdram_en~q\ : std_logic;
SIGNAL \U3|Selector39~0_combout\ : std_logic;
SIGNAL \U3|Selector39~1_combout\ : std_logic;
SIGNAL \U3|Selector39~2_combout\ : std_logic;
SIGNAL \U3|Selector38~4_combout\ : std_logic;
SIGNAL \U3|Selector38~0_combout\ : std_logic;
SIGNAL \U3|Selector34~0_combout\ : std_logic;
SIGNAL \U3|Selector34~1_combout\ : std_logic;
SIGNAL \U3|Empty~q\ : std_logic;
SIGNAL \U2|Selector4~0_combout\ : std_logic;
SIGNAL \U2|present_state.S0~q\ : std_logic;
SIGNAL \U2|Selector1~0_combout\ : std_logic;
SIGNAL \U2|Selector1~2_combout\ : std_logic;
SIGNAL \U3|present_state~35_combout\ : std_logic;
SIGNAL \U3|Selector36~0_combout\ : std_logic;
SIGNAL \U3|readsdram_en~q\ : std_logic;
SIGNAL \U3|Selector85~10_combout\ : std_logic;
SIGNAL \U3|Selector32~0_combout\ : std_logic;
SIGNAL \U3|count_done[0]~_wirecell_combout\ : std_logic;
SIGNAL \U3|Selector38~1_combout\ : std_logic;
SIGNAL \U3|Selector92~0_combout\ : std_logic;
SIGNAL \U3|present_state.COMMANDDONE~q\ : std_logic;
SIGNAL \U3|Selector31~0_combout\ : std_logic;
SIGNAL \U3|Selector83~0_combout\ : std_logic;
SIGNAL \U3|present_state.LOADMODE~q\ : std_logic;
SIGNAL \U3|Selector84~0_combout\ : std_logic;
SIGNAL \U3|present_state.LOADMODE_TRMD~q\ : std_logic;
SIGNAL \U3|Selector24~0_combout\ : std_logic;
SIGNAL \U3|Selector25~1_combout\ : std_logic;
SIGNAL \U3|Equal0~0_combout\ : std_logic;
SIGNAL \U3|Selector85~4_combout\ : std_logic;
SIGNAL \U3|Selector85~5_combout\ : std_logic;
SIGNAL \U3|Selector85~6_combout\ : std_logic;
SIGNAL \U3|Selector85~3_combout\ : std_logic;
SIGNAL \U3|Selector85~8_combout\ : std_logic;
SIGNAL \U3|Selector85~9_combout\ : std_logic;
SIGNAL \U3|present_state.IDLE~q\ : std_logic;
SIGNAL \U3|Selector25~0_combout\ : std_logic;
SIGNAL \U3|Add0~3\ : std_logic;
SIGNAL \U3|Add0~4_combout\ : std_logic;
SIGNAL \U3|Selector74~0_combout\ : std_logic;
SIGNAL \U3|Add0~5\ : std_logic;
SIGNAL \U3|Add0~6_combout\ : std_logic;
SIGNAL \U3|Selector73~0_combout\ : std_logic;
SIGNAL \U3|Add0~7\ : std_logic;
SIGNAL \U3|Add0~8_combout\ : std_logic;
SIGNAL \U3|Selector72~0_combout\ : std_logic;
SIGNAL \U3|Add0~9\ : std_logic;
SIGNAL \U3|Add0~11\ : std_logic;
SIGNAL \U3|Add0~12_combout\ : std_logic;
SIGNAL \U3|count_init~5_combout\ : std_logic;
SIGNAL \U3|Add0~13\ : std_logic;
SIGNAL \U3|Add0~14_combout\ : std_logic;
SIGNAL \U3|count_init~4_combout\ : std_logic;
SIGNAL \U3|Add0~15\ : std_logic;
SIGNAL \U3|Add0~16_combout\ : std_logic;
SIGNAL \U3|Selector68~0_combout\ : std_logic;
SIGNAL \U3|Add0~17\ : std_logic;
SIGNAL \U3|Add0~19\ : std_logic;
SIGNAL \U3|Add0~21\ : std_logic;
SIGNAL \U3|Add0~22_combout\ : std_logic;
SIGNAL \U3|count_init~1_combout\ : std_logic;
SIGNAL \U3|Add0~20_combout\ : std_logic;
SIGNAL \U3|count_init~2_combout\ : std_logic;
SIGNAL \U3|Equal1~2_combout\ : std_logic;
SIGNAL \U3|Add0~23\ : std_logic;
SIGNAL \U3|Add0~24_combout\ : std_logic;
SIGNAL \U3|Selector64~0_combout\ : std_logic;
SIGNAL \U3|Add0~25\ : std_logic;
SIGNAL \U3|Add0~26_combout\ : std_logic;
SIGNAL \U3|count_init~0_combout\ : std_logic;
SIGNAL \U3|Equal1~1_combout\ : std_logic;
SIGNAL \U3|Equal1~0_combout\ : std_logic;
SIGNAL \U3|Equal1~4_combout\ : std_logic;
SIGNAL \U3|present_state.INIT~0_combout\ : std_logic;
SIGNAL \U3|present_state.INIT~q\ : std_logic;
SIGNAL \U3|Selector33~0_combout\ : std_logic;
SIGNAL \U3|Selector33~1_combout\ : std_logic;
SIGNAL \U3|Full~q\ : std_logic;
SIGNAL \U2|Selector9~0_combout\ : std_logic;
SIGNAL \U2|Selector0~1_combout\ : std_logic;
SIGNAL \U2|Selector3~0_combout\ : std_logic;
SIGNAL \U2|Selector3~1_combout\ : std_logic;
SIGNAL \U3|Selector37~1_combout\ : std_logic;
SIGNAL \U3|readcamerafifo_t~q\ : std_logic;
SIGNAL \U3|ReadUSBFIFO~q\ : std_logic;
SIGNAL \readusbfifo_t~0_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|valid_rdreq~0_combout\ : std_logic;
SIGNAL \U0|U0|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\ : std_logic;
SIGNAL \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \DATAIN[0]~input_o\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|wrptr_g[9]~feeder_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a0~_wirecell_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a7~0_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a7~q\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a9~0_combout\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a9~q\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|_~0_combout\ : std_logic;
SIGNAL \DATAIN[1]~input_o\ : std_logic;
SIGNAL \DATAIN[2]~input_o\ : std_logic;
SIGNAL \DATAIN[3]~input_o\ : std_logic;
SIGNAL \readusbfifodata_t1[0]~0_combout\ : std_logic;
SIGNAL \readusbfifodata_t1[1]~1_combout\ : std_logic;
SIGNAL \readusbfifodata_t1[2]~2_combout\ : std_logic;
SIGNAL \readusbfifodata_t1[3]~3_combout\ : std_logic;
SIGNAL \DATAIN[4]~input_o\ : std_logic;
SIGNAL \DATAIN[5]~input_o\ : std_logic;
SIGNAL \DATAIN[6]~input_o\ : std_logic;
SIGNAL \DATAIN[7]~input_o\ : std_logic;
SIGNAL \readusbfifodata_t1[4]~4_combout\ : std_logic;
SIGNAL \readusbfifodata_t1[5]~5_combout\ : std_logic;
SIGNAL \readusbfifodata_t1[6]~6_combout\ : std_logic;
SIGNAL \readusbfifodata_t1[7]~7_combout\ : std_logic;
SIGNAL \DATAIN[8]~input_o\ : std_logic;
SIGNAL \DATAIN[9]~input_o\ : std_logic;
SIGNAL \DATAIN[10]~input_o\ : std_logic;
SIGNAL \DATAIN[11]~input_o\ : std_logic;
SIGNAL \readusbfifodata_t1[8]~8_combout\ : std_logic;
SIGNAL \readusbfifodata_t1[9]~9_combout\ : std_logic;
SIGNAL \readusbfifodata_t1[10]~10_combout\ : std_logic;
SIGNAL \readusbfifodata_t1[11]~11_combout\ : std_logic;
SIGNAL \DATAIN[12]~input_o\ : std_logic;
SIGNAL \DATAIN[13]~input_o\ : std_logic;
SIGNAL \DATAIN[14]~input_o\ : std_logic;
SIGNAL \DATAIN[15]~input_o\ : std_logic;
SIGNAL \readusbfifodata_t1[12]~12_combout\ : std_logic;
SIGNAL \readusbfifodata_t1[13]~13_combout\ : std_logic;
SIGNAL \readusbfifodata_t1[14]~14_combout\ : std_logic;
SIGNAL \readusbfifodata_t1[15]~15_combout\ : std_logic;
SIGNAL \readusbfifodata_t2[0]~0_combout\ : std_logic;
SIGNAL \readusbfifodata_t2[1]~1_combout\ : std_logic;
SIGNAL \readusbfifodata_t2[2]~2_combout\ : std_logic;
SIGNAL \readusbfifodata_t2[3]~3_combout\ : std_logic;
SIGNAL \readusbfifodata_t2[4]~4_combout\ : std_logic;
SIGNAL \readusbfifodata_t2[5]~5_combout\ : std_logic;
SIGNAL \readusbfifodata_t2[6]~6_combout\ : std_logic;
SIGNAL \readusbfifodata_t2[7]~7_combout\ : std_logic;
SIGNAL \readusbfifodata_t2[8]~8_combout\ : std_logic;
SIGNAL \readusbfifodata_t2[9]~9_combout\ : std_logic;
SIGNAL \readusbfifodata_t2[10]~10_combout\ : std_logic;
SIGNAL \readusbfifodata_t2[11]~11_combout\ : std_logic;
SIGNAL \readusbfifodata_t2[12]~12_combout\ : std_logic;
SIGNAL \readusbfifodata_t2[13]~13_combout\ : std_logic;
SIGNAL \readusbfifodata_t2[14]~14_combout\ : std_logic;
SIGNAL \readusbfifodata_t2[15]~15_combout\ : std_logic;
SIGNAL \U9|Low_Clk_Counter[19]~feeder_combout\ : std_logic;
SIGNAL \U9|Low_Clk_Counter[19]~clkctrl_outclk\ : std_logic;
SIGNAL \U9|Check_Counter[0]~8_combout\ : std_logic;
SIGNAL \U9|Check_Index[0]~2_combout\ : std_logic;
SIGNAL \U9|Mux0~2_combout\ : std_logic;
SIGNAL \U9|Mux0~3_combout\ : std_logic;
SIGNAL \U9|Check_Index[1]~0_combout\ : std_logic;
SIGNAL \U9|Check_Index[1]~1_combout\ : std_logic;
SIGNAL \U9|Mux0~0_combout\ : std_logic;
SIGNAL \U9|Mux0~1_combout\ : std_logic;
SIGNAL \U9|Check_Counter~10_combout\ : std_logic;
SIGNAL \U9|Check_Counter[3]~19\ : std_logic;
SIGNAL \U9|Check_Counter[4]~20_combout\ : std_logic;
SIGNAL \U9|Check_Counter~22_combout\ : std_logic;
SIGNAL \U9|Check_Counter~13_combout\ : std_logic;
SIGNAL \U9|Check_Counter~23_combout\ : std_logic;
SIGNAL \U9|Check_Counter[4]~21\ : std_logic;
SIGNAL \U9|Check_Counter[5]~24_combout\ : std_logic;
SIGNAL \U9|Check_Counter[5]~25\ : std_logic;
SIGNAL \U9|Check_Counter[6]~26_combout\ : std_logic;
SIGNAL \U9|Equal0~1_combout\ : std_logic;
SIGNAL \U9|Equal0~2_combout\ : std_logic;
SIGNAL \U9|Check_Counter[0]~9\ : std_logic;
SIGNAL \U9|Check_Counter[1]~12\ : std_logic;
SIGNAL \U9|Check_Counter[2]~17\ : std_logic;
SIGNAL \U9|Check_Counter[3]~18_combout\ : std_logic;
SIGNAL \U9|Check_Counter~14_combout\ : std_logic;
SIGNAL \U9|Check_Counter[1]~11_combout\ : std_logic;
SIGNAL \U9|Check_Counter~15_combout\ : std_logic;
SIGNAL \U9|Equal0~0_combout\ : std_logic;
SIGNAL \U9|Check_t~0_combout\ : std_logic;
SIGNAL \U9|Check_t~q\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \DQ1[0]~input_o\ : std_logic;
SIGNAL \extfifohalffull_t1~0_combout\ : std_logic;
SIGNAL \extfifohalffull_t2~0_combout\ : std_logic;
SIGNAL \writeextfifodata_t[0]~0_combout\ : std_logic;
SIGNAL \U5|U0|dcfifo_component|auto_generated|wrptr_g[8]~feeder_combout\ : std_logic;
SIGNAL \DQ0[1]~input_o\ : std_logic;
SIGNAL \writeextfifodata_t[1]~1_combout\ : std_logic;
SIGNAL \DQ1[2]~input_o\ : std_logic;
SIGNAL \writeextfifodata_t[2]~2_combout\ : std_logic;
SIGNAL \DQ0[3]~input_o\ : std_logic;
SIGNAL \writeextfifodata_t[3]~3_combout\ : std_logic;
SIGNAL \DQ0[4]~input_o\ : std_logic;
SIGNAL \writeextfifodata_t[4]~4_combout\ : std_logic;
SIGNAL \DQ1[5]~input_o\ : std_logic;
SIGNAL \writeextfifodata_t[5]~5_combout\ : std_logic;
SIGNAL \DQ1[6]~input_o\ : std_logic;
SIGNAL \DQ0[6]~input_o\ : std_logic;
SIGNAL \writeextfifodata_t[6]~6_combout\ : std_logic;
SIGNAL \DQ0[7]~input_o\ : std_logic;
SIGNAL \writeextfifodata_t[7]~7_combout\ : std_logic;
SIGNAL \DQ0[8]~input_o\ : std_logic;
SIGNAL \writeextfifodata_t[8]~8_combout\ : std_logic;
SIGNAL \DQ1[9]~input_o\ : std_logic;
SIGNAL \writeextfifodata_t[9]~9_combout\ : std_logic;
SIGNAL \DQ1[10]~input_o\ : std_logic;
SIGNAL \writeextfifodata_t[10]~10_combout\ : std_logic;
SIGNAL \DQ1[11]~input_o\ : std_logic;
SIGNAL \writeextfifodata_t[11]~11_combout\ : std_logic;
SIGNAL \DQ0[12]~input_o\ : std_logic;
SIGNAL \DQ1[12]~input_o\ : std_logic;
SIGNAL \writeextfifodata_t[12]~12_combout\ : std_logic;
SIGNAL \DQ0[13]~input_o\ : std_logic;
SIGNAL \DQ1[13]~input_o\ : std_logic;
SIGNAL \writeextfifodata_t[13]~13_combout\ : std_logic;
SIGNAL \DQ0[14]~input_o\ : std_logic;
SIGNAL \writeextfifodata_t[14]~14_combout\ : std_logic;
SIGNAL \DQ1[15]~input_o\ : std_logic;
SIGNAL \writeextfifodata_t[15]~15_combout\ : std_logic;
SIGNAL \U3|Selector86~0_combout\ : std_logic;
SIGNAL \U3|Selector86~1_combout\ : std_logic;
SIGNAL \U3|Selector86~2_combout\ : std_logic;
SIGNAL \U3|present_state.ACTIVEROW~q\ : std_logic;
SIGNAL \U3|WideOr0~0_combout\ : std_logic;
SIGNAL \U3|Selector0~0_combout\ : std_logic;
SIGNAL \U3|RASn~q\ : std_logic;
SIGNAL \U3|WideOr2~0_combout\ : std_logic;
SIGNAL \U3|Selector1~0_combout\ : std_logic;
SIGNAL \U3|CASn~q\ : std_logic;
SIGNAL \U3|Selector2~0_combout\ : std_logic;
SIGNAL \U3|WEn~q\ : std_logic;
SIGNAL \U3|UDQM~feeder_combout\ : std_logic;
SIGNAL \U3|UDQM~q\ : std_logic;
SIGNAL \U3|LDQM~feeder_combout\ : std_logic;
SIGNAL \U3|LDQM~q\ : std_logic;
SIGNAL \U3|WideOr6~0_combout\ : std_logic;
SIGNAL \U3|Selector4~0_combout\ : std_logic;
SIGNAL \U3|Selector12~0_combout\ : std_logic;
SIGNAL \U3|Selector3~0_combout\ : std_logic;
SIGNAL \U3|A[8]~10_combout\ : std_logic;
SIGNAL \U3|Selector17~0_combout\ : std_logic;
SIGNAL \U3|Selector16~0_combout\ : std_logic;
SIGNAL \U3|row[2]~18_combout\ : std_logic;
SIGNAL \U3|Selector50~0_combout\ : std_logic;
SIGNAL \U3|Selector15~0_combout\ : std_logic;
SIGNAL \U3|Selector14~0_combout\ : std_logic;
SIGNAL \U3|Selector13~0_combout\ : std_logic;
SIGNAL \U3|Selector12~2_combout\ : std_logic;
SIGNAL \U3|Selector12~3_combout\ : std_logic;
SIGNAL \U3|Selector12~4_combout\ : std_logic;
SIGNAL \U3|Selector11~0_combout\ : std_logic;
SIGNAL \U3|Selector10~0_combout\ : std_logic;
SIGNAL \U3|Selector9~0_combout\ : std_logic;
SIGNAL \U3|Selector8~0_combout\ : std_logic;
SIGNAL \U3|Selector8~1_combout\ : std_logic;
SIGNAL \U3|Selector7~1_combout\ : std_logic;
SIGNAL \U3|row[10]~35\ : std_logic;
SIGNAL \U3|row[11]~36_combout\ : std_logic;
SIGNAL \U3|Selector41~0_combout\ : std_logic;
SIGNAL \U3|Selector6~0_combout\ : std_logic;
SIGNAL \U3|row[11]~37\ : std_logic;
SIGNAL \U3|row[12]~38_combout\ : std_logic;
SIGNAL \U3|Selector40~0_combout\ : std_logic;
SIGNAL \U3|Selector5~0_combout\ : std_logic;
SIGNAL \U4|WideOr0~0_combout\ : std_logic;
SIGNAL \U4|Selector0~0_combout\ : std_logic;
SIGNAL \U4|RASn~q\ : std_logic;
SIGNAL \U4|WideOr2~0_combout\ : std_logic;
SIGNAL \U4|Selector1~0_combout\ : std_logic;
SIGNAL \U4|CASn~q\ : std_logic;
SIGNAL \U4|Selector2~0_combout\ : std_logic;
SIGNAL \U4|WEn~q\ : std_logic;
SIGNAL \U4|UDQM~feeder_combout\ : std_logic;
SIGNAL \U4|UDQM~q\ : std_logic;
SIGNAL \U4|LDQM~feeder_combout\ : std_logic;
SIGNAL \U4|LDQM~q\ : std_logic;
SIGNAL \U4|WideOr6~0_combout\ : std_logic;
SIGNAL \U4|Selector4~0_combout\ : std_logic;
SIGNAL \U4|Selector12~0_combout\ : std_logic;
SIGNAL \U4|Selector3~0_combout\ : std_logic;
SIGNAL \U4|A[4]~10_combout\ : std_logic;
SIGNAL \U4|Selector17~0_combout\ : std_logic;
SIGNAL \U4|Selector16~0_combout\ : std_logic;
SIGNAL \U4|Selector15~0_combout\ : std_logic;
SIGNAL \U4|col[3]~28_combout\ : std_logic;
SIGNAL \U4|row[3]~20_combout\ : std_logic;
SIGNAL \U4|Selector49~0_combout\ : std_logic;
SIGNAL \U4|Selector14~0_combout\ : std_logic;
SIGNAL \U4|row[4]~22_combout\ : std_logic;
SIGNAL \U4|Selector48~0_combout\ : std_logic;
SIGNAL \U4|Selector13~0_combout\ : std_logic;
SIGNAL \U4|Selector12~1_combout\ : std_logic;
SIGNAL \U4|Selector12~2_combout\ : std_logic;
SIGNAL \U4|Selector12~4_combout\ : std_logic;
SIGNAL \U4|Selector11~0_combout\ : std_logic;
SIGNAL \U4|Selector10~0_combout\ : std_logic;
SIGNAL \U4|Selector9~0_combout\ : std_logic;
SIGNAL \U4|Selector8~1_combout\ : std_logic;
SIGNAL \U4|Selector7~0_combout\ : std_logic;
SIGNAL \U4|Selector7~1_combout\ : std_logic;
SIGNAL \U4|Selector6~0_combout\ : std_logic;
SIGNAL \U4|Selector5~0_combout\ : std_logic;
SIGNAL \U9|Check_Index\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U3|A\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U3|bank\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U3|count_autorefresh\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U3|count_init\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \U3|count_trc\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U3|count_trp\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U3|row\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|sub_parity7a\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U1|U0|dcfifo_component|auto_generated|rdptr_g\ : std_logic_vector(11 DOWNTO 0);
SIGNAL CPU_Command_1 : std_logic_vector(7 DOWNTO 0);
SIGNAL Check_Led : std_logic_vector(7 DOWNTO 0);
SIGNAL \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U5|U0|dcfifo_component|auto_generated|wrptr_g\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \U5|U0|dcfifo_component|auto_generated|ram_address_a\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \U4|count_trc\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U4|BA\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U4|col\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \U4|count_done\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U9|Check_Counter\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U9|Low_Clk_Counter\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \U3|BA\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U3|col\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \U3|count_done\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U3|count_tmrd\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U3|count_trcd\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U3|count_twr\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U2|wr_t\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \U1|U0|dcfifo_component|auto_generated|fifo_ram|q_b\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \U1|U0|dcfifo_component|auto_generated|wrptr_g\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \U0|U0|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL CPU_Command_2 : std_logic_vector(7 DOWNTO 0);
SIGNAL CPU_Read_1_t : std_logic_vector(7 DOWNTO 0);
SIGNAL \U5|U0|dcfifo_component|auto_generated|ws_bwp|dffe12a\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \U5|U0|dcfifo_component|auto_generated|fifo_ram|q_b\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U4|count_init\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \U4|bank\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U4|row\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U4|count_trp\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U4|count_tmrd\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U4|A\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U4|count_trcd\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U4|count_twr\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U4|count_autorefresh\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U1|U0|dcfifo_component|auto_generated|ws_bwp|dffe12a\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \U1|U0|dcfifo_component|auto_generated|ws_brp|dffe12a\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \U2|ALT_INV_SLRD~q\ : std_logic;
SIGNAL \U3|ALT_INV_RASn~q\ : std_logic;
SIGNAL \U3|ALT_INV_CASn~q\ : std_logic;
SIGNAL \U3|ALT_INV_WEn~q\ : std_logic;
SIGNAL \U3|ALT_INV_UDQM~q\ : std_logic;
SIGNAL \U3|ALT_INV_LDQM~q\ : std_logic;
SIGNAL \U4|ALT_INV_RASn~q\ : std_logic;
SIGNAL \U4|ALT_INV_CASn~q\ : std_logic;
SIGNAL \U4|ALT_INV_WEn~q\ : std_logic;
SIGNAL \U4|ALT_INV_UDQM~q\ : std_logic;
SIGNAL \U4|ALT_INV_LDQM~q\ : std_logic;
SIGNAL \U4|ALT_INV_present_state.COMMANDDONE~q\ : std_logic;
SIGNAL \U3|ALT_INV_present_state.PRECHARGE_TRP~q\ : std_logic;
SIGNAL \U4|ALT_INV_present_state.PRECHARGE_TRP~q\ : std_logic;
SIGNAL \U3|ALT_INV_autorefresh_en~q\ : std_logic;
SIGNAL \U4|ALT_INV_autorefresh_en~q\ : std_logic;
SIGNAL \U1|U0|dcfifo_component|auto_generated|ALT_INV_valid_rdreq~0_combout\ : std_logic;
SIGNAL \ALT_INV_resetn_t~combout\ : std_logic;
SIGNAL \U3|ALT_INV_present_state.COMMANDDONE~q\ : std_logic;
SIGNAL \ALT_INV_~GND~combout\ : std_logic;
SIGNAL \ALT_INV_CPU_RD~input_o\ : std_logic;
SIGNAL \U0|U0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \U0|U0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_resetn_t~clkctrl_outclk\ : std_logic;

BEGIN

Check <= ww_Check;
SLRD <= ww_SLRD;
SLWR <= ww_SLWR;
IFCLK <= ww_IFCLK;
Laser_En <= ww_Laser_En;
Laser_ST <= ww_Laser_ST;
Laser_Clk <= ww_Laser_Clk;
Laser_Data <= ww_Laser_Data;
CLK0 <= ww_CLK0;
CKE0 <= ww_CKE0;
CSn0 <= ww_CSn0;
RASn0 <= ww_RASn0;
CASn0 <= ww_CASn0;
WEn0 <= ww_WEn0;
UDQM0 <= ww_UDQM0;
LDQM0 <= ww_LDQM0;
BA0 <= ww_BA0;
A0 <= ww_A0;
CLK1 <= ww_CLK1;
CKE1 <= ww_CKE1;
CSn1 <= ww_CSn1;
RASn1 <= ww_RASn1;
CASn1 <= ww_CASn1;
WEn1 <= ww_WEn1;
UDQM1 <= ww_UDQM1;
LDQM1 <= ww_LDQM1;
BA1 <= ww_BA1;
A1 <= ww_A1;
ww_RESETn <= RESETn;
ww_CLK48M <= CLK48M;
ww_FLAGC <= FLAGC;
ww_FLAGB <= FLAGB;
ww_DATAIN <= DATAIN;
ww_CPU_WR <= CPU_WR;
ww_CPU_RD <= CPU_RD;
ww_CPU_Set <= CPU_Set;
ww_Laser_On <= Laser_On;
ww_Encode_A <= Encode_A;
ww_Encode_B <= Encode_B;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\U0|U0|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \CLK48M~input_o\);

\U0|U0|altpll_component|auto_generated|wire_pll1_clk\(0) <= \U0|U0|altpll_component|auto_generated|pll1_CLK_bus\(0);
\U0|U0|altpll_component|auto_generated|wire_pll1_clk\(1) <= \U0|U0|altpll_component|auto_generated|pll1_CLK_bus\(1);
\U0|U0|altpll_component|auto_generated|wire_pll1_clk\(2) <= \U0|U0|altpll_component|auto_generated|pll1_CLK_bus\(2);
\U0|U0|altpll_component|auto_generated|wire_pll1_clk\(3) <= \U0|U0|altpll_component|auto_generated|pll1_CLK_bus\(3);
\U0|U0|altpll_component|auto_generated|wire_pll1_clk\(4) <= \U0|U0|altpll_component|auto_generated|pll1_CLK_bus\(4);

\U5|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a0_PORTADATAIN_bus\ <= (\writeextfifodata_t[3]~3_combout\ & \writeextfifodata_t[2]~2_combout\ & \writeextfifodata_t[1]~1_combout\ & \writeextfifodata_t[0]~0_combout\);

\U5|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a0_PORTAADDR_bus\ <= (\U5|U0|dcfifo_component|auto_generated|ram_address_a\(10) & \U5|U0|dcfifo_component|auto_generated|wrptr_g\(9) & \U5|U0|dcfifo_component|auto_generated|wrptr_g\(8) & 
\U5|U0|dcfifo_component|auto_generated|wrptr_g\(7) & \U5|U0|dcfifo_component|auto_generated|wrptr_g\(6) & \U5|U0|dcfifo_component|auto_generated|wrptr_g\(5) & \U5|U0|dcfifo_component|auto_generated|wrptr_g\(4) & 
\U5|U0|dcfifo_component|auto_generated|wrptr_g\(3) & \U5|U0|dcfifo_component|auto_generated|wrptr_g\(2) & \U5|U0|dcfifo_component|auto_generated|wrptr_g\(1) & \U5|U0|dcfifo_component|auto_generated|wrptr_g\(0));

\U5|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a0_PORTBADDR_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & vcc
);

\U5|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(0) <= \U5|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a0_PORTBDATAOUT_bus\(0);
\U5|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(1) <= \U5|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a0_PORTBDATAOUT_bus\(1);
\U5|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(2) <= \U5|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a0_PORTBDATAOUT_bus\(2);
\U5|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(3) <= \U5|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a0_PORTBDATAOUT_bus\(3);

\U5|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a4_PORTADATAIN_bus\ <= (\writeextfifodata_t[7]~7_combout\ & \writeextfifodata_t[6]~6_combout\ & \writeextfifodata_t[5]~5_combout\ & \writeextfifodata_t[4]~4_combout\);

\U5|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a4_PORTAADDR_bus\ <= (\U5|U0|dcfifo_component|auto_generated|ram_address_a\(10) & \U5|U0|dcfifo_component|auto_generated|wrptr_g\(9) & \U5|U0|dcfifo_component|auto_generated|wrptr_g\(8) & 
\U5|U0|dcfifo_component|auto_generated|wrptr_g\(7) & \U5|U0|dcfifo_component|auto_generated|wrptr_g\(6) & \U5|U0|dcfifo_component|auto_generated|wrptr_g\(5) & \U5|U0|dcfifo_component|auto_generated|wrptr_g\(4) & 
\U5|U0|dcfifo_component|auto_generated|wrptr_g\(3) & \U5|U0|dcfifo_component|auto_generated|wrptr_g\(2) & \U5|U0|dcfifo_component|auto_generated|wrptr_g\(1) & \U5|U0|dcfifo_component|auto_generated|wrptr_g\(0));

\U5|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a4_PORTBADDR_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & vcc
);

\U5|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(4) <= \U5|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a4_PORTBDATAOUT_bus\(0);
\U5|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(5) <= \U5|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a4_PORTBDATAOUT_bus\(1);
\U5|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(6) <= \U5|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a4_PORTBDATAOUT_bus\(2);
\U5|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(7) <= \U5|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a4_PORTBDATAOUT_bus\(3);

\U5|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a8_PORTADATAIN_bus\ <= (\writeextfifodata_t[11]~11_combout\ & \writeextfifodata_t[10]~10_combout\ & \writeextfifodata_t[9]~9_combout\ & \writeextfifodata_t[8]~8_combout\);

\U5|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a8_PORTAADDR_bus\ <= (\U5|U0|dcfifo_component|auto_generated|ram_address_a\(10) & \U5|U0|dcfifo_component|auto_generated|wrptr_g\(9) & \U5|U0|dcfifo_component|auto_generated|wrptr_g\(8) & 
\U5|U0|dcfifo_component|auto_generated|wrptr_g\(7) & \U5|U0|dcfifo_component|auto_generated|wrptr_g\(6) & \U5|U0|dcfifo_component|auto_generated|wrptr_g\(5) & \U5|U0|dcfifo_component|auto_generated|wrptr_g\(4) & 
\U5|U0|dcfifo_component|auto_generated|wrptr_g\(3) & \U5|U0|dcfifo_component|auto_generated|wrptr_g\(2) & \U5|U0|dcfifo_component|auto_generated|wrptr_g\(1) & \U5|U0|dcfifo_component|auto_generated|wrptr_g\(0));

\U5|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a8_PORTBADDR_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & vcc
);

\U5|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(8) <= \U5|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a8_PORTBDATAOUT_bus\(0);
\U5|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(9) <= \U5|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a8_PORTBDATAOUT_bus\(1);
\U5|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(10) <= \U5|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a8_PORTBDATAOUT_bus\(2);
\U5|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(11) <= \U5|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a8_PORTBDATAOUT_bus\(3);

\U5|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a12_PORTADATAIN_bus\ <= (\writeextfifodata_t[15]~15_combout\ & \writeextfifodata_t[14]~14_combout\ & \writeextfifodata_t[13]~13_combout\ & \writeextfifodata_t[12]~12_combout\);

\U5|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a12_PORTAADDR_bus\ <= (\U5|U0|dcfifo_component|auto_generated|ram_address_a\(10) & \U5|U0|dcfifo_component|auto_generated|wrptr_g\(9) & \U5|U0|dcfifo_component|auto_generated|wrptr_g\(8) & 
\U5|U0|dcfifo_component|auto_generated|wrptr_g\(7) & \U5|U0|dcfifo_component|auto_generated|wrptr_g\(6) & \U5|U0|dcfifo_component|auto_generated|wrptr_g\(5) & \U5|U0|dcfifo_component|auto_generated|wrptr_g\(4) & 
\U5|U0|dcfifo_component|auto_generated|wrptr_g\(3) & \U5|U0|dcfifo_component|auto_generated|wrptr_g\(2) & \U5|U0|dcfifo_component|auto_generated|wrptr_g\(1) & \U5|U0|dcfifo_component|auto_generated|wrptr_g\(0));

\U5|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a12_PORTBADDR_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & vcc
);

\U5|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(12) <= \U5|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a12_PORTBDATAOUT_bus\(0);
\U5|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(13) <= \U5|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a12_PORTBDATAOUT_bus\(1);
\U5|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(14) <= \U5|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a12_PORTBDATAOUT_bus\(2);
\U5|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(15) <= \U5|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a12_PORTBDATAOUT_bus\(3);

\U1|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a0_PORTADATAIN_bus\ <= (\DATAIN[3]~input_o\ & \DATAIN[2]~input_o\ & \DATAIN[1]~input_o\ & \DATAIN[0]~input_o\);

\U1|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a0_PORTAADDR_bus\ <= (\U1|U0|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor10~combout\ & \U1|U0|dcfifo_component|auto_generated|wrptr_g\(9) & 
\U1|U0|dcfifo_component|auto_generated|wrptr_g\(8) & \U1|U0|dcfifo_component|auto_generated|wrptr_g\(7) & \U1|U0|dcfifo_component|auto_generated|wrptr_g\(6) & \U1|U0|dcfifo_component|auto_generated|wrptr_g\(5) & 
\U1|U0|dcfifo_component|auto_generated|wrptr_g\(4) & \U1|U0|dcfifo_component|auto_generated|wrptr_g\(3) & \U1|U0|dcfifo_component|auto_generated|wrptr_g\(2) & \U1|U0|dcfifo_component|auto_generated|wrptr_g\(1) & 
\U1|U0|dcfifo_component|auto_generated|wrptr_g\(0));

\U1|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a0_PORTBADDR_bus\ <= (\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|_~0_combout\ & \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a9~q\ & 
\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a8~q\ & \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a7~q\ & \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a6~q\ & 
\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a5~q\ & \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a4~q\ & \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a3~q\ & 
\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a2~q\ & \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a1~q\ & \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a0~_wirecell_combout\);

\U1|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(0) <= \U1|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a0_PORTBDATAOUT_bus\(0);
\U1|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(1) <= \U1|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a0_PORTBDATAOUT_bus\(1);
\U1|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(2) <= \U1|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a0_PORTBDATAOUT_bus\(2);
\U1|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(3) <= \U1|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a0_PORTBDATAOUT_bus\(3);

\U1|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a4_PORTADATAIN_bus\ <= (\DATAIN[7]~input_o\ & \DATAIN[6]~input_o\ & \DATAIN[5]~input_o\ & \DATAIN[4]~input_o\);

\U1|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a4_PORTAADDR_bus\ <= (\U1|U0|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor10~combout\ & \U1|U0|dcfifo_component|auto_generated|wrptr_g\(9) & 
\U1|U0|dcfifo_component|auto_generated|wrptr_g\(8) & \U1|U0|dcfifo_component|auto_generated|wrptr_g\(7) & \U1|U0|dcfifo_component|auto_generated|wrptr_g\(6) & \U1|U0|dcfifo_component|auto_generated|wrptr_g\(5) & 
\U1|U0|dcfifo_component|auto_generated|wrptr_g\(4) & \U1|U0|dcfifo_component|auto_generated|wrptr_g\(3) & \U1|U0|dcfifo_component|auto_generated|wrptr_g\(2) & \U1|U0|dcfifo_component|auto_generated|wrptr_g\(1) & 
\U1|U0|dcfifo_component|auto_generated|wrptr_g\(0));

\U1|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a4_PORTBADDR_bus\ <= (\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|_~0_combout\ & \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a9~q\ & 
\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a8~q\ & \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a7~q\ & \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a6~q\ & 
\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a5~q\ & \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a4~q\ & \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a3~q\ & 
\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a2~q\ & \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a1~q\ & \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a0~_wirecell_combout\);

\U1|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(4) <= \U1|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a4_PORTBDATAOUT_bus\(0);
\U1|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(5) <= \U1|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a4_PORTBDATAOUT_bus\(1);
\U1|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(6) <= \U1|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a4_PORTBDATAOUT_bus\(2);
\U1|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(7) <= \U1|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a4_PORTBDATAOUT_bus\(3);

\U1|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a8_PORTADATAIN_bus\ <= (\DATAIN[11]~input_o\ & \DATAIN[10]~input_o\ & \DATAIN[9]~input_o\ & \DATAIN[8]~input_o\);

\U1|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a8_PORTAADDR_bus\ <= (\U1|U0|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor10~combout\ & \U1|U0|dcfifo_component|auto_generated|wrptr_g\(9) & 
\U1|U0|dcfifo_component|auto_generated|wrptr_g\(8) & \U1|U0|dcfifo_component|auto_generated|wrptr_g\(7) & \U1|U0|dcfifo_component|auto_generated|wrptr_g\(6) & \U1|U0|dcfifo_component|auto_generated|wrptr_g\(5) & 
\U1|U0|dcfifo_component|auto_generated|wrptr_g\(4) & \U1|U0|dcfifo_component|auto_generated|wrptr_g\(3) & \U1|U0|dcfifo_component|auto_generated|wrptr_g\(2) & \U1|U0|dcfifo_component|auto_generated|wrptr_g\(1) & 
\U1|U0|dcfifo_component|auto_generated|wrptr_g\(0));

\U1|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a8_PORTBADDR_bus\ <= (\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|_~0_combout\ & \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a9~q\ & 
\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a8~q\ & \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a7~q\ & \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a6~q\ & 
\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a5~q\ & \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a4~q\ & \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a3~q\ & 
\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a2~q\ & \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a1~q\ & \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a0~_wirecell_combout\);

\U1|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(8) <= \U1|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a8_PORTBDATAOUT_bus\(0);
\U1|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(9) <= \U1|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a8_PORTBDATAOUT_bus\(1);
\U1|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(10) <= \U1|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a8_PORTBDATAOUT_bus\(2);
\U1|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(11) <= \U1|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a8_PORTBDATAOUT_bus\(3);

\U1|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a12_PORTADATAIN_bus\ <= (\DATAIN[15]~input_o\ & \DATAIN[14]~input_o\ & \DATAIN[13]~input_o\ & \DATAIN[12]~input_o\);

\U1|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a12_PORTAADDR_bus\ <= (\U1|U0|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor10~combout\ & \U1|U0|dcfifo_component|auto_generated|wrptr_g\(9) & 
\U1|U0|dcfifo_component|auto_generated|wrptr_g\(8) & \U1|U0|dcfifo_component|auto_generated|wrptr_g\(7) & \U1|U0|dcfifo_component|auto_generated|wrptr_g\(6) & \U1|U0|dcfifo_component|auto_generated|wrptr_g\(5) & 
\U1|U0|dcfifo_component|auto_generated|wrptr_g\(4) & \U1|U0|dcfifo_component|auto_generated|wrptr_g\(3) & \U1|U0|dcfifo_component|auto_generated|wrptr_g\(2) & \U1|U0|dcfifo_component|auto_generated|wrptr_g\(1) & 
\U1|U0|dcfifo_component|auto_generated|wrptr_g\(0));

\U1|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a12_PORTBADDR_bus\ <= (\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|_~0_combout\ & \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a9~q\ & 
\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a8~q\ & \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a7~q\ & \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a6~q\ & 
\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a5~q\ & \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a4~q\ & \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a3~q\ & 
\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a2~q\ & \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a1~q\ & \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a0~_wirecell_combout\);

\U1|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(12) <= \U1|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a12_PORTBDATAOUT_bus\(0);
\U1|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(13) <= \U1|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a12_PORTBDATAOUT_bus\(1);
\U1|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(14) <= \U1|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a12_PORTBDATAOUT_bus\(2);
\U1|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(15) <= \U1|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a12_PORTBDATAOUT_bus\(3);

\Check_Led[7]~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Check_Led[7]~1_combout\);

\U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U0|U0|altpll_component|auto_generated|wire_pll1_clk\(0));

\U9|Low_Clk_Counter[19]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U9|Low_Clk_Counter\(19));

\U0|U0|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U0|U0|altpll_component|auto_generated|wire_pll1_clk\(1));

\CLK48M~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK48M~input_o\);

\resetn_t~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \resetn_t~combout\);

\CPU_Read_1_t[7]~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CPU_Read_1_t[7]~1_combout\);
\U2|ALT_INV_SLRD~q\ <= NOT \U2|SLRD~q\;
\U3|ALT_INV_RASn~q\ <= NOT \U3|RASn~q\;
\U3|ALT_INV_CASn~q\ <= NOT \U3|CASn~q\;
\U3|ALT_INV_WEn~q\ <= NOT \U3|WEn~q\;
\U3|ALT_INV_UDQM~q\ <= NOT \U3|UDQM~q\;
\U3|ALT_INV_LDQM~q\ <= NOT \U3|LDQM~q\;
\U4|ALT_INV_RASn~q\ <= NOT \U4|RASn~q\;
\U4|ALT_INV_CASn~q\ <= NOT \U4|CASn~q\;
\U4|ALT_INV_WEn~q\ <= NOT \U4|WEn~q\;
\U4|ALT_INV_UDQM~q\ <= NOT \U4|UDQM~q\;
\U4|ALT_INV_LDQM~q\ <= NOT \U4|LDQM~q\;
\U4|ALT_INV_present_state.COMMANDDONE~q\ <= NOT \U4|present_state.COMMANDDONE~q\;
\U3|ALT_INV_present_state.PRECHARGE_TRP~q\ <= NOT \U3|present_state.PRECHARGE_TRP~q\;
\U4|ALT_INV_present_state.PRECHARGE_TRP~q\ <= NOT \U4|present_state.PRECHARGE_TRP~q\;
\U3|ALT_INV_autorefresh_en~q\ <= NOT \U3|autorefresh_en~q\;
\U4|ALT_INV_autorefresh_en~q\ <= NOT \U4|autorefresh_en~q\;
\U1|U0|dcfifo_component|auto_generated|ALT_INV_valid_rdreq~0_combout\ <= NOT \U1|U0|dcfifo_component|auto_generated|valid_rdreq~0_combout\;
\ALT_INV_resetn_t~combout\ <= NOT \resetn_t~combout\;
\U3|ALT_INV_present_state.COMMANDDONE~q\ <= NOT \U3|present_state.COMMANDDONE~q\;
\ALT_INV_~GND~combout\ <= NOT \~GND~combout\;
\ALT_INV_CPU_RD~input_o\ <= NOT \CPU_RD~input_o\;
\U0|U0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\ <= NOT \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\;
\U0|U0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\ <= NOT \U0|U0|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\;
\ALT_INV_resetn_t~clkctrl_outclk\ <= NOT \resetn_t~clkctrl_outclk\;

-- Location: FF_X33_Y19_N13
\U9|Check_Counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U9|Low_Clk_Counter[19]~clkctrl_outclk\,
	d => \U9|Check_Counter[2]~16_combout\,
	asdata => \U9|Check_Counter~10_combout\,
	sload => \U9|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U9|Check_Counter\(2));

-- Location: FF_X33_Y19_N23
\U9|Check_Counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U9|Low_Clk_Counter[19]~clkctrl_outclk\,
	d => \U9|Check_Counter[7]~28_combout\,
	asdata => \~GND~combout\,
	sload => \U9|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U9|Check_Counter\(7));

-- Location: FF_X16_Y8_N13
\U3|col[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|col[1]~24_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sclr => \U3|col[0]~22_combout\,
	ena => \U3|col[0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|col\(1));

-- Location: FF_X18_Y7_N13
\U3|row[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|row[5]~24_combout\,
	asdata => \U3|Selector47~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sload => \U3|ALT_INV_present_state.PRECHARGE_TRP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|row\(5));

-- Location: FF_X12_Y17_N13
\U4|col[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|col[6]~34_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sclr => \U4|col[7]~22_combout\,
	ena => \U4|col[7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|col\(6));

-- Location: FF_X12_Y16_N27
\U4|row[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|row[11]~36_combout\,
	asdata => \U4|Selector41~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sload => \U4|ALT_INV_present_state.PRECHARGE_TRP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|row\(11));

-- Location: FF_X12_Y16_N29
\U4|row[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|row[12]~38_combout\,
	asdata => \U4|Selector40~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sload => \U4|ALT_INV_present_state.PRECHARGE_TRP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|row\(12));

-- Location: LCCOMB_X33_Y19_N12
\U9|Check_Counter[2]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \U9|Check_Counter[2]~16_combout\ = (\U9|Check_Counter\(2) & ((GND) # (!\U9|Check_Counter[1]~12\))) # (!\U9|Check_Counter\(2) & (\U9|Check_Counter[1]~12\ $ (GND)))
-- \U9|Check_Counter[2]~17\ = CARRY((\U9|Check_Counter\(2)) # (!\U9|Check_Counter[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U9|Check_Counter\(2),
	datad => VCC,
	cin => \U9|Check_Counter[1]~12\,
	combout => \U9|Check_Counter[2]~16_combout\,
	cout => \U9|Check_Counter[2]~17\);

-- Location: LCCOMB_X33_Y19_N20
\U9|Check_Counter[6]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \U9|Check_Counter[6]~26_combout\ = (\U9|Check_Counter\(6) & ((GND) # (!\U9|Check_Counter[5]~25\))) # (!\U9|Check_Counter\(6) & (\U9|Check_Counter[5]~25\ $ (GND)))
-- \U9|Check_Counter[6]~27\ = CARRY((\U9|Check_Counter\(6)) # (!\U9|Check_Counter[5]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U9|Check_Counter\(6),
	datad => VCC,
	cin => \U9|Check_Counter[5]~25\,
	combout => \U9|Check_Counter[6]~26_combout\,
	cout => \U9|Check_Counter[6]~27\);

-- Location: LCCOMB_X33_Y19_N22
\U9|Check_Counter[7]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \U9|Check_Counter[7]~28_combout\ = \U9|Check_Counter\(7) $ (!\U9|Check_Counter[6]~27\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U9|Check_Counter\(7),
	cin => \U9|Check_Counter[6]~27\,
	combout => \U9|Check_Counter[7]~28_combout\);

-- Location: FF_X33_Y12_N17
\U9|Low_Clk_Counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK48M~inputclkctrl_outclk\,
	d => \U9|Low_Clk_Counter[18]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U9|Low_Clk_Counter\(18));

-- Location: FF_X33_Y12_N15
\U9|Low_Clk_Counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK48M~inputclkctrl_outclk\,
	d => \U9|Low_Clk_Counter[17]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U9|Low_Clk_Counter\(17));

-- Location: FF_X33_Y12_N13
\U9|Low_Clk_Counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK48M~inputclkctrl_outclk\,
	d => \U9|Low_Clk_Counter[16]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U9|Low_Clk_Counter\(16));

-- Location: FF_X33_Y12_N11
\U9|Low_Clk_Counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK48M~inputclkctrl_outclk\,
	d => \U9|Low_Clk_Counter[15]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U9|Low_Clk_Counter\(15));

-- Location: FF_X33_Y12_N9
\U9|Low_Clk_Counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK48M~inputclkctrl_outclk\,
	d => \U9|Low_Clk_Counter[14]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U9|Low_Clk_Counter\(14));

-- Location: FF_X33_Y12_N7
\U9|Low_Clk_Counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK48M~inputclkctrl_outclk\,
	d => \U9|Low_Clk_Counter[13]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U9|Low_Clk_Counter\(13));

-- Location: FF_X33_Y12_N5
\U9|Low_Clk_Counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK48M~inputclkctrl_outclk\,
	d => \U9|Low_Clk_Counter[12]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U9|Low_Clk_Counter\(12));

-- Location: FF_X33_Y12_N3
\U9|Low_Clk_Counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK48M~inputclkctrl_outclk\,
	d => \U9|Low_Clk_Counter[11]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U9|Low_Clk_Counter\(11));

-- Location: FF_X33_Y12_N1
\U9|Low_Clk_Counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK48M~inputclkctrl_outclk\,
	d => \U9|Low_Clk_Counter[10]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U9|Low_Clk_Counter\(10));

-- Location: FF_X33_Y13_N31
\U9|Low_Clk_Counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK48M~inputclkctrl_outclk\,
	d => \U9|Low_Clk_Counter[9]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U9|Low_Clk_Counter\(9));

-- Location: FF_X33_Y13_N29
\U9|Low_Clk_Counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK48M~inputclkctrl_outclk\,
	d => \U9|Low_Clk_Counter[8]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U9|Low_Clk_Counter\(8));

-- Location: FF_X33_Y13_N27
\U9|Low_Clk_Counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK48M~inputclkctrl_outclk\,
	d => \U9|Low_Clk_Counter[7]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U9|Low_Clk_Counter\(7));

-- Location: FF_X33_Y13_N25
\U9|Low_Clk_Counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK48M~inputclkctrl_outclk\,
	d => \U9|Low_Clk_Counter[6]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U9|Low_Clk_Counter\(6));

-- Location: FF_X33_Y13_N23
\U9|Low_Clk_Counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK48M~inputclkctrl_outclk\,
	d => \U9|Low_Clk_Counter[5]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U9|Low_Clk_Counter\(5));

-- Location: FF_X33_Y13_N21
\U9|Low_Clk_Counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK48M~inputclkctrl_outclk\,
	d => \U9|Low_Clk_Counter[4]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U9|Low_Clk_Counter\(4));

-- Location: FF_X33_Y13_N19
\U9|Low_Clk_Counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK48M~inputclkctrl_outclk\,
	d => \U9|Low_Clk_Counter[3]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U9|Low_Clk_Counter\(3));

-- Location: FF_X33_Y13_N17
\U9|Low_Clk_Counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK48M~inputclkctrl_outclk\,
	d => \U9|Low_Clk_Counter[2]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U9|Low_Clk_Counter\(2));

-- Location: FF_X33_Y13_N15
\U9|Low_Clk_Counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK48M~inputclkctrl_outclk\,
	d => \U9|Low_Clk_Counter[1]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U9|Low_Clk_Counter\(1));

-- Location: LCCOMB_X33_Y13_N14
\U9|Low_Clk_Counter[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \U9|Low_Clk_Counter[1]~19_combout\ = (\U9|Low_Clk_Counter\(0) & (\U9|Low_Clk_Counter\(1) $ (VCC))) # (!\U9|Low_Clk_Counter\(0) & (\U9|Low_Clk_Counter\(1) & VCC))
-- \U9|Low_Clk_Counter[1]~20\ = CARRY((\U9|Low_Clk_Counter\(0) & \U9|Low_Clk_Counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U9|Low_Clk_Counter\(0),
	datab => \U9|Low_Clk_Counter\(1),
	datad => VCC,
	combout => \U9|Low_Clk_Counter[1]~19_combout\,
	cout => \U9|Low_Clk_Counter[1]~20\);

-- Location: LCCOMB_X33_Y13_N16
\U9|Low_Clk_Counter[2]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \U9|Low_Clk_Counter[2]~21_combout\ = (\U9|Low_Clk_Counter\(2) & (!\U9|Low_Clk_Counter[1]~20\)) # (!\U9|Low_Clk_Counter\(2) & ((\U9|Low_Clk_Counter[1]~20\) # (GND)))
-- \U9|Low_Clk_Counter[2]~22\ = CARRY((!\U9|Low_Clk_Counter[1]~20\) # (!\U9|Low_Clk_Counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U9|Low_Clk_Counter\(2),
	datad => VCC,
	cin => \U9|Low_Clk_Counter[1]~20\,
	combout => \U9|Low_Clk_Counter[2]~21_combout\,
	cout => \U9|Low_Clk_Counter[2]~22\);

-- Location: LCCOMB_X33_Y13_N18
\U9|Low_Clk_Counter[3]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \U9|Low_Clk_Counter[3]~23_combout\ = (\U9|Low_Clk_Counter\(3) & (\U9|Low_Clk_Counter[2]~22\ $ (GND))) # (!\U9|Low_Clk_Counter\(3) & (!\U9|Low_Clk_Counter[2]~22\ & VCC))
-- \U9|Low_Clk_Counter[3]~24\ = CARRY((\U9|Low_Clk_Counter\(3) & !\U9|Low_Clk_Counter[2]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U9|Low_Clk_Counter\(3),
	datad => VCC,
	cin => \U9|Low_Clk_Counter[2]~22\,
	combout => \U9|Low_Clk_Counter[3]~23_combout\,
	cout => \U9|Low_Clk_Counter[3]~24\);

-- Location: LCCOMB_X33_Y13_N20
\U9|Low_Clk_Counter[4]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \U9|Low_Clk_Counter[4]~25_combout\ = (\U9|Low_Clk_Counter\(4) & (!\U9|Low_Clk_Counter[3]~24\)) # (!\U9|Low_Clk_Counter\(4) & ((\U9|Low_Clk_Counter[3]~24\) # (GND)))
-- \U9|Low_Clk_Counter[4]~26\ = CARRY((!\U9|Low_Clk_Counter[3]~24\) # (!\U9|Low_Clk_Counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U9|Low_Clk_Counter\(4),
	datad => VCC,
	cin => \U9|Low_Clk_Counter[3]~24\,
	combout => \U9|Low_Clk_Counter[4]~25_combout\,
	cout => \U9|Low_Clk_Counter[4]~26\);

-- Location: LCCOMB_X33_Y13_N22
\U9|Low_Clk_Counter[5]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \U9|Low_Clk_Counter[5]~27_combout\ = (\U9|Low_Clk_Counter\(5) & (\U9|Low_Clk_Counter[4]~26\ $ (GND))) # (!\U9|Low_Clk_Counter\(5) & (!\U9|Low_Clk_Counter[4]~26\ & VCC))
-- \U9|Low_Clk_Counter[5]~28\ = CARRY((\U9|Low_Clk_Counter\(5) & !\U9|Low_Clk_Counter[4]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U9|Low_Clk_Counter\(5),
	datad => VCC,
	cin => \U9|Low_Clk_Counter[4]~26\,
	combout => \U9|Low_Clk_Counter[5]~27_combout\,
	cout => \U9|Low_Clk_Counter[5]~28\);

-- Location: LCCOMB_X33_Y13_N24
\U9|Low_Clk_Counter[6]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \U9|Low_Clk_Counter[6]~29_combout\ = (\U9|Low_Clk_Counter\(6) & (!\U9|Low_Clk_Counter[5]~28\)) # (!\U9|Low_Clk_Counter\(6) & ((\U9|Low_Clk_Counter[5]~28\) # (GND)))
-- \U9|Low_Clk_Counter[6]~30\ = CARRY((!\U9|Low_Clk_Counter[5]~28\) # (!\U9|Low_Clk_Counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U9|Low_Clk_Counter\(6),
	datad => VCC,
	cin => \U9|Low_Clk_Counter[5]~28\,
	combout => \U9|Low_Clk_Counter[6]~29_combout\,
	cout => \U9|Low_Clk_Counter[6]~30\);

-- Location: LCCOMB_X33_Y13_N26
\U9|Low_Clk_Counter[7]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \U9|Low_Clk_Counter[7]~31_combout\ = (\U9|Low_Clk_Counter\(7) & (\U9|Low_Clk_Counter[6]~30\ $ (GND))) # (!\U9|Low_Clk_Counter\(7) & (!\U9|Low_Clk_Counter[6]~30\ & VCC))
-- \U9|Low_Clk_Counter[7]~32\ = CARRY((\U9|Low_Clk_Counter\(7) & !\U9|Low_Clk_Counter[6]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U9|Low_Clk_Counter\(7),
	datad => VCC,
	cin => \U9|Low_Clk_Counter[6]~30\,
	combout => \U9|Low_Clk_Counter[7]~31_combout\,
	cout => \U9|Low_Clk_Counter[7]~32\);

-- Location: LCCOMB_X33_Y13_N28
\U9|Low_Clk_Counter[8]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \U9|Low_Clk_Counter[8]~33_combout\ = (\U9|Low_Clk_Counter\(8) & (!\U9|Low_Clk_Counter[7]~32\)) # (!\U9|Low_Clk_Counter\(8) & ((\U9|Low_Clk_Counter[7]~32\) # (GND)))
-- \U9|Low_Clk_Counter[8]~34\ = CARRY((!\U9|Low_Clk_Counter[7]~32\) # (!\U9|Low_Clk_Counter\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U9|Low_Clk_Counter\(8),
	datad => VCC,
	cin => \U9|Low_Clk_Counter[7]~32\,
	combout => \U9|Low_Clk_Counter[8]~33_combout\,
	cout => \U9|Low_Clk_Counter[8]~34\);

-- Location: LCCOMB_X33_Y13_N30
\U9|Low_Clk_Counter[9]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \U9|Low_Clk_Counter[9]~35_combout\ = (\U9|Low_Clk_Counter\(9) & (\U9|Low_Clk_Counter[8]~34\ $ (GND))) # (!\U9|Low_Clk_Counter\(9) & (!\U9|Low_Clk_Counter[8]~34\ & VCC))
-- \U9|Low_Clk_Counter[9]~36\ = CARRY((\U9|Low_Clk_Counter\(9) & !\U9|Low_Clk_Counter[8]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U9|Low_Clk_Counter\(9),
	datad => VCC,
	cin => \U9|Low_Clk_Counter[8]~34\,
	combout => \U9|Low_Clk_Counter[9]~35_combout\,
	cout => \U9|Low_Clk_Counter[9]~36\);

-- Location: LCCOMB_X33_Y12_N0
\U9|Low_Clk_Counter[10]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \U9|Low_Clk_Counter[10]~37_combout\ = (\U9|Low_Clk_Counter\(10) & (!\U9|Low_Clk_Counter[9]~36\)) # (!\U9|Low_Clk_Counter\(10) & ((\U9|Low_Clk_Counter[9]~36\) # (GND)))
-- \U9|Low_Clk_Counter[10]~38\ = CARRY((!\U9|Low_Clk_Counter[9]~36\) # (!\U9|Low_Clk_Counter\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U9|Low_Clk_Counter\(10),
	datad => VCC,
	cin => \U9|Low_Clk_Counter[9]~36\,
	combout => \U9|Low_Clk_Counter[10]~37_combout\,
	cout => \U9|Low_Clk_Counter[10]~38\);

-- Location: LCCOMB_X33_Y12_N2
\U9|Low_Clk_Counter[11]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \U9|Low_Clk_Counter[11]~39_combout\ = (\U9|Low_Clk_Counter\(11) & (\U9|Low_Clk_Counter[10]~38\ $ (GND))) # (!\U9|Low_Clk_Counter\(11) & (!\U9|Low_Clk_Counter[10]~38\ & VCC))
-- \U9|Low_Clk_Counter[11]~40\ = CARRY((\U9|Low_Clk_Counter\(11) & !\U9|Low_Clk_Counter[10]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U9|Low_Clk_Counter\(11),
	datad => VCC,
	cin => \U9|Low_Clk_Counter[10]~38\,
	combout => \U9|Low_Clk_Counter[11]~39_combout\,
	cout => \U9|Low_Clk_Counter[11]~40\);

-- Location: LCCOMB_X33_Y12_N4
\U9|Low_Clk_Counter[12]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \U9|Low_Clk_Counter[12]~41_combout\ = (\U9|Low_Clk_Counter\(12) & (!\U9|Low_Clk_Counter[11]~40\)) # (!\U9|Low_Clk_Counter\(12) & ((\U9|Low_Clk_Counter[11]~40\) # (GND)))
-- \U9|Low_Clk_Counter[12]~42\ = CARRY((!\U9|Low_Clk_Counter[11]~40\) # (!\U9|Low_Clk_Counter\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U9|Low_Clk_Counter\(12),
	datad => VCC,
	cin => \U9|Low_Clk_Counter[11]~40\,
	combout => \U9|Low_Clk_Counter[12]~41_combout\,
	cout => \U9|Low_Clk_Counter[12]~42\);

-- Location: LCCOMB_X33_Y12_N6
\U9|Low_Clk_Counter[13]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \U9|Low_Clk_Counter[13]~43_combout\ = (\U9|Low_Clk_Counter\(13) & (\U9|Low_Clk_Counter[12]~42\ $ (GND))) # (!\U9|Low_Clk_Counter\(13) & (!\U9|Low_Clk_Counter[12]~42\ & VCC))
-- \U9|Low_Clk_Counter[13]~44\ = CARRY((\U9|Low_Clk_Counter\(13) & !\U9|Low_Clk_Counter[12]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U9|Low_Clk_Counter\(13),
	datad => VCC,
	cin => \U9|Low_Clk_Counter[12]~42\,
	combout => \U9|Low_Clk_Counter[13]~43_combout\,
	cout => \U9|Low_Clk_Counter[13]~44\);

-- Location: LCCOMB_X33_Y12_N8
\U9|Low_Clk_Counter[14]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \U9|Low_Clk_Counter[14]~45_combout\ = (\U9|Low_Clk_Counter\(14) & (!\U9|Low_Clk_Counter[13]~44\)) # (!\U9|Low_Clk_Counter\(14) & ((\U9|Low_Clk_Counter[13]~44\) # (GND)))
-- \U9|Low_Clk_Counter[14]~46\ = CARRY((!\U9|Low_Clk_Counter[13]~44\) # (!\U9|Low_Clk_Counter\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U9|Low_Clk_Counter\(14),
	datad => VCC,
	cin => \U9|Low_Clk_Counter[13]~44\,
	combout => \U9|Low_Clk_Counter[14]~45_combout\,
	cout => \U9|Low_Clk_Counter[14]~46\);

-- Location: LCCOMB_X33_Y12_N10
\U9|Low_Clk_Counter[15]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \U9|Low_Clk_Counter[15]~47_combout\ = (\U9|Low_Clk_Counter\(15) & (\U9|Low_Clk_Counter[14]~46\ $ (GND))) # (!\U9|Low_Clk_Counter\(15) & (!\U9|Low_Clk_Counter[14]~46\ & VCC))
-- \U9|Low_Clk_Counter[15]~48\ = CARRY((\U9|Low_Clk_Counter\(15) & !\U9|Low_Clk_Counter[14]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U9|Low_Clk_Counter\(15),
	datad => VCC,
	cin => \U9|Low_Clk_Counter[14]~46\,
	combout => \U9|Low_Clk_Counter[15]~47_combout\,
	cout => \U9|Low_Clk_Counter[15]~48\);

-- Location: LCCOMB_X33_Y12_N12
\U9|Low_Clk_Counter[16]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \U9|Low_Clk_Counter[16]~49_combout\ = (\U9|Low_Clk_Counter\(16) & (!\U9|Low_Clk_Counter[15]~48\)) # (!\U9|Low_Clk_Counter\(16) & ((\U9|Low_Clk_Counter[15]~48\) # (GND)))
-- \U9|Low_Clk_Counter[16]~50\ = CARRY((!\U9|Low_Clk_Counter[15]~48\) # (!\U9|Low_Clk_Counter\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U9|Low_Clk_Counter\(16),
	datad => VCC,
	cin => \U9|Low_Clk_Counter[15]~48\,
	combout => \U9|Low_Clk_Counter[16]~49_combout\,
	cout => \U9|Low_Clk_Counter[16]~50\);

-- Location: LCCOMB_X33_Y12_N14
\U9|Low_Clk_Counter[17]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \U9|Low_Clk_Counter[17]~51_combout\ = (\U9|Low_Clk_Counter\(17) & (\U9|Low_Clk_Counter[16]~50\ $ (GND))) # (!\U9|Low_Clk_Counter\(17) & (!\U9|Low_Clk_Counter[16]~50\ & VCC))
-- \U9|Low_Clk_Counter[17]~52\ = CARRY((\U9|Low_Clk_Counter\(17) & !\U9|Low_Clk_Counter[16]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U9|Low_Clk_Counter\(17),
	datad => VCC,
	cin => \U9|Low_Clk_Counter[16]~50\,
	combout => \U9|Low_Clk_Counter[17]~51_combout\,
	cout => \U9|Low_Clk_Counter[17]~52\);

-- Location: LCCOMB_X33_Y12_N16
\U9|Low_Clk_Counter[18]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \U9|Low_Clk_Counter[18]~53_combout\ = (\U9|Low_Clk_Counter\(18) & (!\U9|Low_Clk_Counter[17]~52\)) # (!\U9|Low_Clk_Counter\(18) & ((\U9|Low_Clk_Counter[17]~52\) # (GND)))
-- \U9|Low_Clk_Counter[18]~54\ = CARRY((!\U9|Low_Clk_Counter[17]~52\) # (!\U9|Low_Clk_Counter\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U9|Low_Clk_Counter\(18),
	datad => VCC,
	cin => \U9|Low_Clk_Counter[17]~52\,
	combout => \U9|Low_Clk_Counter[18]~53_combout\,
	cout => \U9|Low_Clk_Counter[18]~54\);

-- Location: LCCOMB_X33_Y12_N18
\U9|Low_Clk_Counter[19]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \U9|Low_Clk_Counter[19]~55_combout\ = \U9|Low_Clk_Counter\(19) $ (!\U9|Low_Clk_Counter[18]~54\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U9|Low_Clk_Counter\(19),
	cin => \U9|Low_Clk_Counter[18]~54\,
	combout => \U9|Low_Clk_Counter[19]~55_combout\);

-- Location: FF_X16_Y11_N11
\U3|count_init[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|count_init~3_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sclr => \U3|present_state.INIT~q\,
	ena => \U3|Selector25~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|count_init\(9));

-- Location: FF_X16_Y11_N13
\U3|count_init[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|count_init~6_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sclr => \U3|present_state.INIT~q\,
	ena => \U3|Selector25~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|count_init\(5));

-- Location: LCCOMB_X16_Y8_N12
\U3|col[1]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|col[1]~24_combout\ = (\U3|col\(1) & (!\U3|col[0]~21\)) # (!\U3|col\(1) & ((\U3|col[0]~21\) # (GND)))
-- \U3|col[1]~25\ = CARRY((!\U3|col[0]~21\) # (!\U3|col\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|col\(1),
	datad => VCC,
	cin => \U3|col[0]~21\,
	combout => \U3|col[1]~24_combout\,
	cout => \U3|col[1]~25\);

-- Location: LCCOMB_X18_Y7_N12
\U3|row[5]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|row[5]~24_combout\ = (\U3|row\(5) & (!\U3|row[4]~23\)) # (!\U3|row\(5) & ((\U3|row[4]~23\) # (GND)))
-- \U3|row[5]~25\ = CARRY((!\U3|row[4]~23\) # (!\U3|row\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|row\(5),
	datad => VCC,
	cin => \U3|row[4]~23\,
	combout => \U3|row[5]~24_combout\,
	cout => \U3|row[5]~25\);

-- Location: FF_X13_Y14_N25
\U4|count_init[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|count_init~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sclr => \U4|present_state.INIT~q\,
	ena => \U4|Selector25~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|count_init\(13));

-- Location: FF_X13_Y14_N31
\U4|count_init[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|count_init~1_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sclr => \U4|present_state.INIT~q\,
	ena => \U4|Selector25~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|count_init\(11));

-- Location: LCCOMB_X12_Y17_N12
\U4|col[6]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|col[6]~34_combout\ = (\U4|col\(6) & (\U4|col[5]~33\ $ (GND))) # (!\U4|col\(6) & (!\U4|col[5]~33\ & VCC))
-- \U4|col[6]~35\ = CARRY((\U4|col\(6) & !\U4|col[5]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U4|col\(6),
	datad => VCC,
	cin => \U4|col[5]~33\,
	combout => \U4|col[6]~34_combout\,
	cout => \U4|col[6]~35\);

-- Location: LCCOMB_X12_Y16_N24
\U4|row[10]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|row[10]~34_combout\ = (\U4|row\(10) & (\U4|row[9]~33\ $ (GND))) # (!\U4|row\(10) & (!\U4|row[9]~33\ & VCC))
-- \U4|row[10]~35\ = CARRY((\U4|row\(10) & !\U4|row[9]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U4|row\(10),
	datad => VCC,
	cin => \U4|row[9]~33\,
	combout => \U4|row[10]~34_combout\,
	cout => \U4|row[10]~35\);

-- Location: LCCOMB_X12_Y16_N26
\U4|row[11]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|row[11]~36_combout\ = (\U4|row\(11) & (!\U4|row[10]~35\)) # (!\U4|row\(11) & ((\U4|row[10]~35\) # (GND)))
-- \U4|row[11]~37\ = CARRY((!\U4|row[10]~35\) # (!\U4|row\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U4|row\(11),
	datad => VCC,
	cin => \U4|row[10]~35\,
	combout => \U4|row[11]~36_combout\,
	cout => \U4|row[11]~37\);

-- Location: LCCOMB_X12_Y16_N28
\U4|row[12]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|row[12]~38_combout\ = \U4|row[11]~37\ $ (!\U4|row\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U4|row\(12),
	cin => \U4|row[11]~37\,
	combout => \U4|row[12]~38_combout\);

-- Location: FF_X18_Y9_N11
\U3|count_autorefresh[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|count_autorefresh[3]~14_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sclr => \U3|ALT_INV_autorefresh_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|count_autorefresh\(3));

-- Location: FF_X18_Y9_N19
\U3|count_autorefresh[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|count_autorefresh[7]~22_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sclr => \U3|ALT_INV_autorefresh_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|count_autorefresh\(7));

-- Location: LCCOMB_X17_Y11_N0
\U3|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Add0~0_combout\ = \U3|count_init\(0) $ (VCC)
-- \U3|Add0~1\ = CARRY(\U3|count_init\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|count_init\(0),
	datad => VCC,
	combout => \U3|Add0~0_combout\,
	cout => \U3|Add0~1\);

-- Location: LCCOMB_X17_Y11_N10
\U3|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Add0~10_combout\ = (\U3|count_init\(5) & (!\U3|Add0~9\)) # (!\U3|count_init\(5) & ((\U3|Add0~9\) # (GND)))
-- \U3|Add0~11\ = CARRY((!\U3|Add0~9\) # (!\U3|count_init\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|count_init\(5),
	datad => VCC,
	cin => \U3|Add0~9\,
	combout => \U3|Add0~10_combout\,
	cout => \U3|Add0~11\);

-- Location: LCCOMB_X17_Y11_N18
\U3|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Add0~18_combout\ = (\U3|count_init\(9) & (!\U3|Add0~17\)) # (!\U3|count_init\(9) & ((\U3|Add0~17\) # (GND)))
-- \U3|Add0~19\ = CARRY((!\U3|Add0~17\) # (!\U3|count_init\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|count_init\(9),
	datad => VCC,
	cin => \U3|Add0~17\,
	combout => \U3|Add0~18_combout\,
	cout => \U3|Add0~19\);

-- Location: FF_X16_Y16_N27
\U4|count_autorefresh[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|count_autorefresh[5]~18_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sclr => \U4|ALT_INV_autorefresh_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|count_autorefresh\(5));

-- Location: LCCOMB_X12_Y14_N2
\U4|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Add0~2_combout\ = (\U4|count_init\(1) & (!\U4|Add0~1\)) # (!\U4|count_init\(1) & ((\U4|Add0~1\) # (GND)))
-- \U4|Add0~3\ = CARRY((!\U4|Add0~1\) # (!\U4|count_init\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U4|count_init\(1),
	datad => VCC,
	cin => \U4|Add0~1\,
	combout => \U4|Add0~2_combout\,
	cout => \U4|Add0~3\);

-- Location: LCCOMB_X12_Y14_N6
\U4|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Add0~6_combout\ = (\U4|count_init\(3) & (!\U4|Add0~5\)) # (!\U4|count_init\(3) & ((\U4|Add0~5\) # (GND)))
-- \U4|Add0~7\ = CARRY((!\U4|Add0~5\) # (!\U4|count_init\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U4|count_init\(3),
	datad => VCC,
	cin => \U4|Add0~5\,
	combout => \U4|Add0~6_combout\,
	cout => \U4|Add0~7\);

-- Location: LCCOMB_X12_Y14_N10
\U4|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Add0~10_combout\ = (\U4|count_init\(5) & (!\U4|Add0~9\)) # (!\U4|count_init\(5) & ((\U4|Add0~9\) # (GND)))
-- \U4|Add0~11\ = CARRY((!\U4|Add0~9\) # (!\U4|count_init\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U4|count_init\(5),
	datad => VCC,
	cin => \U4|Add0~9\,
	combout => \U4|Add0~10_combout\,
	cout => \U4|Add0~11\);

-- Location: LCCOMB_X12_Y14_N12
\U4|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Add0~12_combout\ = (\U4|count_init\(6) & (\U4|Add0~11\ $ (GND))) # (!\U4|count_init\(6) & (!\U4|Add0~11\ & VCC))
-- \U4|Add0~13\ = CARRY((\U4|count_init\(6) & !\U4|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U4|count_init\(6),
	datad => VCC,
	cin => \U4|Add0~11\,
	combout => \U4|Add0~12_combout\,
	cout => \U4|Add0~13\);

-- Location: LCCOMB_X12_Y14_N14
\U4|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Add0~14_combout\ = (\U4|count_init\(7) & (!\U4|Add0~13\)) # (!\U4|count_init\(7) & ((\U4|Add0~13\) # (GND)))
-- \U4|Add0~15\ = CARRY((!\U4|Add0~13\) # (!\U4|count_init\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U4|count_init\(7),
	datad => VCC,
	cin => \U4|Add0~13\,
	combout => \U4|Add0~14_combout\,
	cout => \U4|Add0~15\);

-- Location: LCCOMB_X12_Y14_N16
\U4|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Add0~16_combout\ = (\U4|count_init\(8) & (\U4|Add0~15\ $ (GND))) # (!\U4|count_init\(8) & (!\U4|Add0~15\ & VCC))
-- \U4|Add0~17\ = CARRY((\U4|count_init\(8) & !\U4|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U4|count_init\(8),
	datad => VCC,
	cin => \U4|Add0~15\,
	combout => \U4|Add0~16_combout\,
	cout => \U4|Add0~17\);

-- Location: LCCOMB_X12_Y14_N22
\U4|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Add0~22_combout\ = (\U4|count_init\(11) & (!\U4|Add0~21\)) # (!\U4|count_init\(11) & ((\U4|Add0~21\) # (GND)))
-- \U4|Add0~23\ = CARRY((!\U4|Add0~21\) # (!\U4|count_init\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U4|count_init\(11),
	datad => VCC,
	cin => \U4|Add0~21\,
	combout => \U4|Add0~22_combout\,
	cout => \U4|Add0~23\);

-- Location: LCCOMB_X12_Y14_N24
\U4|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Add0~24_combout\ = (\U4|count_init\(12) & (\U4|Add0~23\ $ (GND))) # (!\U4|count_init\(12) & (!\U4|Add0~23\ & VCC))
-- \U4|Add0~25\ = CARRY((\U4|count_init\(12) & !\U4|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U4|count_init\(12),
	datad => VCC,
	cin => \U4|Add0~23\,
	combout => \U4|Add0~24_combout\,
	cout => \U4|Add0~25\);

-- Location: LCCOMB_X12_Y14_N26
\U4|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Add0~26_combout\ = \U4|Add0~25\ $ (\U4|count_init\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U4|count_init\(13),
	cin => \U4|Add0~25\,
	combout => \U4|Add0~26_combout\);

-- Location: LCCOMB_X18_Y9_N10
\U3|count_autorefresh[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|count_autorefresh[3]~14_combout\ = (\U3|count_autorefresh\(3) & (!\U3|count_autorefresh[2]~13\)) # (!\U3|count_autorefresh\(3) & ((\U3|count_autorefresh[2]~13\) # (GND)))
-- \U3|count_autorefresh[3]~15\ = CARRY((!\U3|count_autorefresh[2]~13\) # (!\U3|count_autorefresh\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|count_autorefresh\(3),
	datad => VCC,
	cin => \U3|count_autorefresh[2]~13\,
	combout => \U3|count_autorefresh[3]~14_combout\,
	cout => \U3|count_autorefresh[3]~15\);

-- Location: LCCOMB_X18_Y9_N16
\U3|count_autorefresh[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|count_autorefresh[6]~20_combout\ = (\U3|count_autorefresh\(6) & (\U3|count_autorefresh[5]~19\ $ (GND))) # (!\U3|count_autorefresh\(6) & (!\U3|count_autorefresh[5]~19\ & VCC))
-- \U3|count_autorefresh[6]~21\ = CARRY((\U3|count_autorefresh\(6) & !\U3|count_autorefresh[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U3|count_autorefresh\(6),
	datad => VCC,
	cin => \U3|count_autorefresh[5]~19\,
	combout => \U3|count_autorefresh[6]~20_combout\,
	cout => \U3|count_autorefresh[6]~21\);

-- Location: LCCOMB_X18_Y9_N18
\U3|count_autorefresh[7]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|count_autorefresh[7]~22_combout\ = \U3|count_autorefresh[6]~21\ $ (\U3|count_autorefresh\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U3|count_autorefresh\(7),
	cin => \U3|count_autorefresh[6]~21\,
	combout => \U3|count_autorefresh[7]~22_combout\);

-- Location: LCCOMB_X16_Y16_N26
\U4|count_autorefresh[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|count_autorefresh[5]~18_combout\ = (\U4|count_autorefresh\(5) & (!\U4|count_autorefresh[4]~17\)) # (!\U4|count_autorefresh\(5) & ((\U4|count_autorefresh[4]~17\) # (GND)))
-- \U4|count_autorefresh[5]~19\ = CARRY((!\U4|count_autorefresh[4]~17\) # (!\U4|count_autorefresh\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U4|count_autorefresh\(5),
	datad => VCC,
	cin => \U4|count_autorefresh[4]~17\,
	combout => \U4|count_autorefresh[5]~18_combout\,
	cout => \U4|count_autorefresh[5]~19\);

-- Location: FF_X24_Y16_N15
\U1|U0|dcfifo_component|auto_generated|ws_brp|dffe12a[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U1|U0|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor9~combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|ws_brp|dffe12a\(9));

-- Location: FF_X24_Y16_N17
\U1|U0|dcfifo_component|auto_generated|ws_brp|dffe12a[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => \U1|U0|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor8~combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|ws_brp|dffe12a\(8));

-- Location: FF_X24_Y16_N27
\U1|U0|dcfifo_component|auto_generated|ws_brp|dffe12a[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U1|U0|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor7~combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|ws_brp|dffe12a\(7));

-- Location: FF_X25_Y16_N13
\U1|U0|dcfifo_component|auto_generated|ws_bwp|dffe12a[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => \U1|U0|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor6~combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|ws_bwp|dffe12a\(6));

-- Location: FF_X24_Y16_N13
\U1|U0|dcfifo_component|auto_generated|ws_brp|dffe12a[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U1|U0|dcfifo_component|auto_generated|ws_brp|dffe12a[5]~feeder_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|ws_brp|dffe12a\(5));

-- Location: FF_X25_Y16_N31
\U1|U0|dcfifo_component|auto_generated|ws_brp|dffe12a[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U1|U0|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor4~combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|ws_brp|dffe12a\(4));

-- Location: FF_X25_Y16_N27
\U1|U0|dcfifo_component|auto_generated|ws_brp|dffe12a[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => \U1|U0|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor3~combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|ws_brp|dffe12a\(3));

-- Location: FF_X24_Y16_N11
\U1|U0|dcfifo_component|auto_generated|ws_brp|dffe12a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U1|U0|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor2~combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|ws_brp|dffe12a\(2));

-- Location: FF_X26_Y16_N3
\U1|U0|dcfifo_component|auto_generated|ws_bwp|dffe12a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U1|U0|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor1~combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|ws_bwp|dffe12a\(1));

-- Location: FF_X26_Y16_N5
\U1|U0|dcfifo_component|auto_generated|ws_bwp|dffe12a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U1|U0|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor0~combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|ws_bwp|dffe12a\(0));

-- Location: LCCOMB_X16_Y5_N22
\U3|WideOr0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|WideOr0~1_combout\ = (!\U3|present_state.COMMANDDONE~q\ & (!\U3|present_state.LOADMODE~q\ & !\U3|present_state.PRECHARGE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|present_state.COMMANDDONE~q\,
	datac => \U3|present_state.LOADMODE~q\,
	datad => \U3|present_state.PRECHARGE~q\,
	combout => \U3|WideOr0~1_combout\);

-- Location: LCCOMB_X16_Y7_N12
\U3|present_state~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|present_state~34_combout\ = (!\U3|readsdram_en~q\ & !\U3|writesdram_en~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|readsdram_en~q\,
	datac => \U3|writesdram_en~q\,
	combout => \U3|present_state~34_combout\);

-- Location: LCCOMB_X16_Y7_N6
\U3|Selector12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector12~1_combout\ = (\U3|row\(5) & (\U3|present_state.ACTIVEROW~q\ & ((\U3|writesdram_en~q\) # (\U3|readsdram_en~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|row\(5),
	datab => \U3|writesdram_en~q\,
	datac => \U3|readsdram_en~q\,
	datad => \U3|present_state.ACTIVEROW~q\,
	combout => \U3|Selector12~1_combout\);

-- Location: LCCOMB_X16_Y7_N2
\U3|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector7~0_combout\ = (\U3|row\(10) & (\U3|present_state.ACTIVEROW~q\ & ((\U3|writesdram_en~q\) # (\U3|readsdram_en~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|row\(10),
	datab => \U3|writesdram_en~q\,
	datac => \U3|readsdram_en~q\,
	datad => \U3|present_state.ACTIVEROW~q\,
	combout => \U3|Selector7~0_combout\);

-- Location: LCCOMB_X14_Y17_N4
\U4|WideOr0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|WideOr0~1_combout\ = (!\U4|present_state.PRECHARGE~q\ & (!\U4|present_state.LOADMODE~q\ & !\U4|present_state.COMMANDDONE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|present_state.PRECHARGE~q\,
	datac => \U4|present_state.LOADMODE~q\,
	datad => \U4|present_state.COMMANDDONE~q\,
	combout => \U4|WideOr0~1_combout\);

-- Location: LCCOMB_X13_Y17_N0
\U4|Selector12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector12~3_combout\ = (\U4|col\(5) & ((\U4|present_state.WRITEDATA~q\) # ((\U4|readsdram_en~q\ & \U4|present_state.READDATA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|col\(5),
	datab => \U4|present_state.WRITEDATA~q\,
	datac => \U4|readsdram_en~q\,
	datad => \U4|present_state.READDATA~q\,
	combout => \U4|Selector12~3_combout\);

-- Location: LCCOMB_X14_Y16_N4
\U4|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector8~0_combout\ = (\U4|present_state.ACTIVEROW~q\ & (\U4|row\(9) & ((\U4|readsdram_en~q\) # (\U4|writesdram_en~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|present_state.ACTIVEROW~q\,
	datab => \U4|readsdram_en~q\,
	datac => \U4|row\(9),
	datad => \U4|writesdram_en~q\,
	combout => \U4|Selector8~0_combout\);

-- Location: FF_X32_Y19_N11
\U9|Check_Index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U9|Low_Clk_Counter[19]~clkctrl_outclk\,
	d => \U9|Check_Index[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U9|Check_Index\(2));

-- Location: FF_X33_Y13_N13
\U9|Low_Clk_Counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK48M~inputclkctrl_outclk\,
	d => \U9|Low_Clk_Counter[0]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U9|Low_Clk_Counter\(0));

-- Location: FF_X23_Y16_N15
\U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a[9]~feeder_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a\(9));

-- Location: LCCOMB_X24_Y16_N14
\U1|U0|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor9\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor9~combout\ = \U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a\(9) $ (\U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a\(10) $ 
-- (\U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a\(9),
	datab => \U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a\(10),
	datac => \U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a\(11),
	combout => \U1|U0|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor9~combout\);

-- Location: FF_X24_Y16_N23
\U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => \U1|U0|dcfifo_component|auto_generated|rdptr_g\(7),
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a\(7));

-- Location: LCCOMB_X24_Y16_N26
\U1|U0|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor7~combout\ = \U1|U0|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor8~combout\ $ (\U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|U0|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor8~combout\,
	datac => \U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a\(7),
	combout => \U1|U0|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor7~combout\);

-- Location: FF_X25_Y16_N7
\U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a[5]~feeder_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a\(5));

-- Location: LCCOMB_X24_Y16_N28
\U1|U0|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor5~combout\ = \U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a\(7) $ (\U1|U0|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor8~combout\ $ 
-- (\U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a\(6) $ (\U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a\(7),
	datab => \U1|U0|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor8~combout\,
	datac => \U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a\(6),
	datad => \U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a\(5),
	combout => \U1|U0|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor5~combout\);

-- Location: LCCOMB_X25_Y16_N30
\U1|U0|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor4~combout\ = \U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a\(4) $ (\U1|U0|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor6~combout\ $ 
-- (\U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a\(4),
	datac => \U1|U0|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor6~combout\,
	datad => \U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a\(5),
	combout => \U1|U0|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor4~combout\);

-- Location: LCCOMB_X24_Y16_N10
\U1|U0|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor2~combout\ = \U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a\(4) $ (\U1|U0|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor5~combout\ $ 
-- (\U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a\(2) $ (\U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a\(4),
	datab => \U1|U0|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor5~combout\,
	datac => \U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a\(2),
	datad => \U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a\(3),
	combout => \U1|U0|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor2~combout\);

-- Location: LCCOMB_X26_Y16_N2
\U1|U0|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor1~combout\ = \U1|U0|dcfifo_component|auto_generated|wrptr_g\(1) $ (\U1|U0|dcfifo_component|auto_generated|wrptr_g\(2) $ (\U1|U0|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor3~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|U0|dcfifo_component|auto_generated|wrptr_g\(1),
	datac => \U1|U0|dcfifo_component|auto_generated|wrptr_g\(2),
	datad => \U1|U0|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor3~combout\,
	combout => \U1|U0|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor1~combout\);

-- Location: LCCOMB_X26_Y16_N4
\U1|U0|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor0~combout\ = \U1|U0|dcfifo_component|auto_generated|wrptr_g\(2) $ (\U1|U0|dcfifo_component|auto_generated|wrptr_g\(1) $ (\U1|U0|dcfifo_component|auto_generated|wrptr_g\(0) $ 
-- (\U1|U0|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor3~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|wrptr_g\(2),
	datab => \U1|U0|dcfifo_component|auto_generated|wrptr_g\(1),
	datac => \U1|U0|dcfifo_component|auto_generated|wrptr_g\(0),
	datad => \U1|U0|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor3~combout\,
	combout => \U1|U0|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor0~combout\);

-- Location: FF_X24_Y16_N31
\U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => \U1|U0|dcfifo_component|auto_generated|rdptr_g\(0),
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a\(0));

-- Location: LCCOMB_X17_Y8_N10
\U3|Equal9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Equal9~0_combout\ = (!\U3|col\(2) & (!\U3|col\(4) & (!\U3|col\(3) & !\U3|col\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|col\(2),
	datab => \U3|col\(4),
	datac => \U3|col\(3),
	datad => \U3|col\(1),
	combout => \U3|Equal9~0_combout\);

-- Location: LCCOMB_X17_Y14_N22
\U2|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector1~1_combout\ = (\U2|present_state.S1~q\ & (\U3|Empty~q\ $ (!\U4|Full~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Empty~q\,
	datac => \U4|Full~q\,
	datad => \U2|present_state.S1~q\,
	combout => \U2|Selector1~1_combout\);

-- Location: LCCOMB_X12_Y17_N30
\U4|Equal9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Equal9~1_combout\ = (!\U4|col\(6) & !\U4|col\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|col\(6),
	datad => \U4|col\(5),
	combout => \U4|Equal9~1_combout\);

-- Location: LCCOMB_X18_Y15_N10
\U5|U0|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|U0|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~3_combout\ = (!\U5|U0|dcfifo_component|auto_generated|wrptr_g\(8) & (\U5|U0|dcfifo_component|auto_generated|wrptr_g\(10) & (!\U5|U0|dcfifo_component|auto_generated|wrptr_g\(9) & 
-- \U5|U0|dcfifo_component|auto_generated|wrptr_g\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|U0|dcfifo_component|auto_generated|wrptr_g\(8),
	datab => \U5|U0|dcfifo_component|auto_generated|wrptr_g\(10),
	datac => \U5|U0|dcfifo_component|auto_generated|wrptr_g\(9),
	datad => \U5|U0|dcfifo_component|auto_generated|wrptr_g\(11),
	combout => \U5|U0|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~3_combout\);

-- Location: LCCOMB_X17_Y9_N10
\U3|Selector81~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector81~1_combout\ = (\U3|present_state.PRECHARGE_TRP~q\ & (\U3|init_precharge~q\ & (!\U3|count_trp\(0) & \U3|count_trp\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|present_state.PRECHARGE_TRP~q\,
	datab => \U3|init_precharge~q\,
	datac => \U3|count_trp\(0),
	datad => \U3|count_trp\(1),
	combout => \U3|Selector81~1_combout\);

-- Location: LCCOMB_X17_Y10_N16
\U3|Selector79~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector79~0_combout\ = (!\U3|count_twr\(0) & (\U3|count_twr\(1) & \U3|present_state.WRITEDATA_TWR~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|count_twr\(0),
	datac => \U3|count_twr\(1),
	datad => \U3|present_state.WRITEDATA_TWR~q\,
	combout => \U3|Selector79~0_combout\);

-- Location: LCCOMB_X17_Y10_N30
\U3|Selector79~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector79~1_combout\ = (\U3|Selector79~0_combout\) # ((!\U3|writesdram_en~q\ & (\U3|Selector90~0_combout\ & !\U3|readsdram_en~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|writesdram_en~q\,
	datab => \U3|Selector90~0_combout\,
	datac => \U3|readsdram_en~q\,
	datad => \U3|Selector79~0_combout\,
	combout => \U3|Selector79~1_combout\);

-- Location: FF_X18_Y11_N7
\U3|count_init[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|Selector76~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	ena => \U3|Selector25~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|count_init\(0));

-- Location: LCCOMB_X16_Y11_N26
\U3|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Equal1~3_combout\ = (!\U3|count_init\(5) & \U3|count_init\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|count_init\(5),
	datad => \U3|count_init\(6),
	combout => \U3|Equal1~3_combout\);

-- Location: LCCOMB_X17_Y8_N30
\U3|Equal10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Equal10~1_combout\ = (\U3|col\(6) & (\U3|col\(4) & (\U3|col\(5) & \U3|col\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|col\(6),
	datab => \U3|col\(4),
	datac => \U3|col\(5),
	datad => \U3|col\(7),
	combout => \U3|Equal10~1_combout\);

-- Location: LCCOMB_X17_Y8_N6
\U3|row~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|row~13_combout\ = (\U3|init_precharge~q\) # (((!\U3|writesdram_en~q\ & !\U3|readsdram_en~q\)) # (!\U3|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|writesdram_en~q\,
	datab => \U3|init_precharge~q\,
	datac => \U3|Equal2~0_combout\,
	datad => \U3|readsdram_en~q\,
	combout => \U3|row~13_combout\);

-- Location: LCCOMB_X19_Y7_N16
\U3|Selector47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector47~0_combout\ = (\U3|row\(5) & \U3|present_state.INIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|row\(5),
	datad => \U3|present_state.INIT~q\,
	combout => \U3|Selector47~0_combout\);

-- Location: LCCOMB_X13_Y15_N6
\U4|Selector81~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector81~1_combout\ = (\U4|present_state.PRECHARGE_TRP~q\ & (\U4|init_precharge~q\ & (\U4|count_trp\(1) & !\U4|count_trp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|present_state.PRECHARGE_TRP~q\,
	datab => \U4|init_precharge~q\,
	datac => \U4|count_trp\(1),
	datad => \U4|count_trp\(0),
	combout => \U4|Selector81~1_combout\);

-- Location: FF_X13_Y17_N11
\U4|present_state.CAS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|Selector91~1_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|present_state.CAS~q\);

-- Location: FF_X13_Y14_N21
\U4|count_init[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|Selector68~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	ena => \U4|Selector25~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|count_init\(8));

-- Location: LCCOMB_X13_Y14_N26
\U4|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Equal1~2_combout\ = (\U4|count_init\(10) & (\U4|count_init\(7) & (\U4|count_init\(11) & \U4|count_init\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|count_init\(10),
	datab => \U4|count_init\(7),
	datac => \U4|count_init\(11),
	datad => \U4|count_init\(9),
	combout => \U4|Equal1~2_combout\);

-- Location: LCCOMB_X16_Y14_N24
\U4|Selector86~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector86~0_combout\ = (\U2|wr_t\(0) & (((!\U2|wr_t\(1))))) # (!\U2|wr_t\(0) & (\U2|wr_t\(1) & ((\U2|wr_t\(3)) # (!\U5|U0|dcfifo_component|auto_generated|ws_bwp|dffe12a\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|wr_t\(0),
	datab => \U2|wr_t\(3),
	datac => \U5|U0|dcfifo_component|auto_generated|ws_bwp|dffe12a\(10),
	datad => \U2|wr_t\(1),
	combout => \U4|Selector86~0_combout\);

-- Location: LCCOMB_X14_Y15_N30
\U4|Selector86~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector86~1_combout\ = (\U4|Selector86~0_combout\ & (!\U4|refreshsdram~q\ & ((\U2|wr_t\(1)) # (\U2|wr_t\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|Selector86~0_combout\,
	datab => \U2|wr_t\(1),
	datac => \U2|wr_t\(2),
	datad => \U4|refreshsdram~q\,
	combout => \U4|Selector86~1_combout\);

-- Location: LCCOMB_X12_Y17_N26
\U4|Equal10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Equal10~0_combout\ = (\U4|col\(3) & (\U4|col\(0) & (\U4|col\(2) & \U4|col\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|col\(3),
	datab => \U4|col\(0),
	datac => \U4|col\(2),
	datad => \U4|col\(1),
	combout => \U4|Equal10~0_combout\);

-- Location: LCCOMB_X13_Y17_N22
\U4|WideOr21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|WideOr21~0_combout\ = (\U4|present_state.INIT~q\ & !\U4|present_state.CAS~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|present_state.INIT~q\,
	datad => \U4|present_state.CAS~q\,
	combout => \U4|WideOr21~0_combout\);

-- Location: LCCOMB_X13_Y16_N12
\U4|Selector41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector41~0_combout\ = (\U4|row\(11) & \U4|present_state.INIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|row\(11),
	datad => \U4|present_state.INIT~q\,
	combout => \U4|Selector41~0_combout\);

-- Location: LCCOMB_X13_Y16_N30
\U4|Selector40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector40~0_combout\ = (\U4|row\(12) & \U4|present_state.INIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|row\(12),
	datad => \U4|present_state.INIT~q\,
	combout => \U4|Selector40~0_combout\);

-- Location: FF_X32_Y16_N1
\CPU_Command_2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CPU_WR~input_o\,
	d => \CPU_Command_2[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CPU_Command_2(6));

-- Location: FF_X33_Y16_N13
\CPU_Command_2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CPU_WR~input_o\,
	asdata => CPU_Command_1(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CPU_Command_2(7));

-- Location: FF_X33_Y16_N21
\CPU_Command_2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CPU_WR~input_o\,
	asdata => CPU_Command_1(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CPU_Command_2(0));

-- Location: FF_X33_Y16_N19
\CPU_Command_2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CPU_WR~input_o\,
	asdata => CPU_Command_1(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CPU_Command_2(3));

-- Location: LCCOMB_X33_Y19_N6
\U9|Check_Index[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U9|Check_Index[0]~3_combout\ = (\U9|Equal0~0_combout\ & (\U9|Equal0~1_combout\ & \U9|Check_t~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U9|Equal0~0_combout\,
	datac => \U9|Equal0~1_combout\,
	datad => \U9|Check_t~q\,
	combout => \U9|Check_Index[0]~3_combout\);

-- Location: LCCOMB_X32_Y19_N10
\U9|Check_Index[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U9|Check_Index[2]~4_combout\ = \U9|Check_Index\(2) $ (((\U9|Check_Index\(1) & (\U9|Check_Index\(0) & \U9|Check_Index[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U9|Check_Index\(1),
	datab => \U9|Check_Index\(0),
	datac => \U9|Check_Index\(2),
	datad => \U9|Check_Index[0]~3_combout\,
	combout => \U9|Check_Index[2]~4_combout\);

-- Location: FF_X25_Y14_N31
\U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~8_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux_reg~q\);

-- Location: FF_X24_Y14_N13
\U1|U0|dcfifo_component|auto_generated|rdptr_g[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a9~q\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sload => VCC,
	ena => \U1|U0|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|rdptr_g\(9));

-- Location: FF_X24_Y14_N1
\U1|U0|dcfifo_component|auto_generated|rdptr_g[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U1|U0|dcfifo_component|auto_generated|rdptr_g[7]~feeder_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	ena => \U1|U0|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|rdptr_g\(7));

-- Location: FF_X25_Y15_N25
\U1|U0|dcfifo_component|auto_generated|rdptr_g[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U1|U0|dcfifo_component|auto_generated|rdptr_g[0]~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	ena => \U1|U0|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|rdptr_g\(0));

-- Location: LCCOMB_X16_Y10_N8
\U3|Selector90~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector90~3_combout\ = (!\U3|writesdram_en~q\ & \U3|readsdram_en~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|writesdram_en~q\,
	datac => \U3|readsdram_en~q\,
	combout => \U3|Selector90~3_combout\);

-- Location: LCCOMB_X14_Y14_N10
\U4|Selector90~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector90~3_combout\ = (\U4|readsdram_en~q\ & !\U4|writesdram_en~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|readsdram_en~q\,
	datac => \U4|writesdram_en~q\,
	combout => \U4|Selector90~3_combout\);

-- Location: LCCOMB_X17_Y15_N22
\U5|U0|dcfifo_component|auto_generated|wrptr_g1p|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|_~2_combout\ = (\U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a0~q\ & (!\U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~q\ & 
-- (!\U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~q\ & \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|cntr_cout[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a0~q\,
	datab => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~q\,
	datac => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~q\,
	datad => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|cntr_cout[0]~0_combout\,
	combout => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|_~2_combout\);

-- Location: LCCOMB_X17_Y9_N26
\U3|Selector77~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector77~0_combout\ = (\U3|present_state.AUTOREFRESH_TRC~q\ & (((!\U3|Equal5~0_combout\)) # (!\U3|count_trc_init~q\))) # (!\U3|present_state.AUTOREFRESH_TRC~q\ & (((!\U3|Selector25~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|present_state.AUTOREFRESH_TRC~q\,
	datab => \U3|count_trc_init~q\,
	datac => \U3|Equal5~0_combout\,
	datad => \U3|Selector25~0_combout\,
	combout => \U3|Selector77~0_combout\);

-- Location: LCCOMB_X16_Y9_N6
\U3|Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector23~0_combout\ = (\U3|present_state.AUTOREFRESH_TRC~q\ & (\U3|count_trc_init~q\ $ (((\U3|Equal5~0_combout\ & \U3|init_precharge~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Equal5~0_combout\,
	datab => \U3|init_precharge~q\,
	datac => \U3|present_state.AUTOREFRESH_TRC~q\,
	datad => \U3|count_trc_init~q\,
	combout => \U3|Selector23~0_combout\);

-- Location: LCCOMB_X16_Y10_N22
\U3|Selector85~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector85~2_combout\ = (!\U3|refreshsdram~q\ & (\U3|present_state.IDLE~q\ & !\U3|present_state~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|refreshsdram~q\,
	datac => \U3|present_state.IDLE~q\,
	datad => \U3|present_state~35_combout\,
	combout => \U3|Selector85~2_combout\);

-- Location: LCCOMB_X16_Y10_N6
\U3|Selector85~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector85~7_combout\ = (!\U3|refreshsdram~q\ & (!\U3|present_state~35_combout\ & (\U3|present_state.IDLE~q\ & !\usbfifohalffull_t1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|refreshsdram~q\,
	datab => \U3|present_state~35_combout\,
	datac => \U3|present_state.IDLE~q\,
	datad => \usbfifohalffull_t1~0_combout\,
	combout => \U3|Selector85~7_combout\);

-- Location: LCCOMB_X18_Y11_N6
\U3|Selector76~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector76~0_combout\ = (\U3|Add0~0_combout\ & !\U3|present_state.INIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|Add0~0_combout\,
	datad => \U3|present_state.INIT~q\,
	combout => \U3|Selector76~0_combout\);

-- Location: LCCOMB_X16_Y11_N10
\U3|count_init~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|count_init~3_combout\ = (!\U3|Equal1~4_combout\ & \U3|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|Equal1~4_combout\,
	datad => \U3|Add0~18_combout\,
	combout => \U3|count_init~3_combout\);

-- Location: LCCOMB_X16_Y11_N12
\U3|count_init~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|count_init~6_combout\ = (\U3|Add0~10_combout\ & !\U3|Equal1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|Add0~10_combout\,
	datad => \U3|Equal1~4_combout\,
	combout => \U3|count_init~6_combout\);

-- Location: LCCOMB_X16_Y16_N12
\U4|Equal13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Equal13~1_combout\ = (!\U4|count_autorefresh\(5) & !\U4|count_autorefresh\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|count_autorefresh\(5),
	datad => \U4|count_autorefresh\(4),
	combout => \U4|Equal13~1_combout\);

-- Location: FF_X14_Y16_N13
\U4|count_tmrd[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|Selector25~1_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|count_tmrd\(0));

-- Location: LCCOMB_X12_Y15_N14
\U4|Selector85~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector85~3_combout\ = (\U4|present_state.AUTOREFRESH_TRC~q\ & (\U4|count_trc\(1) & (\U4|count_trc\(0) & \U4|count_trc\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|present_state.AUTOREFRESH_TRC~q\,
	datab => \U4|count_trc\(1),
	datac => \U4|count_trc\(0),
	datad => \U4|count_trc\(2),
	combout => \U4|Selector85~3_combout\);

-- Location: LCCOMB_X13_Y15_N10
\U4|Selector85~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector85~4_combout\ = (\U4|Selector85~3_combout\ & (((\U4|Selector38~0_combout\ & \U4|present_state~34_combout\)) # (!\U4|init_precharge~q\))) # (!\U4|Selector85~3_combout\ & (\U4|Selector38~0_combout\ & ((\U4|present_state~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|Selector85~3_combout\,
	datab => \U4|Selector38~0_combout\,
	datac => \U4|init_precharge~q\,
	datad => \U4|present_state~34_combout\,
	combout => \U4|Selector85~4_combout\);

-- Location: LCCOMB_X13_Y17_N26
\U4|Selector91~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector91~0_combout\ = (\U4|present_state.CAS~q\ & (((!\U4|Equal9~2_combout\) # (!\U4|col\(0))) # (!\U4|col\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|present_state.CAS~q\,
	datab => \U4|col\(9),
	datac => \U4|col\(0),
	datad => \U4|Equal9~2_combout\,
	combout => \U4|Selector91~0_combout\);

-- Location: LCCOMB_X13_Y17_N10
\U4|Selector91~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector91~1_combout\ = (\U4|Selector91~0_combout\) # ((\U4|Equal10~2_combout\ & (\U4|readsdram_en~q\ & \U4|present_state.READDATA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|Selector91~0_combout\,
	datab => \U4|Equal10~2_combout\,
	datac => \U4|readsdram_en~q\,
	datad => \U4|present_state.READDATA~q\,
	combout => \U4|Selector91~1_combout\);

-- Location: LCCOMB_X13_Y14_N20
\U4|Selector68~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector68~0_combout\ = (\U4|Add0~16_combout\ & !\U4|present_state.INIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|Add0~16_combout\,
	datad => \U4|present_state.INIT~q\,
	combout => \U4|Selector68~0_combout\);

-- Location: LCCOMB_X13_Y14_N24
\U4|count_init~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|count_init~0_combout\ = (!\U4|Equal1~4_combout\ & \U4|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|Equal1~4_combout\,
	datac => \U4|Add0~26_combout\,
	combout => \U4|count_init~0_combout\);

-- Location: LCCOMB_X13_Y14_N30
\U4|count_init~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|count_init~1_combout\ = (!\U4|Equal1~4_combout\ & \U4|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|Equal1~4_combout\,
	datad => \U4|Add0~22_combout\,
	combout => \U4|count_init~1_combout\);

-- Location: FF_X23_Y14_N31
\U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_msb_aeb\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~8_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_msb_aeb~q\);

-- Location: LCCOMB_X25_Y15_N12
\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|_~0_combout\ = (\U2|SLRD~q\ & (!\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|parity9~q\ & ((!\U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux_reg~q\) # 
-- (!\U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux_reg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux_reg~q\,
	datab => \U2|SLRD~q\,
	datac => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|parity9~q\,
	datad => \U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux_reg~q\,
	combout => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|_~0_combout\);

-- Location: LCCOMB_X26_Y15_N6
\U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~1_combout\ = (\U1|U0|dcfifo_component|auto_generated|rdptr_g\(2) & (\U1|U0|dcfifo_component|auto_generated|wrptr_g\(2) & (\U1|U0|dcfifo_component|auto_generated|rdptr_g\(3) $ 
-- (!\U1|U0|dcfifo_component|auto_generated|wrptr_g\(3))))) # (!\U1|U0|dcfifo_component|auto_generated|rdptr_g\(2) & (!\U1|U0|dcfifo_component|auto_generated|wrptr_g\(2) & (\U1|U0|dcfifo_component|auto_generated|rdptr_g\(3) $ 
-- (!\U1|U0|dcfifo_component|auto_generated|wrptr_g\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|rdptr_g\(2),
	datab => \U1|U0|dcfifo_component|auto_generated|rdptr_g\(3),
	datac => \U1|U0|dcfifo_component|auto_generated|wrptr_g\(3),
	datad => \U1|U0|dcfifo_component|auto_generated|wrptr_g\(2),
	combout => \U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~1_combout\);

-- Location: LCCOMB_X25_Y15_N6
\U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~5_combout\ = (\U1|U0|dcfifo_component|auto_generated|rdptr_g\(3) & (\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~q\ & 
-- (\U1|U0|dcfifo_component|auto_generated|rdptr_g\(2) $ (!\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~q\)))) # (!\U1|U0|dcfifo_component|auto_generated|rdptr_g\(3) & (!\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~q\ & 
-- (\U1|U0|dcfifo_component|auto_generated|rdptr_g\(2) $ (!\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|rdptr_g\(3),
	datab => \U1|U0|dcfifo_component|auto_generated|rdptr_g\(2),
	datac => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~q\,
	datad => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~q\,
	combout => \U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~5_combout\);

-- Location: LCCOMB_X24_Y14_N8
\U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~0_combout\ = (\U1|U0|dcfifo_component|auto_generated|rdptr_g\(11) & (!\U1|U0|dcfifo_component|auto_generated|wrptr_g\(11) & (\U1|U0|dcfifo_component|auto_generated|wrptr_g\(10) $ 
-- (\U1|U0|dcfifo_component|auto_generated|rdptr_g\(10))))) # (!\U1|U0|dcfifo_component|auto_generated|rdptr_g\(11) & (\U1|U0|dcfifo_component|auto_generated|wrptr_g\(11) & (\U1|U0|dcfifo_component|auto_generated|wrptr_g\(10) $ 
-- (\U1|U0|dcfifo_component|auto_generated|rdptr_g\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|rdptr_g\(11),
	datab => \U1|U0|dcfifo_component|auto_generated|wrptr_g\(10),
	datac => \U1|U0|dcfifo_component|auto_generated|rdptr_g\(10),
	datad => \U1|U0|dcfifo_component|auto_generated|wrptr_g\(11),
	combout => \U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~0_combout\);

-- Location: LCCOMB_X24_Y14_N18
\U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~1_combout\ = (\U1|U0|dcfifo_component|auto_generated|rdptr_g\(9) & (\U1|U0|dcfifo_component|auto_generated|wrptr_g\(9) & (\U1|U0|dcfifo_component|auto_generated|rdptr_g\(8) $ 
-- (!\U1|U0|dcfifo_component|auto_generated|wrptr_g\(8))))) # (!\U1|U0|dcfifo_component|auto_generated|rdptr_g\(9) & (!\U1|U0|dcfifo_component|auto_generated|wrptr_g\(9) & (\U1|U0|dcfifo_component|auto_generated|rdptr_g\(8) $ 
-- (!\U1|U0|dcfifo_component|auto_generated|wrptr_g\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|rdptr_g\(9),
	datab => \U1|U0|dcfifo_component|auto_generated|wrptr_g\(9),
	datac => \U1|U0|dcfifo_component|auto_generated|rdptr_g\(8),
	datad => \U1|U0|dcfifo_component|auto_generated|wrptr_g\(8),
	combout => \U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~1_combout\);

-- Location: LCCOMB_X24_Y14_N26
\U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~2_combout\ = (\U1|U0|dcfifo_component|auto_generated|wrptr_g\(6) & (\U1|U0|dcfifo_component|auto_generated|rdptr_g\(6) & (\U1|U0|dcfifo_component|auto_generated|wrptr_g\(7) $ 
-- (!\U1|U0|dcfifo_component|auto_generated|rdptr_g\(7))))) # (!\U1|U0|dcfifo_component|auto_generated|wrptr_g\(6) & (!\U1|U0|dcfifo_component|auto_generated|rdptr_g\(6) & (\U1|U0|dcfifo_component|auto_generated|wrptr_g\(7) $ 
-- (!\U1|U0|dcfifo_component|auto_generated|rdptr_g\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|wrptr_g\(6),
	datab => \U1|U0|dcfifo_component|auto_generated|wrptr_g\(7),
	datac => \U1|U0|dcfifo_component|auto_generated|rdptr_g\(6),
	datad => \U1|U0|dcfifo_component|auto_generated|rdptr_g\(7),
	combout => \U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~2_combout\);

-- Location: LCCOMB_X24_Y14_N16
\U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~3_combout\ = (!\U1|U0|dcfifo_component|auto_generated|valid_wrreq~combout\ & (\U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~0_combout\ & 
-- (\U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~2_combout\ & \U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|valid_wrreq~combout\,
	datab => \U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~0_combout\,
	datac => \U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~2_combout\,
	datad => \U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~1_combout\,
	combout => \U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~3_combout\);

-- Location: LCCOMB_X24_Y14_N30
\U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~4_combout\ = (\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a10~q\ & (!\U1|U0|dcfifo_component|auto_generated|rdptr_g\(10) & 
-- (\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a11~q\ $ (\U1|U0|dcfifo_component|auto_generated|rdptr_g\(11))))) # (!\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a10~q\ & (\U1|U0|dcfifo_component|auto_generated|rdptr_g\(10) & 
-- (\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a11~q\ $ (\U1|U0|dcfifo_component|auto_generated|rdptr_g\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a10~q\,
	datab => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a11~q\,
	datac => \U1|U0|dcfifo_component|auto_generated|rdptr_g\(11),
	datad => \U1|U0|dcfifo_component|auto_generated|rdptr_g\(10),
	combout => \U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~4_combout\);

-- Location: LCCOMB_X24_Y14_N22
\U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~5_combout\ = (\U1|U0|dcfifo_component|auto_generated|rdptr_g\(9) & (\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a9~q\ & 
-- (\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a8~q\ $ (!\U1|U0|dcfifo_component|auto_generated|rdptr_g\(8))))) # (!\U1|U0|dcfifo_component|auto_generated|rdptr_g\(9) & (!\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a9~q\ & 
-- (\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a8~q\ $ (!\U1|U0|dcfifo_component|auto_generated|rdptr_g\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|rdptr_g\(9),
	datab => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a8~q\,
	datac => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a9~q\,
	datad => \U1|U0|dcfifo_component|auto_generated|rdptr_g\(8),
	combout => \U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~5_combout\);

-- Location: LCCOMB_X24_Y15_N30
\U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~6_combout\ = (\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a7~q\ & (\U1|U0|dcfifo_component|auto_generated|rdptr_g\(7) & 
-- (\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~q\ $ (!\U1|U0|dcfifo_component|auto_generated|rdptr_g\(6))))) # (!\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a7~q\ & (!\U1|U0|dcfifo_component|auto_generated|rdptr_g\(7) & 
-- (\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~q\ $ (!\U1|U0|dcfifo_component|auto_generated|rdptr_g\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a7~q\,
	datab => \U1|U0|dcfifo_component|auto_generated|rdptr_g\(7),
	datac => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~q\,
	datad => \U1|U0|dcfifo_component|auto_generated|rdptr_g\(6),
	combout => \U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~6_combout\);

-- Location: LCCOMB_X25_Y15_N30
\U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~7_combout\ = (\U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~6_combout\ & (\U2|SLRD~q\ & 
-- ((!\U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux_reg~q\) # (!\U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux_reg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~6_combout\,
	datab => \U2|SLRD~q\,
	datac => \U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux_reg~q\,
	datad => \U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux_reg~q\,
	combout => \U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~7_combout\);

-- Location: LCCOMB_X25_Y14_N30
\U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~8_combout\ = (\U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~3_combout\) # 
-- ((\U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~4_combout\ & (\U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~7_combout\ & 
-- \U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~3_combout\,
	datab => \U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~4_combout\,
	datac => \U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~7_combout\,
	datad => \U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~5_combout\,
	combout => \U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~8_combout\);

-- Location: LCCOMB_X25_Y15_N26
\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|_~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|_~4_combout\ = (\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|_~0_combout\ & (!\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~q\ & 
-- \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|_~0_combout\,
	datac => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~q\,
	datad => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a0~q\,
	combout => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|_~4_combout\);

-- Location: FF_X17_Y15_N11
\U5|U0|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|_~9_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	ena => \U5|U0|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a\(0));

-- Location: LCCOMB_X14_Y16_N12
\U4|Selector25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector25~1_combout\ = (\U4|present_state.LOADMODE_TRMD~q\ & (!\U4|count_tmrd\(1) & (!\U4|count_tmrd\(0)))) # (!\U4|present_state.LOADMODE_TRMD~q\ & (((\U4|count_tmrd\(0) & !\U4|Selector25~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|count_tmrd\(1),
	datab => \U4|present_state.LOADMODE_TRMD~q\,
	datac => \U4|count_tmrd\(0),
	datad => \U4|Selector25~0_combout\,
	combout => \U4|Selector25~1_combout\);

-- Location: LCCOMB_X24_Y14_N4
\U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~1_combout\ = (\U1|U0|dcfifo_component|auto_generated|rdptr_g\(0) & (\U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g\(0) & 
-- (\U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g\(1) $ (!\U1|U0|dcfifo_component|auto_generated|rdptr_g\(1))))) # (!\U1|U0|dcfifo_component|auto_generated|rdptr_g\(0) & (!\U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g\(0) & 
-- (\U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g\(1) $ (!\U1|U0|dcfifo_component|auto_generated|rdptr_g\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|rdptr_g\(0),
	datab => \U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g\(1),
	datac => \U1|U0|dcfifo_component|auto_generated|rdptr_g\(1),
	datad => \U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g\(0),
	combout => \U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~1_combout\);

-- Location: LCCOMB_X26_Y16_N22
\U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~4_combout\ = (\U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g\(5) & (\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a5~q\ & 
-- (\U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g\(4) $ (!\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a4~q\)))) # (!\U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g\(5) & 
-- (!\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a5~q\ & (\U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g\(4) $ (!\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g\(5),
	datab => \U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g\(4),
	datac => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a5~q\,
	datad => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a4~q\,
	combout => \U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~4_combout\);

-- Location: FF_X25_Y14_N13
\U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g[11]~feeder_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g\(11));

-- Location: FF_X24_Y14_N11
\U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => \U1|U0|dcfifo_component|auto_generated|wrptr_g\(10),
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g\(10));

-- Location: LCCOMB_X24_Y14_N24
\U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~0_combout\ = (\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a10~q\ & (\U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g\(10) & 
-- (\U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g\(11) $ (!\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a11~q\)))) # (!\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a10~q\ & 
-- (!\U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g\(10) & (\U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g\(11) $ (!\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a11~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a10~q\,
	datab => \U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g\(11),
	datac => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a11~q\,
	datad => \U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g\(10),
	combout => \U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~0_combout\);

-- Location: FF_X24_Y14_N7
\U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => \U1|U0|dcfifo_component|auto_generated|wrptr_g\(9),
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g\(9));

-- Location: FF_X25_Y14_N11
\U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g[8]~feeder_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g\(8));

-- Location: LCCOMB_X24_Y14_N6
\U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~1_combout\ = (\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a9~q\ & (\U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g\(9) & 
-- (\U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g\(8) $ (!\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a8~q\)))) # (!\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a9~q\ & 
-- (!\U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g\(9) & (\U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g\(8) $ (!\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a8~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a9~q\,
	datab => \U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g\(8),
	datac => \U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g\(9),
	datad => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a8~q\,
	combout => \U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~1_combout\);

-- Location: FF_X24_Y15_N13
\U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g[7]~feeder_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g\(7));

-- Location: FF_X24_Y15_N9
\U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => \U1|U0|dcfifo_component|auto_generated|wrptr_g\(6),
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g\(6));

-- Location: LCCOMB_X24_Y15_N18
\U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~2_combout\ = (\U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g\(7) & (\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a7~q\ & 
-- (\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a6~q\ $ (!\U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g\(6))))) # (!\U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g\(7) & 
-- (!\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a7~q\ & (\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a6~q\ $ (!\U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g\(7),
	datab => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a6~q\,
	datac => \U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g\(6),
	datad => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a7~q\,
	combout => \U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~2_combout\);

-- Location: LCCOMB_X23_Y14_N22
\U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~3_combout\ = (\U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~1_combout\ & (\U1|U0|dcfifo_component|auto_generated|valid_rdreq~0_combout\ & 
-- (\U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~2_combout\ & \U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~1_combout\,
	datab => \U1|U0|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	datac => \U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~2_combout\,
	datad => \U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~0_combout\,
	combout => \U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~3_combout\);

-- Location: LCCOMB_X24_Y14_N10
\U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~4_combout\ = (\U1|U0|dcfifo_component|auto_generated|rdptr_g\(11) & (\U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g\(11) & 
-- (\U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g\(10) $ (!\U1|U0|dcfifo_component|auto_generated|rdptr_g\(10))))) # (!\U1|U0|dcfifo_component|auto_generated|rdptr_g\(11) & (!\U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g\(11) & 
-- (\U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g\(10) $ (!\U1|U0|dcfifo_component|auto_generated|rdptr_g\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|rdptr_g\(11),
	datab => \U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g\(11),
	datac => \U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g\(10),
	datad => \U1|U0|dcfifo_component|auto_generated|rdptr_g\(10),
	combout => \U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~4_combout\);

-- Location: LCCOMB_X23_Y14_N16
\U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~5_combout\ = (\U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~4_combout\ & (((!\readusbfifo_t~1_combout\ & !\readusbfifo_t~0_combout\)) # 
-- (!\U1|U0|dcfifo_component|auto_generated|valid_rdreq~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|valid_rdreq~1_combout\,
	datab => \readusbfifo_t~1_combout\,
	datac => \U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~4_combout\,
	datad => \readusbfifo_t~0_combout\,
	combout => \U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~5_combout\);

-- Location: LCCOMB_X24_Y14_N12
\U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~6_combout\ = (\U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g\(9) & (\U1|U0|dcfifo_component|auto_generated|rdptr_g\(9) & 
-- (\U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g\(8) $ (!\U1|U0|dcfifo_component|auto_generated|rdptr_g\(8))))) # (!\U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g\(9) & (!\U1|U0|dcfifo_component|auto_generated|rdptr_g\(9) & 
-- (\U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g\(8) $ (!\U1|U0|dcfifo_component|auto_generated|rdptr_g\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g\(9),
	datab => \U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g\(8),
	datac => \U1|U0|dcfifo_component|auto_generated|rdptr_g\(9),
	datad => \U1|U0|dcfifo_component|auto_generated|rdptr_g\(8),
	combout => \U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~6_combout\);

-- Location: LCCOMB_X24_Y15_N28
\U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~7_combout\ = (\U1|U0|dcfifo_component|auto_generated|rdptr_g\(6) & (\U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g\(6) & 
-- (\U1|U0|dcfifo_component|auto_generated|rdptr_g\(7) $ (!\U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g\(7))))) # (!\U1|U0|dcfifo_component|auto_generated|rdptr_g\(6) & (!\U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g\(6) & 
-- (\U1|U0|dcfifo_component|auto_generated|rdptr_g\(7) $ (!\U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|rdptr_g\(6),
	datab => \U1|U0|dcfifo_component|auto_generated|rdptr_g\(7),
	datac => \U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g\(6),
	datad => \U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g\(7),
	combout => \U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~7_combout\);

-- Location: LCCOMB_X23_Y14_N30
\U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~8_combout\ = (!\U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~3_combout\ & 
-- (((!\U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~6_combout\) # (!\U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~5_combout\)) # 
-- (!\U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~7_combout\,
	datab => \U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~5_combout\,
	datac => \U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~3_combout\,
	datad => \U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~6_combout\,
	combout => \U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~8_combout\);

-- Location: LCCOMB_X23_Y14_N4
\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|_~2_combout\ = (!\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a1~q\ & (!\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|parity6~q\ & 
-- ((\U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_msb_aeb~q\) # (\U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_aeb~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_msb_aeb~q\,
	datab => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a1~q\,
	datac => \U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_aeb~q\,
	datad => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|parity6~q\,
	combout => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|_~2_combout\);

-- Location: LCCOMB_X23_Y14_N10
\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|_~3_combout\ = (\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a0~q\ & (\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|_~2_combout\ & ((\readusbfifo_t~0_combout\) # 
-- (\readusbfifo_t~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a0~q\,
	datab => \readusbfifo_t~0_combout\,
	datac => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|_~2_combout\,
	datad => \readusbfifo_t~1_combout\,
	combout => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|_~3_combout\);

-- Location: LCCOMB_X23_Y14_N12
\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|_~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|_~4_combout\ = (\U1|U0|dcfifo_component|auto_generated|valid_rdreq~1_combout\ & (!\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a2~q\ & 
-- (!\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a1~q\ & !\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|parity6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|valid_rdreq~1_combout\,
	datab => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a2~q\,
	datac => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a1~q\,
	datad => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|parity6~q\,
	combout => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|_~4_combout\);

-- Location: LCCOMB_X17_Y15_N10
\U5|U0|dcfifo_component|auto_generated|wrptr_g1p|_~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|_~9_combout\ = \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a0~q\ $ (\U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~q\ $ 
-- (\U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~q\ $ (!\U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a0~q\,
	datab => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~q\,
	datac => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~q\,
	datad => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~q\,
	combout => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|_~9_combout\);

-- Location: LCCOMB_X16_Y10_N14
\U3|Selector37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector37~0_combout\ = (\U3|present_state.INIT~q\ & (!\U3|present_state.WRITEDATA_TWR~q\ & (!\U3|present_state.IDLE~q\ & !\U3|present_state.WRITEDATA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|present_state.INIT~q\,
	datab => \U3|present_state.WRITEDATA_TWR~q\,
	datac => \U3|present_state.IDLE~q\,
	datad => \U3|present_state.WRITEDATA~q\,
	combout => \U3|Selector37~0_combout\);

-- Location: LCCOMB_X14_Y17_N10
\U4|Selector37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector37~0_combout\ = (!\U4|present_state.IDLE~q\ & (!\U4|present_state.WRITEDATA~q\ & (\U4|present_state.INIT~q\ & !\U4|present_state.WRITEDATA_TWR~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|present_state.IDLE~q\,
	datab => \U4|present_state.WRITEDATA~q\,
	datac => \U4|present_state.INIT~q\,
	datad => \U4|present_state.WRITEDATA_TWR~q\,
	combout => \U4|Selector37~0_combout\);

-- Location: FF_X26_Y14_N11
\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|sub_parity7a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|_~10_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	ena => \U1|U0|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|sub_parity7a\(2));

-- Location: LCCOMB_X26_Y14_N10
\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|_~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|_~10_combout\ = \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a11~q\ $ (\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a9~q\ $ 
-- (\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a8~q\ $ (\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a10~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a11~q\,
	datab => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a9~q\,
	datac => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a8~q\,
	datad => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a10~q\,
	combout => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|_~10_combout\);

-- Location: LCCOMB_X33_Y13_N12
\U9|Low_Clk_Counter[0]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \U9|Low_Clk_Counter[0]~57_combout\ = !\U9|Low_Clk_Counter\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U9|Low_Clk_Counter\(0),
	combout => \U9|Low_Clk_Counter[0]~57_combout\);

-- Location: LCCOMB_X25_Y15_N24
\U1|U0|dcfifo_component|auto_generated|rdptr_g[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|rdptr_g[0]~0_combout\ = !\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a0~q\,
	combout => \U1|U0|dcfifo_component|auto_generated|rdptr_g[0]~0_combout\);

-- Location: LCCOMB_X32_Y19_N30
\Check_Led[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- Check_Led(7) = (GLOBAL(\Check_Led[7]~1clkctrl_outclk\) & (CPU_Command_2(7))) # (!GLOBAL(\Check_Led[7]~1clkctrl_outclk\) & ((Check_Led(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => CPU_Command_2(7),
	datac => Check_Led(7),
	datad => \Check_Led[7]~1clkctrl_outclk\,
	combout => Check_Led(7));

-- Location: IOIBUF_X0_Y8_N15
\DQ0[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DQ0(0),
	o => \DQ0[0]~input_o\);

-- Location: IOIBUF_X1_Y0_N22
\DQ0[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DQ0(2),
	o => \DQ0[2]~input_o\);

-- Location: IOIBUF_X0_Y7_N15
\DQ0[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DQ0(5),
	o => \DQ0[5]~input_o\);

-- Location: IOIBUF_X11_Y0_N15
\DQ0[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DQ0(9),
	o => \DQ0[9]~input_o\);

-- Location: IOIBUF_X9_Y0_N8
\DQ0[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DQ0(10),
	o => \DQ0[10]~input_o\);

-- Location: IOIBUF_X9_Y0_N1
\DQ0[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DQ0(11),
	o => \DQ0[11]~input_o\);

-- Location: IOIBUF_X1_Y0_N1
\DQ0[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DQ0(15),
	o => \DQ0[15]~input_o\);

-- Location: IOIBUF_X3_Y24_N15
\DQ1[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DQ1(1),
	o => \DQ1[1]~input_o\);

-- Location: IOIBUF_X5_Y24_N15
\DQ1[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DQ1(3),
	o => \DQ1[3]~input_o\);

-- Location: IOIBUF_X5_Y24_N8
\DQ1[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DQ1(4),
	o => \DQ1[4]~input_o\);

-- Location: IOIBUF_X9_Y24_N15
\DQ1[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DQ1(7),
	o => \DQ1[7]~input_o\);

-- Location: IOIBUF_X0_Y21_N22
\DQ1[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DQ1(8),
	o => \DQ1[8]~input_o\);

-- Location: IOIBUF_X0_Y10_N15
\DQ1[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DQ1(14),
	o => \DQ1[14]~input_o\);

-- Location: IOIBUF_X34_Y19_N8
\CPU_WR~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CPU_WR,
	o => \CPU_WR~input_o\);

-- Location: CLKCTRL_G2
\CLK48M~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK48M~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK48M~inputclkctrl_outclk\);

-- Location: LCCOMB_X25_Y14_N12
\U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g[11]~feeder_combout\ = \U1|U0|dcfifo_component|auto_generated|wrptr_g\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U0|dcfifo_component|auto_generated|wrptr_g\(11),
	combout => \U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g[11]~feeder_combout\);

-- Location: LCCOMB_X25_Y14_N10
\U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g[8]~feeder_combout\ = \U1|U0|dcfifo_component|auto_generated|wrptr_g\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U0|dcfifo_component|auto_generated|wrptr_g\(8),
	combout => \U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g[8]~feeder_combout\);

-- Location: LCCOMB_X24_Y15_N12
\U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g[7]~feeder_combout\ = \U1|U0|dcfifo_component|auto_generated|wrptr_g\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U0|dcfifo_component|auto_generated|wrptr_g\(7),
	combout => \U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g[7]~feeder_combout\);

-- Location: LCCOMB_X24_Y16_N12
\U1|U0|dcfifo_component|auto_generated|ws_brp|dffe12a[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|ws_brp|dffe12a[5]~feeder_combout\ = \U1|U0|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor5~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U0|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor5~combout\,
	combout => \U1|U0|dcfifo_component|auto_generated|ws_brp|dffe12a[5]~feeder_combout\);

-- Location: LCCOMB_X32_Y16_N0
\CPU_Command_2[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU_Command_2[6]~feeder_combout\ = CPU_Command_1(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => CPU_Command_1(6),
	combout => \CPU_Command_2[6]~feeder_combout\);

-- Location: LCCOMB_X23_Y16_N14
\U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a[9]~feeder_combout\ = \U1|U0|dcfifo_component|auto_generated|rdptr_g\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U0|dcfifo_component|auto_generated|rdptr_g\(9),
	combout => \U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a[9]~feeder_combout\);

-- Location: LCCOMB_X25_Y16_N6
\U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a[5]~feeder_combout\ = \U1|U0|dcfifo_component|auto_generated|rdptr_g\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U0|dcfifo_component|auto_generated|rdptr_g\(5),
	combout => \U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a[5]~feeder_combout\);

-- Location: LCCOMB_X24_Y14_N0
\U1|U0|dcfifo_component|auto_generated|rdptr_g[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|rdptr_g[7]~feeder_combout\ = \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a7~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a7~q\,
	combout => \U1|U0|dcfifo_component|auto_generated|rdptr_g[7]~feeder_combout\);

-- Location: IOOBUF_X0_Y8_N9
\Check~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U9|Check_t~q\,
	devoe => ww_devoe,
	o => ww_Check);

-- Location: IOOBUF_X32_Y0_N16
\SLRD~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|ALT_INV_SLRD~q\,
	devoe => ww_devoe,
	o => ww_SLRD);

-- Location: IOOBUF_X25_Y0_N9
\SLWR~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_SLWR);

-- Location: IOOBUF_X34_Y8_N23
\IFCLK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	devoe => ww_devoe,
	o => ww_IFCLK);

-- Location: IOOBUF_X34_Y18_N2
\Laser_En~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Laser_En);

-- Location: IOOBUF_X34_Y20_N9
\Laser_ST~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Laser_ST);

-- Location: IOOBUF_X34_Y20_N2
\Laser_Clk~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Laser_Clk);

-- Location: IOOBUF_X32_Y24_N9
\Laser_Data[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(0),
	devoe => ww_devoe,
	o => ww_Laser_Data(0));

-- Location: IOOBUF_X21_Y24_N2
\Laser_Data[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(1),
	devoe => ww_devoe,
	o => ww_Laser_Data(1));

-- Location: IOOBUF_X28_Y24_N9
\Laser_Data[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(2),
	devoe => ww_devoe,
	o => ww_Laser_Data(2));

-- Location: IOOBUF_X28_Y24_N2
\Laser_Data[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(3),
	devoe => ww_devoe,
	o => ww_Laser_Data(3));

-- Location: IOOBUF_X30_Y24_N23
\Laser_Data[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(4),
	devoe => ww_devoe,
	o => ww_Laser_Data(4));

-- Location: IOOBUF_X30_Y24_N9
\Laser_Data[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(5),
	devoe => ww_devoe,
	o => ww_Laser_Data(5));

-- Location: IOOBUF_X34_Y10_N2
\Laser_Data[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(6),
	devoe => ww_devoe,
	o => ww_Laser_Data(6));

-- Location: IOOBUF_X34_Y11_N2
\Laser_Data[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(7),
	devoe => ww_devoe,
	o => ww_Laser_Data(7));

-- Location: IOOBUF_X34_Y17_N2
\Laser_Data[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(8),
	devoe => ww_devoe,
	o => ww_Laser_Data(8));

-- Location: IOOBUF_X23_Y24_N23
\Laser_Data[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(9),
	devoe => ww_devoe,
	o => ww_Laser_Data(9));

-- Location: IOOBUF_X30_Y24_N2
\Laser_Data[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(10),
	devoe => ww_devoe,
	o => ww_Laser_Data(10));

-- Location: IOOBUF_X34_Y19_N16
\Laser_Data[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(11),
	devoe => ww_devoe,
	o => ww_Laser_Data(11));

-- Location: IOOBUF_X23_Y24_N2
\Laser_Data[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(12),
	devoe => ww_devoe,
	o => ww_Laser_Data(12));

-- Location: IOOBUF_X32_Y24_N23
\Laser_Data[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(13),
	devoe => ww_devoe,
	o => ww_Laser_Data(13));

-- Location: IOOBUF_X13_Y24_N2
\Laser_Data[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(14),
	devoe => ww_devoe,
	o => ww_Laser_Data(14));

-- Location: IOOBUF_X18_Y24_N9
\Laser_Data[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(15),
	devoe => ww_devoe,
	o => ww_Laser_Data(15));

-- Location: IOOBUF_X11_Y0_N2
\CLK0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	devoe => ww_devoe,
	o => ww_CLK0);

-- Location: IOOBUF_X16_Y0_N2
\CKE0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_CKE0);

-- Location: IOOBUF_X7_Y0_N16
\CSn0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_CSn0);

-- Location: IOOBUF_X7_Y0_N2
\RASn0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|ALT_INV_RASn~q\,
	devoe => ww_devoe,
	o => ww_RASn0);

-- Location: IOOBUF_X1_Y0_N16
\CASn0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|ALT_INV_CASn~q\,
	devoe => ww_devoe,
	o => ww_CASn0);

-- Location: IOOBUF_X3_Y0_N2
\WEn0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|ALT_INV_WEn~q\,
	devoe => ww_devoe,
	o => ww_WEn0);

-- Location: IOOBUF_X13_Y0_N23
\UDQM0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|ALT_INV_UDQM~q\,
	devoe => ww_devoe,
	o => ww_UDQM0);

-- Location: IOOBUF_X0_Y5_N23
\LDQM0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|ALT_INV_LDQM~q\,
	devoe => ww_devoe,
	o => ww_LDQM0);

-- Location: IOOBUF_X9_Y0_N23
\BA0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|BA\(0),
	devoe => ww_devoe,
	o => ww_BA0(0));

-- Location: IOOBUF_X16_Y0_N23
\BA0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|BA\(1),
	devoe => ww_devoe,
	o => ww_BA0(1));

-- Location: IOOBUF_X13_Y0_N2
\A0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|A\(0),
	devoe => ww_devoe,
	o => ww_A0(0));

-- Location: IOOBUF_X16_Y0_N16
\A0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|A\(1),
	devoe => ww_devoe,
	o => ww_A0(1));

-- Location: IOOBUF_X25_Y0_N2
\A0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|A\(2),
	devoe => ww_devoe,
	o => ww_A0(2));

-- Location: IOOBUF_X28_Y0_N23
\A0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|A\(3),
	devoe => ww_devoe,
	o => ww_A0(3));

-- Location: IOOBUF_X25_Y0_N23
\A0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|A\(4),
	devoe => ww_devoe,
	o => ww_A0(4));

-- Location: IOOBUF_X23_Y0_N16
\A0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|A\(5),
	devoe => ww_devoe,
	o => ww_A0(5));

-- Location: IOOBUF_X23_Y0_N9
\A0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|A\(6),
	devoe => ww_devoe,
	o => ww_A0(6));

-- Location: IOOBUF_X21_Y0_N9
\A0[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|A\(7),
	devoe => ww_devoe,
	o => ww_A0(7));

-- Location: IOOBUF_X21_Y0_N2
\A0[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|A\(8),
	devoe => ww_devoe,
	o => ww_A0(8));

-- Location: IOOBUF_X18_Y0_N23
\A0[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|A\(9),
	devoe => ww_devoe,
	o => ww_A0(9));

-- Location: IOOBUF_X21_Y0_N16
\A0[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|A\(10),
	devoe => ww_devoe,
	o => ww_A0(10));

-- Location: IOOBUF_X18_Y0_N16
\A0[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|A\(11),
	devoe => ww_devoe,
	o => ww_A0(11));

-- Location: IOOBUF_X16_Y0_N9
\A0[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|A\(12),
	devoe => ww_devoe,
	o => ww_A0(12));

-- Location: IOOBUF_X1_Y24_N2
\CLK1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	devoe => ww_devoe,
	o => ww_CLK1);

-- Location: IOOBUF_X0_Y22_N2
\CKE1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_CKE1);

-- Location: IOOBUF_X16_Y24_N9
\CSn1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_CSn1);

-- Location: IOOBUF_X16_Y24_N16
\RASn1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|ALT_INV_RASn~q\,
	devoe => ww_devoe,
	o => ww_RASn1);

-- Location: IOOBUF_X16_Y24_N23
\CASn1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|ALT_INV_CASn~q\,
	devoe => ww_devoe,
	o => ww_CASn1);

-- Location: IOOBUF_X11_Y24_N2
\WEn1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|ALT_INV_WEn~q\,
	devoe => ww_devoe,
	o => ww_WEn1);

-- Location: IOOBUF_X0_Y22_N16
\UDQM1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|ALT_INV_UDQM~q\,
	devoe => ww_devoe,
	o => ww_UDQM1);

-- Location: IOOBUF_X11_Y24_N9
\LDQM1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|ALT_INV_LDQM~q\,
	devoe => ww_devoe,
	o => ww_LDQM1);

-- Location: IOOBUF_X16_Y24_N2
\BA1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|BA\(0),
	devoe => ww_devoe,
	o => ww_BA1(0));

-- Location: IOOBUF_X21_Y24_N16
\BA1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|BA\(1),
	devoe => ww_devoe,
	o => ww_BA1(1));

-- Location: IOOBUF_X25_Y24_N23
\A1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|A\(0),
	devoe => ww_devoe,
	o => ww_A1(0));

-- Location: IOOBUF_X25_Y24_N16
\A1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|A\(1),
	devoe => ww_devoe,
	o => ww_A1(1));

-- Location: IOOBUF_X25_Y24_N9
\A1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|A\(2),
	devoe => ww_devoe,
	o => ww_A1(2));

-- Location: IOOBUF_X25_Y24_N2
\A1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|A\(3),
	devoe => ww_devoe,
	o => ww_A1(3));

-- Location: IOOBUF_X18_Y24_N16
\A1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|A\(4),
	devoe => ww_devoe,
	o => ww_A1(4));

-- Location: IOOBUF_X13_Y24_N9
\A1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|A\(5),
	devoe => ww_devoe,
	o => ww_A1(5));

-- Location: IOOBUF_X3_Y24_N9
\A1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|A\(6),
	devoe => ww_devoe,
	o => ww_A1(6));

-- Location: IOOBUF_X9_Y24_N9
\A1[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|A\(7),
	devoe => ww_devoe,
	o => ww_A1(7));

-- Location: IOOBUF_X3_Y24_N2
\A1[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|A\(8),
	devoe => ww_devoe,
	o => ww_A1(8));

-- Location: IOOBUF_X0_Y23_N2
\A1[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|A\(9),
	devoe => ww_devoe,
	o => ww_A1(9));

-- Location: IOOBUF_X21_Y24_N9
\A1[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|A\(10),
	devoe => ww_devoe,
	o => ww_A1(10));

-- Location: IOOBUF_X1_Y24_N9
\A1[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|A\(11),
	devoe => ww_devoe,
	o => ww_A1(11));

-- Location: IOOBUF_X5_Y24_N2
\A1[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|A\(12),
	devoe => ww_devoe,
	o => ww_A1(12));

-- Location: IOOBUF_X34_Y9_N16
\CPU_Data[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU_Read_1[0]~head_lut_combout\,
	oe => \ALT_INV_CPU_RD~input_o\,
	devoe => ww_devoe,
	o => CPU_Data(0));

-- Location: IOOBUF_X34_Y8_N9
\CPU_Data[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU_Read_1[1]~head_lut_combout\,
	oe => \ALT_INV_CPU_RD~input_o\,
	devoe => ww_devoe,
	o => CPU_Data(1));

-- Location: IOOBUF_X34_Y8_N16
\CPU_Data[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU_Read_1[2]~head_lut_combout\,
	oe => \ALT_INV_CPU_RD~input_o\,
	devoe => ww_devoe,
	o => CPU_Data(2));

-- Location: IOOBUF_X34_Y7_N9
\CPU_Data[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU_Read_1[3]~head_lut_combout\,
	oe => \ALT_INV_CPU_RD~input_o\,
	devoe => ww_devoe,
	o => CPU_Data(3));

-- Location: IOOBUF_X34_Y7_N16
\CPU_Data[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU_Read_1[4]~head_lut_combout\,
	oe => \ALT_INV_CPU_RD~input_o\,
	devoe => ww_devoe,
	o => CPU_Data(4));

-- Location: IOOBUF_X34_Y7_N23
\CPU_Data[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU_Read_1[5]~head_lut_combout\,
	oe => \ALT_INV_CPU_RD~input_o\,
	devoe => ww_devoe,
	o => CPU_Data(5));

-- Location: IOOBUF_X34_Y4_N16
\CPU_Data[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU_Read_1[6]~head_lut_combout\,
	oe => \ALT_INV_CPU_RD~input_o\,
	devoe => ww_devoe,
	o => CPU_Data(6));

-- Location: IOOBUF_X34_Y5_N23
\CPU_Data[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU_Read_1[7]~head_lut_combout\,
	oe => \ALT_INV_CPU_RD~input_o\,
	devoe => ww_devoe,
	o => CPU_Data(7));

-- Location: IOOBUF_X0_Y8_N16
\DQ0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \readusbfifodata_t1[0]~0_combout\,
	oe => \U3|Equal0~0_combout\,
	devoe => ww_devoe,
	o => DQ0(0));

-- Location: IOOBUF_X0_Y6_N23
\DQ0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \readusbfifodata_t1[1]~1_combout\,
	oe => \U3|Equal0~0_combout\,
	devoe => ww_devoe,
	o => DQ0(1));

-- Location: IOOBUF_X1_Y0_N23
\DQ0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \readusbfifodata_t1[2]~2_combout\,
	oe => \U3|Equal0~0_combout\,
	devoe => ww_devoe,
	o => DQ0(2));

-- Location: IOOBUF_X0_Y7_N23
\DQ0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \readusbfifodata_t1[3]~3_combout\,
	oe => \U3|Equal0~0_combout\,
	devoe => ww_devoe,
	o => DQ0(3));

-- Location: IOOBUF_X7_Y0_N23
\DQ0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \readusbfifodata_t1[4]~4_combout\,
	oe => \U3|Equal0~0_combout\,
	devoe => ww_devoe,
	o => DQ0(4));

-- Location: IOOBUF_X0_Y7_N16
\DQ0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \readusbfifodata_t1[5]~5_combout\,
	oe => \U3|Equal0~0_combout\,
	devoe => ww_devoe,
	o => DQ0(5));

-- Location: IOOBUF_X0_Y4_N23
\DQ0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \readusbfifodata_t1[6]~6_combout\,
	oe => \U3|Equal0~0_combout\,
	devoe => ww_devoe,
	o => DQ0(6));

-- Location: IOOBUF_X0_Y4_N16
\DQ0[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \readusbfifodata_t1[7]~7_combout\,
	oe => \U3|Equal0~0_combout\,
	devoe => ww_devoe,
	o => DQ0(7));

-- Location: IOOBUF_X11_Y0_N23
\DQ0[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \readusbfifodata_t1[8]~8_combout\,
	oe => \U3|Equal0~0_combout\,
	devoe => ww_devoe,
	o => DQ0(8));

-- Location: IOOBUF_X11_Y0_N16
\DQ0[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \readusbfifodata_t1[9]~9_combout\,
	oe => \U3|Equal0~0_combout\,
	devoe => ww_devoe,
	o => DQ0(9));

-- Location: IOOBUF_X9_Y0_N9
\DQ0[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \readusbfifodata_t1[10]~10_combout\,
	oe => \U3|Equal0~0_combout\,
	devoe => ww_devoe,
	o => DQ0(10));

-- Location: IOOBUF_X9_Y0_N2
\DQ0[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \readusbfifodata_t1[11]~11_combout\,
	oe => \U3|Equal0~0_combout\,
	devoe => ww_devoe,
	o => DQ0(11));

-- Location: IOOBUF_X5_Y0_N23
\DQ0[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \readusbfifodata_t1[12]~12_combout\,
	oe => \U3|Equal0~0_combout\,
	devoe => ww_devoe,
	o => DQ0(12));

-- Location: IOOBUF_X5_Y0_N16
\DQ0[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \readusbfifodata_t1[13]~13_combout\,
	oe => \U3|Equal0~0_combout\,
	devoe => ww_devoe,
	o => DQ0(13));

-- Location: IOOBUF_X1_Y0_N9
\DQ0[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \readusbfifodata_t1[14]~14_combout\,
	oe => \U3|Equal0~0_combout\,
	devoe => ww_devoe,
	o => DQ0(14));

-- Location: IOOBUF_X1_Y0_N2
\DQ0[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \readusbfifodata_t1[15]~15_combout\,
	oe => \U3|Equal0~0_combout\,
	devoe => ww_devoe,
	o => DQ0(15));

-- Location: IOOBUF_X3_Y24_N23
\DQ1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \readusbfifodata_t2[0]~0_combout\,
	oe => \U4|Equal0~0_combout\,
	devoe => ww_devoe,
	o => DQ1(0));

-- Location: IOOBUF_X3_Y24_N16
\DQ1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \readusbfifodata_t2[1]~1_combout\,
	oe => \U4|Equal0~0_combout\,
	devoe => ww_devoe,
	o => DQ1(1));

-- Location: IOOBUF_X5_Y24_N23
\DQ1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \readusbfifodata_t2[2]~2_combout\,
	oe => \U4|Equal0~0_combout\,
	devoe => ww_devoe,
	o => DQ1(2));

-- Location: IOOBUF_X5_Y24_N16
\DQ1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \readusbfifodata_t2[3]~3_combout\,
	oe => \U4|Equal0~0_combout\,
	devoe => ww_devoe,
	o => DQ1(3));

-- Location: IOOBUF_X5_Y24_N9
\DQ1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \readusbfifodata_t2[4]~4_combout\,
	oe => \U4|Equal0~0_combout\,
	devoe => ww_devoe,
	o => DQ1(4));

-- Location: IOOBUF_X7_Y24_N16
\DQ1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \readusbfifodata_t2[5]~5_combout\,
	oe => \U4|Equal0~0_combout\,
	devoe => ww_devoe,
	o => DQ1(5));

-- Location: IOOBUF_X9_Y24_N23
\DQ1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \readusbfifodata_t2[6]~6_combout\,
	oe => \U4|Equal0~0_combout\,
	devoe => ww_devoe,
	o => DQ1(6));

-- Location: IOOBUF_X9_Y24_N16
\DQ1[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \readusbfifodata_t2[7]~7_combout\,
	oe => \U4|Equal0~0_combout\,
	devoe => ww_devoe,
	o => DQ1(7));

-- Location: IOOBUF_X0_Y21_N23
\DQ1[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \readusbfifodata_t2[8]~8_combout\,
	oe => \U4|Equal0~0_combout\,
	devoe => ww_devoe,
	o => DQ1(8));

-- Location: IOOBUF_X0_Y21_N9
\DQ1[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \readusbfifodata_t2[9]~9_combout\,
	oe => \U4|Equal0~0_combout\,
	devoe => ww_devoe,
	o => DQ1(9));

-- Location: IOOBUF_X0_Y19_N23
\DQ1[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \readusbfifodata_t2[10]~10_combout\,
	oe => \U4|Equal0~0_combout\,
	devoe => ww_devoe,
	o => DQ1(10));

-- Location: IOOBUF_X0_Y19_N16
\DQ1[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \readusbfifodata_t2[11]~11_combout\,
	oe => \U4|Equal0~0_combout\,
	devoe => ww_devoe,
	o => DQ1(11));

-- Location: IOOBUF_X0_Y18_N23
\DQ1[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \readusbfifodata_t2[12]~12_combout\,
	oe => \U4|Equal0~0_combout\,
	devoe => ww_devoe,
	o => DQ1(12));

-- Location: IOOBUF_X0_Y18_N16
\DQ1[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \readusbfifodata_t2[13]~13_combout\,
	oe => \U4|Equal0~0_combout\,
	devoe => ww_devoe,
	o => DQ1(13));

-- Location: IOOBUF_X0_Y10_N16
\DQ1[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \readusbfifodata_t2[14]~14_combout\,
	oe => \U4|Equal0~0_combout\,
	devoe => ww_devoe,
	o => DQ1(14));

-- Location: IOOBUF_X0_Y10_N2
\DQ1[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \readusbfifodata_t2[15]~15_combout\,
	oe => \U4|Equal0~0_combout\,
	devoe => ww_devoe,
	o => DQ1(15));

-- Location: IOIBUF_X30_Y0_N22
\CPU_Set~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CPU_Set,
	o => \CPU_Set~input_o\);

-- Location: IOIBUF_X34_Y8_N15
\CPU_Data[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => CPU_Data(2),
	o => \CPU_Data[2]~input_o\);

-- Location: FF_X33_Y16_N5
\CPU_Command_1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CPU_WR~input_o\,
	asdata => \CPU_Data[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CPU_Command_1(2));

-- Location: IOIBUF_X34_Y9_N15
\CPU_Data[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => CPU_Data(0),
	o => \CPU_Data[0]~input_o\);

-- Location: LCCOMB_X33_Y16_N8
\CPU_Command_1[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU_Command_1[0]~feeder_combout\ = \CPU_Data[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU_Data[0]~input_o\,
	combout => \CPU_Command_1[0]~feeder_combout\);

-- Location: FF_X33_Y16_N9
\CPU_Command_1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CPU_WR~input_o\,
	d => \CPU_Command_1[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CPU_Command_1(0));

-- Location: IOIBUF_X34_Y7_N15
\CPU_Data[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => CPU_Data(4),
	o => \CPU_Data[4]~input_o\);

-- Location: LCCOMB_X33_Y16_N10
\CPU_Command_1[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU_Command_1[4]~feeder_combout\ = \CPU_Data[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU_Data[4]~input_o\,
	combout => \CPU_Command_1[4]~feeder_combout\);

-- Location: FF_X33_Y16_N11
\CPU_Command_1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CPU_WR~input_o\,
	d => \CPU_Command_1[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CPU_Command_1(4));

-- Location: LCCOMB_X33_Y16_N20
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (!CPU_Command_1(0) & ((CPU_Command_1(1) & (CPU_Command_1(2) & !CPU_Command_1(4))) # (!CPU_Command_1(1) & (!CPU_Command_1(2) & CPU_Command_1(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CPU_Command_1(1),
	datab => CPU_Command_1(2),
	datac => CPU_Command_1(0),
	datad => CPU_Command_1(4),
	combout => \Mux1~0_combout\);

-- Location: IOIBUF_X34_Y7_N8
\CPU_Data[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => CPU_Data(3),
	o => \CPU_Data[3]~input_o\);

-- Location: FF_X33_Y16_N15
\CPU_Command_1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CPU_WR~input_o\,
	asdata => \CPU_Data[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CPU_Command_1(3));

-- Location: IOIBUF_X34_Y4_N15
\CPU_Data[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => CPU_Data(6),
	o => \CPU_Data[6]~input_o\);

-- Location: LCCOMB_X32_Y16_N6
\CPU_Command_1[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU_Command_1[6]~feeder_combout\ = \CPU_Data[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU_Data[6]~input_o\,
	combout => \CPU_Command_1[6]~feeder_combout\);

-- Location: FF_X32_Y16_N7
\CPU_Command_1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CPU_WR~input_o\,
	d => \CPU_Command_1[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CPU_Command_1(6));

-- Location: IOIBUF_X34_Y5_N22
\CPU_Data[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => CPU_Data(7),
	o => \CPU_Data[7]~input_o\);

-- Location: FF_X33_Y16_N31
\CPU_Command_1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CPU_WR~input_o\,
	asdata => \CPU_Data[7]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CPU_Command_1(7));

-- Location: IOIBUF_X34_Y7_N22
\CPU_Data[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => CPU_Data(5),
	o => \CPU_Data[5]~input_o\);

-- Location: FF_X33_Y16_N23
\CPU_Command_1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CPU_WR~input_o\,
	asdata => \CPU_Data[5]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CPU_Command_1(5));

-- Location: LCCOMB_X33_Y16_N30
\CPU_Read_1_t[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU_Read_1_t[7]~0_combout\ = (\CPU_Set~input_o\ & (!CPU_Command_1(6) & (!CPU_Command_1(7) & !CPU_Command_1(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_Set~input_o\,
	datab => CPU_Command_1(6),
	datac => CPU_Command_1(7),
	datad => CPU_Command_1(5),
	combout => \CPU_Read_1_t[7]~0_combout\);

-- Location: LCCOMB_X33_Y16_N18
\CPU_Read_1_t[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU_Read_1_t[7]~1_combout\ = (\Mux1~0_combout\ & (!CPU_Command_1(3) & \CPU_Read_1_t[7]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux1~0_combout\,
	datac => CPU_Command_1(3),
	datad => \CPU_Read_1_t[7]~0_combout\,
	combout => \CPU_Read_1_t[7]~1_combout\);

-- Location: CLKCTRL_G8
\CPU_Read_1_t[7]~1clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CPU_Read_1_t[7]~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CPU_Read_1_t[7]~1clkctrl_outclk\);

-- Location: LCCOMB_X33_Y16_N16
\CPU_Read_1_t[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- CPU_Read_1_t(0) = (GLOBAL(\CPU_Read_1_t[7]~1clkctrl_outclk\) & (Check_Led(0))) # (!GLOBAL(\CPU_Read_1_t[7]~1clkctrl_outclk\) & ((CPU_Read_1_t(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Check_Led(0),
	datab => CPU_Read_1_t(0),
	datad => \CPU_Read_1_t[7]~1clkctrl_outclk\,
	combout => CPU_Read_1_t(0));

-- Location: LCCOMB_X33_Y16_N28
\CPU_Read_1[0]~latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU_Read_1[0]~latch_combout\ = (\CPU_Set~input_o\ & (\CPU_Read_1[0]~latch_combout\)) # (!\CPU_Set~input_o\ & ((CPU_Read_1_t(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_Set~input_o\,
	datab => \CPU_Read_1[0]~latch_combout\,
	datad => CPU_Read_1_t(0),
	combout => \CPU_Read_1[0]~latch_combout\);

-- Location: FF_X33_Y16_N7
\CPU_Read_1[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CPU_RD~input_o\,
	asdata => \CPU_Read_1[0]~latch_combout\,
	clrn => \CPU_Set~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU_Read_1[0]~_emulated_q\);

-- Location: LCCOMB_X33_Y16_N6
\CPU_Read_1[0]~head_lut\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU_Read_1[0]~head_lut_combout\ = (\CPU_Set~input_o\ & (\CPU_Read_1[0]~latch_combout\ $ ((\CPU_Read_1[0]~_emulated_q\)))) # (!\CPU_Set~input_o\ & (((CPU_Read_1_t(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_Set~input_o\,
	datab => \CPU_Read_1[0]~latch_combout\,
	datac => \CPU_Read_1[0]~_emulated_q\,
	datad => CPU_Read_1_t(0),
	combout => \CPU_Read_1[0]~head_lut_combout\);

-- Location: IOIBUF_X34_Y19_N1
\CPU_RD~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CPU_RD,
	o => \CPU_RD~input_o\);

-- Location: IOIBUF_X34_Y8_N8
\CPU_Data[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => CPU_Data(1),
	o => \CPU_Data[1]~input_o\);

-- Location: LCCOMB_X33_Y16_N26
\CPU_Command_1[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU_Command_1[1]~feeder_combout\ = \CPU_Data[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU_Data[1]~input_o\,
	combout => \CPU_Command_1[1]~feeder_combout\);

-- Location: FF_X33_Y16_N27
\CPU_Command_1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CPU_WR~input_o\,
	d => \CPU_Command_1[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CPU_Command_1(1));

-- Location: FF_X33_Y16_N1
\CPU_Command_2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CPU_WR~input_o\,
	asdata => CPU_Command_1(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CPU_Command_2(1));

-- Location: LCCOMB_X33_Y16_N24
\Check_Led[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Check_Led[7]~0_combout\ = (CPU_Command_1(3) & (CPU_Command_1(0) & (CPU_Command_1(2) & CPU_Command_1(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CPU_Command_1(3),
	datab => CPU_Command_1(0),
	datac => CPU_Command_1(2),
	datad => CPU_Command_1(1),
	combout => \Check_Led[7]~0_combout\);

-- Location: LCCOMB_X33_Y16_N0
\Check_Led[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Check_Led[7]~1_combout\ = (!CPU_Command_1(4) & (\Check_Led[7]~0_combout\ & \CPU_Read_1_t[7]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CPU_Command_1(4),
	datab => \Check_Led[7]~0_combout\,
	datad => \CPU_Read_1_t[7]~0_combout\,
	combout => \Check_Led[7]~1_combout\);

-- Location: CLKCTRL_G6
\Check_Led[7]~1clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Check_Led[7]~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Check_Led[7]~1clkctrl_outclk\);

-- Location: LCCOMB_X32_Y19_N8
\Check_Led[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- Check_Led(1) = (GLOBAL(\Check_Led[7]~1clkctrl_outclk\) & (CPU_Command_2(1))) # (!GLOBAL(\Check_Led[7]~1clkctrl_outclk\) & ((Check_Led(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => CPU_Command_2(1),
	datac => Check_Led(1),
	datad => \Check_Led[7]~1clkctrl_outclk\,
	combout => Check_Led(1));

-- Location: LCCOMB_X31_Y19_N28
\CPU_Read_1_t[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- CPU_Read_1_t(1) = (GLOBAL(\CPU_Read_1_t[7]~1clkctrl_outclk\) & (Check_Led(1))) # (!GLOBAL(\CPU_Read_1_t[7]~1clkctrl_outclk\) & ((CPU_Read_1_t(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Check_Led(1),
	datac => \CPU_Read_1_t[7]~1clkctrl_outclk\,
	datad => CPU_Read_1_t(1),
	combout => CPU_Read_1_t(1));

-- Location: LCCOMB_X31_Y19_N14
\CPU_Read_1[1]~latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU_Read_1[1]~latch_combout\ = (\CPU_Set~input_o\ & (\CPU_Read_1[1]~latch_combout\)) # (!\CPU_Set~input_o\ & ((CPU_Read_1_t(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_Set~input_o\,
	datac => \CPU_Read_1[1]~latch_combout\,
	datad => CPU_Read_1_t(1),
	combout => \CPU_Read_1[1]~latch_combout\);

-- Location: FF_X31_Y19_N1
\CPU_Read_1[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CPU_RD~input_o\,
	asdata => \CPU_Read_1[1]~latch_combout\,
	clrn => \CPU_Set~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU_Read_1[1]~_emulated_q\);

-- Location: LCCOMB_X31_Y19_N0
\CPU_Read_1[1]~head_lut\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU_Read_1[1]~head_lut_combout\ = (\CPU_Set~input_o\ & ((\CPU_Read_1[1]~latch_combout\ $ (\CPU_Read_1[1]~_emulated_q\)))) # (!\CPU_Set~input_o\ & (CPU_Read_1_t(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CPU_Read_1_t(1),
	datab => \CPU_Read_1[1]~latch_combout\,
	datac => \CPU_Read_1[1]~_emulated_q\,
	datad => \CPU_Set~input_o\,
	combout => \CPU_Read_1[1]~head_lut_combout\);

-- Location: LCCOMB_X31_Y19_N12
\CPU_Read_1_t[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- CPU_Read_1_t(2) = (GLOBAL(\CPU_Read_1_t[7]~1clkctrl_outclk\) & (Check_Led(2))) # (!GLOBAL(\CPU_Read_1_t[7]~1clkctrl_outclk\) & ((CPU_Read_1_t(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Check_Led(2),
	datac => CPU_Read_1_t(2),
	datad => \CPU_Read_1_t[7]~1clkctrl_outclk\,
	combout => CPU_Read_1_t(2));

-- Location: LCCOMB_X31_Y19_N26
\CPU_Read_1[2]~latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU_Read_1[2]~latch_combout\ = (\CPU_Set~input_o\ & (\CPU_Read_1[2]~latch_combout\)) # (!\CPU_Set~input_o\ & ((CPU_Read_1_t(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_Set~input_o\,
	datac => \CPU_Read_1[2]~latch_combout\,
	datad => CPU_Read_1_t(2),
	combout => \CPU_Read_1[2]~latch_combout\);

-- Location: FF_X31_Y19_N19
\CPU_Read_1[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CPU_RD~input_o\,
	asdata => \CPU_Read_1[2]~latch_combout\,
	clrn => \CPU_Set~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU_Read_1[2]~_emulated_q\);

-- Location: LCCOMB_X31_Y19_N18
\CPU_Read_1[2]~head_lut\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU_Read_1[2]~head_lut_combout\ = (\CPU_Set~input_o\ & (\CPU_Read_1[2]~latch_combout\ $ (((\CPU_Read_1[2]~_emulated_q\))))) # (!\CPU_Set~input_o\ & (((CPU_Read_1_t(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_Read_1[2]~latch_combout\,
	datab => CPU_Read_1_t(2),
	datac => \CPU_Read_1[2]~_emulated_q\,
	datad => \CPU_Set~input_o\,
	combout => \CPU_Read_1[2]~head_lut_combout\);

-- Location: LCCOMB_X31_Y19_N16
\Check_Led[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- Check_Led(3) = (GLOBAL(\Check_Led[7]~1clkctrl_outclk\) & (CPU_Command_2(3))) # (!GLOBAL(\Check_Led[7]~1clkctrl_outclk\) & ((Check_Led(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CPU_Command_2(3),
	datab => Check_Led(3),
	datad => \Check_Led[7]~1clkctrl_outclk\,
	combout => Check_Led(3));

-- Location: LCCOMB_X31_Y19_N24
\CPU_Read_1_t[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- CPU_Read_1_t(3) = (GLOBAL(\CPU_Read_1_t[7]~1clkctrl_outclk\) & (Check_Led(3))) # (!GLOBAL(\CPU_Read_1_t[7]~1clkctrl_outclk\) & ((CPU_Read_1_t(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Check_Led(3),
	datac => CPU_Read_1_t(3),
	datad => \CPU_Read_1_t[7]~1clkctrl_outclk\,
	combout => CPU_Read_1_t(3));

-- Location: LCCOMB_X31_Y19_N30
\CPU_Read_1[3]~latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU_Read_1[3]~latch_combout\ = (\CPU_Set~input_o\ & (\CPU_Read_1[3]~latch_combout\)) # (!\CPU_Set~input_o\ & ((CPU_Read_1_t(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_Set~input_o\,
	datac => \CPU_Read_1[3]~latch_combout\,
	datad => CPU_Read_1_t(3),
	combout => \CPU_Read_1[3]~latch_combout\);

-- Location: FF_X31_Y19_N9
\CPU_Read_1[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CPU_RD~input_o\,
	asdata => \CPU_Read_1[3]~latch_combout\,
	clrn => \CPU_Set~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU_Read_1[3]~_emulated_q\);

-- Location: LCCOMB_X31_Y19_N8
\CPU_Read_1[3]~head_lut\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU_Read_1[3]~head_lut_combout\ = (\CPU_Set~input_o\ & (\CPU_Read_1[3]~latch_combout\ $ (((\CPU_Read_1[3]~_emulated_q\))))) # (!\CPU_Set~input_o\ & (((CPU_Read_1_t(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_Read_1[3]~latch_combout\,
	datab => CPU_Read_1_t(3),
	datac => \CPU_Read_1[3]~_emulated_q\,
	datad => \CPU_Set~input_o\,
	combout => \CPU_Read_1[3]~head_lut_combout\);

-- Location: FF_X33_Y16_N3
\CPU_Command_2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CPU_WR~input_o\,
	asdata => CPU_Command_1(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CPU_Command_2(4));

-- Location: LCCOMB_X32_Y19_N12
\Check_Led[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- Check_Led(4) = (GLOBAL(\Check_Led[7]~1clkctrl_outclk\) & (CPU_Command_2(4))) # (!GLOBAL(\Check_Led[7]~1clkctrl_outclk\) & ((Check_Led(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => CPU_Command_2(4),
	datac => \Check_Led[7]~1clkctrl_outclk\,
	datad => Check_Led(4),
	combout => Check_Led(4));

-- Location: LCCOMB_X31_Y19_N20
\CPU_Read_1_t[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- CPU_Read_1_t(4) = (GLOBAL(\CPU_Read_1_t[7]~1clkctrl_outclk\) & ((Check_Led(4)))) # (!GLOBAL(\CPU_Read_1_t[7]~1clkctrl_outclk\) & (CPU_Read_1_t(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => CPU_Read_1_t(4),
	datac => Check_Led(4),
	datad => \CPU_Read_1_t[7]~1clkctrl_outclk\,
	combout => CPU_Read_1_t(4));

-- Location: LCCOMB_X31_Y19_N22
\CPU_Read_1[4]~latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU_Read_1[4]~latch_combout\ = (\CPU_Set~input_o\ & (\CPU_Read_1[4]~latch_combout\)) # (!\CPU_Set~input_o\ & ((CPU_Read_1_t(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_Set~input_o\,
	datac => \CPU_Read_1[4]~latch_combout\,
	datad => CPU_Read_1_t(4),
	combout => \CPU_Read_1[4]~latch_combout\);

-- Location: FF_X31_Y19_N3
\CPU_Read_1[4]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CPU_RD~input_o\,
	asdata => \CPU_Read_1[4]~latch_combout\,
	clrn => \CPU_Set~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU_Read_1[4]~_emulated_q\);

-- Location: LCCOMB_X31_Y19_N2
\CPU_Read_1[4]~head_lut\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU_Read_1[4]~head_lut_combout\ = (\CPU_Set~input_o\ & (\CPU_Read_1[4]~latch_combout\ $ ((\CPU_Read_1[4]~_emulated_q\)))) # (!\CPU_Set~input_o\ & (((CPU_Read_1_t(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_Read_1[4]~latch_combout\,
	datab => \CPU_Set~input_o\,
	datac => \CPU_Read_1[4]~_emulated_q\,
	datad => CPU_Read_1_t(4),
	combout => \CPU_Read_1[4]~head_lut_combout\);

-- Location: LCCOMB_X30_Y19_N2
\CPU_Read_1_t[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- CPU_Read_1_t(5) = (GLOBAL(\CPU_Read_1_t[7]~1clkctrl_outclk\) & (Check_Led(5))) # (!GLOBAL(\CPU_Read_1_t[7]~1clkctrl_outclk\) & ((CPU_Read_1_t(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Check_Led(5),
	datac => CPU_Read_1_t(5),
	datad => \CPU_Read_1_t[7]~1clkctrl_outclk\,
	combout => CPU_Read_1_t(5));

-- Location: LCCOMB_X30_Y19_N4
\CPU_Read_1[5]~latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU_Read_1[5]~latch_combout\ = (\CPU_Set~input_o\ & (\CPU_Read_1[5]~latch_combout\)) # (!\CPU_Set~input_o\ & ((CPU_Read_1_t(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_Set~input_o\,
	datac => \CPU_Read_1[5]~latch_combout\,
	datad => CPU_Read_1_t(5),
	combout => \CPU_Read_1[5]~latch_combout\);

-- Location: LCCOMB_X30_Y19_N20
\CPU_Read_1[5]~_emulatedfeeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU_Read_1[5]~_emulatedfeeder_combout\ = \CPU_Read_1[5]~latch_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU_Read_1[5]~latch_combout\,
	combout => \CPU_Read_1[5]~_emulatedfeeder_combout\);

-- Location: FF_X30_Y19_N21
\CPU_Read_1[5]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CPU_RD~input_o\,
	d => \CPU_Read_1[5]~_emulatedfeeder_combout\,
	clrn => \CPU_Set~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU_Read_1[5]~_emulated_q\);

-- Location: LCCOMB_X30_Y19_N10
\CPU_Read_1[5]~head_lut\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU_Read_1[5]~head_lut_combout\ = (\CPU_Set~input_o\ & ((\CPU_Read_1[5]~latch_combout\ $ (\CPU_Read_1[5]~_emulated_q\)))) # (!\CPU_Set~input_o\ & (CPU_Read_1_t(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CPU_Read_1_t(5),
	datab => \CPU_Read_1[5]~latch_combout\,
	datac => \CPU_Read_1[5]~_emulated_q\,
	datad => \CPU_Set~input_o\,
	combout => \CPU_Read_1[5]~head_lut_combout\);

-- Location: LCCOMB_X31_Y19_N4
\Check_Led[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- Check_Led(6) = (GLOBAL(\Check_Led[7]~1clkctrl_outclk\) & (CPU_Command_2(6))) # (!GLOBAL(\Check_Led[7]~1clkctrl_outclk\) & ((Check_Led(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CPU_Command_2(6),
	datac => Check_Led(6),
	datad => \Check_Led[7]~1clkctrl_outclk\,
	combout => Check_Led(6));

-- Location: LCCOMB_X33_Y16_N12
\CPU_Read_1_t[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- CPU_Read_1_t(6) = (GLOBAL(\CPU_Read_1_t[7]~1clkctrl_outclk\) & ((Check_Led(6)))) # (!GLOBAL(\CPU_Read_1_t[7]~1clkctrl_outclk\) & (CPU_Read_1_t(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CPU_Read_1_t(6),
	datab => Check_Led(6),
	datad => \CPU_Read_1_t[7]~1clkctrl_outclk\,
	combout => CPU_Read_1_t(6));

-- Location: LCCOMB_X33_Y16_N2
\CPU_Read_1[6]~latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU_Read_1[6]~latch_combout\ = (\CPU_Set~input_o\ & (\CPU_Read_1[6]~latch_combout\)) # (!\CPU_Set~input_o\ & ((CPU_Read_1_t(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_Set~input_o\,
	datab => \CPU_Read_1[6]~latch_combout\,
	datad => CPU_Read_1_t(6),
	combout => \CPU_Read_1[6]~latch_combout\);

-- Location: FF_X33_Y16_N17
\CPU_Read_1[6]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CPU_RD~input_o\,
	asdata => \CPU_Read_1[6]~latch_combout\,
	clrn => \CPU_Set~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU_Read_1[6]~_emulated_q\);

-- Location: LCCOMB_X32_Y16_N12
\CPU_Read_1[6]~head_lut\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU_Read_1[6]~head_lut_combout\ = (\CPU_Set~input_o\ & (\CPU_Read_1[6]~_emulated_q\ $ (((\CPU_Read_1[6]~latch_combout\))))) # (!\CPU_Set~input_o\ & (((CPU_Read_1_t(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_Set~input_o\,
	datab => \CPU_Read_1[6]~_emulated_q\,
	datac => CPU_Read_1_t(6),
	datad => \CPU_Read_1[6]~latch_combout\,
	combout => \CPU_Read_1[6]~head_lut_combout\);

-- Location: LCCOMB_X30_Y19_N16
\CPU_Read_1_t[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- CPU_Read_1_t(7) = (GLOBAL(\CPU_Read_1_t[7]~1clkctrl_outclk\) & (Check_Led(7))) # (!GLOBAL(\CPU_Read_1_t[7]~1clkctrl_outclk\) & ((CPU_Read_1_t(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Check_Led(7),
	datab => CPU_Read_1_t(7),
	datad => \CPU_Read_1_t[7]~1clkctrl_outclk\,
	combout => CPU_Read_1_t(7));

-- Location: LCCOMB_X30_Y19_N8
\CPU_Read_1[7]~latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU_Read_1[7]~latch_combout\ = (\CPU_Set~input_o\ & (\CPU_Read_1[7]~latch_combout\)) # (!\CPU_Set~input_o\ & ((CPU_Read_1_t(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_Set~input_o\,
	datac => \CPU_Read_1[7]~latch_combout\,
	datad => CPU_Read_1_t(7),
	combout => \CPU_Read_1[7]~latch_combout\);

-- Location: FF_X30_Y19_N17
\CPU_Read_1[7]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CPU_RD~input_o\,
	asdata => \CPU_Read_1[7]~latch_combout\,
	clrn => \CPU_Set~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU_Read_1[7]~_emulated_q\);

-- Location: LCCOMB_X30_Y19_N18
\CPU_Read_1[7]~head_lut\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU_Read_1[7]~head_lut_combout\ = (\CPU_Set~input_o\ & (\CPU_Read_1[7]~_emulated_q\ $ ((\CPU_Read_1[7]~latch_combout\)))) # (!\CPU_Set~input_o\ & (((CPU_Read_1_t(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU_Read_1[7]~_emulated_q\,
	datab => \CPU_Set~input_o\,
	datac => \CPU_Read_1[7]~latch_combout\,
	datad => CPU_Read_1_t(7),
	combout => \CPU_Read_1[7]~head_lut_combout\);

-- Location: LCCOMB_X17_Y11_N2
\U3|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Add0~2_combout\ = (\U3|count_init\(1) & (!\U3|Add0~1\)) # (!\U3|count_init\(1) & ((\U3|Add0~1\) # (GND)))
-- \U3|Add0~3\ = CARRY((!\U3|Add0~1\) # (!\U3|count_init\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U3|count_init\(1),
	datad => VCC,
	cin => \U3|Add0~1\,
	combout => \U3|Add0~2_combout\,
	cout => \U3|Add0~3\);

-- Location: LCCOMB_X17_Y11_N28
\U3|Selector75~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector75~0_combout\ = (!\U3|present_state.INIT~q\ & \U3|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|present_state.INIT~q\,
	datad => \U3|Add0~2_combout\,
	combout => \U3|Selector75~0_combout\);

-- Location: IOIBUF_X34_Y2_N22
\RESETn~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESETn,
	o => \RESETn~input_o\);

-- Location: IOIBUF_X0_Y11_N8
\CLK48M~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK48M,
	o => \CLK48M~input_o\);

-- Location: PLL_1
\U0|U0|altpll_component|auto_generated|pll1\ : cycloneive_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 2,
	c0_initial => 1,
	c0_low => 2,
	c0_mode => "even",
	c0_ph => 0,
	c1_high => 12,
	c1_initial => 1,
	c1_low => 12,
	c1_mode => "even",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 4,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 9,
	clk0_phase_shift => "0",
	clk1_counter => "c1",
	clk1_divide_by => 8,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 3,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 20833,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 27,
	m => 9,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	pll_compensation_delay => 6795,
	self_reset_on_loss_lock => "off",
	simulation_type => "timing",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 289,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	fbin => \U0|U0|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \U0|U0|altpll_component|auto_generated|pll1_INCLK_bus\,
	locked => \U0|U0|altpll_component|auto_generated|wire_pll1_locked\,
	fbout => \U0|U0|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \U0|U0|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: LCCOMB_X2_Y2_N20
resetn_t : cycloneive_lcell_comb
-- Equation(s):
-- \resetn_t~combout\ = (!\U0|U0|altpll_component|auto_generated|wire_pll1_locked\) # (!\RESETn~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RESETn~input_o\,
	datad => \U0|U0|altpll_component|auto_generated|wire_pll1_locked\,
	combout => \resetn_t~combout\);

-- Location: CLKCTRL_G1
\resetn_t~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \resetn_t~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \resetn_t~clkctrl_outclk\);

-- Location: LCCOMB_X16_Y8_N10
\U3|col[0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|col[0]~20_combout\ = \U3|col\(0) $ (VCC)
-- \U3|col[0]~21\ = CARRY(\U3|col\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|col\(0),
	datad => VCC,
	combout => \U3|col[0]~20_combout\,
	cout => \U3|col[0]~21\);

-- Location: LCCOMB_X16_Y8_N14
\U3|col[2]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|col[2]~26_combout\ = (\U3|col\(2) & (\U3|col[1]~25\ $ (GND))) # (!\U3|col\(2) & (!\U3|col[1]~25\ & VCC))
-- \U3|col[2]~27\ = CARRY((\U3|col\(2) & !\U3|col[1]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U3|col\(2),
	datad => VCC,
	cin => \U3|col[1]~25\,
	combout => \U3|col[2]~26_combout\,
	cout => \U3|col[2]~27\);

-- Location: LCCOMB_X17_Y10_N10
\U3|Selector28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector28~0_combout\ = (!\U3|count_trcd\(1) & (!\U3|count_trcd\(0) & \U3|present_state.ACTIVEROW_TRCD~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|count_trcd\(1),
	datac => \U3|count_trcd\(0),
	datad => \U3|present_state.ACTIVEROW_TRCD~q\,
	combout => \U3|Selector28~0_combout\);

-- Location: LCCOMB_X17_Y10_N14
\U3|Selector30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector30~0_combout\ = (\U3|count_twr\(0) & (((!\U3|Selector25~0_combout\ & !\U3|present_state.WRITEDATA_TWR~q\)))) # (!\U3|count_twr\(0) & (!\U3|count_twr\(1) & ((\U3|present_state.WRITEDATA_TWR~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|count_twr\(1),
	datab => \U3|Selector25~0_combout\,
	datac => \U3|count_twr\(0),
	datad => \U3|present_state.WRITEDATA_TWR~q\,
	combout => \U3|Selector30~0_combout\);

-- Location: FF_X17_Y10_N15
\U3|count_twr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|Selector30~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|count_twr\(0));

-- Location: LCCOMB_X17_Y10_N22
\U3|Selector29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector29~0_combout\ = (\U3|present_state.WRITEDATA_TWR~q\ & ((\U3|count_twr\(0) $ (\U3|count_twr\(1))))) # (!\U3|present_state.WRITEDATA_TWR~q\ & (!\U3|Selector25~0_combout\ & ((\U3|count_twr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Selector25~0_combout\,
	datab => \U3|count_twr\(0),
	datac => \U3|count_twr\(1),
	datad => \U3|present_state.WRITEDATA_TWR~q\,
	combout => \U3|Selector29~0_combout\);

-- Location: FF_X17_Y10_N23
\U3|count_twr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|Selector29~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|count_twr\(1));

-- Location: LCCOMB_X17_Y10_N6
\U3|count_trcd[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|count_trcd[1]~2_combout\ = (\U3|present_state.WRITEDATA_TWR~q\ & ((\U3|count_twr\(0)) # (!\U3|count_twr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|count_twr\(0),
	datac => \U3|count_twr\(1),
	datad => \U3|present_state.WRITEDATA_TWR~q\,
	combout => \U3|count_trcd[1]~2_combout\);

-- Location: LCCOMB_X17_Y10_N0
\U3|Selector89~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector89~0_combout\ = (\U3|count_trcd[1]~2_combout\) # ((\U3|Equal10~2_combout\ & \U3|present_state.WRITEDATA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Equal10~2_combout\,
	datac => \U3|present_state.WRITEDATA~q\,
	datad => \U3|count_trcd[1]~2_combout\,
	combout => \U3|Selector89~0_combout\);

-- Location: FF_X17_Y10_N1
\U3|present_state.WRITEDATA_TWR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|Selector89~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|present_state.WRITEDATA_TWR~q\);

-- Location: LCCOMB_X17_Y10_N4
\U3|count_trcd[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|count_trcd[1]~3_combout\ = (!\U3|count_trcd[1]~2_combout\ & ((\U3|present_state.ACTIVEROW_TRCD~q\) # ((\U3|Selector25~0_combout\) # (\U3|present_state.WRITEDATA_TWR~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|count_trcd[1]~2_combout\,
	datab => \U3|present_state.ACTIVEROW_TRCD~q\,
	datac => \U3|Selector25~0_combout\,
	datad => \U3|present_state.WRITEDATA_TWR~q\,
	combout => \U3|count_trcd[1]~3_combout\);

-- Location: FF_X17_Y10_N11
\U3|count_trcd[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|Selector28~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	ena => \U3|count_trcd[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|count_trcd\(0));

-- Location: LCCOMB_X17_Y10_N18
\U3|Selector87~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector87~0_combout\ = (\U3|present_state.ACTIVEROW~q\) # ((\U3|present_state.ACTIVEROW_TRCD~q\ & ((\U3|count_trcd\(0)) # (!\U3|count_trcd\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|present_state.ACTIVEROW~q\,
	datab => \U3|count_trcd\(1),
	datac => \U3|present_state.ACTIVEROW_TRCD~q\,
	datad => \U3|count_trcd\(0),
	combout => \U3|Selector87~0_combout\);

-- Location: FF_X17_Y10_N19
\U3|present_state.ACTIVEROW_TRCD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|Selector87~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|present_state.ACTIVEROW_TRCD~q\);

-- Location: LCCOMB_X17_Y10_N8
\U3|Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector27~0_combout\ = (\U3|count_trcd\(0) & (!\U3|count_trcd\(1) & \U3|present_state.ACTIVEROW_TRCD~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|count_trcd\(0),
	datac => \U3|count_trcd\(1),
	datad => \U3|present_state.ACTIVEROW_TRCD~q\,
	combout => \U3|Selector27~0_combout\);

-- Location: FF_X17_Y10_N9
\U3|count_trcd[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|Selector27~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	ena => \U3|count_trcd[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|count_trcd\(1));

-- Location: LCCOMB_X17_Y10_N20
\U3|Selector90~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector90~0_combout\ = (!\U3|count_trcd\(0) & (\U3|count_trcd\(1) & \U3|present_state.ACTIVEROW_TRCD~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|count_trcd\(0),
	datac => \U3|count_trcd\(1),
	datad => \U3|present_state.ACTIVEROW_TRCD~q\,
	combout => \U3|Selector90~0_combout\);

-- Location: LCCOMB_X16_Y8_N26
\U3|col[8]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|col[8]~38_combout\ = (\U3|col\(8) & (\U3|col[7]~37\ $ (GND))) # (!\U3|col\(8) & (!\U3|col[7]~37\ & VCC))
-- \U3|col[8]~39\ = CARRY((\U3|col\(8) & !\U3|col[7]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|col\(8),
	datad => VCC,
	cin => \U3|col[7]~37\,
	combout => \U3|col[8]~38_combout\,
	cout => \U3|col[8]~39\);

-- Location: LCCOMB_X17_Y10_N24
\U3|Selector90~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector90~1_combout\ = (!\U3|writesdram_en~q\ & (\U3|readsdram_en~q\ & \U3|Selector90~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|writesdram_en~q\,
	datac => \U3|readsdram_en~q\,
	datad => \U3|Selector90~0_combout\,
	combout => \U3|Selector90~1_combout\);

-- Location: LCCOMB_X17_Y8_N2
\U3|Selector90~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector90~2_combout\ = (\U3|Selector90~1_combout\) # ((\U3|present_state.READDATA~q\ & ((!\U3|Equal10~2_combout\) # (!\U3|readsdram_en~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|readsdram_en~q\,
	datab => \U3|Selector90~1_combout\,
	datac => \U3|present_state.READDATA~q\,
	datad => \U3|Equal10~2_combout\,
	combout => \U3|Selector90~2_combout\);

-- Location: FF_X17_Y8_N3
\U3|present_state.READDATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|Selector90~2_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|present_state.READDATA~q\);

-- Location: LCCOMB_X16_Y8_N22
\U3|col[6]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|col[6]~34_combout\ = (\U3|col\(6) & (\U3|col[5]~33\ $ (GND))) # (!\U3|col\(6) & (!\U3|col[5]~33\ & VCC))
-- \U3|col[6]~35\ = CARRY((\U3|col\(6) & !\U3|col[5]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|col\(6),
	datad => VCC,
	cin => \U3|col[5]~33\,
	combout => \U3|col[6]~34_combout\,
	cout => \U3|col[6]~35\);

-- Location: FF_X16_Y8_N23
\U3|col[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|col[6]~34_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sclr => \U3|col[0]~22_combout\,
	ena => \U3|col[0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|col\(6));

-- Location: LCCOMB_X17_Y8_N20
\U3|Equal9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Equal9~1_combout\ = (!\U3|col\(5) & !\U3|col\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|col\(5),
	datad => \U3|col\(6),
	combout => \U3|Equal9~1_combout\);

-- Location: LCCOMB_X17_Y8_N22
\U3|Equal9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Equal9~2_combout\ = (\U3|Equal9~0_combout\ & (!\U3|col\(7) & (!\U3|col\(8) & \U3|Equal9~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Equal9~0_combout\,
	datab => \U3|col\(7),
	datac => \U3|col\(8),
	datad => \U3|Equal9~1_combout\,
	combout => \U3|Equal9~2_combout\);

-- Location: LCCOMB_X17_Y8_N26
\U3|Selector91~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector91~0_combout\ = (\U3|present_state.CAS~q\ & (((!\U3|Equal9~2_combout\) # (!\U3|col\(9))) # (!\U3|col\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|col\(0),
	datab => \U3|col\(9),
	datac => \U3|Equal9~2_combout\,
	datad => \U3|present_state.CAS~q\,
	combout => \U3|Selector91~0_combout\);

-- Location: LCCOMB_X17_Y8_N24
\U3|Selector91~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector91~1_combout\ = (\U3|Selector91~0_combout\) # ((\U3|readsdram_en~q\ & (\U3|present_state.READDATA~q\ & \U3|Equal10~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|readsdram_en~q\,
	datab => \U3|present_state.READDATA~q\,
	datac => \U3|Selector91~0_combout\,
	datad => \U3|Equal10~2_combout\,
	combout => \U3|Selector91~1_combout\);

-- Location: FF_X17_Y8_N25
\U3|present_state.CAS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|Selector91~1_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|present_state.CAS~q\);

-- Location: LCCOMB_X17_Y8_N14
\U3|WideOr21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|WideOr21~0_combout\ = (\U3|present_state.INIT~q\ & !\U3|present_state.CAS~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|present_state.INIT~q\,
	datad => \U3|present_state.CAS~q\,
	combout => \U3|WideOr21~0_combout\);

-- Location: LCCOMB_X17_Y8_N0
\U3|col[0]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|col[0]~23_combout\ = (\U3|present_state.READDATA~q\ & (\U3|readsdram_en~q\)) # (!\U3|present_state.READDATA~q\ & (((\U3|present_state.WRITEDATA~q\) # (!\U3|WideOr21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|readsdram_en~q\,
	datab => \U3|WideOr21~0_combout\,
	datac => \U3|present_state.WRITEDATA~q\,
	datad => \U3|present_state.READDATA~q\,
	combout => \U3|col[0]~23_combout\);

-- Location: FF_X16_Y8_N27
\U3|col[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|col[8]~38_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sclr => \U3|col[0]~22_combout\,
	ena => \U3|col[0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|col\(8));

-- Location: FF_X16_Y8_N11
\U3|col[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|col[0]~20_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sclr => \U3|col[0]~22_combout\,
	ena => \U3|col[0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|col\(0));

-- Location: LCCOMB_X17_Y8_N16
\U3|Equal10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Equal10~0_combout\ = (\U3|col\(1) & (\U3|col\(2) & (\U3|col\(3) & \U3|col\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|col\(1),
	datab => \U3|col\(2),
	datac => \U3|col\(3),
	datad => \U3|col\(0),
	combout => \U3|Equal10~0_combout\);

-- Location: LCCOMB_X17_Y8_N12
\U3|Equal10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Equal10~2_combout\ = (\U3|Equal10~1_combout\ & (!\U3|col\(9) & (\U3|col\(8) & \U3|Equal10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Equal10~1_combout\,
	datab => \U3|col\(9),
	datac => \U3|col\(8),
	datad => \U3|Equal10~0_combout\,
	combout => \U3|Equal10~2_combout\);

-- Location: LCCOMB_X17_Y10_N28
\U3|Selector88~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector88~0_combout\ = (\U3|writesdram_en~q\ & ((\U3|Selector90~0_combout\) # ((\U3|present_state.WRITEDATA~q\ & !\U3|Equal10~2_combout\)))) # (!\U3|writesdram_en~q\ & (((\U3|present_state.WRITEDATA~q\ & !\U3|Equal10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|writesdram_en~q\,
	datab => \U3|Selector90~0_combout\,
	datac => \U3|present_state.WRITEDATA~q\,
	datad => \U3|Equal10~2_combout\,
	combout => \U3|Selector88~0_combout\);

-- Location: FF_X17_Y10_N29
\U3|present_state.WRITEDATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|Selector88~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|present_state.WRITEDATA~q\);

-- Location: LCCOMB_X17_Y8_N4
\U3|col[0]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|col[0]~22_combout\ = ((\U3|present_state.WRITEDATA~q\ & ((\U3|Equal10~2_combout\))) # (!\U3|present_state.WRITEDATA~q\ & (\U3|Selector79~2_combout\))) # (!\U3|present_state.INIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|present_state.INIT~q\,
	datab => \U3|Selector79~2_combout\,
	datac => \U3|present_state.WRITEDATA~q\,
	datad => \U3|Equal10~2_combout\,
	combout => \U3|col[0]~22_combout\);

-- Location: FF_X16_Y8_N15
\U3|col[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|col[2]~26_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sclr => \U3|col[0]~22_combout\,
	ena => \U3|col[0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|col\(2));

-- Location: LCCOMB_X16_Y8_N16
\U3|col[3]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|col[3]~28_combout\ = (\U3|col\(3) & (!\U3|col[2]~27\)) # (!\U3|col\(3) & ((\U3|col[2]~27\) # (GND)))
-- \U3|col[3]~29\ = CARRY((!\U3|col[2]~27\) # (!\U3|col\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U3|col\(3),
	datad => VCC,
	cin => \U3|col[2]~27\,
	combout => \U3|col[3]~28_combout\,
	cout => \U3|col[3]~29\);

-- Location: FF_X16_Y8_N17
\U3|col[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|col[3]~28_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sclr => \U3|col[0]~22_combout\,
	ena => \U3|col[0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|col\(3));

-- Location: LCCOMB_X16_Y8_N18
\U3|col[4]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|col[4]~30_combout\ = (\U3|col\(4) & (\U3|col[3]~29\ $ (GND))) # (!\U3|col\(4) & (!\U3|col[3]~29\ & VCC))
-- \U3|col[4]~31\ = CARRY((\U3|col\(4) & !\U3|col[3]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U3|col\(4),
	datad => VCC,
	cin => \U3|col[3]~29\,
	combout => \U3|col[4]~30_combout\,
	cout => \U3|col[4]~31\);

-- Location: FF_X16_Y8_N19
\U3|col[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|col[4]~30_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sclr => \U3|col[0]~22_combout\,
	ena => \U3|col[0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|col\(4));

-- Location: LCCOMB_X16_Y8_N20
\U3|col[5]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|col[5]~32_combout\ = (\U3|col\(5) & (!\U3|col[4]~31\)) # (!\U3|col\(5) & ((\U3|col[4]~31\) # (GND)))
-- \U3|col[5]~33\ = CARRY((!\U3|col[4]~31\) # (!\U3|col\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U3|col\(5),
	datad => VCC,
	cin => \U3|col[4]~31\,
	combout => \U3|col[5]~32_combout\,
	cout => \U3|col[5]~33\);

-- Location: FF_X16_Y8_N21
\U3|col[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|col[5]~32_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sclr => \U3|col[0]~22_combout\,
	ena => \U3|col[0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|col\(5));

-- Location: LCCOMB_X16_Y8_N24
\U3|col[7]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|col[7]~36_combout\ = (\U3|col\(7) & (!\U3|col[6]~35\)) # (!\U3|col\(7) & ((\U3|col[6]~35\) # (GND)))
-- \U3|col[7]~37\ = CARRY((!\U3|col[6]~35\) # (!\U3|col\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U3|col\(7),
	datad => VCC,
	cin => \U3|col[6]~35\,
	combout => \U3|col[7]~36_combout\,
	cout => \U3|col[7]~37\);

-- Location: FF_X16_Y8_N25
\U3|col[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|col[7]~36_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sclr => \U3|col[0]~22_combout\,
	ena => \U3|col[0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|col\(7));

-- Location: LCCOMB_X16_Y8_N28
\U3|col[9]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|col[9]~40_combout\ = \U3|col[8]~39\ $ (\U3|col\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U3|col\(9),
	cin => \U3|col[8]~39\,
	combout => \U3|col[9]~40_combout\);

-- Location: FF_X16_Y8_N29
\U3|col[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|col[9]~40_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sclr => \U3|col[0]~22_combout\,
	ena => \U3|col[0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|col\(9));

-- Location: LCCOMB_X17_Y8_N18
\U3|Selector79~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector79~2_combout\ = (\U3|col\(0) & (\U3|col\(9) & (\U3|Equal9~2_combout\ & \U3|present_state.CAS~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|col\(0),
	datab => \U3|col\(9),
	datac => \U3|Equal9~2_combout\,
	datad => \U3|present_state.CAS~q\,
	combout => \U3|Selector79~2_combout\);

-- Location: LCCOMB_X17_Y9_N2
\U3|Selector79~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector79~3_combout\ = (\U3|Selector79~1_combout\) # ((\U3|Selector79~2_combout\) # ((!\U3|present_state.INIT~q\ & \U3|Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Selector79~1_combout\,
	datab => \U3|present_state.INIT~q\,
	datac => \U3|Equal1~4_combout\,
	datad => \U3|Selector79~2_combout\,
	combout => \U3|Selector79~3_combout\);

-- Location: FF_X17_Y9_N3
\U3|present_state.PRECHARGE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|Selector79~3_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|present_state.PRECHARGE~q\);

-- Location: LCCOMB_X17_Y9_N20
\U3|Selector80~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector80~0_combout\ = (\U3|present_state.PRECHARGE~q\) # ((\U3|present_state.PRECHARGE_TRP~q\ & ((\U3|count_trp\(0)) # (!\U3|count_trp\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|count_trp\(0),
	datab => \U3|count_trp\(1),
	datac => \U3|present_state.PRECHARGE_TRP~q\,
	datad => \U3|present_state.PRECHARGE~q\,
	combout => \U3|Selector80~0_combout\);

-- Location: FF_X17_Y9_N21
\U3|present_state.PRECHARGE_TRP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|Selector80~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|present_state.PRECHARGE_TRP~q\);

-- Location: LCCOMB_X17_Y9_N18
\U3|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector18~0_combout\ = (\U3|count_trp\(1) & (((!\U3|Selector25~0_combout\ & !\U3|present_state.PRECHARGE_TRP~q\)))) # (!\U3|count_trp\(1) & (\U3|count_trp\(0) & ((\U3|present_state.PRECHARGE_TRP~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|count_trp\(0),
	datab => \U3|Selector25~0_combout\,
	datac => \U3|count_trp\(1),
	datad => \U3|present_state.PRECHARGE_TRP~q\,
	combout => \U3|Selector18~0_combout\);

-- Location: FF_X17_Y9_N19
\U3|count_trp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|Selector18~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|count_trp\(1));

-- Location: LCCOMB_X17_Y9_N22
\U3|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector19~0_combout\ = (\U3|present_state.PRECHARGE_TRP~q\ & (((!\U3|count_trp\(0) & !\U3|count_trp\(1))))) # (!\U3|present_state.PRECHARGE_TRP~q\ & (!\U3|Selector25~0_combout\ & (\U3|count_trp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|present_state.PRECHARGE_TRP~q\,
	datab => \U3|Selector25~0_combout\,
	datac => \U3|count_trp\(0),
	datad => \U3|count_trp\(1),
	combout => \U3|Selector19~0_combout\);

-- Location: FF_X17_Y9_N23
\U3|count_trp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|Selector19~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|count_trp\(0));

-- Location: LCCOMB_X17_Y9_N30
\U3|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Equal2~0_combout\ = (!\U3|count_trp\(0) & \U3|count_trp\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|count_trp\(0),
	datad => \U3|count_trp\(1),
	combout => \U3|Equal2~0_combout\);

-- Location: LCCOMB_X18_Y7_N2
\U3|row[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|row[0]~14_combout\ = (\U3|row~13_combout\ & (\U3|row\(0) & VCC)) # (!\U3|row~13_combout\ & (\U3|row\(0) $ (VCC)))
-- \U3|row[0]~15\ = CARRY((!\U3|row~13_combout\ & \U3|row\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|row~13_combout\,
	datab => \U3|row\(0),
	datad => VCC,
	combout => \U3|row[0]~14_combout\,
	cout => \U3|row[0]~15\);

-- Location: LCCOMB_X18_Y7_N0
\U3|Selector52~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector52~0_combout\ = (\U3|row\(0) & \U3|present_state.INIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|row\(0),
	datad => \U3|present_state.INIT~q\,
	combout => \U3|Selector52~0_combout\);

-- Location: FF_X18_Y7_N3
\U3|row[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|row[0]~14_combout\,
	asdata => \U3|Selector52~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sload => \U3|ALT_INV_present_state.PRECHARGE_TRP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|row\(0));

-- Location: LCCOMB_X18_Y7_N4
\U3|row[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|row[1]~16_combout\ = (\U3|row\(1) & (!\U3|row[0]~15\)) # (!\U3|row\(1) & ((\U3|row[0]~15\) # (GND)))
-- \U3|row[1]~17\ = CARRY((!\U3|row[0]~15\) # (!\U3|row\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U3|row\(1),
	datad => VCC,
	cin => \U3|row[0]~15\,
	combout => \U3|row[1]~16_combout\,
	cout => \U3|row[1]~17\);

-- Location: LCCOMB_X19_Y7_N30
\U3|Selector51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector51~0_combout\ = (\U3|row\(1) & \U3|present_state.INIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|row\(1),
	datad => \U3|present_state.INIT~q\,
	combout => \U3|Selector51~0_combout\);

-- Location: FF_X18_Y7_N5
\U3|row[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|row[1]~16_combout\,
	asdata => \U3|Selector51~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sload => \U3|ALT_INV_present_state.PRECHARGE_TRP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|row\(1));

-- Location: LCCOMB_X18_Y7_N6
\U3|row[2]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|row[2]~18_combout\ = (\U3|row\(2) & (\U3|row[1]~17\ $ (GND))) # (!\U3|row\(2) & (!\U3|row[1]~17\ & VCC))
-- \U3|row[2]~19\ = CARRY((\U3|row\(2) & !\U3|row[1]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|row\(2),
	datad => VCC,
	cin => \U3|row[1]~17\,
	combout => \U3|row[2]~18_combout\,
	cout => \U3|row[2]~19\);

-- Location: LCCOMB_X18_Y7_N8
\U3|row[3]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|row[3]~20_combout\ = (\U3|row\(3) & (!\U3|row[2]~19\)) # (!\U3|row\(3) & ((\U3|row[2]~19\) # (GND)))
-- \U3|row[3]~21\ = CARRY((!\U3|row[2]~19\) # (!\U3|row\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U3|row\(3),
	datad => VCC,
	cin => \U3|row[2]~19\,
	combout => \U3|row[3]~20_combout\,
	cout => \U3|row[3]~21\);

-- Location: LCCOMB_X19_Y7_N20
\U3|Selector49~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector49~0_combout\ = (\U3|row\(3) & \U3|present_state.INIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|row\(3),
	datad => \U3|present_state.INIT~q\,
	combout => \U3|Selector49~0_combout\);

-- Location: FF_X18_Y7_N9
\U3|row[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|row[3]~20_combout\,
	asdata => \U3|Selector49~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sload => \U3|ALT_INV_present_state.PRECHARGE_TRP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|row\(3));

-- Location: LCCOMB_X18_Y7_N28
\U3|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Equal3~0_combout\ = (((!\U3|row\(0)) # (!\U3|row\(3))) # (!\U3|row\(1))) # (!\U3|row\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|row\(2),
	datab => \U3|row\(1),
	datac => \U3|row\(3),
	datad => \U3|row\(0),
	combout => \U3|Equal3~0_combout\);

-- Location: LCCOMB_X18_Y7_N10
\U3|row[4]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|row[4]~22_combout\ = (\U3|row\(4) & (\U3|row[3]~21\ $ (GND))) # (!\U3|row\(4) & (!\U3|row[3]~21\ & VCC))
-- \U3|row[4]~23\ = CARRY((\U3|row\(4) & !\U3|row[3]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|row\(4),
	datad => VCC,
	cin => \U3|row[3]~21\,
	combout => \U3|row[4]~22_combout\,
	cout => \U3|row[4]~23\);

-- Location: LCCOMB_X18_Y7_N14
\U3|row[6]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|row[6]~26_combout\ = (\U3|row\(6) & (\U3|row[5]~25\ $ (GND))) # (!\U3|row\(6) & (!\U3|row[5]~25\ & VCC))
-- \U3|row[6]~27\ = CARRY((\U3|row\(6) & !\U3|row[5]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U3|row\(6),
	datad => VCC,
	cin => \U3|row[5]~25\,
	combout => \U3|row[6]~26_combout\,
	cout => \U3|row[6]~27\);

-- Location: LCCOMB_X19_Y7_N22
\U3|Selector46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector46~0_combout\ = (\U3|row\(6) & \U3|present_state.INIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|row\(6),
	datad => \U3|present_state.INIT~q\,
	combout => \U3|Selector46~0_combout\);

-- Location: FF_X18_Y7_N15
\U3|row[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|row[6]~26_combout\,
	asdata => \U3|Selector46~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sload => \U3|ALT_INV_present_state.PRECHARGE_TRP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|row\(6));

-- Location: LCCOMB_X18_Y7_N16
\U3|row[7]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|row[7]~28_combout\ = (\U3|row\(7) & (!\U3|row[6]~27\)) # (!\U3|row\(7) & ((\U3|row[6]~27\) # (GND)))
-- \U3|row[7]~29\ = CARRY((!\U3|row[6]~27\) # (!\U3|row\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U3|row\(7),
	datad => VCC,
	cin => \U3|row[6]~27\,
	combout => \U3|row[7]~28_combout\,
	cout => \U3|row[7]~29\);

-- Location: LCCOMB_X19_Y7_N8
\U3|Selector45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector45~0_combout\ = (\U3|row\(7) & \U3|present_state.INIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|row\(7),
	datad => \U3|present_state.INIT~q\,
	combout => \U3|Selector45~0_combout\);

-- Location: FF_X18_Y7_N17
\U3|row[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|row[7]~28_combout\,
	asdata => \U3|Selector45~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sload => \U3|ALT_INV_present_state.PRECHARGE_TRP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|row\(7));

-- Location: LCCOMB_X18_Y7_N18
\U3|row[8]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|row[8]~30_combout\ = (\U3|row\(8) & (\U3|row[7]~29\ $ (GND))) # (!\U3|row\(8) & (!\U3|row[7]~29\ & VCC))
-- \U3|row[8]~31\ = CARRY((\U3|row\(8) & !\U3|row[7]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U3|row\(8),
	datad => VCC,
	cin => \U3|row[7]~29\,
	combout => \U3|row[8]~30_combout\,
	cout => \U3|row[8]~31\);

-- Location: LCCOMB_X19_Y7_N2
\U3|Selector44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector44~0_combout\ = (\U3|row\(8) & \U3|present_state.INIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|row\(8),
	datad => \U3|present_state.INIT~q\,
	combout => \U3|Selector44~0_combout\);

-- Location: FF_X18_Y7_N19
\U3|row[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|row[8]~30_combout\,
	asdata => \U3|Selector44~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sload => \U3|ALT_INV_present_state.PRECHARGE_TRP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|row\(8));

-- Location: LCCOMB_X18_Y7_N20
\U3|row[9]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|row[9]~32_combout\ = (\U3|row\(9) & (!\U3|row[8]~31\)) # (!\U3|row\(9) & ((\U3|row[8]~31\) # (GND)))
-- \U3|row[9]~33\ = CARRY((!\U3|row[8]~31\) # (!\U3|row\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U3|row\(9),
	datad => VCC,
	cin => \U3|row[8]~31\,
	combout => \U3|row[9]~32_combout\,
	cout => \U3|row[9]~33\);

-- Location: LCCOMB_X19_Y7_N12
\U3|Selector43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector43~0_combout\ = (\U3|row\(9) & \U3|present_state.INIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|row\(9),
	datad => \U3|present_state.INIT~q\,
	combout => \U3|Selector43~0_combout\);

-- Location: FF_X18_Y7_N21
\U3|row[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|row[9]~32_combout\,
	asdata => \U3|Selector43~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sload => \U3|ALT_INV_present_state.PRECHARGE_TRP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|row\(9));

-- Location: LCCOMB_X18_Y7_N22
\U3|row[10]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|row[10]~34_combout\ = (\U3|row\(10) & (\U3|row[9]~33\ $ (GND))) # (!\U3|row\(10) & (!\U3|row[9]~33\ & VCC))
-- \U3|row[10]~35\ = CARRY((\U3|row\(10) & !\U3|row[9]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|row\(10),
	datad => VCC,
	cin => \U3|row[9]~33\,
	combout => \U3|row[10]~34_combout\,
	cout => \U3|row[10]~35\);

-- Location: LCCOMB_X19_Y7_N10
\U3|Selector42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector42~0_combout\ = (\U3|row\(10) & \U3|present_state.INIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|row\(10),
	datad => \U3|present_state.INIT~q\,
	combout => \U3|Selector42~0_combout\);

-- Location: FF_X18_Y7_N23
\U3|row[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|row[10]~34_combout\,
	asdata => \U3|Selector42~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sload => \U3|ALT_INV_present_state.PRECHARGE_TRP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|row\(10));

-- Location: LCCOMB_X19_Y7_N26
\U3|Equal3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Equal3~2_combout\ = (((!\U3|row\(10)) # (!\U3|row\(8))) # (!\U3|row\(9))) # (!\U3|row\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|row\(11),
	datab => \U3|row\(9),
	datac => \U3|row\(8),
	datad => \U3|row\(10),
	combout => \U3|Equal3~2_combout\);

-- Location: LCCOMB_X19_Y7_N18
\U3|Selector48~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector48~0_combout\ = (\U3|row\(4) & \U3|present_state.INIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|row\(4),
	datad => \U3|present_state.INIT~q\,
	combout => \U3|Selector48~0_combout\);

-- Location: FF_X18_Y7_N11
\U3|row[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|row[4]~22_combout\,
	asdata => \U3|Selector48~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sload => \U3|ALT_INV_present_state.PRECHARGE_TRP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|row\(4));

-- Location: LCCOMB_X19_Y7_N24
\U3|Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Equal3~1_combout\ = (((!\U3|row\(4)) # (!\U3|row\(7))) # (!\U3|row\(6))) # (!\U3|row\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|row\(5),
	datab => \U3|row\(6),
	datac => \U3|row\(7),
	datad => \U3|row\(4),
	combout => \U3|Equal3~1_combout\);

-- Location: LCCOMB_X19_Y7_N28
\U3|Equal3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Equal3~3_combout\ = ((\U3|Equal3~0_combout\) # ((\U3|Equal3~2_combout\) # (\U3|Equal3~1_combout\))) # (!\U3|row\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|row\(12),
	datab => \U3|Equal3~0_combout\,
	datac => \U3|Equal3~2_combout\,
	datad => \U3|Equal3~1_combout\,
	combout => \U3|Equal3~3_combout\);

-- Location: LCCOMB_X17_Y9_N0
\U3|Selector77~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector77~1_combout\ = (\U3|Selector77~0_combout\ & ((\U3|init_precharge~q\) # ((\U3|Equal1~4_combout\ & !\U3|present_state.INIT~q\)))) # (!\U3|Selector77~0_combout\ & (\U3|Equal1~4_combout\ & ((!\U3|present_state.INIT~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Selector77~0_combout\,
	datab => \U3|Equal1~4_combout\,
	datac => \U3|init_precharge~q\,
	datad => \U3|present_state.INIT~q\,
	combout => \U3|Selector77~1_combout\);

-- Location: FF_X17_Y9_N1
\U3|init_precharge\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|Selector77~1_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|init_precharge~q\);

-- Location: LCCOMB_X16_Y7_N0
\U3|Selector38~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector38~2_combout\ = (\U3|present_state~34_combout\) # (((\U3|Equal3~3_combout\) # (\U3|init_precharge~q\)) # (!\U3|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|present_state~34_combout\,
	datab => \U3|Equal2~0_combout\,
	datac => \U3|Equal3~3_combout\,
	datad => \U3|init_precharge~q\,
	combout => \U3|Selector38~2_combout\);

-- Location: LCCOMB_X16_Y7_N22
\U3|Selector38~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector38~3_combout\ = (\U3|bank\(1) & ((\U3|present_state.PRECHARGE_TRP~q\ & ((\U3|Selector38~2_combout\))) # (!\U3|present_state.PRECHARGE_TRP~q\ & (\U3|present_state.INIT~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|present_state.PRECHARGE_TRP~q\,
	datab => \U3|bank\(1),
	datac => \U3|present_state.INIT~q\,
	datad => \U3|Selector38~2_combout\,
	combout => \U3|Selector38~3_combout\);

-- Location: LCCOMB_X17_Y14_N12
\U2|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector5~0_combout\ = ((!\U4|Full~q\ & (\U2|present_state.S1~q\ & !\U3|Empty~q\))) # (!\U2|Selector0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|Full~q\,
	datab => \U2|Selector0~1_combout\,
	datac => \U2|present_state.S1~q\,
	datad => \U3|Empty~q\,
	combout => \U2|Selector5~0_combout\);

-- Location: FF_X17_Y14_N13
\U2|present_state.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U2|Selector5~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|present_state.S1~q\);

-- Location: LCCOMB_X17_Y14_N8
\U2|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector7~0_combout\ = (!\U4|Full~q\ & ((\U2|present_state.S3~q\) # ((\U3|Empty~q\ & \U2|present_state.S1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|Full~q\,
	datab => \U3|Empty~q\,
	datac => \U2|present_state.S3~q\,
	datad => \U2|present_state.S1~q\,
	combout => \U2|Selector7~0_combout\);

-- Location: FF_X17_Y14_N9
\U2|present_state.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U2|Selector7~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|present_state.S3~q\);

-- Location: LCCOMB_X17_Y14_N2
\U2|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector6~0_combout\ = (!\U3|Empty~q\ & ((\U2|present_state.S2~q\) # ((\U4|Full~q\ & \U2|present_state.S1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|Full~q\,
	datab => \U3|Empty~q\,
	datac => \U2|present_state.S2~q\,
	datad => \U2|present_state.S1~q\,
	combout => \U2|Selector6~0_combout\);

-- Location: FF_X17_Y14_N3
\U2|present_state.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U2|Selector6~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|present_state.S2~q\);

-- Location: LCCOMB_X17_Y14_N14
\U2|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector2~0_combout\ = (\U3|Empty~q\ & (!\U2|present_state.S2~q\ & ((!\U4|Full~q\) # (!\U2|present_state.S3~q\)))) # (!\U3|Empty~q\ & (((!\U4|Full~q\)) # (!\U2|present_state.S3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Empty~q\,
	datab => \U2|present_state.S3~q\,
	datac => \U4|Full~q\,
	datad => \U2|present_state.S2~q\,
	combout => \U2|Selector2~0_combout\);

-- Location: LCCOMB_X17_Y14_N4
\U2|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector8~0_combout\ = (\U3|Empty~q\ & ((\U2|present_state.S2~q\) # ((\U4|Full~q\ & \U2|present_state.S1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Empty~q\,
	datab => \U2|present_state.S2~q\,
	datac => \U4|Full~q\,
	datad => \U2|present_state.S1~q\,
	combout => \U2|Selector8~0_combout\);

-- Location: LCCOMB_X17_Y14_N10
\U2|Selector8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector8~1_combout\ = (!\U4|Empty~q\ & (\U2|present_state.S4~q\ & !\U3|Full~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|Empty~q\,
	datac => \U2|present_state.S4~q\,
	datad => \U3|Full~q\,
	combout => \U2|Selector8~1_combout\);

-- Location: LCCOMB_X17_Y14_N26
\U2|Selector8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector8~2_combout\ = (\U2|Selector8~0_combout\) # ((\U2|Selector8~1_combout\) # ((\U4|Full~q\ & \U2|present_state.S3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|Full~q\,
	datab => \U2|Selector8~0_combout\,
	datac => \U2|present_state.S3~q\,
	datad => \U2|Selector8~1_combout\,
	combout => \U2|Selector8~2_combout\);

-- Location: FF_X17_Y14_N27
\U2|present_state.S4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U2|Selector8~2_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|present_state.S4~q\);

-- Location: LCCOMB_X17_Y8_N8
\U3|process_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|process_2~0_combout\ = (\U3|readsdram_en~q\ & (\U3|col\(9) $ (!\U3|Equal9~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|readsdram_en~q\,
	datab => \U3|col\(9),
	datac => \U3|Equal9~2_combout\,
	combout => \U3|process_2~0_combout\);

-- Location: FF_X17_Y8_N9
\U3|writemcufifo_t\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|process_2~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|writemcufifo_t~q\);

-- Location: LCCOMB_X17_Y15_N0
\writeextfifo_t~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \writeextfifo_t~0_combout\ = (\U2|wr_t\(3) & (\U2|wr_t\(2) & (\U3|writemcufifo_t~q\ & !\U2|wr_t\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|wr_t\(3),
	datab => \U2|wr_t\(2),
	datac => \U3|writemcufifo_t~q\,
	datad => \U2|wr_t\(1),
	combout => \writeextfifo_t~0_combout\);

-- Location: LCCOMB_X17_Y15_N30
\U5|U0|dcfifo_component|auto_generated|wrptr_g1p|_~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|_~5_combout\ = (\U5|U0|dcfifo_component|auto_generated|wrptr_g1p|_~2_combout\ & (!\U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~q\ & 
-- (!\U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~q\ & !\U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|_~2_combout\,
	datab => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~q\,
	datac => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~q\,
	datad => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~q\,
	combout => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|_~5_combout\);

-- Location: LCCOMB_X18_Y15_N28
\U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a8~0_combout\ = \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a8~q\ $ (((\U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a7~q\ & 
-- (\U5|U0|dcfifo_component|auto_generated|wrptr_g1p|_~5_combout\ & !\U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a7~q\,
	datab => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|_~5_combout\,
	datac => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a8~q\,
	datad => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~q\,
	combout => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a8~0_combout\);

-- Location: FF_X18_Y15_N29
\U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a8~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a8~q\);

-- Location: LCCOMB_X19_Y15_N4
\U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a9~0_combout\ = \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a9~q\ $ (((\U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a8~q\ & 
-- \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|_~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a8~q\,
	datac => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a9~q\,
	datad => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|_~4_combout\,
	combout => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a9~0_combout\);

-- Location: FF_X19_Y15_N5
\U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a9~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a9~q\);

-- Location: LCCOMB_X18_Y15_N0
\U5|U0|dcfifo_component|auto_generated|wrptr_g1p|_~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|_~7_combout\ = \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a11~q\ $ (\U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a8~q\ $ 
-- (\U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a9~q\ $ (\U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a10~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a11~q\,
	datab => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a8~q\,
	datac => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a9~q\,
	datad => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a10~q\,
	combout => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|_~7_combout\);

-- Location: FF_X18_Y15_N1
\U5|U0|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|_~7_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	ena => \U5|U0|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a\(2));

-- Location: LCCOMB_X17_Y15_N24
\U5|U0|dcfifo_component|auto_generated|wrptr_g1p|_~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|_~8_combout\ = \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a7~q\ $ (\U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~q\ $ 
-- (\U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~q\ $ (\U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a7~q\,
	datab => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~q\,
	datac => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~q\,
	datad => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~q\,
	combout => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|_~8_combout\);

-- Location: FF_X17_Y15_N25
\U5|U0|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|_~8_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	ena => \U5|U0|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a\(1));

-- Location: LCCOMB_X17_Y15_N4
\U5|U0|dcfifo_component|auto_generated|wrptr_g1p|_~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|_~6_combout\ = \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a\(0) $ (\U5|U0|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a\(2) $ 
-- (!\U5|U0|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a\(0),
	datac => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a\(2),
	datad => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a\(1),
	combout => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|_~6_combout\);

-- Location: FF_X17_Y15_N5
\U5|U0|dcfifo_component|auto_generated|wrptr_g1p|parity9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|_~6_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	ena => \U5|U0|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|parity9~q\);

-- Location: LCCOMB_X16_Y15_N30
\U5|U0|dcfifo_component|auto_generated|wrptr_g1p|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|_~0_combout\ = \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a0~q\ $ (\U5|U0|dcfifo_component|auto_generated|wrptr_g1p|parity9~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a0~q\,
	datad => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|parity9~q\,
	combout => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|_~0_combout\);

-- Location: FF_X16_Y15_N31
\U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|_~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	ena => \U5|U0|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a0~q\);

-- Location: LCCOMB_X16_Y15_N14
\U5|U0|dcfifo_component|auto_generated|wrptr_g1p|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|_~1_combout\ = (!\U5|U0|dcfifo_component|auto_generated|wrptr_g1p|parity9~q\ & (!\U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~q\ & 
-- (\U5|U0|dcfifo_component|auto_generated|valid_wrreq~0_combout\ & \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|parity9~q\,
	datab => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~q\,
	datac => \U5|U0|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	datad => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a0~q\,
	combout => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|_~1_combout\);

-- Location: LCCOMB_X16_Y15_N22
\U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~0_combout\ = \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~q\ $ (((\U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~q\ & 
-- (!\U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~q\ & \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|_~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~q\,
	datab => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~q\,
	datac => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~q\,
	datad => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|_~1_combout\,
	combout => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~0_combout\);

-- Location: FF_X16_Y15_N23
\U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~q\);

-- Location: LCCOMB_X17_Y15_N12
\U5|U0|dcfifo_component|auto_generated|wrptr_g1p|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|_~3_combout\ = (!\U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~q\ & (!\U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~q\ & 
-- (!\U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~q\ & \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|_~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~q\,
	datab => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~q\,
	datac => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~q\,
	datad => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|_~1_combout\,
	combout => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|_~3_combout\);

-- Location: LCCOMB_X17_Y15_N14
\U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~0_combout\ = \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~q\ $ (((\U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~q\ & 
-- \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|_~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~q\,
	datac => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~q\,
	datad => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|_~3_combout\,
	combout => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~0_combout\);

-- Location: FF_X17_Y15_N15
\U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~q\);

-- Location: LCCOMB_X18_Y15_N26
\U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a7~0_combout\ = \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a7~q\ $ (((\U5|U0|dcfifo_component|auto_generated|wrptr_g1p|_~3_combout\ & 
-- (!\U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~q\ & \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|_~3_combout\,
	datab => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~q\,
	datac => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a7~q\,
	datad => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~q\,
	combout => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a7~0_combout\);

-- Location: FF_X18_Y15_N27
\U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a7~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a7~q\);

-- Location: FF_X18_Y15_N23
\U5|U0|dcfifo_component|auto_generated|wrptr_g[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a7~q\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sload => VCC,
	ena => \U5|U0|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|U0|dcfifo_component|auto_generated|wrptr_g\(7));

-- Location: LCCOMB_X18_Y15_N16
\U5|U0|dcfifo_component|auto_generated|wrptr_g[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|U0|dcfifo_component|auto_generated|wrptr_g[6]~feeder_combout\ = \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~q\,
	combout => \U5|U0|dcfifo_component|auto_generated|wrptr_g[6]~feeder_combout\);

-- Location: FF_X18_Y15_N17
\U5|U0|dcfifo_component|auto_generated|wrptr_g[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U5|U0|dcfifo_component|auto_generated|wrptr_g[6]~feeder_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	ena => \U5|U0|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|U0|dcfifo_component|auto_generated|wrptr_g\(6));

-- Location: LCCOMB_X18_Y15_N22
\U5|U0|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|U0|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~2_combout\ = (!\U5|U0|dcfifo_component|auto_generated|wrptr_g\(7) & !\U5|U0|dcfifo_component|auto_generated|wrptr_g\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U5|U0|dcfifo_component|auto_generated|wrptr_g\(7),
	datad => \U5|U0|dcfifo_component|auto_generated|wrptr_g\(6),
	combout => \U5|U0|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~2_combout\);

-- Location: LCCOMB_X18_Y15_N4
\U5|U0|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|U0|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~0_combout\ = (!\U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~q\ & (!\U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a8~q\ & 
-- (!\U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a7~q\ & !\U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a9~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~q\,
	datab => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a8~q\,
	datac => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a7~q\,
	datad => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a9~q\,
	combout => \U5|U0|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~0_combout\);

-- Location: LCCOMB_X18_Y15_N24
\U5|U0|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|U0|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~1_combout\ = (\U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a11~q\ & (\U5|U0|dcfifo_component|auto_generated|valid_wrreq~0_combout\ & 
-- (\U5|U0|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~0_combout\ & \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a10~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a11~q\,
	datab => \U5|U0|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	datac => \U5|U0|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~0_combout\,
	datad => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a10~q\,
	combout => \U5|U0|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~1_combout\);

-- Location: LCCOMB_X18_Y15_N8
\U5|U0|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|U0|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~4_combout\ = (\U5|U0|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~1_combout\) # 
-- ((\U5|U0|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~3_combout\ & (!\U5|U0|dcfifo_component|auto_generated|valid_wrreq~0_combout\ & \U5|U0|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|U0|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~3_combout\,
	datab => \U5|U0|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	datac => \U5|U0|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~2_combout\,
	datad => \U5|U0|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~1_combout\,
	combout => \U5|U0|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~4_combout\);

-- Location: FF_X18_Y15_N9
\U5|U0|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U5|U0|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~4_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|U0|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux_reg~q\);

-- Location: LCCOMB_X12_Y17_N0
\U4|col[0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|col[0]~20_combout\ = \U4|col\(0) $ (VCC)
-- \U4|col[0]~21\ = CARRY(\U4|col\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|col\(0),
	datad => VCC,
	combout => \U4|col[0]~20_combout\,
	cout => \U4|col[0]~21\);

-- Location: LCCOMB_X12_Y17_N10
\U4|col[5]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|col[5]~32_combout\ = (\U4|col\(5) & (!\U4|col[4]~31\)) # (!\U4|col\(5) & ((\U4|col[4]~31\) # (GND)))
-- \U4|col[5]~33\ = CARRY((!\U4|col[4]~31\) # (!\U4|col\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U4|col\(5),
	datad => VCC,
	cin => \U4|col[4]~31\,
	combout => \U4|col[5]~32_combout\,
	cout => \U4|col[5]~33\);

-- Location: LCCOMB_X26_Y14_N12
\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|_~1_combout\ = \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|parity6~q\ $ (\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|parity6~q\,
	datac => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a0~q\,
	combout => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|_~1_combout\);

-- Location: FF_X26_Y14_N13
\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|_~1_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	ena => \U1|U0|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a0~q\);

-- Location: LCCOMB_X14_Y14_N0
\U4|Selector37~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector37~1_combout\ = (\U4|Selector88~0_combout\) # ((\U4|readcamerafifo_t~q\ & ((\U4|Selector37~0_combout\) # (\U4|present_state.ACTIVEROW_TRCD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|Selector37~0_combout\,
	datab => \U4|present_state.ACTIVEROW_TRCD~q\,
	datac => \U4|readcamerafifo_t~q\,
	datad => \U4|Selector88~0_combout\,
	combout => \U4|Selector37~1_combout\);

-- Location: FF_X14_Y14_N1
\U4|readcamerafifo_t\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|Selector37~1_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|readcamerafifo_t~q\);

-- Location: FF_X23_Y14_N3
\U4|ReadUSBFIFO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \U4|readcamerafifo_t~q\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|ReadUSBFIFO~q\);

-- Location: LCCOMB_X23_Y14_N2
\readusbfifo_t~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \readusbfifo_t~1_combout\ = (!\U2|wr_t\(1) & (\U2|wr_t\(0) & (\U4|ReadUSBFIFO~q\ & \U2|wr_t\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|wr_t\(1),
	datab => \U2|wr_t\(0),
	datac => \U4|ReadUSBFIFO~q\,
	datad => \U2|wr_t\(2),
	combout => \readusbfifo_t~1_combout\);

-- Location: LCCOMB_X23_Y14_N6
\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|_~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|_~5_combout\ = (\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|_~4_combout\ & (\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a0~q\ & ((\readusbfifo_t~0_combout\) # 
-- (\readusbfifo_t~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|_~4_combout\,
	datab => \readusbfifo_t~0_combout\,
	datac => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a0~q\,
	datad => \readusbfifo_t~1_combout\,
	combout => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|_~5_combout\);

-- Location: LCCOMB_X28_Y14_N0
\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a3~0_combout\ = \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a3~q\ $ (((\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|_~3_combout\ & 
-- \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|_~3_combout\,
	datab => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a2~q\,
	datac => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a3~q\,
	combout => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a3~0_combout\);

-- Location: FF_X28_Y14_N1
\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a3~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a3~q\);

-- Location: LCCOMB_X26_Y14_N22
\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|_~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|_~12_combout\ = \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a0~q\ $ (\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a1~q\ $ 
-- (\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a2~q\ $ (!\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a0~q\,
	datab => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a1~q\,
	datac => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a2~q\,
	datad => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a3~q\,
	combout => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|_~12_combout\);

-- Location: FF_X26_Y14_N23
\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|sub_parity7a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|_~12_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	ena => \U1|U0|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|sub_parity7a\(0));

-- Location: LCCOMB_X26_Y14_N26
\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a5~0_combout\ = \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a5~q\ $ (((\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a4~q\ & 
-- (\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|_~5_combout\ & !\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a4~q\,
	datab => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|_~5_combout\,
	datac => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a5~q\,
	datad => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a3~q\,
	combout => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a5~0_combout\);

-- Location: FF_X26_Y14_N27
\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a5~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a5~q\);

-- Location: LCCOMB_X26_Y14_N18
\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|_~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|_~6_combout\ = (\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|_~3_combout\ & (!\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a4~q\ & 
-- (!\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a2~q\ & !\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|_~3_combout\,
	datab => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a4~q\,
	datac => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a2~q\,
	datad => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a3~q\,
	combout => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|_~6_combout\);

-- Location: LCCOMB_X26_Y14_N8
\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a6~0_combout\ = \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a6~q\ $ (((\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a5~q\ & 
-- \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|_~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a5~q\,
	datac => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a6~q\,
	datad => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|_~6_combout\,
	combout => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a6~0_combout\);

-- Location: FF_X26_Y14_N9
\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a6~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a6~q\);

-- Location: LCCOMB_X26_Y14_N20
\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|_~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|_~11_combout\ = \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a7~q\ $ (\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a4~q\ $ 
-- (\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a5~q\ $ (\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a7~q\,
	datab => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a4~q\,
	datac => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a5~q\,
	datad => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a6~q\,
	combout => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|_~11_combout\);

-- Location: FF_X26_Y14_N21
\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|sub_parity7a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|_~11_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	ena => \U1|U0|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|sub_parity7a\(1));

-- Location: LCCOMB_X26_Y14_N16
\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|_~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|_~9_combout\ = \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|sub_parity7a\(2) $ (\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|sub_parity7a\(0) $ 
-- (!\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|sub_parity7a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|sub_parity7a\(2),
	datac => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|sub_parity7a\(0),
	datad => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|sub_parity7a\(1),
	combout => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|_~9_combout\);

-- Location: FF_X26_Y14_N17
\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|parity6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|_~9_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	ena => \U1|U0|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|parity6~q\);

-- Location: LCCOMB_X23_Y14_N14
\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a1~0_combout\ = \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a1~q\ $ (((!\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a0~q\ & 
-- (\U1|U0|dcfifo_component|auto_generated|valid_rdreq~0_combout\ & !\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|parity6~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a0~q\,
	datab => \U1|U0|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	datac => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a1~q\,
	datad => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|parity6~q\,
	combout => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a1~0_combout\);

-- Location: FF_X23_Y14_N15
\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a1~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a1~q\);

-- Location: IOIBUF_X32_Y0_N1
\FLAGC~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FLAGC,
	o => \FLAGC~input_o\);

-- Location: LCCOMB_X25_Y8_N4
\U2|process_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|process_1~0_combout\ = (!\U1|U0|dcfifo_component|auto_generated|op_2~20_combout\ & \FLAGC~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|U0|dcfifo_component|auto_generated|op_2~20_combout\,
	datad => \FLAGC~input_o\,
	combout => \U2|process_1~0_combout\);

-- Location: FF_X25_Y8_N5
\U2|SLRD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U2|process_1~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|SLRD~q\);

-- Location: LCCOMB_X26_Y16_N24
\U1|U0|dcfifo_component|auto_generated|rdptr_g[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|rdptr_g[5]~feeder_combout\ = \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a5~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a5~q\,
	combout => \U1|U0|dcfifo_component|auto_generated|rdptr_g[5]~feeder_combout\);

-- Location: FF_X26_Y16_N25
\U1|U0|dcfifo_component|auto_generated|rdptr_g[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U1|U0|dcfifo_component|auto_generated|rdptr_g[5]~feeder_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	ena => \U1|U0|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|rdptr_g\(5));

-- Location: LCCOMB_X24_Y15_N24
\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|_~2_combout\ = (\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|_~1_combout\ & (!\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~q\ & 
-- !\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|_~1_combout\,
	datac => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~q\,
	datad => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~q\,
	combout => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|_~2_combout\);

-- Location: LCCOMB_X24_Y15_N14
\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~0_combout\ = \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~q\ $ (((\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|_~2_combout\ & 
-- \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|_~2_combout\,
	datac => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~q\,
	datad => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~q\,
	combout => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~0_combout\);

-- Location: FF_X24_Y15_N15
\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~q\);

-- Location: LCCOMB_X24_Y15_N6
\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|_~3_combout\ = (!\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a7~q\ & (\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|_~2_combout\ & 
-- (!\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~q\ & !\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a7~q\,
	datab => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|_~2_combout\,
	datac => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~q\,
	datad => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~q\,
	combout => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|_~3_combout\);

-- Location: LCCOMB_X24_Y15_N10
\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|cntr_cout[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|cntr_cout[6]~0_combout\ = (\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|_~1_combout\ & (!\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~q\ & 
-- (!\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~q\ & !\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|_~1_combout\,
	datab => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~q\,
	datac => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~q\,
	datad => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~q\,
	combout => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|cntr_cout[6]~0_combout\);

-- Location: LCCOMB_X24_Y15_N4
\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a8~0_combout\ = \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a8~q\ $ (((\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a7~q\ & 
-- (!\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~q\ & \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|cntr_cout[6]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a7~q\,
	datab => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~q\,
	datac => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a8~q\,
	datad => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|cntr_cout[6]~0_combout\,
	combout => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a8~0_combout\);

-- Location: FF_X24_Y15_N5
\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a8~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a8~q\);

-- Location: LCCOMB_X24_Y14_N14
\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a9~0_combout\ = \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a9~q\ $ (((\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a8~q\ & 
-- \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|_~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a8~q\,
	datac => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a9~q\,
	datad => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|_~3_combout\,
	combout => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a9~0_combout\);

-- Location: FF_X24_Y14_N15
\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a9~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a9~q\);

-- Location: LCCOMB_X25_Y14_N20
\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a10~0_combout\ = \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a10~q\ $ (((!\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a8~q\ & 
-- (\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|_~3_combout\ & \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a9~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a8~q\,
	datab => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|_~3_combout\,
	datac => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a10~q\,
	datad => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a9~q\,
	combout => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a10~0_combout\);

-- Location: FF_X25_Y14_N21
\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a10~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a10~q\);

-- Location: LCCOMB_X25_Y14_N8
\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a11~0_combout\ = \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a11~q\ $ (((!\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a8~q\ & 
-- (\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|_~3_combout\ & !\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a9~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a8~q\,
	datab => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|_~3_combout\,
	datac => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a11~q\,
	datad => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a9~q\,
	combout => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a11~0_combout\);

-- Location: FF_X25_Y14_N9
\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a11~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a11~q\);

-- Location: LCCOMB_X25_Y14_N0
\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|_~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|_~7_combout\ = \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a8~q\ $ (\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a10~q\ $ 
-- (\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a11~q\ $ (\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a9~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a8~q\,
	datab => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a10~q\,
	datac => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a11~q\,
	datad => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a9~q\,
	combout => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|_~7_combout\);

-- Location: FF_X25_Y14_N1
\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|_~7_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	ena => \U1|U0|dcfifo_component|auto_generated|valid_wrreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a\(2));

-- Location: LCCOMB_X24_Y15_N26
\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a7~0_combout\ = \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a7~q\ $ (((!\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~q\ & 
-- (\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~q\ & \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|_~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~q\,
	datab => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~q\,
	datac => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a7~q\,
	datad => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|_~2_combout\,
	combout => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a7~0_combout\);

-- Location: FF_X24_Y15_N27
\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a7~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a7~q\);

-- Location: LCCOMB_X24_Y15_N22
\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|_~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|_~8_combout\ = \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~q\ $ (\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~q\ $ 
-- (\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a7~q\ $ (\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~q\,
	datab => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~q\,
	datac => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a7~q\,
	datad => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~q\,
	combout => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|_~8_combout\);

-- Location: FF_X24_Y15_N23
\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|_~8_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	ena => \U1|U0|dcfifo_component|auto_generated|valid_wrreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a\(1));

-- Location: LCCOMB_X26_Y15_N30
\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|_~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|_~9_combout\ = \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~q\ $ (\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~q\ $ 
-- (\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~q\ $ (!\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~q\,
	datab => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~q\,
	datac => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~q\,
	datad => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a0~q\,
	combout => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|_~9_combout\);

-- Location: FF_X26_Y15_N31
\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|_~9_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	ena => \U1|U0|dcfifo_component|auto_generated|valid_wrreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a\(0));

-- Location: LCCOMB_X24_Y15_N16
\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|_~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|_~6_combout\ = \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a\(2) $ (\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a\(1) $ 
-- (!\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a\(2),
	datac => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a\(1),
	datad => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a\(0),
	combout => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|_~6_combout\);

-- Location: FF_X24_Y15_N17
\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|parity9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|_~6_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	ena => \U1|U0|dcfifo_component|auto_generated|valid_wrreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|parity9~q\);

-- Location: LCCOMB_X26_Y15_N24
\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|_~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|_~5_combout\ = \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a0~q\ $ (\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|parity9~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a0~q\,
	datad => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|parity9~q\,
	combout => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|_~5_combout\);

-- Location: FF_X26_Y15_N25
\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|_~5_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	ena => \U1|U0|dcfifo_component|auto_generated|valid_wrreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a0~q\);

-- Location: LCCOMB_X25_Y15_N2
\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|_~1_combout\ = (\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|_~0_combout\ & (!\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~q\ & 
-- (!\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~q\ & \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|_~0_combout\,
	datab => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~q\,
	datac => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~q\,
	datad => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a0~q\,
	combout => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|_~1_combout\);

-- Location: LCCOMB_X24_Y15_N2
\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~0_combout\ = \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~q\ $ (((\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~q\ & 
-- (!\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~q\ & \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|_~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~q\,
	datab => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~q\,
	datac => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~q\,
	datad => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|_~1_combout\,
	combout => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~0_combout\);

-- Location: FF_X24_Y15_N3
\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~q\);

-- Location: LCCOMB_X26_Y15_N12
\U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~4_combout\ = (\U1|U0|dcfifo_component|auto_generated|rdptr_g\(4) & (\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~q\ & 
-- (\U1|U0|dcfifo_component|auto_generated|rdptr_g\(5) $ (!\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~q\)))) # (!\U1|U0|dcfifo_component|auto_generated|rdptr_g\(4) & (!\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~q\ & 
-- (\U1|U0|dcfifo_component|auto_generated|rdptr_g\(5) $ (!\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|rdptr_g\(4),
	datab => \U1|U0|dcfifo_component|auto_generated|rdptr_g\(5),
	datac => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~q\,
	datad => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~q\,
	combout => \U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~4_combout\);

-- Location: FF_X25_Y15_N19
\U1|U0|dcfifo_component|auto_generated|rdptr_g[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a1~q\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sload => VCC,
	ena => \U1|U0|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|rdptr_g\(1));

-- Location: LCCOMB_X25_Y15_N28
\U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~6_combout\ = (\U1|U0|dcfifo_component|auto_generated|rdptr_g\(0) & (!\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a0~q\ & 
-- (\U1|U0|dcfifo_component|auto_generated|rdptr_g\(1) $ (!\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~q\)))) # (!\U1|U0|dcfifo_component|auto_generated|rdptr_g\(0) & (\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a0~q\ & 
-- (\U1|U0|dcfifo_component|auto_generated|rdptr_g\(1) $ (!\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|rdptr_g\(0),
	datab => \U1|U0|dcfifo_component|auto_generated|rdptr_g\(1),
	datac => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~q\,
	datad => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a0~q\,
	combout => \U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~6_combout\);

-- Location: LCCOMB_X25_Y15_N4
\U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~7_combout\ = (\U2|SLRD~q\ & (\U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~6_combout\ & 
-- ((!\U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux_reg~q\) # (!\U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux_reg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux_reg~q\,
	datab => \U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux_reg~q\,
	datac => \U2|SLRD~q\,
	datad => \U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~6_combout\,
	combout => \U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~7_combout\);

-- Location: LCCOMB_X26_Y16_N30
\U1|U0|dcfifo_component|auto_generated|rdptr_g[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|rdptr_g[4]~feeder_combout\ = \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a4~q\,
	combout => \U1|U0|dcfifo_component|auto_generated|rdptr_g[4]~feeder_combout\);

-- Location: FF_X26_Y16_N31
\U1|U0|dcfifo_component|auto_generated|rdptr_g[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U1|U0|dcfifo_component|auto_generated|rdptr_g[4]~feeder_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	ena => \U1|U0|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|rdptr_g\(4));

-- Location: LCCOMB_X26_Y15_N8
\U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~0_combout\ = (\U1|U0|dcfifo_component|auto_generated|wrptr_g\(5) & (\U1|U0|dcfifo_component|auto_generated|rdptr_g\(5) & (\U1|U0|dcfifo_component|auto_generated|wrptr_g\(4) $ 
-- (!\U1|U0|dcfifo_component|auto_generated|rdptr_g\(4))))) # (!\U1|U0|dcfifo_component|auto_generated|wrptr_g\(5) & (!\U1|U0|dcfifo_component|auto_generated|rdptr_g\(5) & (\U1|U0|dcfifo_component|auto_generated|wrptr_g\(4) $ 
-- (!\U1|U0|dcfifo_component|auto_generated|rdptr_g\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|wrptr_g\(5),
	datab => \U1|U0|dcfifo_component|auto_generated|wrptr_g\(4),
	datac => \U1|U0|dcfifo_component|auto_generated|rdptr_g\(4),
	datad => \U1|U0|dcfifo_component|auto_generated|rdptr_g\(5),
	combout => \U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~0_combout\);

-- Location: LCCOMB_X26_Y15_N16
\U1|U0|dcfifo_component|auto_generated|wrptr_g[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|wrptr_g[0]~0_combout\ = !\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a0~q\,
	combout => \U1|U0|dcfifo_component|auto_generated|wrptr_g[0]~0_combout\);

-- Location: FF_X26_Y15_N17
\U1|U0|dcfifo_component|auto_generated|wrptr_g[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U1|U0|dcfifo_component|auto_generated|wrptr_g[0]~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	ena => \U1|U0|dcfifo_component|auto_generated|valid_wrreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|wrptr_g\(0));

-- Location: LCCOMB_X26_Y15_N18
\U1|U0|dcfifo_component|auto_generated|wrptr_g[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|wrptr_g[1]~feeder_combout\ = \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~q\,
	combout => \U1|U0|dcfifo_component|auto_generated|wrptr_g[1]~feeder_combout\);

-- Location: FF_X26_Y15_N19
\U1|U0|dcfifo_component|auto_generated|wrptr_g[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U1|U0|dcfifo_component|auto_generated|wrptr_g[1]~feeder_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	ena => \U1|U0|dcfifo_component|auto_generated|valid_wrreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|wrptr_g\(1));

-- Location: LCCOMB_X25_Y15_N18
\U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~2_combout\ = (\U1|U0|dcfifo_component|auto_generated|rdptr_g\(0) & (\U1|U0|dcfifo_component|auto_generated|wrptr_g\(0) & (\U1|U0|dcfifo_component|auto_generated|rdptr_g\(1) $ 
-- (!\U1|U0|dcfifo_component|auto_generated|wrptr_g\(1))))) # (!\U1|U0|dcfifo_component|auto_generated|rdptr_g\(0) & (!\U1|U0|dcfifo_component|auto_generated|wrptr_g\(0) & (\U1|U0|dcfifo_component|auto_generated|rdptr_g\(1) $ 
-- (!\U1|U0|dcfifo_component|auto_generated|wrptr_g\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|rdptr_g\(0),
	datab => \U1|U0|dcfifo_component|auto_generated|wrptr_g\(0),
	datac => \U1|U0|dcfifo_component|auto_generated|rdptr_g\(1),
	datad => \U1|U0|dcfifo_component|auto_generated|wrptr_g\(1),
	combout => \U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~2_combout\);

-- Location: LCCOMB_X26_Y15_N2
\U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~3_combout\ = (\U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~1_combout\ & (!\U1|U0|dcfifo_component|auto_generated|valid_wrreq~combout\ & 
-- (\U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~0_combout\ & \U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~1_combout\,
	datab => \U1|U0|dcfifo_component|auto_generated|valid_wrreq~combout\,
	datac => \U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~0_combout\,
	datad => \U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~2_combout\,
	combout => \U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~3_combout\);

-- Location: LCCOMB_X25_Y15_N16
\U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~8_combout\ = (\U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~3_combout\) # 
-- ((\U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~5_combout\ & (\U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~4_combout\ & 
-- \U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~5_combout\,
	datab => \U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~4_combout\,
	datac => \U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~7_combout\,
	datad => \U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~3_combout\,
	combout => \U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~8_combout\);

-- Location: FF_X25_Y15_N17
\U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~8_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux_reg~q\);

-- Location: LCCOMB_X25_Y15_N0
\U1|U0|dcfifo_component|auto_generated|valid_wrreq\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|valid_wrreq~combout\ = (\U2|SLRD~q\ & ((!\U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux_reg~q\) # (!\U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux_reg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux_reg~q\,
	datac => \U2|SLRD~q\,
	datad => \U1|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux_reg~q\,
	combout => \U1|U0|dcfifo_component|auto_generated|valid_wrreq~combout\);

-- Location: LCCOMB_X26_Y15_N14
\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~0_combout\ = \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~q\ $ (((!\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|parity9~q\ & 
-- (\U1|U0|dcfifo_component|auto_generated|valid_wrreq~combout\ & !\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|parity9~q\,
	datab => \U1|U0|dcfifo_component|auto_generated|valid_wrreq~combout\,
	datac => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~q\,
	datad => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a0~q\,
	combout => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~0_combout\);

-- Location: FF_X26_Y15_N15
\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~q\);

-- Location: LCCOMB_X25_Y15_N20
\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~0_combout\ = \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~q\ $ (((\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|_~0_combout\ & 
-- (\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~q\ & \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|_~0_combout\,
	datab => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~q\,
	datac => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~q\,
	datad => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a0~q\,
	combout => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~0_combout\);

-- Location: FF_X25_Y15_N21
\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~q\);

-- Location: LCCOMB_X26_Y15_N4
\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~0_combout\ = \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~q\ $ (((\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|_~4_combout\ & 
-- \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|_~4_combout\,
	datac => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~q\,
	datad => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~q\,
	combout => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~0_combout\);

-- Location: FF_X26_Y15_N5
\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~q\);

-- Location: LCCOMB_X26_Y15_N22
\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~0_combout\ = \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~q\ $ (((\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|_~4_combout\ & 
-- (\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~q\ & !\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|_~4_combout\,
	datab => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~q\,
	datac => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~q\,
	datad => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~q\,
	combout => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~0_combout\);

-- Location: FF_X26_Y15_N23
\U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~q\);

-- Location: FF_X26_Y15_N1
\U1|U0|dcfifo_component|auto_generated|wrptr_g[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~q\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sload => VCC,
	ena => \U1|U0|dcfifo_component|auto_generated|valid_wrreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|wrptr_g\(4));

-- Location: LCCOMB_X26_Y16_N20
\U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g[4]~feeder_combout\ = \U1|U0|dcfifo_component|auto_generated|wrptr_g\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U0|dcfifo_component|auto_generated|wrptr_g\(4),
	combout => \U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g[4]~feeder_combout\);

-- Location: FF_X26_Y16_N21
\U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g[4]~feeder_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g\(4));

-- Location: LCCOMB_X26_Y15_N10
\U1|U0|dcfifo_component|auto_generated|wrptr_g[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|wrptr_g[5]~feeder_combout\ = \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~q\,
	combout => \U1|U0|dcfifo_component|auto_generated|wrptr_g[5]~feeder_combout\);

-- Location: FF_X26_Y15_N11
\U1|U0|dcfifo_component|auto_generated|wrptr_g[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U1|U0|dcfifo_component|auto_generated|wrptr_g[5]~feeder_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	ena => \U1|U0|dcfifo_component|auto_generated|valid_wrreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|wrptr_g\(5));

-- Location: LCCOMB_X26_Y16_N26
\U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g[5]~feeder_combout\ = \U1|U0|dcfifo_component|auto_generated|wrptr_g\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U0|dcfifo_component|auto_generated|wrptr_g\(5),
	combout => \U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g[5]~feeder_combout\);

-- Location: FF_X26_Y16_N27
\U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g[5]~feeder_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g\(5));

-- Location: LCCOMB_X26_Y16_N12
\U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~2_combout\ = (\U1|U0|dcfifo_component|auto_generated|rdptr_g\(4) & (\U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g\(4) & 
-- (\U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g\(5) $ (!\U1|U0|dcfifo_component|auto_generated|rdptr_g\(5))))) # (!\U1|U0|dcfifo_component|auto_generated|rdptr_g\(4) & (!\U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g\(4) & 
-- (\U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g\(5) $ (!\U1|U0|dcfifo_component|auto_generated|rdptr_g\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|rdptr_g\(4),
	datab => \U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g\(4),
	datac => \U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g\(5),
	datad => \U1|U0|dcfifo_component|auto_generated|rdptr_g\(5),
	combout => \U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~2_combout\);

-- Location: LCCOMB_X23_Y14_N28
\U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~3_combout\ = (\U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~2_combout\ & (((!\readusbfifo_t~0_combout\ & !\readusbfifo_t~1_combout\)) # 
-- (!\U1|U0|dcfifo_component|auto_generated|valid_rdreq~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|valid_rdreq~1_combout\,
	datab => \readusbfifo_t~0_combout\,
	datac => \U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~2_combout\,
	datad => \readusbfifo_t~1_combout\,
	combout => \U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~3_combout\);

-- Location: LCCOMB_X26_Y15_N20
\U1|U0|dcfifo_component|auto_generated|wrptr_g[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|wrptr_g[2]~feeder_combout\ = \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~q\,
	combout => \U1|U0|dcfifo_component|auto_generated|wrptr_g[2]~feeder_combout\);

-- Location: FF_X26_Y15_N21
\U1|U0|dcfifo_component|auto_generated|wrptr_g[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U1|U0|dcfifo_component|auto_generated|wrptr_g[2]~feeder_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	ena => \U1|U0|dcfifo_component|auto_generated|valid_wrreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|wrptr_g\(2));

-- Location: LCCOMB_X26_Y15_N28
\U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g[2]~feeder_combout\ = \U1|U0|dcfifo_component|auto_generated|wrptr_g\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U0|dcfifo_component|auto_generated|wrptr_g\(2),
	combout => \U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g[2]~feeder_combout\);

-- Location: FF_X26_Y15_N29
\U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g[2]~feeder_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g\(2));

-- Location: LCCOMB_X25_Y15_N14
\U1|U0|dcfifo_component|auto_generated|rdptr_g[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|rdptr_g[2]~feeder_combout\ = \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a2~q\,
	combout => \U1|U0|dcfifo_component|auto_generated|rdptr_g[2]~feeder_combout\);

-- Location: FF_X25_Y15_N15
\U1|U0|dcfifo_component|auto_generated|rdptr_g[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U1|U0|dcfifo_component|auto_generated|rdptr_g[2]~feeder_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	ena => \U1|U0|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|rdptr_g\(2));

-- Location: FF_X26_Y15_N27
\U1|U0|dcfifo_component|auto_generated|wrptr_g[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~q\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sload => VCC,
	ena => \U1|U0|dcfifo_component|auto_generated|valid_wrreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|wrptr_g\(3));

-- Location: FF_X26_Y15_N7
\U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => \U1|U0|dcfifo_component|auto_generated|wrptr_g\(3),
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g\(3));

-- Location: LCCOMB_X25_Y15_N8
\U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~0_combout\ = (\U1|U0|dcfifo_component|auto_generated|rdptr_g\(3) & (\U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g\(3) & 
-- (\U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g\(2) $ (!\U1|U0|dcfifo_component|auto_generated|rdptr_g\(2))))) # (!\U1|U0|dcfifo_component|auto_generated|rdptr_g\(3) & (!\U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g\(3) & 
-- (\U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g\(2) $ (!\U1|U0|dcfifo_component|auto_generated|rdptr_g\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|rdptr_g\(3),
	datab => \U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g\(2),
	datac => \U1|U0|dcfifo_component|auto_generated|rdptr_g\(2),
	datad => \U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g\(3),
	combout => \U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~0_combout\);

-- Location: FF_X25_Y14_N27
\U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => \U1|U0|dcfifo_component|auto_generated|wrptr_g\(1),
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g\(1));

-- Location: LCCOMB_X25_Y14_N16
\U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g[0]~feeder_combout\ = \U1|U0|dcfifo_component|auto_generated|wrptr_g\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U0|dcfifo_component|auto_generated|wrptr_g\(0),
	combout => \U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g[0]~feeder_combout\);

-- Location: FF_X25_Y14_N17
\U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g[0]~feeder_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g\(0));

-- Location: LCCOMB_X24_Y14_N2
\U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~6_combout\ = (\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a1~q\ & (\U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g\(1) & 
-- (\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a0~q\ $ (\U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g\(0))))) # (!\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a1~q\ & 
-- (!\U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g\(1) & (\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a0~q\ $ (\U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a1~q\,
	datab => \U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g\(1),
	datac => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a0~q\,
	datad => \U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g\(0),
	combout => \U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~6_combout\);

-- Location: LCCOMB_X25_Y15_N10
\U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~5_combout\ = (\U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g\(3) & (\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a3~q\ & 
-- (\U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g\(2) $ (!\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a2~q\)))) # (!\U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g\(3) & 
-- (!\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a3~q\ & (\U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g\(2) $ (!\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g\(3),
	datab => \U1|U0|dcfifo_component|auto_generated|delayed_wrptr_g\(2),
	datac => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a2~q\,
	datad => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a3~q\,
	combout => \U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~5_combout\);

-- Location: LCCOMB_X24_Y14_N28
\U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~7_combout\ = (\U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~4_combout\ & 
-- (\U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~6_combout\ & (\U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~5_combout\ & \U1|U0|dcfifo_component|auto_generated|valid_rdreq~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~4_combout\,
	datab => \U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~6_combout\,
	datac => \U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~5_combout\,
	datad => \U1|U0|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	combout => \U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~7_combout\);

-- Location: LCCOMB_X23_Y14_N8
\U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~8_combout\ = (!\U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~7_combout\ & 
-- (((!\U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~0_combout\) # (!\U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~3_combout\)) # 
-- (!\U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~1_combout\,
	datab => \U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~3_combout\,
	datac => \U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~0_combout\,
	datad => \U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~7_combout\,
	combout => \U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~8_combout\);

-- Location: FF_X23_Y14_N9
\U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_aeb\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~8_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_aeb~q\);

-- Location: LCCOMB_X23_Y14_N26
\U1|U0|dcfifo_component|auto_generated|valid_rdreq~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|valid_rdreq~1_combout\ = (\U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_msb_aeb~q\) # (\U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_aeb~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_msb_aeb~q\,
	datac => \U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_aeb~q\,
	combout => \U1|U0|dcfifo_component|auto_generated|valid_rdreq~1_combout\);

-- Location: LCCOMB_X23_Y14_N18
\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|cntr_cout[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|cntr_cout[0]~0_combout\ = (!\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|parity6~q\ & (\U1|U0|dcfifo_component|auto_generated|valid_rdreq~1_combout\ & ((\readusbfifo_t~1_combout\) # 
-- (\readusbfifo_t~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|parity6~q\,
	datab => \readusbfifo_t~1_combout\,
	datac => \U1|U0|dcfifo_component|auto_generated|valid_rdreq~1_combout\,
	datad => \readusbfifo_t~0_combout\,
	combout => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|cntr_cout[0]~0_combout\);

-- Location: LCCOMB_X23_Y14_N0
\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a2~0_combout\ = \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a2~q\ $ (((\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a0~q\ & 
-- (\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a1~q\ & \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|cntr_cout[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a0~q\,
	datab => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a1~q\,
	datac => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a2~q\,
	datad => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|cntr_cout[0]~0_combout\,
	combout => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a2~0_combout\);

-- Location: FF_X23_Y14_N1
\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a2~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a2~q\);

-- Location: LCCOMB_X28_Y14_N22
\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a4~0_combout\ = \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a4~q\ $ (((\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|_~3_combout\ & 
-- (!\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a2~q\ & \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|_~3_combout\,
	datab => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a2~q\,
	datac => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a4~q\,
	datad => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a3~q\,
	combout => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a4~0_combout\);

-- Location: FF_X28_Y14_N23
\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a4~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a4~q\);

-- Location: LCCOMB_X26_Y14_N0
\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a8~0_combout\ = ((\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a4~q\) # ((\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a5~q\) # 
-- (\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a3~q\))) # (!\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a7~q\,
	datab => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a4~q\,
	datac => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a5~q\,
	datad => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a3~q\,
	combout => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a8~0_combout\);

-- Location: LCCOMB_X26_Y14_N4
\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a8~1_combout\ = \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a8~q\ $ (((!\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a6~q\ & 
-- (\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|_~5_combout\ & !\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a6~q\,
	datab => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|_~5_combout\,
	datac => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a8~q\,
	datad => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a8~0_combout\,
	combout => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a8~1_combout\);

-- Location: FF_X26_Y14_N5
\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a8~1_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a8~q\);

-- Location: LCCOMB_X26_Y14_N2
\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|_~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|_~7_combout\ = (!\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a7~q\ & (!\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a4~q\ & 
-- (!\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a2~q\ & !\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a7~q\,
	datab => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a4~q\,
	datac => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a2~q\,
	datad => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a3~q\,
	combout => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|_~7_combout\);

-- Location: LCCOMB_X26_Y14_N28
\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|_~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|_~8_combout\ = (\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|_~3_combout\ & (\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|_~7_combout\ & 
-- (!\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a5~q\ & !\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|_~3_combout\,
	datab => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|_~7_combout\,
	datac => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a5~q\,
	datad => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a6~q\,
	combout => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|_~8_combout\);

-- Location: LCCOMB_X26_Y14_N24
\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a10~0_combout\ = \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a10~q\ $ (((\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a9~q\ & 
-- (!\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a8~q\ & \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|_~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a9~q\,
	datab => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a8~q\,
	datac => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a10~q\,
	datad => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|_~8_combout\,
	combout => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a10~0_combout\);

-- Location: FF_X26_Y14_N25
\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a10~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a10~q\);

-- Location: FF_X24_Y14_N9
\U1|U0|dcfifo_component|auto_generated|rdptr_g[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a10~q\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sload => VCC,
	ena => \U1|U0|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|rdptr_g\(10));

-- Location: FF_X23_Y16_N25
\U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => \U1|U0|dcfifo_component|auto_generated|rdptr_g\(10),
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a\(10));

-- Location: LCCOMB_X26_Y14_N6
\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a11~0_combout\ = \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a11~q\ $ (((!\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a9~q\ & 
-- (!\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a8~q\ & \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|_~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a9~q\,
	datab => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a8~q\,
	datac => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a11~q\,
	datad => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|_~8_combout\,
	combout => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a11~0_combout\);

-- Location: FF_X26_Y14_N7
\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a11~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a11~q\);

-- Location: FF_X24_Y14_N31
\U1|U0|dcfifo_component|auto_generated|rdptr_g[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a11~q\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sload => VCC,
	ena => \U1|U0|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|rdptr_g\(11));

-- Location: FF_X24_Y14_N21
\U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => \U1|U0|dcfifo_component|auto_generated|rdptr_g\(11),
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a\(11));

-- Location: LCCOMB_X24_Y16_N24
\U1|U0|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor10~combout\ = \U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a\(10) $ (\U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a\(10),
	datac => \U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a\(11),
	combout => \U1|U0|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor10~combout\);

-- Location: FF_X24_Y16_N25
\U1|U0|dcfifo_component|auto_generated|ws_brp|dffe12a[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U1|U0|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor10~combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|ws_brp|dffe12a\(10));

-- Location: FF_X25_Y14_N29
\U1|U0|dcfifo_component|auto_generated|wrptr_g[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a11~q\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sload => VCC,
	ena => \U1|U0|dcfifo_component|auto_generated|valid_wrreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|wrptr_g\(11));

-- Location: LCCOMB_X25_Y14_N22
\U1|U0|dcfifo_component|auto_generated|wrptr_g[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|wrptr_g[10]~feeder_combout\ = \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a10~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a10~q\,
	combout => \U1|U0|dcfifo_component|auto_generated|wrptr_g[10]~feeder_combout\);

-- Location: FF_X25_Y14_N23
\U1|U0|dcfifo_component|auto_generated|wrptr_g[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U1|U0|dcfifo_component|auto_generated|wrptr_g[10]~feeder_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	ena => \U1|U0|dcfifo_component|auto_generated|valid_wrreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|wrptr_g\(10));

-- Location: LCCOMB_X25_Y16_N4
\U1|U0|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor10~combout\ = \U1|U0|dcfifo_component|auto_generated|wrptr_g\(11) $ (\U1|U0|dcfifo_component|auto_generated|wrptr_g\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|U0|dcfifo_component|auto_generated|wrptr_g\(11),
	datad => \U1|U0|dcfifo_component|auto_generated|wrptr_g\(10),
	combout => \U1|U0|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor10~combout\);

-- Location: FF_X25_Y16_N29
\U1|U0|dcfifo_component|auto_generated|ws_bwp|dffe12a[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => \U1|U0|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor10~combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|ws_bwp|dffe12a\(10));

-- Location: LCCOMB_X25_Y16_N0
\U1|U0|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor9\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor9~combout\ = \U1|U0|dcfifo_component|auto_generated|wrptr_g\(9) $ (\U1|U0|dcfifo_component|auto_generated|wrptr_g\(11) $ (\U1|U0|dcfifo_component|auto_generated|wrptr_g\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|wrptr_g\(9),
	datac => \U1|U0|dcfifo_component|auto_generated|wrptr_g\(11),
	datad => \U1|U0|dcfifo_component|auto_generated|wrptr_g\(10),
	combout => \U1|U0|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor9~combout\);

-- Location: FF_X25_Y16_N1
\U1|U0|dcfifo_component|auto_generated|ws_bwp|dffe12a[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U1|U0|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor9~combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|ws_bwp|dffe12a\(9));

-- Location: FF_X25_Y14_N19
\U1|U0|dcfifo_component|auto_generated|wrptr_g[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a8~q\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sload => VCC,
	ena => \U1|U0|dcfifo_component|auto_generated|valid_wrreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|wrptr_g\(8));

-- Location: LCCOMB_X25_Y16_N2
\U1|U0|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor8~combout\ = \U1|U0|dcfifo_component|auto_generated|wrptr_g\(9) $ (\U1|U0|dcfifo_component|auto_generated|wrptr_g\(10) $ (\U1|U0|dcfifo_component|auto_generated|wrptr_g\(11) $ 
-- (\U1|U0|dcfifo_component|auto_generated|wrptr_g\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|wrptr_g\(9),
	datab => \U1|U0|dcfifo_component|auto_generated|wrptr_g\(10),
	datac => \U1|U0|dcfifo_component|auto_generated|wrptr_g\(11),
	datad => \U1|U0|dcfifo_component|auto_generated|wrptr_g\(8),
	combout => \U1|U0|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor8~combout\);

-- Location: FF_X25_Y16_N15
\U1|U0|dcfifo_component|auto_generated|ws_bwp|dffe12a[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => \U1|U0|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor8~combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|ws_bwp|dffe12a\(8));

-- Location: FF_X24_Y15_N21
\U1|U0|dcfifo_component|auto_generated|wrptr_g[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a7~q\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sload => VCC,
	ena => \U1|U0|dcfifo_component|auto_generated|valid_wrreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|wrptr_g\(7));

-- Location: LCCOMB_X26_Y16_N28
\U1|U0|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor7~combout\ = \U1|U0|dcfifo_component|auto_generated|wrptr_g\(7) $ (\U1|U0|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor8~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|U0|dcfifo_component|auto_generated|wrptr_g\(7),
	datad => \U1|U0|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor8~combout\,
	combout => \U1|U0|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor7~combout\);

-- Location: FF_X26_Y16_N29
\U1|U0|dcfifo_component|auto_generated|ws_bwp|dffe12a[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U1|U0|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor7~combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|ws_bwp|dffe12a\(7));

-- Location: FF_X24_Y14_N19
\U1|U0|dcfifo_component|auto_generated|rdptr_g[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a8~q\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sload => VCC,
	ena => \U1|U0|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|rdptr_g\(8));

-- Location: FF_X24_Y16_N5
\U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => \U1|U0|dcfifo_component|auto_generated|rdptr_g\(8),
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a\(8));

-- Location: LCCOMB_X24_Y16_N4
\U1|U0|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor8~combout\ = \U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a\(9) $ (\U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a\(11) $ 
-- (\U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a\(8) $ (\U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a\(9),
	datab => \U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a\(11),
	datac => \U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a\(8),
	datad => \U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a\(10),
	combout => \U1|U0|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor8~combout\);

-- Location: FF_X24_Y14_N27
\U1|U0|dcfifo_component|auto_generated|rdptr_g[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a6~q\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sload => VCC,
	ena => \U1|U0|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|rdptr_g\(6));

-- Location: FF_X24_Y16_N9
\U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => \U1|U0|dcfifo_component|auto_generated|rdptr_g\(6),
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a\(6));

-- Location: LCCOMB_X24_Y16_N2
\U1|U0|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor6~combout\ = \U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a\(7) $ (\U1|U0|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor8~combout\ $ 
-- (\U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a\(7),
	datab => \U1|U0|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor8~combout\,
	datac => \U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a\(6),
	combout => \U1|U0|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor6~combout\);

-- Location: FF_X25_Y16_N21
\U1|U0|dcfifo_component|auto_generated|ws_brp|dffe12a[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => \U1|U0|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor6~combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|ws_brp|dffe12a\(6));

-- Location: FF_X24_Y15_N31
\U1|U0|dcfifo_component|auto_generated|wrptr_g[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~q\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sload => VCC,
	ena => \U1|U0|dcfifo_component|auto_generated|valid_wrreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|wrptr_g\(6));

-- Location: LCCOMB_X26_Y16_N16
\U1|U0|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor5~combout\ = \U1|U0|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor8~combout\ $ (\U1|U0|dcfifo_component|auto_generated|wrptr_g\(7) $ (\U1|U0|dcfifo_component|auto_generated|wrptr_g\(6) $ 
-- (\U1|U0|dcfifo_component|auto_generated|wrptr_g\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor8~combout\,
	datab => \U1|U0|dcfifo_component|auto_generated|wrptr_g\(7),
	datac => \U1|U0|dcfifo_component|auto_generated|wrptr_g\(6),
	datad => \U1|U0|dcfifo_component|auto_generated|wrptr_g\(5),
	combout => \U1|U0|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor5~combout\);

-- Location: LCCOMB_X26_Y16_N14
\U1|U0|dcfifo_component|auto_generated|ws_bwp|dffe12a[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|ws_bwp|dffe12a[5]~feeder_combout\ = \U1|U0|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor5~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U0|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor5~combout\,
	combout => \U1|U0|dcfifo_component|auto_generated|ws_bwp|dffe12a[5]~feeder_combout\);

-- Location: FF_X26_Y16_N15
\U1|U0|dcfifo_component|auto_generated|ws_bwp|dffe12a[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U1|U0|dcfifo_component|auto_generated|ws_bwp|dffe12a[5]~feeder_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|ws_bwp|dffe12a\(5));

-- Location: LCCOMB_X26_Y16_N10
\U1|U0|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor6~combout\ = \U1|U0|dcfifo_component|auto_generated|wrptr_g\(7) $ (\U1|U0|dcfifo_component|auto_generated|wrptr_g\(6) $ (\U1|U0|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor8~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|U0|dcfifo_component|auto_generated|wrptr_g\(7),
	datac => \U1|U0|dcfifo_component|auto_generated|wrptr_g\(6),
	datad => \U1|U0|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor8~combout\,
	combout => \U1|U0|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor6~combout\);

-- Location: LCCOMB_X26_Y16_N0
\U1|U0|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor4~combout\ = \U1|U0|dcfifo_component|auto_generated|wrptr_g\(5) $ (\U1|U0|dcfifo_component|auto_generated|wrptr_g\(4) $ (\U1|U0|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor6~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|wrptr_g\(5),
	datab => \U1|U0|dcfifo_component|auto_generated|wrptr_g\(4),
	datad => \U1|U0|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor6~combout\,
	combout => \U1|U0|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor4~combout\);

-- Location: FF_X26_Y16_N1
\U1|U0|dcfifo_component|auto_generated|ws_bwp|dffe12a[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U1|U0|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor4~combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|ws_bwp|dffe12a\(4));

-- Location: LCCOMB_X26_Y16_N6
\U1|U0|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor3~combout\ = \U1|U0|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor6~combout\ $ (\U1|U0|dcfifo_component|auto_generated|wrptr_g\(4) $ (\U1|U0|dcfifo_component|auto_generated|wrptr_g\(3) $ 
-- (\U1|U0|dcfifo_component|auto_generated|wrptr_g\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor6~combout\,
	datab => \U1|U0|dcfifo_component|auto_generated|wrptr_g\(4),
	datac => \U1|U0|dcfifo_component|auto_generated|wrptr_g\(3),
	datad => \U1|U0|dcfifo_component|auto_generated|wrptr_g\(5),
	combout => \U1|U0|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor3~combout\);

-- Location: LCCOMB_X26_Y16_N18
\U1|U0|dcfifo_component|auto_generated|ws_bwp|dffe12a[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|ws_bwp|dffe12a[3]~feeder_combout\ = \U1|U0|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor3~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U0|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor3~combout\,
	combout => \U1|U0|dcfifo_component|auto_generated|ws_bwp|dffe12a[3]~feeder_combout\);

-- Location: FF_X26_Y16_N19
\U1|U0|dcfifo_component|auto_generated|ws_bwp|dffe12a[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U1|U0|dcfifo_component|auto_generated|ws_bwp|dffe12a[3]~feeder_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|ws_bwp|dffe12a\(3));

-- Location: LCCOMB_X26_Y16_N8
\U1|U0|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor2~combout\ = \U1|U0|dcfifo_component|auto_generated|wrptr_g\(3) $ (\U1|U0|dcfifo_component|auto_generated|wrptr_g\(4) $ (\U1|U0|dcfifo_component|auto_generated|wrptr_g\(2) $ 
-- (\U1|U0|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor5~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|wrptr_g\(3),
	datab => \U1|U0|dcfifo_component|auto_generated|wrptr_g\(4),
	datac => \U1|U0|dcfifo_component|auto_generated|wrptr_g\(2),
	datad => \U1|U0|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor5~combout\,
	combout => \U1|U0|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor2~combout\);

-- Location: FF_X26_Y16_N9
\U1|U0|dcfifo_component|auto_generated|ws_bwp|dffe12a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U1|U0|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor2~combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|ws_bwp|dffe12a\(2));

-- Location: LCCOMB_X25_Y15_N22
\U1|U0|dcfifo_component|auto_generated|rdptr_g[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|rdptr_g[3]~feeder_combout\ = \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a3~q\,
	combout => \U1|U0|dcfifo_component|auto_generated|rdptr_g[3]~feeder_combout\);

-- Location: FF_X25_Y15_N23
\U1|U0|dcfifo_component|auto_generated|rdptr_g[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U1|U0|dcfifo_component|auto_generated|rdptr_g[3]~feeder_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	ena => \U1|U0|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|rdptr_g\(3));

-- Location: LCCOMB_X24_Y15_N0
\U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a[3]~feeder_combout\ = \U1|U0|dcfifo_component|auto_generated|rdptr_g\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U0|dcfifo_component|auto_generated|rdptr_g\(3),
	combout => \U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a[3]~feeder_combout\);

-- Location: FF_X24_Y15_N1
\U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a[3]~feeder_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a\(3));

-- Location: FF_X25_Y16_N17
\U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => \U1|U0|dcfifo_component|auto_generated|rdptr_g\(4),
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a\(4));

-- Location: LCCOMB_X24_Y16_N18
\U1|U0|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor3~combout\ = \U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a\(5) $ (\U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a\(3) $ 
-- (\U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a\(4) $ (\U1|U0|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor6~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a\(5),
	datab => \U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a\(3),
	datac => \U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a\(4),
	datad => \U1|U0|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor6~combout\,
	combout => \U1|U0|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor3~combout\);

-- Location: FF_X25_Y15_N9
\U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => \U1|U0|dcfifo_component|auto_generated|rdptr_g\(2),
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a\(2));

-- Location: LCCOMB_X24_Y16_N0
\U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a[1]~feeder_combout\ = \U1|U0|dcfifo_component|auto_generated|rdptr_g\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U0|dcfifo_component|auto_generated|rdptr_g\(1),
	combout => \U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a[1]~feeder_combout\);

-- Location: FF_X24_Y16_N1
\U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a[1]~feeder_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a\(1));

-- Location: LCCOMB_X24_Y16_N20
\U1|U0|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor1~combout\ = \U1|U0|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor3~combout\ $ (\U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a\(2) $ 
-- (\U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|U0|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor3~combout\,
	datac => \U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a\(2),
	datad => \U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a\(1),
	combout => \U1|U0|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor1~combout\);

-- Location: FF_X24_Y16_N21
\U1|U0|dcfifo_component|auto_generated|ws_brp|dffe12a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U1|U0|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor1~combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|ws_brp|dffe12a\(1));

-- Location: LCCOMB_X24_Y16_N6
\U1|U0|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor0~combout\ = \U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a\(0) $ (\U1|U0|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor3~combout\ $ 
-- (\U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a\(2) $ (\U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a\(0),
	datab => \U1|U0|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor3~combout\,
	datac => \U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a\(2),
	datad => \U1|U0|dcfifo_component|auto_generated|ws_dgrp|dffpipe15|dffe16a\(1),
	combout => \U1|U0|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor0~combout\);

-- Location: FF_X24_Y16_N7
\U1|U0|dcfifo_component|auto_generated|ws_brp|dffe12a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U1|U0|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor0~combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|ws_brp|dffe12a\(0));

-- Location: LCCOMB_X25_Y16_N8
\U1|U0|dcfifo_component|auto_generated|op_2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|op_2~1_cout\ = CARRY((\U1|U0|dcfifo_component|auto_generated|ws_bwp|dffe12a\(0)) # (!\U1|U0|dcfifo_component|auto_generated|ws_brp|dffe12a\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|ws_bwp|dffe12a\(0),
	datab => \U1|U0|dcfifo_component|auto_generated|ws_brp|dffe12a\(0),
	datad => VCC,
	cout => \U1|U0|dcfifo_component|auto_generated|op_2~1_cout\);

-- Location: LCCOMB_X25_Y16_N10
\U1|U0|dcfifo_component|auto_generated|op_2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|op_2~3_cout\ = CARRY((\U1|U0|dcfifo_component|auto_generated|ws_bwp|dffe12a\(1) & (\U1|U0|dcfifo_component|auto_generated|ws_brp|dffe12a\(1) & !\U1|U0|dcfifo_component|auto_generated|op_2~1_cout\)) # 
-- (!\U1|U0|dcfifo_component|auto_generated|ws_bwp|dffe12a\(1) & ((\U1|U0|dcfifo_component|auto_generated|ws_brp|dffe12a\(1)) # (!\U1|U0|dcfifo_component|auto_generated|op_2~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|ws_bwp|dffe12a\(1),
	datab => \U1|U0|dcfifo_component|auto_generated|ws_brp|dffe12a\(1),
	datad => VCC,
	cin => \U1|U0|dcfifo_component|auto_generated|op_2~1_cout\,
	cout => \U1|U0|dcfifo_component|auto_generated|op_2~3_cout\);

-- Location: LCCOMB_X25_Y16_N12
\U1|U0|dcfifo_component|auto_generated|op_2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|op_2~5_cout\ = CARRY((\U1|U0|dcfifo_component|auto_generated|ws_brp|dffe12a\(2) & (\U1|U0|dcfifo_component|auto_generated|ws_bwp|dffe12a\(2) & !\U1|U0|dcfifo_component|auto_generated|op_2~3_cout\)) # 
-- (!\U1|U0|dcfifo_component|auto_generated|ws_brp|dffe12a\(2) & ((\U1|U0|dcfifo_component|auto_generated|ws_bwp|dffe12a\(2)) # (!\U1|U0|dcfifo_component|auto_generated|op_2~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|ws_brp|dffe12a\(2),
	datab => \U1|U0|dcfifo_component|auto_generated|ws_bwp|dffe12a\(2),
	datad => VCC,
	cin => \U1|U0|dcfifo_component|auto_generated|op_2~3_cout\,
	cout => \U1|U0|dcfifo_component|auto_generated|op_2~5_cout\);

-- Location: LCCOMB_X25_Y16_N14
\U1|U0|dcfifo_component|auto_generated|op_2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|op_2~7_cout\ = CARRY((\U1|U0|dcfifo_component|auto_generated|ws_brp|dffe12a\(3) & ((!\U1|U0|dcfifo_component|auto_generated|op_2~5_cout\) # (!\U1|U0|dcfifo_component|auto_generated|ws_bwp|dffe12a\(3)))) # 
-- (!\U1|U0|dcfifo_component|auto_generated|ws_brp|dffe12a\(3) & (!\U1|U0|dcfifo_component|auto_generated|ws_bwp|dffe12a\(3) & !\U1|U0|dcfifo_component|auto_generated|op_2~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|ws_brp|dffe12a\(3),
	datab => \U1|U0|dcfifo_component|auto_generated|ws_bwp|dffe12a\(3),
	datad => VCC,
	cin => \U1|U0|dcfifo_component|auto_generated|op_2~5_cout\,
	cout => \U1|U0|dcfifo_component|auto_generated|op_2~7_cout\);

-- Location: LCCOMB_X25_Y16_N16
\U1|U0|dcfifo_component|auto_generated|op_2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|op_2~9_cout\ = CARRY((\U1|U0|dcfifo_component|auto_generated|ws_brp|dffe12a\(4) & (\U1|U0|dcfifo_component|auto_generated|ws_bwp|dffe12a\(4) & !\U1|U0|dcfifo_component|auto_generated|op_2~7_cout\)) # 
-- (!\U1|U0|dcfifo_component|auto_generated|ws_brp|dffe12a\(4) & ((\U1|U0|dcfifo_component|auto_generated|ws_bwp|dffe12a\(4)) # (!\U1|U0|dcfifo_component|auto_generated|op_2~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|ws_brp|dffe12a\(4),
	datab => \U1|U0|dcfifo_component|auto_generated|ws_bwp|dffe12a\(4),
	datad => VCC,
	cin => \U1|U0|dcfifo_component|auto_generated|op_2~7_cout\,
	cout => \U1|U0|dcfifo_component|auto_generated|op_2~9_cout\);

-- Location: LCCOMB_X25_Y16_N18
\U1|U0|dcfifo_component|auto_generated|op_2~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|op_2~11_cout\ = CARRY((\U1|U0|dcfifo_component|auto_generated|ws_brp|dffe12a\(5) & ((!\U1|U0|dcfifo_component|auto_generated|op_2~9_cout\) # (!\U1|U0|dcfifo_component|auto_generated|ws_bwp|dffe12a\(5)))) # 
-- (!\U1|U0|dcfifo_component|auto_generated|ws_brp|dffe12a\(5) & (!\U1|U0|dcfifo_component|auto_generated|ws_bwp|dffe12a\(5) & !\U1|U0|dcfifo_component|auto_generated|op_2~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|ws_brp|dffe12a\(5),
	datab => \U1|U0|dcfifo_component|auto_generated|ws_bwp|dffe12a\(5),
	datad => VCC,
	cin => \U1|U0|dcfifo_component|auto_generated|op_2~9_cout\,
	cout => \U1|U0|dcfifo_component|auto_generated|op_2~11_cout\);

-- Location: LCCOMB_X25_Y16_N20
\U1|U0|dcfifo_component|auto_generated|op_2~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|op_2~13_cout\ = CARRY((\U1|U0|dcfifo_component|auto_generated|ws_bwp|dffe12a\(6) & ((!\U1|U0|dcfifo_component|auto_generated|op_2~11_cout\) # (!\U1|U0|dcfifo_component|auto_generated|ws_brp|dffe12a\(6)))) # 
-- (!\U1|U0|dcfifo_component|auto_generated|ws_bwp|dffe12a\(6) & (!\U1|U0|dcfifo_component|auto_generated|ws_brp|dffe12a\(6) & !\U1|U0|dcfifo_component|auto_generated|op_2~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|ws_bwp|dffe12a\(6),
	datab => \U1|U0|dcfifo_component|auto_generated|ws_brp|dffe12a\(6),
	datad => VCC,
	cin => \U1|U0|dcfifo_component|auto_generated|op_2~11_cout\,
	cout => \U1|U0|dcfifo_component|auto_generated|op_2~13_cout\);

-- Location: LCCOMB_X25_Y16_N22
\U1|U0|dcfifo_component|auto_generated|op_2~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|op_2~15_cout\ = CARRY((\U1|U0|dcfifo_component|auto_generated|ws_brp|dffe12a\(7) & ((!\U1|U0|dcfifo_component|auto_generated|op_2~13_cout\) # (!\U1|U0|dcfifo_component|auto_generated|ws_bwp|dffe12a\(7)))) # 
-- (!\U1|U0|dcfifo_component|auto_generated|ws_brp|dffe12a\(7) & (!\U1|U0|dcfifo_component|auto_generated|ws_bwp|dffe12a\(7) & !\U1|U0|dcfifo_component|auto_generated|op_2~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|ws_brp|dffe12a\(7),
	datab => \U1|U0|dcfifo_component|auto_generated|ws_bwp|dffe12a\(7),
	datad => VCC,
	cin => \U1|U0|dcfifo_component|auto_generated|op_2~13_cout\,
	cout => \U1|U0|dcfifo_component|auto_generated|op_2~15_cout\);

-- Location: LCCOMB_X25_Y16_N24
\U1|U0|dcfifo_component|auto_generated|op_2~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|op_2~17_cout\ = CARRY((\U1|U0|dcfifo_component|auto_generated|ws_brp|dffe12a\(8) & (\U1|U0|dcfifo_component|auto_generated|ws_bwp|dffe12a\(8) & !\U1|U0|dcfifo_component|auto_generated|op_2~15_cout\)) # 
-- (!\U1|U0|dcfifo_component|auto_generated|ws_brp|dffe12a\(8) & ((\U1|U0|dcfifo_component|auto_generated|ws_bwp|dffe12a\(8)) # (!\U1|U0|dcfifo_component|auto_generated|op_2~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|ws_brp|dffe12a\(8),
	datab => \U1|U0|dcfifo_component|auto_generated|ws_bwp|dffe12a\(8),
	datad => VCC,
	cin => \U1|U0|dcfifo_component|auto_generated|op_2~15_cout\,
	cout => \U1|U0|dcfifo_component|auto_generated|op_2~17_cout\);

-- Location: LCCOMB_X25_Y16_N26
\U1|U0|dcfifo_component|auto_generated|op_2~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|op_2~19_cout\ = CARRY((\U1|U0|dcfifo_component|auto_generated|ws_brp|dffe12a\(9) & ((!\U1|U0|dcfifo_component|auto_generated|op_2~17_cout\) # (!\U1|U0|dcfifo_component|auto_generated|ws_bwp|dffe12a\(9)))) # 
-- (!\U1|U0|dcfifo_component|auto_generated|ws_brp|dffe12a\(9) & (!\U1|U0|dcfifo_component|auto_generated|ws_bwp|dffe12a\(9) & !\U1|U0|dcfifo_component|auto_generated|op_2~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|ws_brp|dffe12a\(9),
	datab => \U1|U0|dcfifo_component|auto_generated|ws_bwp|dffe12a\(9),
	datad => VCC,
	cin => \U1|U0|dcfifo_component|auto_generated|op_2~17_cout\,
	cout => \U1|U0|dcfifo_component|auto_generated|op_2~19_cout\);

-- Location: LCCOMB_X25_Y16_N28
\U1|U0|dcfifo_component|auto_generated|op_2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|op_2~20_combout\ = \U1|U0|dcfifo_component|auto_generated|ws_brp|dffe12a\(10) $ (\U1|U0|dcfifo_component|auto_generated|op_2~19_cout\ $ (\U1|U0|dcfifo_component|auto_generated|ws_bwp|dffe12a\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U0|dcfifo_component|auto_generated|ws_brp|dffe12a\(10),
	datad => \U1|U0|dcfifo_component|auto_generated|ws_bwp|dffe12a\(10),
	cin => \U1|U0|dcfifo_component|auto_generated|op_2~19_cout\,
	combout => \U1|U0|dcfifo_component|auto_generated|op_2~20_combout\);

-- Location: LCCOMB_X14_Y15_N6
\U4|Selector86~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector86~2_combout\ = (\U4|Selector86~1_combout\ & (\U4|present_state.IDLE~q\ & ((\U2|wr_t\(1)) # (\U1|U0|dcfifo_component|auto_generated|op_2~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|Selector86~1_combout\,
	datab => \U2|wr_t\(1),
	datac => \U1|U0|dcfifo_component|auto_generated|op_2~20_combout\,
	datad => \U4|present_state.IDLE~q\,
	combout => \U4|Selector86~2_combout\);

-- Location: FF_X14_Y15_N7
\U4|present_state.ACTIVEROW\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|Selector86~2_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|present_state.ACTIVEROW~q\);

-- Location: LCCOMB_X14_Y16_N6
\U4|Selector87~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector87~0_combout\ = (\U4|present_state.ACTIVEROW~q\) # ((\U4|present_state.ACTIVEROW_TRCD~q\ & ((\U4|count_trcd\(0)) # (!\U4|count_trcd\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|count_trcd\(0),
	datab => \U4|count_trcd\(1),
	datac => \U4|present_state.ACTIVEROW_TRCD~q\,
	datad => \U4|present_state.ACTIVEROW~q\,
	combout => \U4|Selector87~0_combout\);

-- Location: FF_X14_Y16_N7
\U4|present_state.ACTIVEROW_TRCD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|Selector87~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|present_state.ACTIVEROW_TRCD~q\);

-- Location: LCCOMB_X14_Y16_N20
\U4|Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector27~0_combout\ = (\U4|count_trcd\(0) & (!\U4|count_trcd\(1) & \U4|present_state.ACTIVEROW_TRCD~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|count_trcd\(0),
	datac => \U4|count_trcd\(1),
	datad => \U4|present_state.ACTIVEROW_TRCD~q\,
	combout => \U4|Selector27~0_combout\);

-- Location: LCCOMB_X13_Y14_N16
\U4|count_init~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|count_init~6_combout\ = (\U4|Add0~10_combout\ & !\U4|Equal1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|Add0~10_combout\,
	datac => \U4|Equal1~4_combout\,
	combout => \U4|count_init~6_combout\);

-- Location: FF_X13_Y14_N17
\U4|count_init[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|count_init~6_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sclr => \U4|present_state.INIT~q\,
	ena => \U4|Selector25~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|count_init\(5));

-- Location: LCCOMB_X13_Y14_N10
\U4|count_init~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|count_init~5_combout\ = (\U4|Add0~12_combout\ & !\U4|Equal1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|Add0~12_combout\,
	datac => \U4|Equal1~4_combout\,
	combout => \U4|count_init~5_combout\);

-- Location: FF_X13_Y14_N11
\U4|count_init[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|count_init~5_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sclr => \U4|present_state.INIT~q\,
	ena => \U4|Selector25~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|count_init\(6));

-- Location: LCCOMB_X13_Y14_N0
\U4|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Equal1~3_combout\ = (!\U4|count_init\(5) & \U4|count_init\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|count_init\(5),
	datac => \U4|count_init\(6),
	combout => \U4|Equal1~3_combout\);

-- Location: LCCOMB_X13_Y14_N4
\U4|Selector75~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector75~0_combout\ = (\U4|Add0~2_combout\ & !\U4|present_state.INIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|Add0~2_combout\,
	datad => \U4|present_state.INIT~q\,
	combout => \U4|Selector75~0_combout\);

-- Location: FF_X13_Y14_N5
\U4|count_init[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|Selector75~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	ena => \U4|Selector25~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|count_init\(1));

-- Location: LCCOMB_X12_Y14_N0
\U4|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Add0~0_combout\ = \U4|count_init\(0) $ (VCC)
-- \U4|Add0~1\ = CARRY(\U4|count_init\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|count_init\(0),
	datad => VCC,
	combout => \U4|Add0~0_combout\,
	cout => \U4|Add0~1\);

-- Location: LCCOMB_X12_Y14_N4
\U4|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Add0~4_combout\ = (\U4|count_init\(2) & (\U4|Add0~3\ $ (GND))) # (!\U4|count_init\(2) & (!\U4|Add0~3\ & VCC))
-- \U4|Add0~5\ = CARRY((\U4|count_init\(2) & !\U4|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U4|count_init\(2),
	datad => VCC,
	cin => \U4|Add0~3\,
	combout => \U4|Add0~4_combout\,
	cout => \U4|Add0~5\);

-- Location: LCCOMB_X13_Y14_N14
\U4|Selector74~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector74~0_combout\ = (\U4|Add0~4_combout\ & !\U4|present_state.INIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|Add0~4_combout\,
	datad => \U4|present_state.INIT~q\,
	combout => \U4|Selector74~0_combout\);

-- Location: FF_X13_Y14_N15
\U4|count_init[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|Selector74~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	ena => \U4|Selector25~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|count_init\(2));

-- Location: LCCOMB_X13_Y14_N2
\U4|Selector76~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector76~0_combout\ = (\U4|Add0~0_combout\ & !\U4|present_state.INIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|Add0~0_combout\,
	datad => \U4|present_state.INIT~q\,
	combout => \U4|Selector76~0_combout\);

-- Location: FF_X13_Y14_N3
\U4|count_init[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|Selector76~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	ena => \U4|Selector25~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|count_init\(0));

-- Location: LCCOMB_X13_Y14_N28
\U4|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Equal1~1_combout\ = (\U4|count_init\(13) & (\U4|count_init\(1) & (\U4|count_init\(2) & \U4|count_init\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|count_init\(13),
	datab => \U4|count_init\(1),
	datac => \U4|count_init\(2),
	datad => \U4|count_init\(0),
	combout => \U4|Equal1~1_combout\);

-- Location: LCCOMB_X12_Y14_N8
\U4|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Add0~8_combout\ = (\U4|count_init\(4) & (\U4|Add0~7\ $ (GND))) # (!\U4|count_init\(4) & (!\U4|Add0~7\ & VCC))
-- \U4|Add0~9\ = CARRY((\U4|count_init\(4) & !\U4|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U4|count_init\(4),
	datad => VCC,
	cin => \U4|Add0~7\,
	combout => \U4|Add0~8_combout\,
	cout => \U4|Add0~9\);

-- Location: LCCOMB_X12_Y14_N28
\U4|Selector72~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector72~0_combout\ = (!\U4|present_state.INIT~q\ & \U4|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|present_state.INIT~q\,
	datac => \U4|Add0~8_combout\,
	combout => \U4|Selector72~0_combout\);

-- Location: FF_X12_Y14_N29
\U4|count_init[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|Selector72~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	ena => \U4|Selector25~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|count_init\(4));

-- Location: LCCOMB_X11_Y14_N16
\U4|Selector73~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector73~0_combout\ = (\U4|Add0~6_combout\ & !\U4|present_state.INIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|Add0~6_combout\,
	datad => \U4|present_state.INIT~q\,
	combout => \U4|Selector73~0_combout\);

-- Location: FF_X11_Y14_N17
\U4|count_init[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|Selector73~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	ena => \U4|Selector25~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|count_init\(3));

-- Location: LCCOMB_X13_Y14_N8
\U4|count_init~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|count_init~4_combout\ = (\U4|Add0~14_combout\ & !\U4|Equal1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|Add0~14_combout\,
	datac => \U4|Equal1~4_combout\,
	combout => \U4|count_init~4_combout\);

-- Location: FF_X13_Y14_N9
\U4|count_init[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|count_init~4_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sclr => \U4|present_state.INIT~q\,
	ena => \U4|Selector25~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|count_init\(7));

-- Location: LCCOMB_X12_Y14_N18
\U4|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Add0~18_combout\ = (\U4|count_init\(9) & (!\U4|Add0~17\)) # (!\U4|count_init\(9) & ((\U4|Add0~17\) # (GND)))
-- \U4|Add0~19\ = CARRY((!\U4|Add0~17\) # (!\U4|count_init\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U4|count_init\(9),
	datad => VCC,
	cin => \U4|Add0~17\,
	combout => \U4|Add0~18_combout\,
	cout => \U4|Add0~19\);

-- Location: LCCOMB_X13_Y14_N18
\U4|count_init~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|count_init~3_combout\ = (!\U4|Equal1~4_combout\ & \U4|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|Equal1~4_combout\,
	datad => \U4|Add0~18_combout\,
	combout => \U4|count_init~3_combout\);

-- Location: FF_X13_Y14_N19
\U4|count_init[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|count_init~3_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sclr => \U4|present_state.INIT~q\,
	ena => \U4|Selector25~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|count_init\(9));

-- Location: LCCOMB_X12_Y14_N20
\U4|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Add0~20_combout\ = (\U4|count_init\(10) & (\U4|Add0~19\ $ (GND))) # (!\U4|count_init\(10) & (!\U4|Add0~19\ & VCC))
-- \U4|Add0~21\ = CARRY((\U4|count_init\(10) & !\U4|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U4|count_init\(10),
	datad => VCC,
	cin => \U4|Add0~19\,
	combout => \U4|Add0~20_combout\,
	cout => \U4|Add0~21\);

-- Location: LCCOMB_X13_Y14_N12
\U4|count_init~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|count_init~2_combout\ = (!\U4|Equal1~4_combout\ & \U4|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|Equal1~4_combout\,
	datad => \U4|Add0~20_combout\,
	combout => \U4|count_init~2_combout\);

-- Location: FF_X13_Y14_N13
\U4|count_init[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|count_init~2_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sclr => \U4|present_state.INIT~q\,
	ena => \U4|Selector25~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|count_init\(10));

-- Location: LCCOMB_X13_Y14_N6
\U4|Selector64~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector64~0_combout\ = (!\U4|present_state.INIT~q\ & \U4|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|present_state.INIT~q\,
	datad => \U4|Add0~24_combout\,
	combout => \U4|Selector64~0_combout\);

-- Location: FF_X13_Y14_N7
\U4|count_init[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|Selector64~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	ena => \U4|Selector25~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|count_init\(12));

-- Location: LCCOMB_X12_Y14_N30
\U4|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Equal1~0_combout\ = (!\U4|count_init\(8) & (\U4|count_init\(4) & (\U4|count_init\(3) & !\U4|count_init\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|count_init\(8),
	datab => \U4|count_init\(4),
	datac => \U4|count_init\(3),
	datad => \U4|count_init\(12),
	combout => \U4|Equal1~0_combout\);

-- Location: LCCOMB_X13_Y14_N22
\U4|Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Equal1~4_combout\ = (\U4|Equal1~2_combout\ & (\U4|Equal1~3_combout\ & (\U4|Equal1~1_combout\ & \U4|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|Equal1~2_combout\,
	datab => \U4|Equal1~3_combout\,
	datac => \U4|Equal1~1_combout\,
	datad => \U4|Equal1~0_combout\,
	combout => \U4|Equal1~4_combout\);

-- Location: LCCOMB_X13_Y15_N28
\U4|present_state.INIT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|present_state.INIT~0_combout\ = (\U4|present_state.INIT~q\) # (\U4|Equal1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|present_state.INIT~q\,
	datad => \U4|Equal1~4_combout\,
	combout => \U4|present_state.INIT~0_combout\);

-- Location: FF_X13_Y15_N29
\U4|present_state.INIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|present_state.INIT~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|present_state.INIT~q\);

-- Location: LCCOMB_X14_Y15_N2
\U4|Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector25~0_combout\ = (\U4|present_state.IDLE~q\) # (!\U4|present_state.INIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|present_state.INIT~q\,
	datad => \U4|present_state.IDLE~q\,
	combout => \U4|Selector25~0_combout\);

-- Location: LCCOMB_X14_Y17_N20
\U4|Selector89~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector89~0_combout\ = (\U4|count_trcd[1]~2_combout\) # ((\U4|Equal10~2_combout\ & \U4|present_state.WRITEDATA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|count_trcd[1]~2_combout\,
	datac => \U4|Equal10~2_combout\,
	datad => \U4|present_state.WRITEDATA~q\,
	combout => \U4|Selector89~0_combout\);

-- Location: FF_X14_Y17_N21
\U4|present_state.WRITEDATA_TWR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|Selector89~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|present_state.WRITEDATA_TWR~q\);

-- Location: LCCOMB_X14_Y16_N28
\U4|Selector29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector29~0_combout\ = (\U4|present_state.WRITEDATA_TWR~q\ & (\U4|count_twr\(0) $ (((\U4|count_twr\(1)))))) # (!\U4|present_state.WRITEDATA_TWR~q\ & (((!\U4|Selector25~0_combout\ & \U4|count_twr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|count_twr\(0),
	datab => \U4|Selector25~0_combout\,
	datac => \U4|count_twr\(1),
	datad => \U4|present_state.WRITEDATA_TWR~q\,
	combout => \U4|Selector29~0_combout\);

-- Location: FF_X14_Y16_N29
\U4|count_twr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|Selector29~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|count_twr\(1));

-- Location: LCCOMB_X14_Y16_N22
\U4|Selector30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector30~0_combout\ = (\U4|present_state.WRITEDATA_TWR~q\ & (((!\U4|count_twr\(0) & !\U4|count_twr\(1))))) # (!\U4|present_state.WRITEDATA_TWR~q\ & (!\U4|Selector25~0_combout\ & (\U4|count_twr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|present_state.WRITEDATA_TWR~q\,
	datab => \U4|Selector25~0_combout\,
	datac => \U4|count_twr\(0),
	datad => \U4|count_twr\(1),
	combout => \U4|Selector30~0_combout\);

-- Location: FF_X14_Y16_N23
\U4|count_twr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|Selector30~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|count_twr\(0));

-- Location: LCCOMB_X14_Y16_N0
\U4|count_trcd[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|count_trcd[1]~2_combout\ = (\U4|present_state.WRITEDATA_TWR~q\ & ((\U4|count_twr\(0)) # (!\U4|count_twr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|count_twr\(1),
	datac => \U4|count_twr\(0),
	datad => \U4|present_state.WRITEDATA_TWR~q\,
	combout => \U4|count_trcd[1]~2_combout\);

-- Location: LCCOMB_X14_Y16_N18
\U4|count_trcd[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|count_trcd[1]~3_combout\ = (!\U4|count_trcd[1]~2_combout\ & ((\U4|present_state.ACTIVEROW_TRCD~q\) # ((\U4|Selector25~0_combout\) # (\U4|present_state.WRITEDATA_TWR~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|present_state.ACTIVEROW_TRCD~q\,
	datab => \U4|count_trcd[1]~2_combout\,
	datac => \U4|Selector25~0_combout\,
	datad => \U4|present_state.WRITEDATA_TWR~q\,
	combout => \U4|count_trcd[1]~3_combout\);

-- Location: FF_X14_Y16_N21
\U4|count_trcd[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|Selector27~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	ena => \U4|count_trcd[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|count_trcd\(1));

-- Location: LCCOMB_X14_Y16_N26
\U4|Selector28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector28~0_combout\ = (!\U4|count_trcd\(1) & (!\U4|count_trcd\(0) & \U4|present_state.ACTIVEROW_TRCD~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|count_trcd\(1),
	datac => \U4|count_trcd\(0),
	datad => \U4|present_state.ACTIVEROW_TRCD~q\,
	combout => \U4|Selector28~0_combout\);

-- Location: FF_X14_Y16_N27
\U4|count_trcd[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|Selector28~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	ena => \U4|count_trcd[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|count_trcd\(0));

-- Location: LCCOMB_X14_Y16_N16
\U4|Selector90~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector90~0_combout\ = (\U4|count_trcd\(1) & (!\U4|count_trcd\(0) & \U4|present_state.ACTIVEROW_TRCD~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|count_trcd\(1),
	datac => \U4|count_trcd\(0),
	datad => \U4|present_state.ACTIVEROW_TRCD~q\,
	combout => \U4|Selector90~0_combout\);

-- Location: LCCOMB_X14_Y17_N6
\U4|Selector88~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector88~0_combout\ = (\U4|writesdram_en~q\ & ((\U4|Selector90~0_combout\) # ((!\U4|Equal10~2_combout\ & \U4|present_state.WRITEDATA~q\)))) # (!\U4|writesdram_en~q\ & (!\U4|Equal10~2_combout\ & ((\U4|present_state.WRITEDATA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|writesdram_en~q\,
	datab => \U4|Equal10~2_combout\,
	datac => \U4|Selector90~0_combout\,
	datad => \U4|present_state.WRITEDATA~q\,
	combout => \U4|Selector88~0_combout\);

-- Location: LCCOMB_X14_Y17_N0
\U4|present_state.WRITEDATA~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|present_state.WRITEDATA~feeder_combout\ = \U4|Selector88~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U4|Selector88~0_combout\,
	combout => \U4|present_state.WRITEDATA~feeder_combout\);

-- Location: FF_X14_Y17_N1
\U4|present_state.WRITEDATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|present_state.WRITEDATA~feeder_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|present_state.WRITEDATA~q\);

-- Location: LCCOMB_X14_Y17_N16
\U4|Selector90~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector90~1_combout\ = (\U4|readsdram_en~q\ & (\U4|Selector90~0_combout\ & !\U4|writesdram_en~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|readsdram_en~q\,
	datac => \U4|Selector90~0_combout\,
	datad => \U4|writesdram_en~q\,
	combout => \U4|Selector90~1_combout\);

-- Location: LCCOMB_X13_Y17_N16
\U4|Selector90~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector90~2_combout\ = (\U4|Selector90~1_combout\) # ((\U4|present_state.READDATA~q\ & ((!\U4|readsdram_en~q\) # (!\U4|Equal10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|Equal10~2_combout\,
	datab => \U4|readsdram_en~q\,
	datac => \U4|present_state.READDATA~q\,
	datad => \U4|Selector90~1_combout\,
	combout => \U4|Selector90~2_combout\);

-- Location: FF_X13_Y17_N17
\U4|present_state.READDATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|Selector90~2_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|present_state.READDATA~q\);

-- Location: LCCOMB_X13_Y17_N4
\U4|col[7]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|col[7]~23_combout\ = (\U4|present_state.READDATA~q\ & (((\U4|readsdram_en~q\)))) # (!\U4|present_state.READDATA~q\ & (((\U4|present_state.WRITEDATA~q\)) # (!\U4|WideOr21~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|WideOr21~0_combout\,
	datab => \U4|present_state.WRITEDATA~q\,
	datac => \U4|readsdram_en~q\,
	datad => \U4|present_state.READDATA~q\,
	combout => \U4|col[7]~23_combout\);

-- Location: FF_X12_Y17_N11
\U4|col[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|col[5]~32_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sclr => \U4|col[7]~22_combout\,
	ena => \U4|col[7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|col\(5));

-- Location: LCCOMB_X12_Y17_N20
\U4|Equal10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Equal10~1_combout\ = (\U4|col\(6) & (\U4|col\(7) & (\U4|col\(4) & \U4|col\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|col\(6),
	datab => \U4|col\(7),
	datac => \U4|col\(4),
	datad => \U4|col\(5),
	combout => \U4|Equal10~1_combout\);

-- Location: LCCOMB_X12_Y17_N16
\U4|col[8]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|col[8]~38_combout\ = (\U4|col\(8) & (\U4|col[7]~37\ $ (GND))) # (!\U4|col\(8) & (!\U4|col[7]~37\ & VCC))
-- \U4|col[8]~39\ = CARRY((\U4|col\(8) & !\U4|col[7]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U4|col\(8),
	datad => VCC,
	cin => \U4|col[7]~37\,
	combout => \U4|col[8]~38_combout\,
	cout => \U4|col[8]~39\);

-- Location: LCCOMB_X12_Y17_N18
\U4|col[9]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|col[9]~40_combout\ = \U4|col[8]~39\ $ (\U4|col\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U4|col\(9),
	cin => \U4|col[8]~39\,
	combout => \U4|col[9]~40_combout\);

-- Location: FF_X12_Y17_N19
\U4|col[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|col[9]~40_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sclr => \U4|col[7]~22_combout\,
	ena => \U4|col[7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|col\(9));

-- Location: LCCOMB_X13_Y17_N14
\U4|Equal10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Equal10~2_combout\ = (\U4|Equal10~0_combout\ & (\U4|Equal10~1_combout\ & (\U4|col\(8) & !\U4|col\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|Equal10~0_combout\,
	datab => \U4|Equal10~1_combout\,
	datac => \U4|col\(8),
	datad => \U4|col\(9),
	combout => \U4|Equal10~2_combout\);

-- Location: LCCOMB_X13_Y17_N8
\U4|Selector79~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector79~2_combout\ = (\U4|present_state.CAS~q\ & (\U4|Equal9~2_combout\ & (\U4|col\(0) & \U4|col\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|present_state.CAS~q\,
	datab => \U4|Equal9~2_combout\,
	datac => \U4|col\(0),
	datad => \U4|col\(9),
	combout => \U4|Selector79~2_combout\);

-- Location: LCCOMB_X13_Y17_N12
\U4|col[7]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|col[7]~22_combout\ = ((\U4|present_state.WRITEDATA~q\ & (\U4|Equal10~2_combout\)) # (!\U4|present_state.WRITEDATA~q\ & ((\U4|Selector79~2_combout\)))) # (!\U4|present_state.INIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|present_state.INIT~q\,
	datab => \U4|Equal10~2_combout\,
	datac => \U4|present_state.WRITEDATA~q\,
	datad => \U4|Selector79~2_combout\,
	combout => \U4|col[7]~22_combout\);

-- Location: FF_X12_Y17_N1
\U4|col[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|col[0]~20_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sclr => \U4|col[7]~22_combout\,
	ena => \U4|col[7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|col\(0));

-- Location: LCCOMB_X12_Y17_N2
\U4|col[1]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|col[1]~24_combout\ = (\U4|col\(1) & (!\U4|col[0]~21\)) # (!\U4|col\(1) & ((\U4|col[0]~21\) # (GND)))
-- \U4|col[1]~25\ = CARRY((!\U4|col[0]~21\) # (!\U4|col\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U4|col\(1),
	datad => VCC,
	cin => \U4|col[0]~21\,
	combout => \U4|col[1]~24_combout\,
	cout => \U4|col[1]~25\);

-- Location: FF_X12_Y17_N3
\U4|col[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|col[1]~24_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sclr => \U4|col[7]~22_combout\,
	ena => \U4|col[7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|col\(1));

-- Location: LCCOMB_X12_Y17_N4
\U4|col[2]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|col[2]~26_combout\ = (\U4|col\(2) & (\U4|col[1]~25\ $ (GND))) # (!\U4|col\(2) & (!\U4|col[1]~25\ & VCC))
-- \U4|col[2]~27\ = CARRY((\U4|col\(2) & !\U4|col[1]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U4|col\(2),
	datad => VCC,
	cin => \U4|col[1]~25\,
	combout => \U4|col[2]~26_combout\,
	cout => \U4|col[2]~27\);

-- Location: FF_X12_Y17_N5
\U4|col[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|col[2]~26_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sclr => \U4|col[7]~22_combout\,
	ena => \U4|col[7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|col\(2));

-- Location: LCCOMB_X12_Y17_N6
\U4|col[3]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|col[3]~28_combout\ = (\U4|col\(3) & (!\U4|col[2]~27\)) # (!\U4|col\(3) & ((\U4|col[2]~27\) # (GND)))
-- \U4|col[3]~29\ = CARRY((!\U4|col[2]~27\) # (!\U4|col\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U4|col\(3),
	datad => VCC,
	cin => \U4|col[2]~27\,
	combout => \U4|col[3]~28_combout\,
	cout => \U4|col[3]~29\);

-- Location: LCCOMB_X12_Y17_N8
\U4|col[4]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|col[4]~30_combout\ = (\U4|col\(4) & (\U4|col[3]~29\ $ (GND))) # (!\U4|col\(4) & (!\U4|col[3]~29\ & VCC))
-- \U4|col[4]~31\ = CARRY((\U4|col\(4) & !\U4|col[3]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U4|col\(4),
	datad => VCC,
	cin => \U4|col[3]~29\,
	combout => \U4|col[4]~30_combout\,
	cout => \U4|col[4]~31\);

-- Location: FF_X12_Y17_N9
\U4|col[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|col[4]~30_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sclr => \U4|col[7]~22_combout\,
	ena => \U4|col[7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|col\(4));

-- Location: LCCOMB_X12_Y17_N14
\U4|col[7]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|col[7]~36_combout\ = (\U4|col\(7) & (!\U4|col[6]~35\)) # (!\U4|col\(7) & ((\U4|col[6]~35\) # (GND)))
-- \U4|col[7]~37\ = CARRY((!\U4|col[6]~35\) # (!\U4|col\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U4|col\(7),
	datad => VCC,
	cin => \U4|col[6]~35\,
	combout => \U4|col[7]~36_combout\,
	cout => \U4|col[7]~37\);

-- Location: FF_X12_Y17_N15
\U4|col[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|col[7]~36_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sclr => \U4|col[7]~22_combout\,
	ena => \U4|col[7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|col\(7));

-- Location: FF_X12_Y17_N17
\U4|col[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|col[8]~38_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sclr => \U4|col[7]~22_combout\,
	ena => \U4|col[7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|col\(8));

-- Location: LCCOMB_X12_Y17_N28
\U4|Equal9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Equal9~0_combout\ = (!\U4|col\(3) & (!\U4|col\(2) & (!\U4|col\(4) & !\U4|col\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|col\(3),
	datab => \U4|col\(2),
	datac => \U4|col\(4),
	datad => \U4|col\(1),
	combout => \U4|Equal9~0_combout\);

-- Location: LCCOMB_X12_Y17_N24
\U4|Equal9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Equal9~2_combout\ = (\U4|Equal9~1_combout\ & (!\U4|col\(8) & (!\U4|col\(7) & \U4|Equal9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|Equal9~1_combout\,
	datab => \U4|col\(8),
	datac => \U4|col\(7),
	datad => \U4|Equal9~0_combout\,
	combout => \U4|Equal9~2_combout\);

-- Location: LCCOMB_X13_Y17_N6
\U4|process_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|process_2~0_combout\ = (\U4|readsdram_en~q\ & (\U4|Equal9~2_combout\ $ (!\U4|col\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|Equal9~2_combout\,
	datac => \U4|readsdram_en~q\,
	datad => \U4|col\(9),
	combout => \U4|process_2~0_combout\);

-- Location: FF_X13_Y17_N7
\U4|writemcufifo_t\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|process_2~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|writemcufifo_t~q\);

-- Location: LCCOMB_X17_Y15_N6
\writeextfifo_t~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \writeextfifo_t~1_combout\ = (!\U2|wr_t\(0) & (\U4|writemcufifo_t~q\ & (!\U2|wr_t\(3) & \U2|wr_t\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|wr_t\(0),
	datab => \U4|writemcufifo_t~q\,
	datac => \U2|wr_t\(3),
	datad => \U2|wr_t\(1),
	combout => \writeextfifo_t~1_combout\);

-- Location: LCCOMB_X17_Y15_N20
\U5|U0|dcfifo_component|auto_generated|valid_wrreq~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|U0|dcfifo_component|auto_generated|valid_wrreq~0_combout\ = (\U5|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux_reg~q\ & (!\U5|U0|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux_reg~q\ & ((\writeextfifo_t~0_combout\) # 
-- (\writeextfifo_t~1_combout\)))) # (!\U5|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux_reg~q\ & ((\writeextfifo_t~0_combout\) # ((\writeextfifo_t~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux_reg~q\,
	datab => \writeextfifo_t~0_combout\,
	datac => \U5|U0|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux_reg~q\,
	datad => \writeextfifo_t~1_combout\,
	combout => \U5|U0|dcfifo_component|auto_generated|valid_wrreq~0_combout\);

-- Location: LCCOMB_X16_Y15_N24
\U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~0_combout\ = \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~q\ $ (((!\U5|U0|dcfifo_component|auto_generated|wrptr_g1p|parity9~q\ & 
-- (\U5|U0|dcfifo_component|auto_generated|valid_wrreq~0_combout\ & !\U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|parity9~q\,
	datab => \U5|U0|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	datac => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~q\,
	datad => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a0~q\,
	combout => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~0_combout\);

-- Location: FF_X16_Y15_N25
\U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~q\);

-- Location: LCCOMB_X16_Y15_N20
\U5|U0|dcfifo_component|auto_generated|wrptr_g[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|U0|dcfifo_component|auto_generated|wrptr_g[1]~feeder_combout\ = \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~q\,
	combout => \U5|U0|dcfifo_component|auto_generated|wrptr_g[1]~feeder_combout\);

-- Location: FF_X16_Y15_N21
\U5|U0|dcfifo_component|auto_generated|wrptr_g[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U5|U0|dcfifo_component|auto_generated|wrptr_g[1]~feeder_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	ena => \U5|U0|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|U0|dcfifo_component|auto_generated|wrptr_g\(1));

-- Location: LCCOMB_X16_Y15_N10
\U5|U0|dcfifo_component|auto_generated|wrptr_g[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|U0|dcfifo_component|auto_generated|wrptr_g[0]~0_combout\ = !\U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a0~q\,
	combout => \U5|U0|dcfifo_component|auto_generated|wrptr_g[0]~0_combout\);

-- Location: FF_X16_Y15_N11
\U5|U0|dcfifo_component|auto_generated|wrptr_g[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U5|U0|dcfifo_component|auto_generated|wrptr_g[0]~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	ena => \U5|U0|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|U0|dcfifo_component|auto_generated|wrptr_g\(0));

-- Location: LCCOMB_X16_Y15_N2
\U5|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~2_combout\ = (!\U5|U0|dcfifo_component|auto_generated|wrptr_g\(1) & !\U5|U0|dcfifo_component|auto_generated|wrptr_g\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U5|U0|dcfifo_component|auto_generated|wrptr_g\(1),
	datad => \U5|U0|dcfifo_component|auto_generated|wrptr_g\(0),
	combout => \U5|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~2_combout\);

-- Location: LCCOMB_X16_Y15_N18
\U5|U0|dcfifo_component|auto_generated|wrptr_g[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|U0|dcfifo_component|auto_generated|wrptr_g[2]~feeder_combout\ = \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~q\,
	combout => \U5|U0|dcfifo_component|auto_generated|wrptr_g[2]~feeder_combout\);

-- Location: FF_X16_Y15_N19
\U5|U0|dcfifo_component|auto_generated|wrptr_g[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U5|U0|dcfifo_component|auto_generated|wrptr_g[2]~feeder_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	ena => \U5|U0|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|U0|dcfifo_component|auto_generated|wrptr_g\(2));

-- Location: LCCOMB_X16_Y15_N4
\U5|U0|dcfifo_component|auto_generated|wrptr_g[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|U0|dcfifo_component|auto_generated|wrptr_g[3]~feeder_combout\ = \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~q\,
	combout => \U5|U0|dcfifo_component|auto_generated|wrptr_g[3]~feeder_combout\);

-- Location: FF_X16_Y15_N5
\U5|U0|dcfifo_component|auto_generated|wrptr_g[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U5|U0|dcfifo_component|auto_generated|wrptr_g[3]~feeder_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	ena => \U5|U0|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|U0|dcfifo_component|auto_generated|wrptr_g\(3));

-- Location: LCCOMB_X16_Y15_N28
\U5|U0|dcfifo_component|auto_generated|wrptr_g[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|U0|dcfifo_component|auto_generated|wrptr_g[5]~feeder_combout\ = \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~q\,
	combout => \U5|U0|dcfifo_component|auto_generated|wrptr_g[5]~feeder_combout\);

-- Location: FF_X16_Y15_N29
\U5|U0|dcfifo_component|auto_generated|wrptr_g[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U5|U0|dcfifo_component|auto_generated|wrptr_g[5]~feeder_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	ena => \U5|U0|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|U0|dcfifo_component|auto_generated|wrptr_g\(5));

-- Location: LCCOMB_X16_Y15_N8
\U5|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~3_combout\ = (!\U5|U0|dcfifo_component|auto_generated|wrptr_g\(4) & (!\U5|U0|dcfifo_component|auto_generated|wrptr_g\(2) & (!\U5|U0|dcfifo_component|auto_generated|wrptr_g\(3) & 
-- !\U5|U0|dcfifo_component|auto_generated|wrptr_g\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|U0|dcfifo_component|auto_generated|wrptr_g\(4),
	datab => \U5|U0|dcfifo_component|auto_generated|wrptr_g\(2),
	datac => \U5|U0|dcfifo_component|auto_generated|wrptr_g\(3),
	datad => \U5|U0|dcfifo_component|auto_generated|wrptr_g\(5),
	combout => \U5|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~3_combout\);

-- Location: LCCOMB_X16_Y15_N16
\U5|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~0_combout\ = (!\U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~q\ & (!\U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~q\ & 
-- (\U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a0~q\ & !\U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~q\,
	datab => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~q\,
	datac => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a0~q\,
	datad => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~q\,
	combout => \U5|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~0_combout\);

-- Location: LCCOMB_X16_Y15_N0
\U5|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~1_combout\ = (!\U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~q\ & (!\U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~q\ & 
-- (\U5|U0|dcfifo_component|auto_generated|valid_wrreq~0_combout\ & \U5|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~q\,
	datab => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~q\,
	datac => \U5|U0|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	datad => \U5|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~0_combout\,
	combout => \U5|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~1_combout\);

-- Location: LCCOMB_X16_Y15_N12
\U5|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~4_combout\ = (\U5|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~1_combout\) # ((!\U5|U0|dcfifo_component|auto_generated|valid_wrreq~0_combout\ & 
-- (\U5|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~2_combout\ & \U5|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|U0|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	datab => \U5|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~2_combout\,
	datac => \U5|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~3_combout\,
	datad => \U5|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~1_combout\,
	combout => \U5|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~4_combout\);

-- Location: FF_X16_Y15_N13
\U5|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U5|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~4_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux_reg~q\);

-- Location: LCCOMB_X17_Y15_N18
\U5|U0|dcfifo_component|auto_generated|valid_wrreq~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|U0|dcfifo_component|auto_generated|valid_wrreq~1_combout\ = (!\U5|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux_reg~q\) # (!\U5|U0|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux_reg~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U5|U0|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux_reg~q\,
	datad => \U5|U0|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux_reg~q\,
	combout => \U5|U0|dcfifo_component|auto_generated|valid_wrreq~1_combout\);

-- Location: LCCOMB_X17_Y15_N28
\U5|U0|dcfifo_component|auto_generated|wrptr_g1p|cntr_cout[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|cntr_cout[0]~0_combout\ = (\U5|U0|dcfifo_component|auto_generated|valid_wrreq~1_combout\ & (!\U5|U0|dcfifo_component|auto_generated|wrptr_g1p|parity9~q\ & ((\writeextfifo_t~1_combout\) # 
-- (\writeextfifo_t~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writeextfifo_t~1_combout\,
	datab => \U5|U0|dcfifo_component|auto_generated|valid_wrreq~1_combout\,
	datac => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|parity9~q\,
	datad => \writeextfifo_t~0_combout\,
	combout => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|cntr_cout[0]~0_combout\);

-- Location: LCCOMB_X17_Y15_N26
\U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~0_combout\ = \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~q\ $ (((\U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a0~q\ & 
-- (\U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~q\ & \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|cntr_cout[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a0~q\,
	datab => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~q\,
	datac => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~q\,
	datad => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|cntr_cout[0]~0_combout\,
	combout => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~0_combout\);

-- Location: FF_X17_Y15_N27
\U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~q\);

-- Location: LCCOMB_X16_Y15_N6
\U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~0_combout\ = \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~q\ $ (((\U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~q\ & 
-- \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|_~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~q\,
	datac => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~q\,
	datad => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|_~1_combout\,
	combout => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~0_combout\);

-- Location: FF_X16_Y15_N7
\U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~q\);

-- Location: LCCOMB_X17_Y15_N16
\U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~0_combout\ = \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~q\ $ (((\U5|U0|dcfifo_component|auto_generated|wrptr_g1p|_~2_combout\ & 
-- (!\U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~q\ & \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|_~2_combout\,
	datab => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~q\,
	datac => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~q\,
	datad => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~q\,
	combout => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~0_combout\);

-- Location: FF_X17_Y15_N17
\U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~q\);

-- Location: LCCOMB_X18_Y15_N14
\U5|U0|dcfifo_component|auto_generated|wrptr_g1p|_~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|_~4_combout\ = (!\U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~q\ & (!\U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~q\ & 
-- (!\U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a7~q\ & \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|_~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~q\,
	datab => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~q\,
	datac => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a7~q\,
	datad => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|_~3_combout\,
	combout => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|_~4_combout\);

-- Location: LCCOMB_X18_Y15_N6
\U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a10~0_combout\ = \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a10~q\ $ (((\U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a9~q\ & 
-- (\U5|U0|dcfifo_component|auto_generated|wrptr_g1p|_~4_combout\ & !\U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a8~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a9~q\,
	datab => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|_~4_combout\,
	datac => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a10~q\,
	datad => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a8~q\,
	combout => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a10~0_combout\);

-- Location: FF_X18_Y15_N7
\U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a10~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a10~q\);

-- Location: LCCOMB_X18_Y15_N2
\U5|U0|dcfifo_component|auto_generated|wrptr_g[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|U0|dcfifo_component|auto_generated|wrptr_g[10]~feeder_combout\ = \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a10~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a10~q\,
	combout => \U5|U0|dcfifo_component|auto_generated|wrptr_g[10]~feeder_combout\);

-- Location: FF_X18_Y15_N3
\U5|U0|dcfifo_component|auto_generated|wrptr_g[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U5|U0|dcfifo_component|auto_generated|wrptr_g[10]~feeder_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	ena => \U5|U0|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|U0|dcfifo_component|auto_generated|wrptr_g\(10));

-- Location: LCCOMB_X18_Y15_N12
\U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a11~0_combout\ = \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a11~q\ $ (((!\U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a9~q\ & 
-- (\U5|U0|dcfifo_component|auto_generated|wrptr_g1p|_~4_combout\ & !\U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a8~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a9~q\,
	datab => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|_~4_combout\,
	datac => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a11~q\,
	datad => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a8~q\,
	combout => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a11~0_combout\);

-- Location: FF_X18_Y15_N13
\U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a11~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a11~q\);

-- Location: LCCOMB_X18_Y15_N20
\U5|U0|dcfifo_component|auto_generated|wrptr_g[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|U0|dcfifo_component|auto_generated|wrptr_g[11]~feeder_combout\ = \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a11~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a11~q\,
	combout => \U5|U0|dcfifo_component|auto_generated|wrptr_g[11]~feeder_combout\);

-- Location: FF_X18_Y15_N21
\U5|U0|dcfifo_component|auto_generated|wrptr_g[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U5|U0|dcfifo_component|auto_generated|wrptr_g[11]~feeder_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	ena => \U5|U0|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|U0|dcfifo_component|auto_generated|wrptr_g\(11));

-- Location: LCCOMB_X18_Y15_N30
\U5|U0|dcfifo_component|auto_generated|ram_address_a[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|U0|dcfifo_component|auto_generated|ram_address_a\(10) = \U5|U0|dcfifo_component|auto_generated|wrptr_g\(10) $ (\U5|U0|dcfifo_component|auto_generated|wrptr_g\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U5|U0|dcfifo_component|auto_generated|wrptr_g\(10),
	datad => \U5|U0|dcfifo_component|auto_generated|wrptr_g\(11),
	combout => \U5|U0|dcfifo_component|auto_generated|ram_address_a\(10));

-- Location: LCCOMB_X16_Y14_N8
\U5|U0|dcfifo_component|auto_generated|ws_bwp|dffe12a[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|U0|dcfifo_component|auto_generated|ws_bwp|dffe12a[10]~feeder_combout\ = \U5|U0|dcfifo_component|auto_generated|ram_address_a\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U5|U0|dcfifo_component|auto_generated|ram_address_a\(10),
	combout => \U5|U0|dcfifo_component|auto_generated|ws_bwp|dffe12a[10]~feeder_combout\);

-- Location: FF_X16_Y14_N9
\U5|U0|dcfifo_component|auto_generated|ws_bwp|dffe12a[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U5|U0|dcfifo_component|auto_generated|ws_bwp|dffe12a[10]~feeder_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|U0|dcfifo_component|auto_generated|ws_bwp|dffe12a\(10));

-- Location: LCCOMB_X16_Y14_N2
\U4|present_state~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|present_state~35_combout\ = (!\U2|wr_t\(0) & (\U2|wr_t\(1) & ((\U2|wr_t\(3)) # (!\U5|U0|dcfifo_component|auto_generated|ws_bwp|dffe12a\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|wr_t\(0),
	datab => \U2|wr_t\(3),
	datac => \U5|U0|dcfifo_component|auto_generated|ws_bwp|dffe12a\(10),
	datad => \U2|wr_t\(1),
	combout => \U4|present_state~35_combout\);

-- Location: LCCOMB_X16_Y16_N16
\U4|count_autorefresh[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|count_autorefresh[0]~8_combout\ = (\U4|Equal13~2_combout\ & (\U4|count_autorefresh\(0) & VCC)) # (!\U4|Equal13~2_combout\ & (\U4|count_autorefresh\(0) $ (VCC)))
-- \U4|count_autorefresh[0]~9\ = CARRY((!\U4|Equal13~2_combout\ & \U4|count_autorefresh\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|Equal13~2_combout\,
	datab => \U4|count_autorefresh\(0),
	datad => VCC,
	combout => \U4|count_autorefresh[0]~8_combout\,
	cout => \U4|count_autorefresh[0]~9\);

-- Location: LCCOMB_X12_Y15_N2
\U4|Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Equal5~0_combout\ = (\U4|count_trc\(1) & (\U4|count_trc\(0) & \U4|count_trc\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|count_trc\(1),
	datac => \U4|count_trc\(0),
	datad => \U4|count_trc\(2),
	combout => \U4|Equal5~0_combout\);

-- Location: LCCOMB_X12_Y15_N20
\U4|Selector77~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector77~0_combout\ = (\U4|present_state.AUTOREFRESH_TRC~q\ & (((!\U4|Equal5~0_combout\)) # (!\U4|count_trc_init~q\))) # (!\U4|present_state.AUTOREFRESH_TRC~q\ & (((!\U4|Selector25~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|present_state.AUTOREFRESH_TRC~q\,
	datab => \U4|count_trc_init~q\,
	datac => \U4|Selector25~0_combout\,
	datad => \U4|Equal5~0_combout\,
	combout => \U4|Selector77~0_combout\);

-- Location: LCCOMB_X12_Y15_N0
\U4|Selector77~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector77~1_combout\ = (\U4|present_state.INIT~q\ & (((\U4|init_precharge~q\ & \U4|Selector77~0_combout\)))) # (!\U4|present_state.INIT~q\ & ((\U4|Equal1~4_combout\) # ((\U4|init_precharge~q\ & \U4|Selector77~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|present_state.INIT~q\,
	datab => \U4|Equal1~4_combout\,
	datac => \U4|init_precharge~q\,
	datad => \U4|Selector77~0_combout\,
	combout => \U4|Selector77~1_combout\);

-- Location: FF_X12_Y15_N1
\U4|init_precharge\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|Selector77~1_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|init_precharge~q\);

-- Location: LCCOMB_X12_Y15_N24
\U4|Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector23~0_combout\ = (\U4|present_state.AUTOREFRESH_TRC~q\ & (\U4|count_trc_init~q\ $ (((\U4|Equal5~0_combout\ & \U4|init_precharge~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|present_state.AUTOREFRESH_TRC~q\,
	datab => \U4|Equal5~0_combout\,
	datac => \U4|count_trc_init~q\,
	datad => \U4|init_precharge~q\,
	combout => \U4|Selector23~0_combout\);

-- Location: LCCOMB_X12_Y15_N4
\U4|Selector23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector23~1_combout\ = (\U4|Selector23~0_combout\) # ((!\U4|Selector25~0_combout\ & (\U4|count_trc_init~q\ & !\U4|present_state.AUTOREFRESH_TRC~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|Selector25~0_combout\,
	datab => \U4|Selector23~0_combout\,
	datac => \U4|count_trc_init~q\,
	datad => \U4|present_state.AUTOREFRESH_TRC~q\,
	combout => \U4|Selector23~1_combout\);

-- Location: FF_X12_Y15_N5
\U4|count_trc_init\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|Selector23~1_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|count_trc_init~q\);

-- Location: LCCOMB_X12_Y15_N26
\U4|Selector81~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector81~0_combout\ = (\U4|present_state.AUTOREFRESH_TRC~q\ & (\U4|Equal5~0_combout\ & (!\U4|count_trc_init~q\ & \U4|init_precharge~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|present_state.AUTOREFRESH_TRC~q\,
	datab => \U4|Equal5~0_combout\,
	datac => \U4|count_trc_init~q\,
	datad => \U4|init_precharge~q\,
	combout => \U4|Selector81~0_combout\);

-- Location: LCCOMB_X12_Y15_N28
\U4|Selector81~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector81~2_combout\ = (\U4|Selector81~1_combout\) # ((\U4|Selector81~0_combout\) # ((\U4|present_state.IDLE~q\ & \U4|refreshsdram~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|Selector81~1_combout\,
	datab => \U4|present_state.IDLE~q\,
	datac => \U4|Selector81~0_combout\,
	datad => \U4|refreshsdram~q\,
	combout => \U4|Selector81~2_combout\);

-- Location: FF_X12_Y15_N29
\U4|present_state.AUTOREFRESH\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|Selector81~2_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|present_state.AUTOREFRESH~q\);

-- Location: LCCOMB_X12_Y15_N6
\U4|Selector82~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector82~0_combout\ = (\U4|present_state.AUTOREFRESH~q\) # ((!\U4|Equal5~0_combout\ & \U4|present_state.AUTOREFRESH_TRC~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|Equal5~0_combout\,
	datac => \U4|present_state.AUTOREFRESH_TRC~q\,
	datad => \U4|present_state.AUTOREFRESH~q\,
	combout => \U4|Selector82~0_combout\);

-- Location: FF_X12_Y15_N7
\U4|present_state.AUTOREFRESH_TRC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|Selector82~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|present_state.AUTOREFRESH_TRC~q\);

-- Location: LCCOMB_X12_Y15_N8
\U4|Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector22~0_combout\ = (\U4|count_trc\(0) & (\U4|present_state.INIT~q\ & (!\U4|present_state.IDLE~q\ & !\U4|present_state.AUTOREFRESH_TRC~q\))) # (!\U4|count_trc\(0) & (((\U4|present_state.AUTOREFRESH_TRC~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|present_state.INIT~q\,
	datab => \U4|present_state.IDLE~q\,
	datac => \U4|count_trc\(0),
	datad => \U4|present_state.AUTOREFRESH_TRC~q\,
	combout => \U4|Selector22~0_combout\);

-- Location: FF_X12_Y15_N9
\U4|count_trc[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|Selector22~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|count_trc\(0));

-- Location: LCCOMB_X12_Y15_N18
\U4|Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector21~0_combout\ = (\U4|present_state.AUTOREFRESH_TRC~q\ & ((\U4|count_trc\(0) $ (\U4|count_trc\(1))))) # (!\U4|present_state.AUTOREFRESH_TRC~q\ & (!\U4|Selector25~0_combout\ & ((\U4|count_trc\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|Selector25~0_combout\,
	datab => \U4|count_trc\(0),
	datac => \U4|count_trc\(1),
	datad => \U4|present_state.AUTOREFRESH_TRC~q\,
	combout => \U4|Selector21~0_combout\);

-- Location: FF_X12_Y15_N19
\U4|count_trc[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|Selector21~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|count_trc\(1));

-- Location: LCCOMB_X12_Y15_N10
\U4|Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector20~0_combout\ = \U4|count_trc\(2) $ (((\U4|present_state.AUTOREFRESH_TRC~q\ & (\U4|count_trc\(1) & \U4|count_trc\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|present_state.AUTOREFRESH_TRC~q\,
	datab => \U4|count_trc\(1),
	datac => \U4|count_trc\(0),
	datad => \U4|count_trc\(2),
	combout => \U4|Selector20~0_combout\);

-- Location: LCCOMB_X12_Y15_N16
\U4|Selector20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector20~1_combout\ = (\U4|Selector20~0_combout\ & ((\U4|present_state.AUTOREFRESH_TRC~q\) # ((!\U4|present_state.IDLE~q\ & \U4|present_state.INIT~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|present_state.AUTOREFRESH_TRC~q\,
	datab => \U4|present_state.IDLE~q\,
	datac => \U4|present_state.INIT~q\,
	datad => \U4|Selector20~0_combout\,
	combout => \U4|Selector20~1_combout\);

-- Location: FF_X12_Y15_N17
\U4|count_trc[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|Selector20~1_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|count_trc\(2));

-- Location: LCCOMB_X12_Y15_N12
\U4|Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector26~0_combout\ = (((\U4|init_precharge~q\) # (!\U4|count_trc\(0))) # (!\U4|count_trc\(2))) # (!\U4|count_trc\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|count_trc\(1),
	datab => \U4|count_trc\(2),
	datac => \U4|count_trc\(0),
	datad => \U4|init_precharge~q\,
	combout => \U4|Selector26~0_combout\);

-- Location: LCCOMB_X12_Y15_N30
\U4|Selector26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector26~1_combout\ = (\U4|present_state.AUTOREFRESH_TRC~q\ & (((\U4|Selector26~0_combout\)) # (!\U4|refreshsdram~q\))) # (!\U4|present_state.AUTOREFRESH_TRC~q\ & (((\U4|present_state.INIT~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|present_state.AUTOREFRESH_TRC~q\,
	datab => \U4|refreshsdram~q\,
	datac => \U4|present_state.INIT~q\,
	datad => \U4|Selector26~0_combout\,
	combout => \U4|Selector26~1_combout\);

-- Location: LCCOMB_X13_Y15_N0
\U4|Selector26~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector26~2_combout\ = (\U4|present_state.IDLE~q\) # ((\U4|autorefresh_en~q\ & \U4|Selector26~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|present_state.IDLE~q\,
	datac => \U4|autorefresh_en~q\,
	datad => \U4|Selector26~1_combout\,
	combout => \U4|Selector26~2_combout\);

-- Location: FF_X13_Y15_N1
\U4|autorefresh_en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|Selector26~2_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|autorefresh_en~q\);

-- Location: FF_X16_Y16_N17
\U4|count_autorefresh[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|count_autorefresh[0]~8_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sclr => \U4|ALT_INV_autorefresh_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|count_autorefresh\(0));

-- Location: LCCOMB_X16_Y16_N18
\U4|count_autorefresh[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|count_autorefresh[1]~10_combout\ = (\U4|count_autorefresh\(1) & (!\U4|count_autorefresh[0]~9\)) # (!\U4|count_autorefresh\(1) & ((\U4|count_autorefresh[0]~9\) # (GND)))
-- \U4|count_autorefresh[1]~11\ = CARRY((!\U4|count_autorefresh[0]~9\) # (!\U4|count_autorefresh\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U4|count_autorefresh\(1),
	datad => VCC,
	cin => \U4|count_autorefresh[0]~9\,
	combout => \U4|count_autorefresh[1]~10_combout\,
	cout => \U4|count_autorefresh[1]~11\);

-- Location: FF_X16_Y16_N19
\U4|count_autorefresh[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|count_autorefresh[1]~10_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sclr => \U4|ALT_INV_autorefresh_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|count_autorefresh\(1));

-- Location: LCCOMB_X16_Y16_N20
\U4|count_autorefresh[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|count_autorefresh[2]~12_combout\ = (\U4|count_autorefresh\(2) & (\U4|count_autorefresh[1]~11\ $ (GND))) # (!\U4|count_autorefresh\(2) & (!\U4|count_autorefresh[1]~11\ & VCC))
-- \U4|count_autorefresh[2]~13\ = CARRY((\U4|count_autorefresh\(2) & !\U4|count_autorefresh[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U4|count_autorefresh\(2),
	datad => VCC,
	cin => \U4|count_autorefresh[1]~11\,
	combout => \U4|count_autorefresh[2]~12_combout\,
	cout => \U4|count_autorefresh[2]~13\);

-- Location: FF_X16_Y16_N21
\U4|count_autorefresh[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|count_autorefresh[2]~12_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sclr => \U4|ALT_INV_autorefresh_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|count_autorefresh\(2));

-- Location: LCCOMB_X16_Y16_N22
\U4|count_autorefresh[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|count_autorefresh[3]~14_combout\ = (\U4|count_autorefresh\(3) & (!\U4|count_autorefresh[2]~13\)) # (!\U4|count_autorefresh\(3) & ((\U4|count_autorefresh[2]~13\) # (GND)))
-- \U4|count_autorefresh[3]~15\ = CARRY((!\U4|count_autorefresh[2]~13\) # (!\U4|count_autorefresh\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U4|count_autorefresh\(3),
	datad => VCC,
	cin => \U4|count_autorefresh[2]~13\,
	combout => \U4|count_autorefresh[3]~14_combout\,
	cout => \U4|count_autorefresh[3]~15\);

-- Location: LCCOMB_X16_Y16_N24
\U4|count_autorefresh[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|count_autorefresh[4]~16_combout\ = (\U4|count_autorefresh\(4) & (\U4|count_autorefresh[3]~15\ $ (GND))) # (!\U4|count_autorefresh\(4) & (!\U4|count_autorefresh[3]~15\ & VCC))
-- \U4|count_autorefresh[4]~17\ = CARRY((\U4|count_autorefresh\(4) & !\U4|count_autorefresh[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U4|count_autorefresh\(4),
	datad => VCC,
	cin => \U4|count_autorefresh[3]~15\,
	combout => \U4|count_autorefresh[4]~16_combout\,
	cout => \U4|count_autorefresh[4]~17\);

-- Location: FF_X16_Y16_N25
\U4|count_autorefresh[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|count_autorefresh[4]~16_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sclr => \U4|ALT_INV_autorefresh_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|count_autorefresh\(4));

-- Location: LCCOMB_X16_Y16_N28
\U4|count_autorefresh[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|count_autorefresh[6]~20_combout\ = (\U4|count_autorefresh\(6) & (\U4|count_autorefresh[5]~19\ $ (GND))) # (!\U4|count_autorefresh\(6) & (!\U4|count_autorefresh[5]~19\ & VCC))
-- \U4|count_autorefresh[6]~21\ = CARRY((\U4|count_autorefresh\(6) & !\U4|count_autorefresh[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U4|count_autorefresh\(6),
	datad => VCC,
	cin => \U4|count_autorefresh[5]~19\,
	combout => \U4|count_autorefresh[6]~20_combout\,
	cout => \U4|count_autorefresh[6]~21\);

-- Location: FF_X16_Y16_N29
\U4|count_autorefresh[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|count_autorefresh[6]~20_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sclr => \U4|ALT_INV_autorefresh_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|count_autorefresh\(6));

-- Location: LCCOMB_X16_Y16_N30
\U4|count_autorefresh[7]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|count_autorefresh[7]~22_combout\ = \U4|count_autorefresh\(7) $ (\U4|count_autorefresh[6]~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U4|count_autorefresh\(7),
	cin => \U4|count_autorefresh[6]~21\,
	combout => \U4|count_autorefresh[7]~22_combout\);

-- Location: FF_X16_Y16_N31
\U4|count_autorefresh[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|count_autorefresh[7]~22_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sclr => \U4|ALT_INV_autorefresh_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|count_autorefresh\(7));

-- Location: FF_X16_Y16_N23
\U4|count_autorefresh[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|count_autorefresh[3]~14_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sclr => \U4|ALT_INV_autorefresh_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|count_autorefresh\(3));

-- Location: LCCOMB_X16_Y16_N2
\U4|Equal13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Equal13~0_combout\ = (\U4|count_autorefresh\(2) & (\U4|count_autorefresh\(1) & (!\U4|count_autorefresh\(3) & \U4|count_autorefresh\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|count_autorefresh\(2),
	datab => \U4|count_autorefresh\(1),
	datac => \U4|count_autorefresh\(3),
	datad => \U4|count_autorefresh\(0),
	combout => \U4|Equal13~0_combout\);

-- Location: LCCOMB_X16_Y16_N6
\U4|Equal13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Equal13~2_combout\ = (\U4|Equal13~1_combout\ & (\U4|count_autorefresh\(6) & (\U4|count_autorefresh\(7) & \U4|Equal13~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|Equal13~1_combout\,
	datab => \U4|count_autorefresh\(6),
	datac => \U4|count_autorefresh\(7),
	datad => \U4|Equal13~0_combout\,
	combout => \U4|Equal13~2_combout\);

-- Location: LCCOMB_X16_Y16_N0
\U4|refreshsdram~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|refreshsdram~0_combout\ = (\U4|autorefresh_en~q\ & ((\U4|refreshsdram~q\) # (\U4|Equal13~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|autorefresh_en~q\,
	datac => \U4|refreshsdram~q\,
	datad => \U4|Equal13~2_combout\,
	combout => \U4|refreshsdram~0_combout\);

-- Location: FF_X16_Y16_N1
\U4|refreshsdram\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|refreshsdram~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|refreshsdram~q\);

-- Location: LCCOMB_X14_Y15_N24
\U4|Selector85~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector85~0_combout\ = (\U4|present_state.IDLE~q\ & (!\U4|present_state~35_combout\ & !\U4|refreshsdram~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|present_state.IDLE~q\,
	datac => \U4|present_state~35_combout\,
	datad => \U4|refreshsdram~q\,
	combout => \U4|Selector85~0_combout\);

-- Location: LCCOMB_X14_Y15_N18
\U4|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector19~0_combout\ = (\U4|present_state.PRECHARGE_TRP~q\ & (!\U4|count_trp\(1) & (!\U4|count_trp\(0)))) # (!\U4|present_state.PRECHARGE_TRP~q\ & (((\U4|count_trp\(0) & !\U4|Selector25~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|present_state.PRECHARGE_TRP~q\,
	datab => \U4|count_trp\(1),
	datac => \U4|count_trp\(0),
	datad => \U4|Selector25~0_combout\,
	combout => \U4|Selector19~0_combout\);

-- Location: FF_X14_Y15_N19
\U4|count_trp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|Selector19~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|count_trp\(0));

-- Location: LCCOMB_X14_Y15_N20
\U4|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector18~0_combout\ = (\U4|present_state.PRECHARGE_TRP~q\ & (\U4|count_trp\(0) & (!\U4|count_trp\(1)))) # (!\U4|present_state.PRECHARGE_TRP~q\ & (((\U4|count_trp\(1) & !\U4|Selector25~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|present_state.PRECHARGE_TRP~q\,
	datab => \U4|count_trp\(0),
	datac => \U4|count_trp\(1),
	datad => \U4|Selector25~0_combout\,
	combout => \U4|Selector18~0_combout\);

-- Location: FF_X14_Y15_N21
\U4|count_trp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|Selector18~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|count_trp\(1));

-- Location: LCCOMB_X13_Y15_N20
\U4|Selector38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector38~0_combout\ = (\U4|present_state.PRECHARGE_TRP~q\ & (\U4|count_trp\(1) & (!\U4|init_precharge~q\ & !\U4|count_trp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|present_state.PRECHARGE_TRP~q\,
	datab => \U4|count_trp\(1),
	datac => \U4|init_precharge~q\,
	datad => \U4|count_trp\(0),
	combout => \U4|Selector38~0_combout\);

-- Location: LCCOMB_X11_Y15_N14
\U4|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Equal0~0_combout\ = (\U2|wr_t\(0) & !\U2|wr_t\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|wr_t\(0),
	datad => \U2|wr_t\(1),
	combout => \U4|Equal0~0_combout\);

-- Location: LCCOMB_X14_Y15_N14
\U4|Selector85~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector85~1_combout\ = (\U4|Equal3~3_combout\ & ((\U4|Selector38~0_combout\) # ((!\U4|Equal0~0_combout\ & \U4|Selector85~0_combout\)))) # (!\U4|Equal3~3_combout\ & (((!\U4|Equal0~0_combout\ & \U4|Selector85~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|Equal3~3_combout\,
	datab => \U4|Selector38~0_combout\,
	datac => \U4|Equal0~0_combout\,
	datad => \U4|Selector85~0_combout\,
	combout => \U4|Selector85~1_combout\);

-- Location: LCCOMB_X12_Y15_N22
\U4|Selector83~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector83~0_combout\ = (\U4|present_state.AUTOREFRESH_TRC~q\ & (\U4|Equal5~0_combout\ & (\U4|count_trc_init~q\ & \U4|init_precharge~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|present_state.AUTOREFRESH_TRC~q\,
	datab => \U4|Equal5~0_combout\,
	datac => \U4|count_trc_init~q\,
	datad => \U4|init_precharge~q\,
	combout => \U4|Selector83~0_combout\);

-- Location: FF_X12_Y15_N23
\U4|present_state.LOADMODE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|Selector83~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|present_state.LOADMODE~q\);

-- Location: LCCOMB_X14_Y16_N10
\U4|Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector24~0_combout\ = (\U4|present_state.LOADMODE_TRMD~q\ & (\U4|count_tmrd\(0) & (!\U4|count_tmrd\(1)))) # (!\U4|present_state.LOADMODE_TRMD~q\ & (((\U4|count_tmrd\(1) & !\U4|Selector25~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|count_tmrd\(0),
	datab => \U4|present_state.LOADMODE_TRMD~q\,
	datac => \U4|count_tmrd\(1),
	datad => \U4|Selector25~0_combout\,
	combout => \U4|Selector24~0_combout\);

-- Location: FF_X14_Y16_N11
\U4|count_tmrd[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|Selector24~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|count_tmrd\(1));

-- Location: LCCOMB_X14_Y16_N8
\U4|Selector84~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector84~0_combout\ = (\U4|present_state.LOADMODE~q\) # ((\U4|present_state.LOADMODE_TRMD~q\ & ((\U4|count_tmrd\(0)) # (!\U4|count_tmrd\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|count_tmrd\(0),
	datab => \U4|present_state.LOADMODE~q\,
	datac => \U4|present_state.LOADMODE_TRMD~q\,
	datad => \U4|count_tmrd\(1),
	combout => \U4|Selector84~0_combout\);

-- Location: FF_X14_Y16_N9
\U4|present_state.LOADMODE_TRMD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|Selector84~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|present_state.LOADMODE_TRMD~q\);

-- Location: LCCOMB_X14_Y16_N30
\U4|Selector85~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector85~2_combout\ = (!\U4|count_tmrd\(0) & (\U4|present_state.LOADMODE_TRMD~q\ & \U4|count_tmrd\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|count_tmrd\(0),
	datac => \U4|present_state.LOADMODE_TRMD~q\,
	datad => \U4|count_tmrd\(1),
	combout => \U4|Selector85~2_combout\);

-- Location: LCCOMB_X14_Y15_N8
\U4|Selector85~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector85~5_combout\ = (\U4|Selector85~4_combout\) # ((\U4|Selector85~2_combout\) # ((!\usbfifohalffull_t2~0_combout\ & \U4|Selector85~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|Selector85~4_combout\,
	datab => \usbfifohalffull_t2~0_combout\,
	datac => \U4|Selector85~2_combout\,
	datad => \U4|Selector85~0_combout\,
	combout => \U4|Selector85~5_combout\);

-- Location: LCCOMB_X14_Y14_N16
\U4|Selector32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector32~0_combout\ = (!\U4|present_state.IDLE~q\ & (\U4|count_done\(0) & \U4|present_state.INIT~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|present_state.IDLE~q\,
	datac => \U4|count_done\(0),
	datad => \U4|present_state.INIT~q\,
	combout => \U4|Selector32~0_combout\);

-- Location: LCCOMB_X14_Y14_N22
\U4|count_done[0]~_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|count_done[0]~_wirecell_combout\ = !\U4|count_done\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U4|count_done\(0),
	combout => \U4|count_done[0]~_wirecell_combout\);

-- Location: LCCOMB_X14_Y15_N4
\U4|Selector38~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector38~1_combout\ = (\U4|Selector38~0_combout\ & (!\U4|Equal3~3_combout\ & ((\U4|readsdram_en~q\) # (\U4|writesdram_en~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|readsdram_en~q\,
	datab => \U4|Selector38~0_combout\,
	datac => \U4|Equal3~3_combout\,
	datad => \U4|writesdram_en~q\,
	combout => \U4|Selector38~1_combout\);

-- Location: LCCOMB_X14_Y15_N12
\U4|Selector92~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector92~0_combout\ = (\U4|Selector38~1_combout\) # ((\U4|present_state.COMMANDDONE~q\ & ((!\U4|count_done\(0)) # (!\U4|count_done\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|count_done\(1),
	datab => \U4|Selector38~1_combout\,
	datac => \U4|present_state.COMMANDDONE~q\,
	datad => \U4|count_done\(0),
	combout => \U4|Selector92~0_combout\);

-- Location: FF_X14_Y15_N13
\U4|present_state.COMMANDDONE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|Selector92~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|present_state.COMMANDDONE~q\);

-- Location: FF_X14_Y14_N17
\U4|count_done[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|Selector32~0_combout\,
	asdata => \U4|count_done[0]~_wirecell_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sload => \U4|present_state.COMMANDDONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|count_done\(0));

-- Location: LCCOMB_X14_Y15_N26
\U4|Selector31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector31~0_combout\ = (\U4|present_state.COMMANDDONE~q\ & (\U4|count_done\(0) $ ((\U4|count_done\(1))))) # (!\U4|present_state.COMMANDDONE~q\ & (((\U4|count_done\(1) & !\U4|Selector25~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|present_state.COMMANDDONE~q\,
	datab => \U4|count_done\(0),
	datac => \U4|count_done\(1),
	datad => \U4|Selector25~0_combout\,
	combout => \U4|Selector31~0_combout\);

-- Location: FF_X14_Y15_N27
\U4|count_done[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|Selector31~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|count_done\(1));

-- Location: LCCOMB_X14_Y15_N10
\U4|Selector85~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector85~6_combout\ = (\U4|Selector85~5_combout\) # ((\U4|present_state.COMMANDDONE~q\ & (\U4|count_done\(1) & \U4|count_done\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|present_state.COMMANDDONE~q\,
	datab => \U4|Selector85~5_combout\,
	datac => \U4|count_done\(1),
	datad => \U4|count_done\(0),
	combout => \U4|Selector85~6_combout\);

-- Location: LCCOMB_X14_Y15_N0
\U4|Selector85~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector85~7_combout\ = (\U4|Selector85~1_combout\) # ((\U4|Selector85~6_combout\) # ((!\U1|U0|dcfifo_component|auto_generated|op_2~20_combout\ & \U4|Selector85~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|op_2~20_combout\,
	datab => \U4|Selector85~0_combout\,
	datac => \U4|Selector85~1_combout\,
	datad => \U4|Selector85~6_combout\,
	combout => \U4|Selector85~7_combout\);

-- Location: FF_X14_Y15_N1
\U4|present_state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|Selector85~7_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|present_state.IDLE~q\);

-- Location: LCCOMB_X14_Y15_N22
\U4|Selector36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector36~0_combout\ = (\U4|present_state.IDLE~q\ & (\U4|present_state~35_combout\ & !\U4|refreshsdram~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|present_state.IDLE~q\,
	datac => \U4|present_state~35_combout\,
	datad => \U4|refreshsdram~q\,
	combout => \U4|Selector36~0_combout\);

-- Location: FF_X14_Y15_N23
\U4|readsdram_en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|Selector36~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	ena => \U4|Selector25~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|readsdram_en~q\);

-- Location: LCCOMB_X13_Y15_N24
\U4|row~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|row~13_combout\ = ((\U4|init_precharge~q\) # ((!\U4|readsdram_en~q\ & !\U4|writesdram_en~q\))) # (!\U4|Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|Equal2~0_combout\,
	datab => \U4|readsdram_en~q\,
	datac => \U4|init_precharge~q\,
	datad => \U4|writesdram_en~q\,
	combout => \U4|row~13_combout\);

-- Location: LCCOMB_X12_Y16_N4
\U4|row[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|row[0]~14_combout\ = (\U4|row\(0) & (\U4|row~13_combout\ $ (GND))) # (!\U4|row\(0) & (!\U4|row~13_combout\ & VCC))
-- \U4|row[0]~15\ = CARRY((\U4|row\(0) & !\U4|row~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|row\(0),
	datab => \U4|row~13_combout\,
	datad => VCC,
	combout => \U4|row[0]~14_combout\,
	cout => \U4|row[0]~15\);

-- Location: LCCOMB_X13_Y16_N18
\U4|Selector52~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector52~0_combout\ = (\U4|row\(0) & \U4|present_state.INIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|row\(0),
	datad => \U4|present_state.INIT~q\,
	combout => \U4|Selector52~0_combout\);

-- Location: LCCOMB_X14_Y16_N24
\U4|Selector79~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector79~0_combout\ = (\U4|count_twr\(1) & (!\U4|count_twr\(0) & \U4|present_state.WRITEDATA_TWR~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|count_twr\(1),
	datac => \U4|count_twr\(0),
	datad => \U4|present_state.WRITEDATA_TWR~q\,
	combout => \U4|Selector79~0_combout\);

-- Location: LCCOMB_X14_Y16_N2
\U4|Selector79~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector79~1_combout\ = (\U4|Selector79~0_combout\) # ((!\U4|writesdram_en~q\ & (!\U4|readsdram_en~q\ & \U4|Selector90~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|writesdram_en~q\,
	datab => \U4|Selector79~0_combout\,
	datac => \U4|readsdram_en~q\,
	datad => \U4|Selector90~0_combout\,
	combout => \U4|Selector79~1_combout\);

-- Location: LCCOMB_X13_Y15_N12
\U4|Selector79~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector79~3_combout\ = (\U4|Selector79~1_combout\) # ((\U4|Selector79~2_combout\) # ((\U4|Equal1~4_combout\ & !\U4|present_state.INIT~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|Equal1~4_combout\,
	datab => \U4|present_state.INIT~q\,
	datac => \U4|Selector79~1_combout\,
	datad => \U4|Selector79~2_combout\,
	combout => \U4|Selector79~3_combout\);

-- Location: FF_X13_Y15_N13
\U4|present_state.PRECHARGE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|Selector79~3_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|present_state.PRECHARGE~q\);

-- Location: LCCOMB_X13_Y15_N26
\U4|Selector80~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector80~0_combout\ = (\U4|present_state.PRECHARGE~q\) # ((\U4|present_state.PRECHARGE_TRP~q\ & ((\U4|count_trp\(0)) # (!\U4|count_trp\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|count_trp\(1),
	datab => \U4|present_state.PRECHARGE~q\,
	datac => \U4|present_state.PRECHARGE_TRP~q\,
	datad => \U4|count_trp\(0),
	combout => \U4|Selector80~0_combout\);

-- Location: FF_X13_Y15_N27
\U4|present_state.PRECHARGE_TRP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|Selector80~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|present_state.PRECHARGE_TRP~q\);

-- Location: FF_X12_Y16_N5
\U4|row[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|row[0]~14_combout\,
	asdata => \U4|Selector52~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sload => \U4|ALT_INV_present_state.PRECHARGE_TRP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|row\(0));

-- Location: LCCOMB_X12_Y16_N6
\U4|row[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|row[1]~16_combout\ = (\U4|row\(1) & (!\U4|row[0]~15\)) # (!\U4|row\(1) & ((\U4|row[0]~15\) # (GND)))
-- \U4|row[1]~17\ = CARRY((!\U4|row[0]~15\) # (!\U4|row\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U4|row\(1),
	datad => VCC,
	cin => \U4|row[0]~15\,
	combout => \U4|row[1]~16_combout\,
	cout => \U4|row[1]~17\);

-- Location: LCCOMB_X13_Y16_N20
\U4|Selector51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector51~0_combout\ = (\U4|row\(1) & \U4|present_state.INIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|row\(1),
	datad => \U4|present_state.INIT~q\,
	combout => \U4|Selector51~0_combout\);

-- Location: FF_X12_Y16_N7
\U4|row[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|row[1]~16_combout\,
	asdata => \U4|Selector51~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sload => \U4|ALT_INV_present_state.PRECHARGE_TRP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|row\(1));

-- Location: LCCOMB_X12_Y16_N8
\U4|row[2]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|row[2]~18_combout\ = (\U4|row\(2) & (\U4|row[1]~17\ $ (GND))) # (!\U4|row\(2) & (!\U4|row[1]~17\ & VCC))
-- \U4|row[2]~19\ = CARRY((\U4|row\(2) & !\U4|row[1]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U4|row\(2),
	datad => VCC,
	cin => \U4|row[1]~17\,
	combout => \U4|row[2]~18_combout\,
	cout => \U4|row[2]~19\);

-- Location: LCCOMB_X13_Y16_N10
\U4|Selector50~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector50~0_combout\ = (\U4|row\(2) & \U4|present_state.INIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|row\(2),
	datad => \U4|present_state.INIT~q\,
	combout => \U4|Selector50~0_combout\);

-- Location: FF_X12_Y16_N9
\U4|row[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|row[2]~18_combout\,
	asdata => \U4|Selector50~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sload => \U4|ALT_INV_present_state.PRECHARGE_TRP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|row\(2));

-- Location: LCCOMB_X13_Y16_N2
\U4|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Equal3~0_combout\ = (((!\U4|row\(2)) # (!\U4|row\(1))) # (!\U4|row\(0))) # (!\U4|row\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|row\(3),
	datab => \U4|row\(0),
	datac => \U4|row\(1),
	datad => \U4|row\(2),
	combout => \U4|Equal3~0_combout\);

-- Location: LCCOMB_X12_Y16_N10
\U4|row[3]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|row[3]~20_combout\ = (\U4|row\(3) & (!\U4|row[2]~19\)) # (!\U4|row\(3) & ((\U4|row[2]~19\) # (GND)))
-- \U4|row[3]~21\ = CARRY((!\U4|row[2]~19\) # (!\U4|row\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U4|row\(3),
	datad => VCC,
	cin => \U4|row[2]~19\,
	combout => \U4|row[3]~20_combout\,
	cout => \U4|row[3]~21\);

-- Location: LCCOMB_X12_Y16_N12
\U4|row[4]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|row[4]~22_combout\ = (\U4|row\(4) & (\U4|row[3]~21\ $ (GND))) # (!\U4|row\(4) & (!\U4|row[3]~21\ & VCC))
-- \U4|row[4]~23\ = CARRY((\U4|row\(4) & !\U4|row[3]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U4|row\(4),
	datad => VCC,
	cin => \U4|row[3]~21\,
	combout => \U4|row[4]~22_combout\,
	cout => \U4|row[4]~23\);

-- Location: LCCOMB_X12_Y16_N14
\U4|row[5]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|row[5]~24_combout\ = (\U4|row\(5) & (!\U4|row[4]~23\)) # (!\U4|row\(5) & ((\U4|row[4]~23\) # (GND)))
-- \U4|row[5]~25\ = CARRY((!\U4|row[4]~23\) # (!\U4|row\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U4|row\(5),
	datad => VCC,
	cin => \U4|row[4]~23\,
	combout => \U4|row[5]~24_combout\,
	cout => \U4|row[5]~25\);

-- Location: LCCOMB_X11_Y16_N6
\U4|Selector47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector47~0_combout\ = (\U4|row\(5) & \U4|present_state.INIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|row\(5),
	datad => \U4|present_state.INIT~q\,
	combout => \U4|Selector47~0_combout\);

-- Location: FF_X12_Y16_N15
\U4|row[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|row[5]~24_combout\,
	asdata => \U4|Selector47~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sload => \U4|ALT_INV_present_state.PRECHARGE_TRP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|row\(5));

-- Location: LCCOMB_X12_Y16_N16
\U4|row[6]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|row[6]~26_combout\ = (\U4|row\(6) & (\U4|row[5]~25\ $ (GND))) # (!\U4|row\(6) & (!\U4|row[5]~25\ & VCC))
-- \U4|row[6]~27\ = CARRY((\U4|row\(6) & !\U4|row[5]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U4|row\(6),
	datad => VCC,
	cin => \U4|row[5]~25\,
	combout => \U4|row[6]~26_combout\,
	cout => \U4|row[6]~27\);

-- Location: LCCOMB_X13_Y16_N14
\U4|Selector46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector46~0_combout\ = (\U4|row\(6) & \U4|present_state.INIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|row\(6),
	datad => \U4|present_state.INIT~q\,
	combout => \U4|Selector46~0_combout\);

-- Location: FF_X12_Y16_N17
\U4|row[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|row[6]~26_combout\,
	asdata => \U4|Selector46~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sload => \U4|ALT_INV_present_state.PRECHARGE_TRP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|row\(6));

-- Location: LCCOMB_X12_Y16_N18
\U4|row[7]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|row[7]~28_combout\ = (\U4|row\(7) & (!\U4|row[6]~27\)) # (!\U4|row\(7) & ((\U4|row[6]~27\) # (GND)))
-- \U4|row[7]~29\ = CARRY((!\U4|row[6]~27\) # (!\U4|row\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U4|row\(7),
	datad => VCC,
	cin => \U4|row[6]~27\,
	combout => \U4|row[7]~28_combout\,
	cout => \U4|row[7]~29\);

-- Location: LCCOMB_X11_Y16_N4
\U4|Selector45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector45~0_combout\ = (\U4|row\(7) & \U4|present_state.INIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|row\(7),
	datad => \U4|present_state.INIT~q\,
	combout => \U4|Selector45~0_combout\);

-- Location: FF_X12_Y16_N19
\U4|row[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|row[7]~28_combout\,
	asdata => \U4|Selector45~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sload => \U4|ALT_INV_present_state.PRECHARGE_TRP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|row\(7));

-- Location: LCCOMB_X12_Y16_N0
\U4|Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Equal3~1_combout\ = (((!\U4|row\(7)) # (!\U4|row\(5))) # (!\U4|row\(6))) # (!\U4|row\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|row\(4),
	datab => \U4|row\(6),
	datac => \U4|row\(5),
	datad => \U4|row\(7),
	combout => \U4|Equal3~1_combout\);

-- Location: LCCOMB_X12_Y16_N20
\U4|row[8]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|row[8]~30_combout\ = (\U4|row\(8) & (\U4|row[7]~29\ $ (GND))) # (!\U4|row\(8) & (!\U4|row[7]~29\ & VCC))
-- \U4|row[8]~31\ = CARRY((\U4|row\(8) & !\U4|row[7]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U4|row\(8),
	datad => VCC,
	cin => \U4|row[7]~29\,
	combout => \U4|row[8]~30_combout\,
	cout => \U4|row[8]~31\);

-- Location: LCCOMB_X12_Y16_N30
\U4|Selector44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector44~0_combout\ = (\U4|row\(8) & \U4|present_state.INIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|row\(8),
	datad => \U4|present_state.INIT~q\,
	combout => \U4|Selector44~0_combout\);

-- Location: FF_X12_Y16_N21
\U4|row[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|row[8]~30_combout\,
	asdata => \U4|Selector44~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sload => \U4|ALT_INV_present_state.PRECHARGE_TRP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|row\(8));

-- Location: LCCOMB_X12_Y16_N22
\U4|row[9]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|row[9]~32_combout\ = (\U4|row\(9) & (!\U4|row[8]~31\)) # (!\U4|row\(9) & ((\U4|row[8]~31\) # (GND)))
-- \U4|row[9]~33\ = CARRY((!\U4|row[8]~31\) # (!\U4|row\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U4|row\(9),
	datad => VCC,
	cin => \U4|row[8]~31\,
	combout => \U4|row[9]~32_combout\,
	cout => \U4|row[9]~33\);

-- Location: LCCOMB_X11_Y16_N0
\U4|Selector42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector42~0_combout\ = (\U4|row\(10) & \U4|present_state.INIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|row\(10),
	datad => \U4|present_state.INIT~q\,
	combout => \U4|Selector42~0_combout\);

-- Location: FF_X12_Y16_N25
\U4|row[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|row[10]~34_combout\,
	asdata => \U4|Selector42~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sload => \U4|ALT_INV_present_state.PRECHARGE_TRP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|row\(10));

-- Location: LCCOMB_X11_Y16_N26
\U4|Selector43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector43~0_combout\ = (\U4|row\(9) & \U4|present_state.INIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|row\(9),
	datad => \U4|present_state.INIT~q\,
	combout => \U4|Selector43~0_combout\);

-- Location: FF_X12_Y16_N23
\U4|row[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|row[9]~32_combout\,
	asdata => \U4|Selector43~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sload => \U4|ALT_INV_present_state.PRECHARGE_TRP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|row\(9));

-- Location: LCCOMB_X12_Y16_N2
\U4|Equal3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Equal3~2_combout\ = (((!\U4|row\(8)) # (!\U4|row\(9))) # (!\U4|row\(10))) # (!\U4|row\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|row\(11),
	datab => \U4|row\(10),
	datac => \U4|row\(9),
	datad => \U4|row\(8),
	combout => \U4|Equal3~2_combout\);

-- Location: LCCOMB_X13_Y16_N4
\U4|Equal3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Equal3~3_combout\ = ((\U4|Equal3~0_combout\) # ((\U4|Equal3~1_combout\) # (\U4|Equal3~2_combout\))) # (!\U4|row\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|row\(12),
	datab => \U4|Equal3~0_combout\,
	datac => \U4|Equal3~1_combout\,
	datad => \U4|Equal3~2_combout\,
	combout => \U4|Equal3~3_combout\);

-- Location: LCCOMB_X14_Y17_N28
\U4|present_state~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|present_state~34_combout\ = (!\U4|readsdram_en~q\ & !\U4|writesdram_en~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|readsdram_en~q\,
	datad => \U4|writesdram_en~q\,
	combout => \U4|present_state~34_combout\);

-- Location: LCCOMB_X13_Y15_N4
\U4|Selector38~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector38~2_combout\ = ((\U4|Equal3~3_combout\) # ((\U4|init_precharge~q\) # (\U4|present_state~34_combout\))) # (!\U4|Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|Equal2~0_combout\,
	datab => \U4|Equal3~3_combout\,
	datac => \U4|init_precharge~q\,
	datad => \U4|present_state~34_combout\,
	combout => \U4|Selector38~2_combout\);

-- Location: LCCOMB_X13_Y15_N18
\U4|Selector38~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector38~3_combout\ = (\U4|bank\(1) & ((\U4|present_state.PRECHARGE_TRP~q\ & (\U4|Selector38~2_combout\)) # (!\U4|present_state.PRECHARGE_TRP~q\ & ((\U4|present_state.INIT~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|present_state.PRECHARGE_TRP~q\,
	datab => \U4|bank\(1),
	datac => \U4|Selector38~2_combout\,
	datad => \U4|present_state.INIT~q\,
	combout => \U4|Selector38~3_combout\);

-- Location: LCCOMB_X13_Y15_N16
\U4|Selector38~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector38~4_combout\ = (\U4|Selector38~3_combout\) # ((\U4|Selector38~1_combout\ & (\U4|bank\(0) $ (\U4|bank\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|bank\(0),
	datab => \U4|Selector38~3_combout\,
	datac => \U4|bank\(1),
	datad => \U4|Selector38~1_combout\,
	combout => \U4|Selector38~4_combout\);

-- Location: FF_X13_Y15_N17
\U4|bank[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|Selector38~4_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|bank\(1));

-- Location: LCCOMB_X13_Y15_N8
\U4|Selector39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector39~0_combout\ = (!\U4|Equal3~3_combout\ & (!\U4|init_precharge~q\ & ((\U4|readsdram_en~q\) # (\U4|writesdram_en~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|readsdram_en~q\,
	datab => \U4|Equal3~3_combout\,
	datac => \U4|init_precharge~q\,
	datad => \U4|writesdram_en~q\,
	combout => \U4|Selector39~0_combout\);

-- Location: LCCOMB_X13_Y15_N30
\U4|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Equal2~0_combout\ = (\U4|count_trp\(1) & !\U4|count_trp\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|count_trp\(1),
	datad => \U4|count_trp\(0),
	combout => \U4|Equal2~0_combout\);

-- Location: LCCOMB_X13_Y15_N2
\U4|Selector39~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector39~1_combout\ = (\U4|present_state.PRECHARGE_TRP~q\ & (\U4|bank\(0) $ (((\U4|Selector39~0_combout\ & \U4|Equal2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|present_state.PRECHARGE_TRP~q\,
	datab => \U4|Selector39~0_combout\,
	datac => \U4|Equal2~0_combout\,
	datad => \U4|bank\(0),
	combout => \U4|Selector39~1_combout\);

-- Location: LCCOMB_X13_Y15_N22
\U4|Selector39~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector39~2_combout\ = (\U4|Selector39~1_combout\) # ((!\U4|present_state.PRECHARGE_TRP~q\ & (\U4|bank\(0) & \U4|present_state.INIT~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|present_state.PRECHARGE_TRP~q\,
	datab => \U4|Selector39~1_combout\,
	datac => \U4|bank\(0),
	datad => \U4|present_state.INIT~q\,
	combout => \U4|Selector39~2_combout\);

-- Location: FF_X13_Y15_N23
\U4|bank[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|Selector39~2_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|bank\(0));

-- Location: LCCOMB_X13_Y15_N14
\U4|Selector34~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector34~1_combout\ = (\U4|Selector38~0_combout\ & (\U4|bank\(1) & (\U4|bank\(0) & !\U4|Equal3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|Selector38~0_combout\,
	datab => \U4|bank\(1),
	datac => \U4|bank\(0),
	datad => \U4|Equal3~3_combout\,
	combout => \U4|Selector34~1_combout\);

-- Location: LCCOMB_X14_Y14_N12
\U4|Selector34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector34~0_combout\ = (\U4|present_state.PRECHARGE_TRP~q\) # ((!\U4|present_state.COMMANDDONE~q\ & (!\U4|present_state.IDLE~q\ & \U4|present_state.INIT~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|present_state.COMMANDDONE~q\,
	datab => \U4|present_state.PRECHARGE_TRP~q\,
	datac => \U4|present_state.IDLE~q\,
	datad => \U4|present_state.INIT~q\,
	combout => \U4|Selector34~0_combout\);

-- Location: LCCOMB_X14_Y14_N26
\U4|Selector34~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector34~2_combout\ = (\U4|Selector90~3_combout\ & ((\U4|Selector34~1_combout\) # ((\U4|Empty~q\ & \U4|Selector34~0_combout\)))) # (!\U4|Selector90~3_combout\ & (((\U4|Empty~q\ & \U4|Selector34~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|Selector90~3_combout\,
	datab => \U4|Selector34~1_combout\,
	datac => \U4|Empty~q\,
	datad => \U4|Selector34~0_combout\,
	combout => \U4|Selector34~2_combout\);

-- Location: FF_X14_Y14_N27
\U4|Empty\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|Selector34~2_combout\,
	ena => \ALT_INV_resetn_t~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|Empty~q\);

-- Location: LCCOMB_X17_Y14_N28
\U2|Selector9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector9~1_combout\ = (!\U4|Empty~q\ & ((\U2|present_state.S5~q\) # ((\U2|present_state.S4~q\ & \U3|Full~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|present_state.S4~q\,
	datab => \U3|Full~q\,
	datac => \U2|present_state.S5~q\,
	datad => \U4|Empty~q\,
	combout => \U2|Selector9~1_combout\);

-- Location: FF_X17_Y14_N29
\U2|present_state.S5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U2|Selector9~1_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|present_state.S5~q\);

-- Location: LCCOMB_X17_Y14_N24
\U2|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector2~1_combout\ = ((!\U4|Empty~q\ & ((\U2|present_state.S4~q\) # (\U2|present_state.S5~q\)))) # (!\U2|Selector2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|Empty~q\,
	datab => \U2|Selector2~0_combout\,
	datac => \U2|present_state.S4~q\,
	datad => \U2|present_state.S5~q\,
	combout => \U2|Selector2~1_combout\);

-- Location: LCCOMB_X17_Y15_N2
\U2|Selector2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector2~2_combout\ = (\U2|Selector2~1_combout\) # ((\U2|Selector1~1_combout\ & ((\U3|Empty~q\) # (\U2|wr_t\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Selector1~1_combout\,
	datab => \U3|Empty~q\,
	datac => \U2|wr_t\(1),
	datad => \U2|Selector2~1_combout\,
	combout => \U2|Selector2~2_combout\);

-- Location: FF_X17_Y15_N3
\U2|wr_t[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U2|Selector2~2_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|wr_t\(1));

-- Location: LCCOMB_X14_Y15_N28
\usbfifohalffull_t2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \usbfifohalffull_t2~0_combout\ = (\U2|wr_t\(0) & (!\U2|wr_t\(1) & \U2|wr_t\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|wr_t\(0),
	datab => \U2|wr_t\(1),
	datac => \U2|wr_t\(2),
	combout => \usbfifohalffull_t2~0_combout\);

-- Location: LCCOMB_X14_Y15_N16
\U4|Selector35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector35~0_combout\ = (\U4|present_state.IDLE~q\ & (\usbfifohalffull_t2~0_combout\ & (\U1|U0|dcfifo_component|auto_generated|op_2~20_combout\ & !\U4|refreshsdram~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|present_state.IDLE~q\,
	datab => \usbfifohalffull_t2~0_combout\,
	datac => \U1|U0|dcfifo_component|auto_generated|op_2~20_combout\,
	datad => \U4|refreshsdram~q\,
	combout => \U4|Selector35~0_combout\);

-- Location: FF_X14_Y15_N17
\U4|writesdram_en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|Selector35~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	ena => \U4|Selector25~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|writesdram_en~q\);

-- Location: LCCOMB_X14_Y14_N20
\U4|Selector33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector33~0_combout\ = (\U4|Selector34~0_combout\ & ((\U4|Full~q\) # ((\U4|writesdram_en~q\ & \U4|Selector34~1_combout\)))) # (!\U4|Selector34~0_combout\ & (\U4|writesdram_en~q\ & ((\U4|Selector34~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|Selector34~0_combout\,
	datab => \U4|writesdram_en~q\,
	datac => \U4|Full~q\,
	datad => \U4|Selector34~1_combout\,
	combout => \U4|Selector33~0_combout\);

-- Location: FF_X14_Y14_N21
\U4|Full\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|Selector33~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|Full~q\);

-- Location: LCCOMB_X16_Y14_N18
\U2|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector0~0_combout\ = (\U2|present_state.S1~q\ & ((\U2|wr_t\(3)) # (\U4|Full~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|wr_t\(3),
	datac => \U2|present_state.S1~q\,
	datad => \U4|Full~q\,
	combout => \U2|Selector0~0_combout\);

-- Location: LCCOMB_X16_Y14_N28
\U2|Selector0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector0~2_combout\ = ((!\U3|Empty~q\ & ((\U2|Selector0~0_combout\) # (\U2|present_state.S2~q\)))) # (!\U2|Selector0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Selector0~1_combout\,
	datab => \U2|Selector0~0_combout\,
	datac => \U3|Empty~q\,
	datad => \U2|present_state.S2~q\,
	combout => \U2|Selector0~2_combout\);

-- Location: FF_X16_Y14_N29
\U2|wr_t[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U2|Selector0~2_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|wr_t\(3));

-- Location: LCCOMB_X16_Y14_N30
\usbfifohalffull_t1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \usbfifohalffull_t1~0_combout\ = (!\U2|wr_t\(0) & (!\U2|wr_t\(3) & !\U2|wr_t\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|wr_t\(0),
	datab => \U2|wr_t\(3),
	datac => \U2|wr_t\(2),
	combout => \usbfifohalffull_t1~0_combout\);

-- Location: LCCOMB_X18_Y9_N4
\U3|count_autorefresh[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|count_autorefresh[0]~8_combout\ = (\U3|Equal13~2_combout\ & (\U3|count_autorefresh\(0) & VCC)) # (!\U3|Equal13~2_combout\ & (\U3|count_autorefresh\(0) $ (VCC)))
-- \U3|count_autorefresh[0]~9\ = CARRY((!\U3|Equal13~2_combout\ & \U3|count_autorefresh\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Equal13~2_combout\,
	datab => \U3|count_autorefresh\(0),
	datad => VCC,
	combout => \U3|count_autorefresh[0]~8_combout\,
	cout => \U3|count_autorefresh[0]~9\);

-- Location: LCCOMB_X16_Y9_N24
\U3|Selector23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector23~1_combout\ = (\U3|Selector23~0_combout\) # ((!\U3|present_state.AUTOREFRESH_TRC~q\ & (\U3|count_trc_init~q\ & !\U3|Selector25~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Selector23~0_combout\,
	datab => \U3|present_state.AUTOREFRESH_TRC~q\,
	datac => \U3|count_trc_init~q\,
	datad => \U3|Selector25~0_combout\,
	combout => \U3|Selector23~1_combout\);

-- Location: FF_X16_Y9_N25
\U3|count_trc_init\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|Selector23~1_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|count_trc_init~q\);

-- Location: LCCOMB_X16_Y9_N28
\U3|Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector22~0_combout\ = (\U3|present_state.AUTOREFRESH_TRC~q\ & (((!\U3|count_trc\(0))))) # (!\U3|present_state.AUTOREFRESH_TRC~q\ & (!\U3|present_state.IDLE~q\ & (\U3|count_trc\(0) & \U3|present_state.INIT~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|present_state.IDLE~q\,
	datab => \U3|present_state.AUTOREFRESH_TRC~q\,
	datac => \U3|count_trc\(0),
	datad => \U3|present_state.INIT~q\,
	combout => \U3|Selector22~0_combout\);

-- Location: FF_X16_Y9_N29
\U3|count_trc[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|Selector22~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|count_trc\(0));

-- Location: LCCOMB_X16_Y9_N18
\U3|Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector21~0_combout\ = (\U3|present_state.AUTOREFRESH_TRC~q\ & (\U3|count_trc\(0) $ ((\U3|count_trc\(1))))) # (!\U3|present_state.AUTOREFRESH_TRC~q\ & (((\U3|count_trc\(1) & !\U3|Selector25~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|count_trc\(0),
	datab => \U3|present_state.AUTOREFRESH_TRC~q\,
	datac => \U3|count_trc\(1),
	datad => \U3|Selector25~0_combout\,
	combout => \U3|Selector21~0_combout\);

-- Location: FF_X16_Y9_N19
\U3|count_trc[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|Selector21~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|count_trc\(1));

-- Location: LCCOMB_X16_Y9_N26
\U3|Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Equal5~0_combout\ = (\U3|count_trc\(0) & (\U3|count_trc\(2) & \U3|count_trc\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|count_trc\(0),
	datac => \U3|count_trc\(2),
	datad => \U3|count_trc\(1),
	combout => \U3|Equal5~0_combout\);

-- Location: LCCOMB_X17_Y9_N8
\U3|Selector81~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector81~0_combout\ = (\U3|present_state.AUTOREFRESH_TRC~q\ & (!\U3|count_trc_init~q\ & (\U3|Equal5~0_combout\ & \U3|init_precharge~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|present_state.AUTOREFRESH_TRC~q\,
	datab => \U3|count_trc_init~q\,
	datac => \U3|Equal5~0_combout\,
	datad => \U3|init_precharge~q\,
	combout => \U3|Selector81~0_combout\);

-- Location: LCCOMB_X17_Y9_N28
\U3|Selector81~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector81~2_combout\ = (\U3|Selector81~1_combout\) # ((\U3|Selector81~0_combout\) # ((\U3|present_state.IDLE~q\ & \U3|refreshsdram~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Selector81~1_combout\,
	datab => \U3|Selector81~0_combout\,
	datac => \U3|present_state.IDLE~q\,
	datad => \U3|refreshsdram~q\,
	combout => \U3|Selector81~2_combout\);

-- Location: FF_X17_Y9_N29
\U3|present_state.AUTOREFRESH\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|Selector81~2_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|present_state.AUTOREFRESH~q\);

-- Location: LCCOMB_X17_Y9_N14
\U3|Selector82~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector82~0_combout\ = (\U3|present_state.AUTOREFRESH~q\) # ((!\U3|Equal5~0_combout\ & \U3|present_state.AUTOREFRESH_TRC~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Equal5~0_combout\,
	datac => \U3|present_state.AUTOREFRESH_TRC~q\,
	datad => \U3|present_state.AUTOREFRESH~q\,
	combout => \U3|Selector82~0_combout\);

-- Location: FF_X17_Y9_N15
\U3|present_state.AUTOREFRESH_TRC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|Selector82~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|present_state.AUTOREFRESH_TRC~q\);

-- Location: LCCOMB_X16_Y9_N12
\U3|Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector20~0_combout\ = \U3|count_trc\(2) $ (((\U3|count_trc\(0) & (\U3|present_state.AUTOREFRESH_TRC~q\ & \U3|count_trc\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|count_trc\(0),
	datab => \U3|present_state.AUTOREFRESH_TRC~q\,
	datac => \U3|count_trc\(2),
	datad => \U3|count_trc\(1),
	combout => \U3|Selector20~0_combout\);

-- Location: LCCOMB_X16_Y9_N4
\U3|Selector20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector20~1_combout\ = (\U3|Selector20~0_combout\ & ((\U3|present_state.AUTOREFRESH_TRC~q\) # ((\U3|present_state.INIT~q\ & !\U3|present_state.IDLE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|present_state.INIT~q\,
	datab => \U3|present_state.AUTOREFRESH_TRC~q\,
	datac => \U3|present_state.IDLE~q\,
	datad => \U3|Selector20~0_combout\,
	combout => \U3|Selector20~1_combout\);

-- Location: FF_X16_Y9_N5
\U3|count_trc[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|Selector20~1_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|count_trc\(2));

-- Location: LCCOMB_X16_Y9_N16
\U3|Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector26~0_combout\ = ((\U3|init_precharge~q\) # ((!\U3|count_trc\(1)) # (!\U3|count_trc\(2)))) # (!\U3|count_trc\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|count_trc\(0),
	datab => \U3|init_precharge~q\,
	datac => \U3|count_trc\(2),
	datad => \U3|count_trc\(1),
	combout => \U3|Selector26~0_combout\);

-- Location: LCCOMB_X17_Y9_N6
\U3|Selector26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector26~1_combout\ = (\U3|present_state.AUTOREFRESH_TRC~q\ & (((\U3|Selector26~0_combout\) # (!\U3|refreshsdram~q\)))) # (!\U3|present_state.AUTOREFRESH_TRC~q\ & (\U3|present_state.INIT~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|present_state.AUTOREFRESH_TRC~q\,
	datab => \U3|present_state.INIT~q\,
	datac => \U3|Selector26~0_combout\,
	datad => \U3|refreshsdram~q\,
	combout => \U3|Selector26~1_combout\);

-- Location: LCCOMB_X17_Y9_N12
\U3|Selector26~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector26~2_combout\ = (\U3|present_state.IDLE~q\) # ((\U3|autorefresh_en~q\ & \U3|Selector26~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|present_state.IDLE~q\,
	datac => \U3|autorefresh_en~q\,
	datad => \U3|Selector26~1_combout\,
	combout => \U3|Selector26~2_combout\);

-- Location: FF_X17_Y9_N13
\U3|autorefresh_en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|Selector26~2_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|autorefresh_en~q\);

-- Location: FF_X18_Y9_N5
\U3|count_autorefresh[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|count_autorefresh[0]~8_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sclr => \U3|ALT_INV_autorefresh_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|count_autorefresh\(0));

-- Location: LCCOMB_X18_Y9_N6
\U3|count_autorefresh[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|count_autorefresh[1]~10_combout\ = (\U3|count_autorefresh\(1) & (!\U3|count_autorefresh[0]~9\)) # (!\U3|count_autorefresh\(1) & ((\U3|count_autorefresh[0]~9\) # (GND)))
-- \U3|count_autorefresh[1]~11\ = CARRY((!\U3|count_autorefresh[0]~9\) # (!\U3|count_autorefresh\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|count_autorefresh\(1),
	datad => VCC,
	cin => \U3|count_autorefresh[0]~9\,
	combout => \U3|count_autorefresh[1]~10_combout\,
	cout => \U3|count_autorefresh[1]~11\);

-- Location: LCCOMB_X18_Y9_N8
\U3|count_autorefresh[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|count_autorefresh[2]~12_combout\ = (\U3|count_autorefresh\(2) & (\U3|count_autorefresh[1]~11\ $ (GND))) # (!\U3|count_autorefresh\(2) & (!\U3|count_autorefresh[1]~11\ & VCC))
-- \U3|count_autorefresh[2]~13\ = CARRY((\U3|count_autorefresh\(2) & !\U3|count_autorefresh[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U3|count_autorefresh\(2),
	datad => VCC,
	cin => \U3|count_autorefresh[1]~11\,
	combout => \U3|count_autorefresh[2]~12_combout\,
	cout => \U3|count_autorefresh[2]~13\);

-- Location: FF_X18_Y9_N9
\U3|count_autorefresh[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|count_autorefresh[2]~12_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sclr => \U3|ALT_INV_autorefresh_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|count_autorefresh\(2));

-- Location: FF_X18_Y9_N7
\U3|count_autorefresh[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|count_autorefresh[1]~10_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sclr => \U3|ALT_INV_autorefresh_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|count_autorefresh\(1));

-- Location: LCCOMB_X18_Y9_N0
\U3|Equal13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Equal13~0_combout\ = (!\U3|count_autorefresh\(3) & (\U3|count_autorefresh\(2) & (\U3|count_autorefresh\(0) & \U3|count_autorefresh\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|count_autorefresh\(3),
	datab => \U3|count_autorefresh\(2),
	datac => \U3|count_autorefresh\(0),
	datad => \U3|count_autorefresh\(1),
	combout => \U3|Equal13~0_combout\);

-- Location: LCCOMB_X18_Y9_N12
\U3|count_autorefresh[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|count_autorefresh[4]~16_combout\ = (\U3|count_autorefresh\(4) & (\U3|count_autorefresh[3]~15\ $ (GND))) # (!\U3|count_autorefresh\(4) & (!\U3|count_autorefresh[3]~15\ & VCC))
-- \U3|count_autorefresh[4]~17\ = CARRY((\U3|count_autorefresh\(4) & !\U3|count_autorefresh[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|count_autorefresh\(4),
	datad => VCC,
	cin => \U3|count_autorefresh[3]~15\,
	combout => \U3|count_autorefresh[4]~16_combout\,
	cout => \U3|count_autorefresh[4]~17\);

-- Location: LCCOMB_X18_Y9_N14
\U3|count_autorefresh[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|count_autorefresh[5]~18_combout\ = (\U3|count_autorefresh\(5) & (!\U3|count_autorefresh[4]~17\)) # (!\U3|count_autorefresh\(5) & ((\U3|count_autorefresh[4]~17\) # (GND)))
-- \U3|count_autorefresh[5]~19\ = CARRY((!\U3|count_autorefresh[4]~17\) # (!\U3|count_autorefresh\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U3|count_autorefresh\(5),
	datad => VCC,
	cin => \U3|count_autorefresh[4]~17\,
	combout => \U3|count_autorefresh[5]~18_combout\,
	cout => \U3|count_autorefresh[5]~19\);

-- Location: FF_X18_Y9_N15
\U3|count_autorefresh[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|count_autorefresh[5]~18_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sclr => \U3|ALT_INV_autorefresh_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|count_autorefresh\(5));

-- Location: FF_X18_Y9_N13
\U3|count_autorefresh[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|count_autorefresh[4]~16_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sclr => \U3|ALT_INV_autorefresh_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|count_autorefresh\(4));

-- Location: LCCOMB_X18_Y9_N26
\U3|Equal13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Equal13~1_combout\ = (!\U3|count_autorefresh\(5) & !\U3|count_autorefresh\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|count_autorefresh\(5),
	datad => \U3|count_autorefresh\(4),
	combout => \U3|Equal13~1_combout\);

-- Location: FF_X18_Y9_N17
\U3|count_autorefresh[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|count_autorefresh[6]~20_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sclr => \U3|ALT_INV_autorefresh_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|count_autorefresh\(6));

-- Location: LCCOMB_X18_Y9_N28
\U3|Equal13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Equal13~2_combout\ = (\U3|count_autorefresh\(7) & (\U3|Equal13~0_combout\ & (\U3|Equal13~1_combout\ & \U3|count_autorefresh\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|count_autorefresh\(7),
	datab => \U3|Equal13~0_combout\,
	datac => \U3|Equal13~1_combout\,
	datad => \U3|count_autorefresh\(6),
	combout => \U3|Equal13~2_combout\);

-- Location: LCCOMB_X17_Y9_N24
\U3|refreshsdram~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|refreshsdram~0_combout\ = (\U3|autorefresh_en~q\ & ((\U3|Equal13~2_combout\) # (\U3|refreshsdram~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|Equal13~2_combout\,
	datac => \U3|refreshsdram~q\,
	datad => \U3|autorefresh_en~q\,
	combout => \U3|refreshsdram~0_combout\);

-- Location: FF_X17_Y9_N25
\U3|refreshsdram\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|refreshsdram~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|refreshsdram~q\);

-- Location: LCCOMB_X16_Y10_N10
\U3|Selector35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector35~0_combout\ = (\U3|present_state.IDLE~q\ & (\usbfifohalffull_t1~0_combout\ & (!\U3|refreshsdram~q\ & \U1|U0|dcfifo_component|auto_generated|op_2~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|present_state.IDLE~q\,
	datab => \usbfifohalffull_t1~0_combout\,
	datac => \U3|refreshsdram~q\,
	datad => \U1|U0|dcfifo_component|auto_generated|op_2~20_combout\,
	combout => \U3|Selector35~0_combout\);

-- Location: FF_X16_Y10_N11
\U3|writesdram_en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|Selector35~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	ena => \U3|Selector25~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|writesdram_en~q\);

-- Location: LCCOMB_X16_Y7_N16
\U3|Selector39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector39~0_combout\ = (!\U3|Equal3~3_combout\ & (!\U3|init_precharge~q\ & ((\U3|writesdram_en~q\) # (\U3|readsdram_en~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Equal3~3_combout\,
	datab => \U3|writesdram_en~q\,
	datac => \U3|readsdram_en~q\,
	datad => \U3|init_precharge~q\,
	combout => \U3|Selector39~0_combout\);

-- Location: LCCOMB_X16_Y7_N10
\U3|Selector39~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector39~1_combout\ = (\U3|present_state.PRECHARGE_TRP~q\ & (\U3|bank\(0) $ (((\U3|Equal2~0_combout\ & \U3|Selector39~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|present_state.PRECHARGE_TRP~q\,
	datab => \U3|Equal2~0_combout\,
	datac => \U3|bank\(0),
	datad => \U3|Selector39~0_combout\,
	combout => \U3|Selector39~1_combout\);

-- Location: LCCOMB_X16_Y7_N8
\U3|Selector39~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector39~2_combout\ = (\U3|Selector39~1_combout\) # ((!\U3|present_state.PRECHARGE_TRP~q\ & (\U3|present_state.INIT~q\ & \U3|bank\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|present_state.PRECHARGE_TRP~q\,
	datab => \U3|present_state.INIT~q\,
	datac => \U3|bank\(0),
	datad => \U3|Selector39~1_combout\,
	combout => \U3|Selector39~2_combout\);

-- Location: FF_X16_Y7_N9
\U3|bank[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|Selector39~2_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|bank\(0));

-- Location: LCCOMB_X17_Y7_N2
\U3|Selector38~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector38~4_combout\ = (\U3|Selector38~3_combout\) # ((\U3|Selector38~1_combout\ & (\U3|bank\(1) $ (\U3|bank\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Selector38~1_combout\,
	datab => \U3|Selector38~3_combout\,
	datac => \U3|bank\(1),
	datad => \U3|bank\(0),
	combout => \U3|Selector38~4_combout\);

-- Location: FF_X17_Y7_N3
\U3|bank[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|Selector38~4_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|bank\(1));

-- Location: LCCOMB_X17_Y9_N4
\U3|Selector38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector38~0_combout\ = (\U3|present_state.PRECHARGE_TRP~q\ & (!\U3|init_precharge~q\ & (!\U3|count_trp\(0) & \U3|count_trp\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|present_state.PRECHARGE_TRP~q\,
	datab => \U3|init_precharge~q\,
	datac => \U3|count_trp\(0),
	datad => \U3|count_trp\(1),
	combout => \U3|Selector38~0_combout\);

-- Location: LCCOMB_X17_Y7_N12
\U3|Selector34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector34~0_combout\ = (\U3|bank\(0) & (\U3|bank\(1) & (!\U3|Equal3~3_combout\ & \U3|Selector38~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|bank\(0),
	datab => \U3|bank\(1),
	datac => \U3|Equal3~3_combout\,
	datad => \U3|Selector38~0_combout\,
	combout => \U3|Selector34~0_combout\);

-- Location: LCCOMB_X14_Y14_N30
\U3|Selector34~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector34~1_combout\ = (\U3|Selector90~3_combout\ & ((\U3|Selector34~0_combout\) # ((\U3|Selector33~0_combout\ & \U3|Empty~q\)))) # (!\U3|Selector90~3_combout\ & (\U3|Selector33~0_combout\ & (\U3|Empty~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Selector90~3_combout\,
	datab => \U3|Selector33~0_combout\,
	datac => \U3|Empty~q\,
	datad => \U3|Selector34~0_combout\,
	combout => \U3|Selector34~1_combout\);

-- Location: FF_X14_Y14_N31
\U3|Empty\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|Selector34~1_combout\,
	ena => \ALT_INV_resetn_t~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|Empty~q\);

-- Location: LCCOMB_X17_Y14_N18
\U2|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector4~0_combout\ = (\U3|Full~q\) # ((\U2|present_state.S0~q\ & ((!\U4|Empty~q\) # (!\U2|present_state.S4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|present_state.S4~q\,
	datab => \U3|Full~q\,
	datac => \U2|present_state.S0~q\,
	datad => \U4|Empty~q\,
	combout => \U2|Selector4~0_combout\);

-- Location: FF_X17_Y14_N19
\U2|present_state.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U2|Selector4~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|present_state.S0~q\);

-- Location: LCCOMB_X17_Y14_N0
\U2|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector1~0_combout\ = ((!\U3|Full~q\ & ((\U2|present_state.S4~q\) # (!\U2|present_state.S0~q\)))) # (!\U2|Selector2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Full~q\,
	datab => \U2|Selector2~0_combout\,
	datac => \U2|present_state.S4~q\,
	datad => \U2|present_state.S0~q\,
	combout => \U2|Selector1~0_combout\);

-- Location: LCCOMB_X17_Y15_N8
\U2|Selector1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector1~2_combout\ = (!\U2|Selector1~0_combout\ & (((!\U3|Empty~q\ & \U2|wr_t\(2))) # (!\U2|Selector1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Selector1~1_combout\,
	datab => \U3|Empty~q\,
	datac => \U2|wr_t\(2),
	datad => \U2|Selector1~0_combout\,
	combout => \U2|Selector1~2_combout\);

-- Location: FF_X17_Y15_N9
\U2|wr_t[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U2|Selector1~2_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|wr_t\(2));

-- Location: LCCOMB_X16_Y10_N0
\U3|present_state~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|present_state~35_combout\ = (\U2|wr_t\(3) & (\U2|wr_t\(2) & ((\U2|wr_t\(1)) # (!\U5|U0|dcfifo_component|auto_generated|ws_bwp|dffe12a\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|wr_t\(3),
	datab => \U2|wr_t\(2),
	datac => \U5|U0|dcfifo_component|auto_generated|ws_bwp|dffe12a\(10),
	datad => \U2|wr_t\(1),
	combout => \U3|present_state~35_combout\);

-- Location: LCCOMB_X16_Y10_N4
\U3|Selector36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector36~0_combout\ = (!\U3|refreshsdram~q\ & (\U3|present_state.IDLE~q\ & \U3|present_state~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|refreshsdram~q\,
	datac => \U3|present_state.IDLE~q\,
	datad => \U3|present_state~35_combout\,
	combout => \U3|Selector36~0_combout\);

-- Location: FF_X16_Y10_N5
\U3|readsdram_en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|Selector36~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	ena => \U3|Selector25~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|readsdram_en~q\);

-- Location: LCCOMB_X17_Y7_N10
\U3|Selector85~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector85~10_combout\ = (\U3|Selector38~0_combout\ & ((\U3|Equal3~3_combout\) # ((!\U3|writesdram_en~q\ & !\U3|readsdram_en~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|writesdram_en~q\,
	datab => \U3|readsdram_en~q\,
	datac => \U3|Equal3~3_combout\,
	datad => \U3|Selector38~0_combout\,
	combout => \U3|Selector85~10_combout\);

-- Location: LCCOMB_X16_Y9_N8
\U3|Selector32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector32~0_combout\ = (!\U3|present_state.IDLE~q\ & (\U3|count_done\(0) & \U3|present_state.INIT~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|present_state.IDLE~q\,
	datac => \U3|count_done\(0),
	datad => \U3|present_state.INIT~q\,
	combout => \U3|Selector32~0_combout\);

-- Location: LCCOMB_X16_Y9_N30
\U3|count_done[0]~_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|count_done[0]~_wirecell_combout\ = !\U3|count_done\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|count_done\(0),
	combout => \U3|count_done[0]~_wirecell_combout\);

-- Location: LCCOMB_X17_Y7_N26
\U3|Selector38~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector38~1_combout\ = (!\U3|Equal3~3_combout\ & (\U3|Selector38~0_combout\ & ((\U3|writesdram_en~q\) # (\U3|readsdram_en~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|writesdram_en~q\,
	datab => \U3|readsdram_en~q\,
	datac => \U3|Equal3~3_combout\,
	datad => \U3|Selector38~0_combout\,
	combout => \U3|Selector38~1_combout\);

-- Location: LCCOMB_X16_Y9_N10
\U3|Selector92~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector92~0_combout\ = (\U3|Selector38~1_combout\) # ((\U3|present_state.COMMANDDONE~q\ & ((!\U3|count_done\(0)) # (!\U3|count_done\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|count_done\(1),
	datab => \U3|count_done\(0),
	datac => \U3|present_state.COMMANDDONE~q\,
	datad => \U3|Selector38~1_combout\,
	combout => \U3|Selector92~0_combout\);

-- Location: FF_X16_Y9_N11
\U3|present_state.COMMANDDONE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|Selector92~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|present_state.COMMANDDONE~q\);

-- Location: FF_X16_Y9_N9
\U3|count_done[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|Selector32~0_combout\,
	asdata => \U3|count_done[0]~_wirecell_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sload => \U3|present_state.COMMANDDONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|count_done\(0));

-- Location: LCCOMB_X16_Y9_N22
\U3|Selector31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector31~0_combout\ = (\U3|present_state.COMMANDDONE~q\ & (\U3|count_done\(0) $ ((\U3|count_done\(1))))) # (!\U3|present_state.COMMANDDONE~q\ & (((\U3|count_done\(1) & !\U3|Selector25~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|present_state.COMMANDDONE~q\,
	datab => \U3|count_done\(0),
	datac => \U3|count_done\(1),
	datad => \U3|Selector25~0_combout\,
	combout => \U3|Selector31~0_combout\);

-- Location: FF_X16_Y9_N23
\U3|count_done[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|Selector31~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|count_done\(1));

-- Location: LCCOMB_X16_Y9_N20
\U3|Selector83~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector83~0_combout\ = (\U3|Equal5~0_combout\ & (\U3|init_precharge~q\ & (\U3|present_state.AUTOREFRESH_TRC~q\ & \U3|count_trc_init~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Equal5~0_combout\,
	datab => \U3|init_precharge~q\,
	datac => \U3|present_state.AUTOREFRESH_TRC~q\,
	datad => \U3|count_trc_init~q\,
	combout => \U3|Selector83~0_combout\);

-- Location: FF_X16_Y9_N21
\U3|present_state.LOADMODE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|Selector83~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|present_state.LOADMODE~q\);

-- Location: LCCOMB_X17_Y10_N2
\U3|Selector84~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector84~0_combout\ = (\U3|present_state.LOADMODE~q\) # ((\U3|present_state.LOADMODE_TRMD~q\ & ((\U3|count_tmrd\(0)) # (!\U3|count_tmrd\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|count_tmrd\(1),
	datab => \U3|present_state.LOADMODE~q\,
	datac => \U3|present_state.LOADMODE_TRMD~q\,
	datad => \U3|count_tmrd\(0),
	combout => \U3|Selector84~0_combout\);

-- Location: FF_X17_Y10_N3
\U3|present_state.LOADMODE_TRMD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|Selector84~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|present_state.LOADMODE_TRMD~q\);

-- Location: LCCOMB_X16_Y10_N12
\U3|Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector24~0_combout\ = (\U3|count_tmrd\(1) & (!\U3|Selector25~0_combout\ & ((!\U3|present_state.LOADMODE_TRMD~q\)))) # (!\U3|count_tmrd\(1) & (((\U3|count_tmrd\(0) & \U3|present_state.LOADMODE_TRMD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Selector25~0_combout\,
	datab => \U3|count_tmrd\(0),
	datac => \U3|count_tmrd\(1),
	datad => \U3|present_state.LOADMODE_TRMD~q\,
	combout => \U3|Selector24~0_combout\);

-- Location: FF_X16_Y10_N13
\U3|count_tmrd[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|Selector24~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|count_tmrd\(1));

-- Location: LCCOMB_X17_Y10_N12
\U3|Selector25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector25~1_combout\ = (\U3|present_state.LOADMODE_TRMD~q\ & (((!\U3|count_tmrd\(0) & !\U3|count_tmrd\(1))))) # (!\U3|present_state.LOADMODE_TRMD~q\ & (!\U3|Selector25~0_combout\ & (\U3|count_tmrd\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Selector25~0_combout\,
	datab => \U3|present_state.LOADMODE_TRMD~q\,
	datac => \U3|count_tmrd\(0),
	datad => \U3|count_tmrd\(1),
	combout => \U3|Selector25~1_combout\);

-- Location: FF_X17_Y10_N13
\U3|count_tmrd[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|Selector25~1_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|count_tmrd\(0));

-- Location: LCCOMB_X16_Y10_N2
\U3|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Equal0~0_combout\ = (!\U2|wr_t\(3) & !\U2|wr_t\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|wr_t\(3),
	datad => \U2|wr_t\(2),
	combout => \U3|Equal0~0_combout\);

-- Location: LCCOMB_X16_Y10_N26
\U3|Selector85~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector85~4_combout\ = (!\U3|refreshsdram~q\ & (!\U3|present_state~35_combout\ & (\U3|present_state.IDLE~q\ & !\U3|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|refreshsdram~q\,
	datab => \U3|present_state~35_combout\,
	datac => \U3|present_state.IDLE~q\,
	datad => \U3|Equal0~0_combout\,
	combout => \U3|Selector85~4_combout\);

-- Location: LCCOMB_X16_Y10_N24
\U3|Selector85~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector85~5_combout\ = (\U3|Selector85~4_combout\) # ((\U3|count_tmrd\(1) & (!\U3|count_tmrd\(0) & \U3|present_state.LOADMODE_TRMD~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|count_tmrd\(1),
	datab => \U3|count_tmrd\(0),
	datac => \U3|Selector85~4_combout\,
	datad => \U3|present_state.LOADMODE_TRMD~q\,
	combout => \U3|Selector85~5_combout\);

-- Location: LCCOMB_X16_Y9_N14
\U3|Selector85~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector85~6_combout\ = (\U3|Selector85~5_combout\) # ((\U3|present_state.COMMANDDONE~q\ & (\U3|count_done\(0) & \U3|count_done\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|present_state.COMMANDDONE~q\,
	datab => \U3|count_done\(0),
	datac => \U3|count_done\(1),
	datad => \U3|Selector85~5_combout\,
	combout => \U3|Selector85~6_combout\);

-- Location: LCCOMB_X16_Y9_N0
\U3|Selector85~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector85~3_combout\ = (\U3|count_trc\(0) & (\U3|present_state.AUTOREFRESH_TRC~q\ & (\U3|count_trc\(2) & \U3|count_trc\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|count_trc\(0),
	datab => \U3|present_state.AUTOREFRESH_TRC~q\,
	datac => \U3|count_trc\(2),
	datad => \U3|count_trc\(1),
	combout => \U3|Selector85~3_combout\);

-- Location: LCCOMB_X16_Y10_N20
\U3|Selector85~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector85~8_combout\ = (\U3|Selector85~7_combout\) # ((\U3|Selector85~6_combout\) # ((!\U3|init_precharge~q\ & \U3|Selector85~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Selector85~7_combout\,
	datab => \U3|init_precharge~q\,
	datac => \U3|Selector85~6_combout\,
	datad => \U3|Selector85~3_combout\,
	combout => \U3|Selector85~8_combout\);

-- Location: LCCOMB_X16_Y10_N30
\U3|Selector85~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector85~9_combout\ = (\U3|Selector85~10_combout\) # ((\U3|Selector85~8_combout\) # ((\U3|Selector85~2_combout\ & !\U1|U0|dcfifo_component|auto_generated|op_2~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Selector85~2_combout\,
	datab => \U3|Selector85~10_combout\,
	datac => \U1|U0|dcfifo_component|auto_generated|op_2~20_combout\,
	datad => \U3|Selector85~8_combout\,
	combout => \U3|Selector85~9_combout\);

-- Location: FF_X16_Y10_N31
\U3|present_state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|Selector85~9_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|present_state.IDLE~q\);

-- Location: LCCOMB_X17_Y9_N16
\U3|Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector25~0_combout\ = (\U3|present_state.IDLE~q\) # (!\U3|present_state.INIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|present_state.IDLE~q\,
	datad => \U3|present_state.INIT~q\,
	combout => \U3|Selector25~0_combout\);

-- Location: FF_X17_Y11_N29
\U3|count_init[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|Selector75~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	ena => \U3|Selector25~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|count_init\(1));

-- Location: LCCOMB_X17_Y11_N4
\U3|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Add0~4_combout\ = (\U3|count_init\(2) & (\U3|Add0~3\ $ (GND))) # (!\U3|count_init\(2) & (!\U3|Add0~3\ & VCC))
-- \U3|Add0~5\ = CARRY((\U3|count_init\(2) & !\U3|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U3|count_init\(2),
	datad => VCC,
	cin => \U3|Add0~3\,
	combout => \U3|Add0~4_combout\,
	cout => \U3|Add0~5\);

-- Location: LCCOMB_X18_Y11_N16
\U3|Selector74~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector74~0_combout\ = (\U3|Add0~4_combout\ & !\U3|present_state.INIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|Add0~4_combout\,
	datad => \U3|present_state.INIT~q\,
	combout => \U3|Selector74~0_combout\);

-- Location: FF_X18_Y11_N17
\U3|count_init[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|Selector74~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	ena => \U3|Selector25~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|count_init\(2));

-- Location: LCCOMB_X17_Y11_N6
\U3|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Add0~6_combout\ = (\U3|count_init\(3) & (!\U3|Add0~5\)) # (!\U3|count_init\(3) & ((\U3|Add0~5\) # (GND)))
-- \U3|Add0~7\ = CARRY((!\U3|Add0~5\) # (!\U3|count_init\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U3|count_init\(3),
	datad => VCC,
	cin => \U3|Add0~5\,
	combout => \U3|Add0~6_combout\,
	cout => \U3|Add0~7\);

-- Location: LCCOMB_X16_Y11_N24
\U3|Selector73~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector73~0_combout\ = (!\U3|present_state.INIT~q\ & \U3|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|present_state.INIT~q\,
	datad => \U3|Add0~6_combout\,
	combout => \U3|Selector73~0_combout\);

-- Location: FF_X16_Y11_N25
\U3|count_init[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|Selector73~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	ena => \U3|Selector25~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|count_init\(3));

-- Location: LCCOMB_X17_Y11_N8
\U3|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Add0~8_combout\ = (\U3|count_init\(4) & (\U3|Add0~7\ $ (GND))) # (!\U3|count_init\(4) & (!\U3|Add0~7\ & VCC))
-- \U3|Add0~9\ = CARRY((\U3|count_init\(4) & !\U3|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U3|count_init\(4),
	datad => VCC,
	cin => \U3|Add0~7\,
	combout => \U3|Add0~8_combout\,
	cout => \U3|Add0~9\);

-- Location: LCCOMB_X16_Y11_N6
\U3|Selector72~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector72~0_combout\ = (!\U3|present_state.INIT~q\ & \U3|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|present_state.INIT~q\,
	datac => \U3|Add0~8_combout\,
	combout => \U3|Selector72~0_combout\);

-- Location: FF_X16_Y11_N7
\U3|count_init[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|Selector72~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	ena => \U3|Selector25~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|count_init\(4));

-- Location: LCCOMB_X17_Y11_N12
\U3|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Add0~12_combout\ = (\U3|count_init\(6) & (\U3|Add0~11\ $ (GND))) # (!\U3|count_init\(6) & (!\U3|Add0~11\ & VCC))
-- \U3|Add0~13\ = CARRY((\U3|count_init\(6) & !\U3|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U3|count_init\(6),
	datad => VCC,
	cin => \U3|Add0~11\,
	combout => \U3|Add0~12_combout\,
	cout => \U3|Add0~13\);

-- Location: LCCOMB_X16_Y11_N18
\U3|count_init~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|count_init~5_combout\ = (\U3|Add0~12_combout\ & !\U3|Equal1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|Add0~12_combout\,
	datad => \U3|Equal1~4_combout\,
	combout => \U3|count_init~5_combout\);

-- Location: FF_X16_Y11_N19
\U3|count_init[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|count_init~5_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sclr => \U3|present_state.INIT~q\,
	ena => \U3|Selector25~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|count_init\(6));

-- Location: LCCOMB_X17_Y11_N14
\U3|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Add0~14_combout\ = (\U3|count_init\(7) & (!\U3|Add0~13\)) # (!\U3|count_init\(7) & ((\U3|Add0~13\) # (GND)))
-- \U3|Add0~15\ = CARRY((!\U3|Add0~13\) # (!\U3|count_init\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|count_init\(7),
	datad => VCC,
	cin => \U3|Add0~13\,
	combout => \U3|Add0~14_combout\,
	cout => \U3|Add0~15\);

-- Location: LCCOMB_X16_Y11_N8
\U3|count_init~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|count_init~4_combout\ = (\U3|Add0~14_combout\ & !\U3|Equal1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|Add0~14_combout\,
	datad => \U3|Equal1~4_combout\,
	combout => \U3|count_init~4_combout\);

-- Location: FF_X16_Y11_N9
\U3|count_init[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|count_init~4_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sclr => \U3|present_state.INIT~q\,
	ena => \U3|Selector25~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|count_init\(7));

-- Location: LCCOMB_X17_Y11_N16
\U3|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Add0~16_combout\ = (\U3|count_init\(8) & (\U3|Add0~15\ $ (GND))) # (!\U3|count_init\(8) & (!\U3|Add0~15\ & VCC))
-- \U3|Add0~17\ = CARRY((\U3|count_init\(8) & !\U3|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U3|count_init\(8),
	datad => VCC,
	cin => \U3|Add0~15\,
	combout => \U3|Add0~16_combout\,
	cout => \U3|Add0~17\);

-- Location: LCCOMB_X16_Y11_N20
\U3|Selector68~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector68~0_combout\ = (!\U3|present_state.INIT~q\ & \U3|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|present_state.INIT~q\,
	datad => \U3|Add0~16_combout\,
	combout => \U3|Selector68~0_combout\);

-- Location: FF_X16_Y11_N21
\U3|count_init[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|Selector68~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	ena => \U3|Selector25~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|count_init\(8));

-- Location: LCCOMB_X17_Y11_N20
\U3|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Add0~20_combout\ = (\U3|count_init\(10) & (\U3|Add0~19\ $ (GND))) # (!\U3|count_init\(10) & (!\U3|Add0~19\ & VCC))
-- \U3|Add0~21\ = CARRY((\U3|count_init\(10) & !\U3|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|count_init\(10),
	datad => VCC,
	cin => \U3|Add0~19\,
	combout => \U3|Add0~20_combout\,
	cout => \U3|Add0~21\);

-- Location: LCCOMB_X17_Y11_N22
\U3|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Add0~22_combout\ = (\U3|count_init\(11) & (!\U3|Add0~21\)) # (!\U3|count_init\(11) & ((\U3|Add0~21\) # (GND)))
-- \U3|Add0~23\ = CARRY((!\U3|Add0~21\) # (!\U3|count_init\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U3|count_init\(11),
	datad => VCC,
	cin => \U3|Add0~21\,
	combout => \U3|Add0~22_combout\,
	cout => \U3|Add0~23\);

-- Location: LCCOMB_X16_Y11_N30
\U3|count_init~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|count_init~1_combout\ = (!\U3|Equal1~4_combout\ & \U3|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|Equal1~4_combout\,
	datad => \U3|Add0~22_combout\,
	combout => \U3|count_init~1_combout\);

-- Location: FF_X16_Y11_N31
\U3|count_init[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|count_init~1_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sclr => \U3|present_state.INIT~q\,
	ena => \U3|Selector25~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|count_init\(11));

-- Location: LCCOMB_X16_Y11_N16
\U3|count_init~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|count_init~2_combout\ = (\U3|Add0~20_combout\ & !\U3|Equal1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|Add0~20_combout\,
	datad => \U3|Equal1~4_combout\,
	combout => \U3|count_init~2_combout\);

-- Location: FF_X16_Y11_N17
\U3|count_init[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|count_init~2_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sclr => \U3|present_state.INIT~q\,
	ena => \U3|Selector25~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|count_init\(10));

-- Location: LCCOMB_X16_Y11_N0
\U3|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Equal1~2_combout\ = (\U3|count_init\(9) & (\U3|count_init\(7) & (\U3|count_init\(11) & \U3|count_init\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|count_init\(9),
	datab => \U3|count_init\(7),
	datac => \U3|count_init\(11),
	datad => \U3|count_init\(10),
	combout => \U3|Equal1~2_combout\);

-- Location: LCCOMB_X17_Y11_N24
\U3|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Add0~24_combout\ = (\U3|count_init\(12) & (\U3|Add0~23\ $ (GND))) # (!\U3|count_init\(12) & (!\U3|Add0~23\ & VCC))
-- \U3|Add0~25\ = CARRY((\U3|count_init\(12) & !\U3|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U3|count_init\(12),
	datad => VCC,
	cin => \U3|Add0~23\,
	combout => \U3|Add0~24_combout\,
	cout => \U3|Add0~25\);

-- Location: LCCOMB_X16_Y11_N22
\U3|Selector64~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector64~0_combout\ = (!\U3|present_state.INIT~q\ & \U3|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|present_state.INIT~q\,
	datad => \U3|Add0~24_combout\,
	combout => \U3|Selector64~0_combout\);

-- Location: FF_X16_Y11_N23
\U3|count_init[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|Selector64~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	ena => \U3|Selector25~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|count_init\(12));

-- Location: LCCOMB_X17_Y11_N26
\U3|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Add0~26_combout\ = \U3|count_init\(13) $ (\U3|Add0~25\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U3|count_init\(13),
	cin => \U3|Add0~25\,
	combout => \U3|Add0~26_combout\);

-- Location: LCCOMB_X16_Y11_N4
\U3|count_init~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|count_init~0_combout\ = (!\U3|Equal1~4_combout\ & \U3|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|Equal1~4_combout\,
	datad => \U3|Add0~26_combout\,
	combout => \U3|count_init~0_combout\);

-- Location: FF_X16_Y11_N5
\U3|count_init[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|count_init~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sclr => \U3|present_state.INIT~q\,
	ena => \U3|Selector25~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|count_init\(13));

-- Location: LCCOMB_X17_Y11_N30
\U3|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Equal1~1_combout\ = (\U3|count_init\(0) & (\U3|count_init\(2) & (\U3|count_init\(13) & \U3|count_init\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|count_init\(0),
	datab => \U3|count_init\(2),
	datac => \U3|count_init\(13),
	datad => \U3|count_init\(1),
	combout => \U3|Equal1~1_combout\);

-- Location: LCCOMB_X16_Y11_N2
\U3|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Equal1~0_combout\ = (\U3|count_init\(4) & (!\U3|count_init\(8) & (!\U3|count_init\(12) & \U3|count_init\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|count_init\(4),
	datab => \U3|count_init\(8),
	datac => \U3|count_init\(12),
	datad => \U3|count_init\(3),
	combout => \U3|Equal1~0_combout\);

-- Location: LCCOMB_X16_Y11_N28
\U3|Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Equal1~4_combout\ = (\U3|Equal1~3_combout\ & (\U3|Equal1~2_combout\ & (\U3|Equal1~1_combout\ & \U3|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Equal1~3_combout\,
	datab => \U3|Equal1~2_combout\,
	datac => \U3|Equal1~1_combout\,
	datad => \U3|Equal1~0_combout\,
	combout => \U3|Equal1~4_combout\);

-- Location: LCCOMB_X16_Y11_N14
\U3|present_state.INIT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|present_state.INIT~0_combout\ = (\U3|present_state.INIT~q\) # (\U3|Equal1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|present_state.INIT~q\,
	datad => \U3|Equal1~4_combout\,
	combout => \U3|present_state.INIT~0_combout\);

-- Location: FF_X16_Y11_N15
\U3|present_state.INIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|present_state.INIT~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|present_state.INIT~q\);

-- Location: LCCOMB_X16_Y9_N2
\U3|Selector33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector33~0_combout\ = (\U3|present_state.PRECHARGE_TRP~q\) # ((\U3|present_state.INIT~q\ & (!\U3|present_state.IDLE~q\ & !\U3|present_state.COMMANDDONE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|present_state.PRECHARGE_TRP~q\,
	datab => \U3|present_state.INIT~q\,
	datac => \U3|present_state.IDLE~q\,
	datad => \U3|present_state.COMMANDDONE~q\,
	combout => \U3|Selector33~0_combout\);

-- Location: LCCOMB_X14_Y14_N24
\U3|Selector33~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector33~1_combout\ = (\U3|writesdram_en~q\ & ((\U3|Selector34~0_combout\) # ((\U3|Selector33~0_combout\ & \U3|Full~q\)))) # (!\U3|writesdram_en~q\ & (\U3|Selector33~0_combout\ & (\U3|Full~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|writesdram_en~q\,
	datab => \U3|Selector33~0_combout\,
	datac => \U3|Full~q\,
	datad => \U3|Selector34~0_combout\,
	combout => \U3|Selector33~1_combout\);

-- Location: FF_X14_Y14_N25
\U3|Full\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|Selector33~1_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|Full~q\);

-- Location: LCCOMB_X17_Y14_N16
\U2|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector9~0_combout\ = (\U2|present_state.S5~q\) # ((\U2|present_state.S4~q\ & \U3|Full~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|present_state.S4~q\,
	datac => \U3|Full~q\,
	datad => \U2|present_state.S5~q\,
	combout => \U2|Selector9~0_combout\);

-- Location: LCCOMB_X17_Y14_N6
\U2|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector0~1_combout\ = (\U4|Empty~q\ & (!\U2|Selector9~0_combout\ & ((\U2|present_state.S0~q\) # (!\U3|Full~q\)))) # (!\U4|Empty~q\ & (((\U2|present_state.S0~q\) # (!\U3|Full~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|Empty~q\,
	datab => \U2|Selector9~0_combout\,
	datac => \U3|Full~q\,
	datad => \U2|present_state.S0~q\,
	combout => \U2|Selector0~1_combout\);

-- Location: LCCOMB_X17_Y14_N30
\U2|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector3~0_combout\ = (\U2|present_state.S1~q\ & ((\U2|wr_t\(0)) # (\U3|Empty~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|wr_t\(0),
	datac => \U3|Empty~q\,
	datad => \U2|present_state.S1~q\,
	combout => \U2|Selector3~0_combout\);

-- Location: LCCOMB_X17_Y14_N20
\U2|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Selector3~1_combout\ = ((!\U4|Full~q\ & ((\U2|present_state.S3~q\) # (\U2|Selector3~0_combout\)))) # (!\U2|Selector0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|Full~q\,
	datab => \U2|Selector0~1_combout\,
	datac => \U2|present_state.S3~q\,
	datad => \U2|Selector3~0_combout\,
	combout => \U2|Selector3~1_combout\);

-- Location: FF_X17_Y14_N21
\U2|wr_t[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U2|Selector3~1_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|wr_t\(0));

-- Location: LCCOMB_X17_Y10_N26
\U3|Selector37~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector37~1_combout\ = (\U3|Selector88~0_combout\) # ((\U3|readcamerafifo_t~q\ & ((\U3|Selector37~0_combout\) # (\U3|present_state.ACTIVEROW_TRCD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Selector37~0_combout\,
	datab => \U3|Selector88~0_combout\,
	datac => \U3|readcamerafifo_t~q\,
	datad => \U3|present_state.ACTIVEROW_TRCD~q\,
	combout => \U3|Selector37~1_combout\);

-- Location: FF_X17_Y10_N27
\U3|readcamerafifo_t\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|Selector37~1_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|readcamerafifo_t~q\);

-- Location: FF_X23_Y14_N21
\U3|ReadUSBFIFO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \U3|readcamerafifo_t~q\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|ReadUSBFIFO~q\);

-- Location: LCCOMB_X23_Y14_N20
\readusbfifo_t~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \readusbfifo_t~0_combout\ = (!\U2|wr_t\(3) & (!\U2|wr_t\(0) & (\U3|ReadUSBFIFO~q\ & !\U2|wr_t\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|wr_t\(3),
	datab => \U2|wr_t\(0),
	datac => \U3|ReadUSBFIFO~q\,
	datad => \U2|wr_t\(2),
	combout => \readusbfifo_t~0_combout\);

-- Location: LCCOMB_X23_Y14_N24
\U1|U0|dcfifo_component|auto_generated|valid_rdreq~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|valid_rdreq~0_combout\ = (\U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_msb_aeb~q\ & ((\readusbfifo_t~0_combout\) # ((\readusbfifo_t~1_combout\)))) # 
-- (!\U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_msb_aeb~q\ & (\U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_aeb~q\ & ((\readusbfifo_t~0_combout\) # (\readusbfifo_t~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_msb_aeb~q\,
	datab => \readusbfifo_t~0_combout\,
	datac => \U1|U0|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_aeb~q\,
	datad => \readusbfifo_t~1_combout\,
	combout => \U1|U0|dcfifo_component|auto_generated|valid_rdreq~0_combout\);

-- Location: CLKCTRL_G4
\U0|U0|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\);

-- Location: CLKCTRL_G3
\U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: IOIBUF_X32_Y24_N15
\DATAIN[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATAIN(0),
	o => \DATAIN[0]~input_o\);

-- Location: LCCOMB_X25_Y14_N4
\U1|U0|dcfifo_component|auto_generated|wrptr_g[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|wrptr_g[9]~feeder_combout\ = \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a9~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a9~q\,
	combout => \U1|U0|dcfifo_component|auto_generated|wrptr_g[9]~feeder_combout\);

-- Location: FF_X25_Y14_N5
\U1|U0|dcfifo_component|auto_generated|wrptr_g[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U1|U0|dcfifo_component|auto_generated|wrptr_g[9]~feeder_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	ena => \U1|U0|dcfifo_component|auto_generated|valid_wrreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|wrptr_g\(9));

-- Location: LCCOMB_X26_Y13_N16
\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a0~_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a0~_wirecell_combout\ = !\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a0~q\,
	combout => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a0~_wirecell_combout\);

-- Location: LCCOMB_X26_Y14_N30
\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a7~0_combout\ = \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a7~q\ $ (((!\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a5~q\ & 
-- (\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a6~q\ & \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|_~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a5~q\,
	datab => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a6~q\,
	datac => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a7~q\,
	datad => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|_~6_combout\,
	combout => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a7~0_combout\);

-- Location: FF_X26_Y14_N31
\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a7~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a7~q\);

-- Location: LCCOMB_X26_Y14_N14
\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a9~0_combout\ = \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a9~q\ $ (((\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a8~q\ & 
-- \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|_~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a8~q\,
	datac => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a9~q\,
	datad => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|_~8_combout\,
	combout => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a9~0_combout\);

-- Location: FF_X26_Y14_N15
\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a9~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a9~q\);

-- Location: LCCOMB_X25_Y14_N14
\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|_~0_combout\ = \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a11~q\ $ (\U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a10~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a11~q\,
	datac => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|counter5a10~q\,
	combout => \U1|U0|dcfifo_component|auto_generated|rdptr_g1p|_~0_combout\);

-- Location: IOIBUF_X34_Y18_N15
\DATAIN[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATAIN(1),
	o => \DATAIN[1]~input_o\);

-- Location: IOIBUF_X34_Y18_N22
\DATAIN[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATAIN(2),
	o => \DATAIN[2]~input_o\);

-- Location: IOIBUF_X34_Y17_N15
\DATAIN[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATAIN(3),
	o => \DATAIN[3]~input_o\);

-- Location: M9K_X27_Y16_N0
\U1|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_output_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "FIFO_16Bit_2K:U1|FIFO_Core:U0|dcfifo:dcfifo_component|dcfifo_d7n1:auto_generated|altsyncram_gm31:fifo_ram|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "clear1",
	port_b_address_clock => "clock1",
	port_b_address_width => 11,
	port_b_data_out_clear => "clear1",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 4,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 2047,
	port_b_logical_ram_depth => 2048,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \U1|U0|dcfifo_component|auto_generated|valid_wrreq~combout\,
	portbre => VCC,
	portbaddrstall => \U1|U0|dcfifo_component|auto_generated|ALT_INV_valid_rdreq~0_combout\,
	clk0 => \U0|U0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	clk1 => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \U1|U0|dcfifo_component|auto_generated|valid_wrreq~combout\,
	ena1 => \U1|U0|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	clr1 => \resetn_t~clkctrl_outclk\,
	portadatain => \U1|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a0_PORTADATAIN_bus\,
	portaaddr => \U1|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a0_PORTAADDR_bus\,
	portbaddr => \U1|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \U1|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X11_Y16_N22
\readusbfifodata_t1[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \readusbfifodata_t1[0]~0_combout\ = (\U1|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(0) & (!\U2|wr_t\(2) & (!\U2|wr_t\(0) & !\U2|wr_t\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(0),
	datab => \U2|wr_t\(2),
	datac => \U2|wr_t\(0),
	datad => \U2|wr_t\(3),
	combout => \readusbfifodata_t1[0]~0_combout\);

-- Location: LCCOMB_X11_Y16_N28
\readusbfifodata_t1[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \readusbfifodata_t1[1]~1_combout\ = (\U1|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(1) & (!\U2|wr_t\(2) & (!\U2|wr_t\(0) & !\U2|wr_t\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(1),
	datab => \U2|wr_t\(2),
	datac => \U2|wr_t\(0),
	datad => \U2|wr_t\(3),
	combout => \readusbfifodata_t1[1]~1_combout\);

-- Location: LCCOMB_X11_Y16_N30
\readusbfifodata_t1[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \readusbfifodata_t1[2]~2_combout\ = (\U1|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(2) & (!\U2|wr_t\(2) & (!\U2|wr_t\(0) & !\U2|wr_t\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(2),
	datab => \U2|wr_t\(2),
	datac => \U2|wr_t\(0),
	datad => \U2|wr_t\(3),
	combout => \readusbfifodata_t1[2]~2_combout\);

-- Location: LCCOMB_X11_Y16_N20
\readusbfifodata_t1[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \readusbfifodata_t1[3]~3_combout\ = (\U1|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(3) & (!\U2|wr_t\(2) & (!\U2|wr_t\(0) & !\U2|wr_t\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(3),
	datab => \U2|wr_t\(2),
	datac => \U2|wr_t\(0),
	datad => \U2|wr_t\(3),
	combout => \readusbfifodata_t1[3]~3_combout\);

-- Location: IOIBUF_X34_Y17_N22
\DATAIN[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATAIN(4),
	o => \DATAIN[4]~input_o\);

-- Location: IOIBUF_X34_Y10_N8
\DATAIN[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATAIN(5),
	o => \DATAIN[5]~input_o\);

-- Location: IOIBUF_X34_Y9_N1
\DATAIN[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATAIN(6),
	o => \DATAIN[6]~input_o\);

-- Location: IOIBUF_X34_Y9_N8
\DATAIN[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATAIN(7),
	o => \DATAIN[7]~input_o\);

-- Location: M9K_X27_Y13_N0
\U1|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a4\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_output_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "FIFO_16Bit_2K:U1|FIFO_Core:U0|dcfifo:dcfifo_component|dcfifo_d7n1:auto_generated|altsyncram_gm31:fifo_ram|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "clear1",
	port_b_address_clock => "clock1",
	port_b_address_width => 11,
	port_b_data_out_clear => "clear1",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 4,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 2047,
	port_b_logical_ram_depth => 2048,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \U1|U0|dcfifo_component|auto_generated|valid_wrreq~combout\,
	portbre => VCC,
	portbaddrstall => \U1|U0|dcfifo_component|auto_generated|ALT_INV_valid_rdreq~0_combout\,
	clk0 => \U0|U0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	clk1 => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \U1|U0|dcfifo_component|auto_generated|valid_wrreq~combout\,
	ena1 => \U1|U0|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	clr1 => \resetn_t~clkctrl_outclk\,
	portadatain => \U1|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a4_PORTADATAIN_bus\,
	portaaddr => \U1|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a4_PORTAADDR_bus\,
	portbaddr => \U1|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a4_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \U1|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a4_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X11_Y16_N14
\readusbfifodata_t1[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \readusbfifodata_t1[4]~4_combout\ = (\U1|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(4) & (!\U2|wr_t\(0) & (!\U2|wr_t\(2) & !\U2|wr_t\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(4),
	datab => \U2|wr_t\(0),
	datac => \U2|wr_t\(2),
	datad => \U2|wr_t\(3),
	combout => \readusbfifodata_t1[4]~4_combout\);

-- Location: LCCOMB_X16_Y14_N4
\readusbfifodata_t1[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \readusbfifodata_t1[5]~5_combout\ = (!\U2|wr_t\(0) & (!\U2|wr_t\(3) & (!\U2|wr_t\(2) & \U1|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|wr_t\(0),
	datab => \U2|wr_t\(3),
	datac => \U2|wr_t\(2),
	datad => \U1|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(5),
	combout => \readusbfifodata_t1[5]~5_combout\);

-- Location: LCCOMB_X11_Y15_N12
\readusbfifodata_t1[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \readusbfifodata_t1[6]~6_combout\ = (!\U2|wr_t\(0) & (!\U2|wr_t\(3) & (\U1|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(6) & !\U2|wr_t\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|wr_t\(0),
	datab => \U2|wr_t\(3),
	datac => \U1|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(6),
	datad => \U2|wr_t\(2),
	combout => \readusbfifodata_t1[6]~6_combout\);

-- Location: LCCOMB_X11_Y15_N30
\readusbfifodata_t1[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \readusbfifodata_t1[7]~7_combout\ = (!\U2|wr_t\(0) & (!\U2|wr_t\(3) & (\U1|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(7) & !\U2|wr_t\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|wr_t\(0),
	datab => \U2|wr_t\(3),
	datac => \U1|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(7),
	datad => \U2|wr_t\(2),
	combout => \readusbfifodata_t1[7]~7_combout\);

-- Location: IOIBUF_X32_Y0_N22
\DATAIN[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATAIN(8),
	o => \DATAIN[8]~input_o\);

-- Location: IOIBUF_X34_Y5_N15
\DATAIN[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATAIN(9),
	o => \DATAIN[9]~input_o\);

-- Location: IOIBUF_X30_Y0_N8
\DATAIN[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATAIN(10),
	o => \DATAIN[10]~input_o\);

-- Location: IOIBUF_X30_Y0_N1
\DATAIN[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATAIN(11),
	o => \DATAIN[11]~input_o\);

-- Location: M9K_X27_Y15_N0
\U1|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a8\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_output_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "FIFO_16Bit_2K:U1|FIFO_Core:U0|dcfifo:dcfifo_component|dcfifo_d7n1:auto_generated|altsyncram_gm31:fifo_ram|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "clear1",
	port_b_address_clock => "clock1",
	port_b_address_width => 11,
	port_b_data_out_clear => "clear1",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 4,
	port_b_first_address => 0,
	port_b_first_bit_number => 8,
	port_b_last_address => 2047,
	port_b_logical_ram_depth => 2048,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \U1|U0|dcfifo_component|auto_generated|valid_wrreq~combout\,
	portbre => VCC,
	portbaddrstall => \U1|U0|dcfifo_component|auto_generated|ALT_INV_valid_rdreq~0_combout\,
	clk0 => \U0|U0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	clk1 => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \U1|U0|dcfifo_component|auto_generated|valid_wrreq~combout\,
	ena1 => \U1|U0|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	clr1 => \resetn_t~clkctrl_outclk\,
	portadatain => \U1|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a8_PORTADATAIN_bus\,
	portaaddr => \U1|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a8_PORTAADDR_bus\,
	portbaddr => \U1|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a8_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \U1|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a8_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X11_Y15_N4
\readusbfifodata_t1[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \readusbfifodata_t1[8]~8_combout\ = (!\U2|wr_t\(0) & (!\U2|wr_t\(3) & (\U1|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(8) & !\U2|wr_t\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|wr_t\(0),
	datab => \U2|wr_t\(3),
	datac => \U1|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(8),
	datad => \U2|wr_t\(2),
	combout => \readusbfifodata_t1[8]~8_combout\);

-- Location: LCCOMB_X11_Y15_N6
\readusbfifodata_t1[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \readusbfifodata_t1[9]~9_combout\ = (!\U2|wr_t\(0) & (!\U2|wr_t\(3) & (\U1|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(9) & !\U2|wr_t\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|wr_t\(0),
	datab => \U2|wr_t\(3),
	datac => \U1|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(9),
	datad => \U2|wr_t\(2),
	combout => \readusbfifodata_t1[9]~9_combout\);

-- Location: LCCOMB_X11_Y15_N16
\readusbfifodata_t1[10]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \readusbfifodata_t1[10]~10_combout\ = (!\U2|wr_t\(0) & (!\U2|wr_t\(3) & (\U1|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(10) & !\U2|wr_t\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|wr_t\(0),
	datab => \U2|wr_t\(3),
	datac => \U1|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(10),
	datad => \U2|wr_t\(2),
	combout => \readusbfifodata_t1[10]~10_combout\);

-- Location: LCCOMB_X11_Y15_N26
\readusbfifodata_t1[11]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \readusbfifodata_t1[11]~11_combout\ = (!\U2|wr_t\(0) & (!\U2|wr_t\(3) & (\U1|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(11) & !\U2|wr_t\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|wr_t\(0),
	datab => \U2|wr_t\(3),
	datac => \U1|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(11),
	datad => \U2|wr_t\(2),
	combout => \readusbfifodata_t1[11]~11_combout\);

-- Location: IOIBUF_X30_Y0_N15
\DATAIN[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATAIN(12),
	o => \DATAIN[12]~input_o\);

-- Location: IOIBUF_X28_Y0_N15
\DATAIN[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATAIN(13),
	o => \DATAIN[13]~input_o\);

-- Location: IOIBUF_X28_Y0_N8
\DATAIN[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATAIN(14),
	o => \DATAIN[14]~input_o\);

-- Location: IOIBUF_X23_Y0_N1
\DATAIN[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATAIN(15),
	o => \DATAIN[15]~input_o\);

-- Location: M9K_X27_Y14_N0
\U1|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a12\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_output_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "FIFO_16Bit_2K:U1|FIFO_Core:U0|dcfifo:dcfifo_component|dcfifo_d7n1:auto_generated|altsyncram_gm31:fifo_ram|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 12,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "clear1",
	port_b_address_clock => "clock1",
	port_b_address_width => 11,
	port_b_data_out_clear => "clear1",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 4,
	port_b_first_address => 0,
	port_b_first_bit_number => 12,
	port_b_last_address => 2047,
	port_b_logical_ram_depth => 2048,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \U1|U0|dcfifo_component|auto_generated|valid_wrreq~combout\,
	portbre => VCC,
	portbaddrstall => \U1|U0|dcfifo_component|auto_generated|ALT_INV_valid_rdreq~0_combout\,
	clk0 => \U0|U0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	clk1 => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \U1|U0|dcfifo_component|auto_generated|valid_wrreq~combout\,
	ena1 => \U1|U0|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	clr1 => \resetn_t~clkctrl_outclk\,
	portadatain => \U1|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a12_PORTADATAIN_bus\,
	portaaddr => \U1|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a12_PORTAADDR_bus\,
	portbaddr => \U1|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a12_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \U1|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a12_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X11_Y15_N24
\readusbfifodata_t1[12]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \readusbfifodata_t1[12]~12_combout\ = (!\U2|wr_t\(0) & (!\U2|wr_t\(3) & (\U1|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(12) & !\U2|wr_t\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|wr_t\(0),
	datab => \U2|wr_t\(3),
	datac => \U1|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(12),
	datad => \U2|wr_t\(2),
	combout => \readusbfifodata_t1[12]~12_combout\);

-- Location: LCCOMB_X16_Y14_N26
\readusbfifodata_t1[13]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \readusbfifodata_t1[13]~13_combout\ = (!\U2|wr_t\(0) & (!\U2|wr_t\(3) & (!\U2|wr_t\(2) & \U1|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|wr_t\(0),
	datab => \U2|wr_t\(3),
	datac => \U2|wr_t\(2),
	datad => \U1|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(13),
	combout => \readusbfifodata_t1[13]~13_combout\);

-- Location: LCCOMB_X16_Y14_N20
\readusbfifodata_t1[14]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \readusbfifodata_t1[14]~14_combout\ = (!\U2|wr_t\(0) & (!\U2|wr_t\(2) & (\U1|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(14) & !\U2|wr_t\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|wr_t\(0),
	datab => \U2|wr_t\(2),
	datac => \U1|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(14),
	datad => \U2|wr_t\(3),
	combout => \readusbfifodata_t1[14]~14_combout\);

-- Location: LCCOMB_X16_Y14_N10
\readusbfifodata_t1[15]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \readusbfifodata_t1[15]~15_combout\ = (!\U2|wr_t\(0) & (\U1|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(15) & (!\U2|wr_t\(2) & !\U2|wr_t\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|wr_t\(0),
	datab => \U1|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(15),
	datac => \U2|wr_t\(2),
	datad => \U2|wr_t\(3),
	combout => \readusbfifodata_t1[15]~15_combout\);

-- Location: LCCOMB_X11_Y16_N24
\readusbfifodata_t2[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \readusbfifodata_t2[0]~0_combout\ = (\U1|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(0) & (\U2|wr_t\(0) & (\U2|wr_t\(2) & !\U2|wr_t\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(0),
	datab => \U2|wr_t\(0),
	datac => \U2|wr_t\(2),
	datad => \U2|wr_t\(1),
	combout => \readusbfifodata_t2[0]~0_combout\);

-- Location: LCCOMB_X11_Y16_N18
\readusbfifodata_t2[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \readusbfifodata_t2[1]~1_combout\ = (\U1|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(1) & (\U2|wr_t\(0) & (\U2|wr_t\(2) & !\U2|wr_t\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(1),
	datab => \U2|wr_t\(0),
	datac => \U2|wr_t\(2),
	datad => \U2|wr_t\(1),
	combout => \readusbfifodata_t2[1]~1_combout\);

-- Location: LCCOMB_X11_Y16_N8
\readusbfifodata_t2[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \readusbfifodata_t2[2]~2_combout\ = (\U1|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(2) & (\U2|wr_t\(0) & (\U2|wr_t\(2) & !\U2|wr_t\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(2),
	datab => \U2|wr_t\(0),
	datac => \U2|wr_t\(2),
	datad => \U2|wr_t\(1),
	combout => \readusbfifodata_t2[2]~2_combout\);

-- Location: LCCOMB_X11_Y16_N2
\readusbfifodata_t2[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \readusbfifodata_t2[3]~3_combout\ = (\U1|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(3) & (\U2|wr_t\(0) & (\U2|wr_t\(2) & !\U2|wr_t\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(3),
	datab => \U2|wr_t\(0),
	datac => \U2|wr_t\(2),
	datad => \U2|wr_t\(1),
	combout => \readusbfifodata_t2[3]~3_combout\);

-- Location: LCCOMB_X11_Y16_N12
\readusbfifodata_t2[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \readusbfifodata_t2[4]~4_combout\ = (\U1|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(4) & (\U2|wr_t\(2) & (\U2|wr_t\(0) & !\U2|wr_t\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(4),
	datab => \U2|wr_t\(2),
	datac => \U2|wr_t\(0),
	datad => \U2|wr_t\(1),
	combout => \readusbfifodata_t2[4]~4_combout\);

-- Location: LCCOMB_X16_Y14_N0
\readusbfifodata_t2[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \readusbfifodata_t2[5]~5_combout\ = (\U2|wr_t\(0) & (\U2|wr_t\(2) & (\U1|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(5) & !\U2|wr_t\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|wr_t\(0),
	datab => \U2|wr_t\(2),
	datac => \U1|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(5),
	datad => \U2|wr_t\(1),
	combout => \readusbfifodata_t2[5]~5_combout\);

-- Location: LCCOMB_X11_Y15_N0
\readusbfifodata_t2[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \readusbfifodata_t2[6]~6_combout\ = (\U2|wr_t\(2) & (!\U2|wr_t\(1) & (\U1|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(6) & \U2|wr_t\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|wr_t\(2),
	datab => \U2|wr_t\(1),
	datac => \U1|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(6),
	datad => \U2|wr_t\(0),
	combout => \readusbfifodata_t2[6]~6_combout\);

-- Location: LCCOMB_X11_Y15_N22
\readusbfifodata_t2[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \readusbfifodata_t2[7]~7_combout\ = (\U2|wr_t\(2) & (!\U2|wr_t\(1) & (\U1|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(7) & \U2|wr_t\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|wr_t\(2),
	datab => \U2|wr_t\(1),
	datac => \U1|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(7),
	datad => \U2|wr_t\(0),
	combout => \readusbfifodata_t2[7]~7_combout\);

-- Location: LCCOMB_X11_Y15_N20
\readusbfifodata_t2[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \readusbfifodata_t2[8]~8_combout\ = (\U2|wr_t\(2) & (!\U2|wr_t\(1) & (\U1|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(8) & \U2|wr_t\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|wr_t\(2),
	datab => \U2|wr_t\(1),
	datac => \U1|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(8),
	datad => \U2|wr_t\(0),
	combout => \readusbfifodata_t2[8]~8_combout\);

-- Location: LCCOMB_X11_Y15_N18
\readusbfifodata_t2[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \readusbfifodata_t2[9]~9_combout\ = (\U2|wr_t\(2) & (!\U2|wr_t\(1) & (\U1|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(9) & \U2|wr_t\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|wr_t\(2),
	datab => \U2|wr_t\(1),
	datac => \U1|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(9),
	datad => \U2|wr_t\(0),
	combout => \readusbfifodata_t2[9]~9_combout\);

-- Location: LCCOMB_X11_Y15_N28
\readusbfifodata_t2[10]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \readusbfifodata_t2[10]~10_combout\ = (\U2|wr_t\(2) & (!\U2|wr_t\(1) & (\U1|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(10) & \U2|wr_t\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|wr_t\(2),
	datab => \U2|wr_t\(1),
	datac => \U1|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(10),
	datad => \U2|wr_t\(0),
	combout => \readusbfifodata_t2[10]~10_combout\);

-- Location: LCCOMB_X11_Y15_N2
\readusbfifodata_t2[11]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \readusbfifodata_t2[11]~11_combout\ = (\U2|wr_t\(2) & (!\U2|wr_t\(1) & (\U1|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(11) & \U2|wr_t\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|wr_t\(2),
	datab => \U2|wr_t\(1),
	datac => \U1|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(11),
	datad => \U2|wr_t\(0),
	combout => \readusbfifodata_t2[11]~11_combout\);

-- Location: LCCOMB_X11_Y15_N8
\readusbfifodata_t2[12]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \readusbfifodata_t2[12]~12_combout\ = (\U2|wr_t\(2) & (!\U2|wr_t\(1) & (\U1|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(12) & \U2|wr_t\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|wr_t\(2),
	datab => \U2|wr_t\(1),
	datac => \U1|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(12),
	datad => \U2|wr_t\(0),
	combout => \readusbfifodata_t2[12]~12_combout\);

-- Location: LCCOMB_X16_Y14_N22
\readusbfifodata_t2[13]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \readusbfifodata_t2[13]~13_combout\ = (\U2|wr_t\(0) & (\U2|wr_t\(2) & (\U1|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(13) & !\U2|wr_t\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|wr_t\(0),
	datab => \U2|wr_t\(2),
	datac => \U1|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(13),
	datad => \U2|wr_t\(1),
	combout => \readusbfifodata_t2[13]~13_combout\);

-- Location: LCCOMB_X16_Y14_N16
\readusbfifodata_t2[14]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \readusbfifodata_t2[14]~14_combout\ = (\U2|wr_t\(0) & (\U2|wr_t\(2) & (\U1|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(14) & !\U2|wr_t\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|wr_t\(0),
	datab => \U2|wr_t\(2),
	datac => \U1|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(14),
	datad => \U2|wr_t\(1),
	combout => \readusbfifodata_t2[14]~14_combout\);

-- Location: LCCOMB_X16_Y14_N14
\readusbfifodata_t2[15]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \readusbfifodata_t2[15]~15_combout\ = (\U2|wr_t\(0) & (\U2|wr_t\(2) & (\U1|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(15) & !\U2|wr_t\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|wr_t\(0),
	datab => \U2|wr_t\(2),
	datac => \U1|U0|dcfifo_component|auto_generated|fifo_ram|q_b\(15),
	datad => \U2|wr_t\(1),
	combout => \readusbfifodata_t2[15]~15_combout\);

-- Location: LCCOMB_X33_Y12_N26
\U9|Low_Clk_Counter[19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U9|Low_Clk_Counter[19]~feeder_combout\ = \U9|Low_Clk_Counter[19]~55_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U9|Low_Clk_Counter[19]~55_combout\,
	combout => \U9|Low_Clk_Counter[19]~feeder_combout\);

-- Location: FF_X33_Y12_N27
\U9|Low_Clk_Counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK48M~inputclkctrl_outclk\,
	d => \U9|Low_Clk_Counter[19]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U9|Low_Clk_Counter\(19));

-- Location: CLKCTRL_G9
\U9|Low_Clk_Counter[19]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U9|Low_Clk_Counter[19]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U9|Low_Clk_Counter[19]~clkctrl_outclk\);

-- Location: LCCOMB_X33_Y19_N8
\U9|Check_Counter[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U9|Check_Counter[0]~8_combout\ = \U9|Check_Counter\(0) $ (VCC)
-- \U9|Check_Counter[0]~9\ = CARRY(\U9|Check_Counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U9|Check_Counter\(0),
	datad => VCC,
	combout => \U9|Check_Counter[0]~8_combout\,
	cout => \U9|Check_Counter[0]~9\);

-- Location: FF_X33_Y16_N25
\CPU_Command_2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CPU_WR~input_o\,
	asdata => CPU_Command_1(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CPU_Command_2(2));

-- Location: LCCOMB_X31_Y19_N6
\Check_Led[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- Check_Led(2) = (GLOBAL(\Check_Led[7]~1clkctrl_outclk\) & ((CPU_Command_2(2)))) # (!GLOBAL(\Check_Led[7]~1clkctrl_outclk\) & (Check_Led(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Check_Led(2),
	datab => CPU_Command_2(2),
	datad => \Check_Led[7]~1clkctrl_outclk\,
	combout => Check_Led(2));

-- Location: LCCOMB_X32_Y19_N26
\Check_Led[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- Check_Led(0) = (GLOBAL(\Check_Led[7]~1clkctrl_outclk\) & (CPU_Command_2(0))) # (!GLOBAL(\Check_Led[7]~1clkctrl_outclk\) & ((Check_Led(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CPU_Command_2(0),
	datac => Check_Led(0),
	datad => \Check_Led[7]~1clkctrl_outclk\,
	combout => Check_Led(0));

-- Location: LCCOMB_X32_Y19_N20
\U9|Check_Index[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U9|Check_Index[0]~2_combout\ = \U9|Check_Index\(0) $ (((\U9|Equal0~1_combout\ & (\U9|Equal0~0_combout\ & \U9|Check_t~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U9|Equal0~1_combout\,
	datab => \U9|Equal0~0_combout\,
	datac => \U9|Check_Index\(0),
	datad => \U9|Check_t~q\,
	combout => \U9|Check_Index[0]~2_combout\);

-- Location: FF_X32_Y19_N21
\U9|Check_Index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U9|Low_Clk_Counter[19]~clkctrl_outclk\,
	d => \U9|Check_Index[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U9|Check_Index\(0));

-- Location: LCCOMB_X32_Y19_N2
\U9|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U9|Mux0~2_combout\ = (\U9|Check_Index\(1) & (((\U9|Check_Index\(0))))) # (!\U9|Check_Index\(1) & ((\U9|Check_Index\(0) & (Check_Led(1))) # (!\U9|Check_Index\(0) & ((Check_Led(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U9|Check_Index\(1),
	datab => Check_Led(1),
	datac => Check_Led(0),
	datad => \U9|Check_Index\(0),
	combout => \U9|Mux0~2_combout\);

-- Location: LCCOMB_X32_Y19_N0
\U9|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U9|Mux0~3_combout\ = (\U9|Check_Index\(1) & ((\U9|Mux0~2_combout\ & ((Check_Led(3)))) # (!\U9|Mux0~2_combout\ & (Check_Led(2))))) # (!\U9|Check_Index\(1) & (((\U9|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U9|Check_Index\(1),
	datab => Check_Led(2),
	datac => Check_Led(3),
	datad => \U9|Mux0~2_combout\,
	combout => \U9|Mux0~3_combout\);

-- Location: LCCOMB_X33_Y19_N28
\U9|Check_Index[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U9|Check_Index[1]~0_combout\ = (!\U9|Check_t~q\) # (!\U9|Check_Index\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U9|Check_Index\(0),
	datad => \U9|Check_t~q\,
	combout => \U9|Check_Index[1]~0_combout\);

-- Location: LCCOMB_X32_Y19_N22
\U9|Check_Index[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U9|Check_Index[1]~1_combout\ = \U9|Check_Index\(1) $ (((\U9|Equal0~1_combout\ & (\U9|Equal0~0_combout\ & !\U9|Check_Index[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U9|Equal0~1_combout\,
	datab => \U9|Equal0~0_combout\,
	datac => \U9|Check_Index\(1),
	datad => \U9|Check_Index[1]~0_combout\,
	combout => \U9|Check_Index[1]~1_combout\);

-- Location: FF_X32_Y19_N23
\U9|Check_Index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U9|Low_Clk_Counter[19]~clkctrl_outclk\,
	d => \U9|Check_Index[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U9|Check_Index\(1));

-- Location: FF_X33_Y16_N29
\CPU_Command_2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CPU_WR~input_o\,
	asdata => CPU_Command_1(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CPU_Command_2(5));

-- Location: LCCOMB_X32_Y19_N14
\Check_Led[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- Check_Led(5) = (GLOBAL(\Check_Led[7]~1clkctrl_outclk\) & (CPU_Command_2(5))) # (!GLOBAL(\Check_Led[7]~1clkctrl_outclk\) & ((Check_Led(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => CPU_Command_2(5),
	datac => Check_Led(5),
	datad => \Check_Led[7]~1clkctrl_outclk\,
	combout => Check_Led(5));

-- Location: LCCOMB_X32_Y19_N18
\U9|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U9|Mux0~0_combout\ = (\U9|Check_Index\(1) & (((\U9|Check_Index\(0))))) # (!\U9|Check_Index\(1) & ((\U9|Check_Index\(0) & ((Check_Led(5)))) # (!\U9|Check_Index\(0) & (Check_Led(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Check_Led(4),
	datab => Check_Led(5),
	datac => \U9|Check_Index\(1),
	datad => \U9|Check_Index\(0),
	combout => \U9|Mux0~0_combout\);

-- Location: LCCOMB_X32_Y19_N4
\U9|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U9|Mux0~1_combout\ = (\U9|Check_Index\(1) & ((\U9|Mux0~0_combout\ & (Check_Led(7))) # (!\U9|Mux0~0_combout\ & ((Check_Led(6)))))) # (!\U9|Check_Index\(1) & (((\U9|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Check_Led(7),
	datab => \U9|Check_Index\(1),
	datac => Check_Led(6),
	datad => \U9|Mux0~0_combout\,
	combout => \U9|Mux0~1_combout\);

-- Location: LCCOMB_X33_Y19_N24
\U9|Check_Counter~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U9|Check_Counter~10_combout\ = (\U9|Check_t~q\ & ((\U9|Check_Index\(2) & ((!\U9|Mux0~1_combout\))) # (!\U9|Check_Index\(2) & (!\U9|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U9|Check_Index\(2),
	datab => \U9|Check_t~q\,
	datac => \U9|Mux0~3_combout\,
	datad => \U9|Mux0~1_combout\,
	combout => \U9|Check_Counter~10_combout\);

-- Location: LCCOMB_X33_Y19_N14
\U9|Check_Counter[3]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \U9|Check_Counter[3]~18_combout\ = (\U9|Check_Counter\(3) & (\U9|Check_Counter[2]~17\ & VCC)) # (!\U9|Check_Counter\(3) & (!\U9|Check_Counter[2]~17\))
-- \U9|Check_Counter[3]~19\ = CARRY((!\U9|Check_Counter\(3) & !\U9|Check_Counter[2]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U9|Check_Counter\(3),
	datad => VCC,
	cin => \U9|Check_Counter[2]~17\,
	combout => \U9|Check_Counter[3]~18_combout\,
	cout => \U9|Check_Counter[3]~19\);

-- Location: LCCOMB_X33_Y19_N16
\U9|Check_Counter[4]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \U9|Check_Counter[4]~20_combout\ = (\U9|Check_Counter\(4) & ((GND) # (!\U9|Check_Counter[3]~19\))) # (!\U9|Check_Counter\(4) & (\U9|Check_Counter[3]~19\ $ (GND)))
-- \U9|Check_Counter[4]~21\ = CARRY((\U9|Check_Counter\(4)) # (!\U9|Check_Counter[3]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U9|Check_Counter\(4),
	datad => VCC,
	cin => \U9|Check_Counter[3]~19\,
	combout => \U9|Check_Counter[4]~20_combout\,
	cout => \U9|Check_Counter[4]~21\);

-- Location: LCCOMB_X32_Y19_N16
\U9|Check_Counter~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \U9|Check_Counter~22_combout\ = (!\U9|Check_Index\(2) & (!\U9|Check_t~q\ & (!\U9|Check_Index\(0) & !\U9|Check_Index\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U9|Check_Index\(2),
	datab => \U9|Check_t~q\,
	datac => \U9|Check_Index\(0),
	datad => \U9|Check_Index\(1),
	combout => \U9|Check_Counter~22_combout\);

-- Location: LCCOMB_X32_Y19_N24
\U9|Check_Counter~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \U9|Check_Counter~13_combout\ = (\U9|Check_t~q\ & ((\U9|Check_Index\(2) & (\U9|Mux0~1_combout\)) # (!\U9|Check_Index\(2) & ((\U9|Mux0~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U9|Check_Index\(2),
	datab => \U9|Check_t~q\,
	datac => \U9|Mux0~1_combout\,
	datad => \U9|Mux0~3_combout\,
	combout => \U9|Check_Counter~13_combout\);

-- Location: LCCOMB_X33_Y19_N30
\U9|Check_Counter~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \U9|Check_Counter~23_combout\ = (\U9|Check_Counter~22_combout\) # (\U9|Check_Counter~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U9|Check_Counter~22_combout\,
	datad => \U9|Check_Counter~13_combout\,
	combout => \U9|Check_Counter~23_combout\);

-- Location: FF_X33_Y19_N17
\U9|Check_Counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U9|Low_Clk_Counter[19]~clkctrl_outclk\,
	d => \U9|Check_Counter[4]~20_combout\,
	asdata => \U9|Check_Counter~23_combout\,
	sload => \U9|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U9|Check_Counter\(4));

-- Location: LCCOMB_X33_Y19_N18
\U9|Check_Counter[5]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \U9|Check_Counter[5]~24_combout\ = (\U9|Check_Counter\(5) & (\U9|Check_Counter[4]~21\ & VCC)) # (!\U9|Check_Counter\(5) & (!\U9|Check_Counter[4]~21\))
-- \U9|Check_Counter[5]~25\ = CARRY((!\U9|Check_Counter\(5) & !\U9|Check_Counter[4]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U9|Check_Counter\(5),
	datad => VCC,
	cin => \U9|Check_Counter[4]~21\,
	combout => \U9|Check_Counter[5]~24_combout\,
	cout => \U9|Check_Counter[5]~25\);

-- Location: FF_X33_Y19_N19
\U9|Check_Counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U9|Low_Clk_Counter[19]~clkctrl_outclk\,
	d => \U9|Check_Counter[5]~24_combout\,
	asdata => \U9|Check_Counter~13_combout\,
	sload => \U9|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U9|Check_Counter\(5));

-- Location: FF_X33_Y19_N21
\U9|Check_Counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U9|Low_Clk_Counter[19]~clkctrl_outclk\,
	d => \U9|Check_Counter[6]~26_combout\,
	asdata => \U9|Check_Counter~22_combout\,
	sload => \U9|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U9|Check_Counter\(6));

-- Location: LCCOMB_X33_Y19_N2
\U9|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U9|Equal0~1_combout\ = (!\U9|Check_Counter\(7) & (!\U9|Check_Counter\(5) & (!\U9|Check_Counter\(6) & !\U9|Check_Counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U9|Check_Counter\(7),
	datab => \U9|Check_Counter\(5),
	datac => \U9|Check_Counter\(6),
	datad => \U9|Check_Counter\(4),
	combout => \U9|Equal0~1_combout\);

-- Location: LCCOMB_X33_Y19_N26
\U9|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U9|Equal0~2_combout\ = (\U9|Equal0~0_combout\ & \U9|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U9|Equal0~0_combout\,
	datad => \U9|Equal0~1_combout\,
	combout => \U9|Equal0~2_combout\);

-- Location: FF_X33_Y19_N9
\U9|Check_Counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U9|Low_Clk_Counter[19]~clkctrl_outclk\,
	d => \U9|Check_Counter[0]~8_combout\,
	asdata => \U9|Check_Counter~10_combout\,
	sload => \U9|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U9|Check_Counter\(0));

-- Location: LCCOMB_X33_Y19_N10
\U9|Check_Counter[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \U9|Check_Counter[1]~11_combout\ = (\U9|Check_Counter\(1) & (\U9|Check_Counter[0]~9\ & VCC)) # (!\U9|Check_Counter\(1) & (!\U9|Check_Counter[0]~9\))
-- \U9|Check_Counter[1]~12\ = CARRY((!\U9|Check_Counter\(1) & !\U9|Check_Counter[0]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U9|Check_Counter\(1),
	datad => VCC,
	cin => \U9|Check_Counter[0]~9\,
	combout => \U9|Check_Counter[1]~11_combout\,
	cout => \U9|Check_Counter[1]~12\);

-- Location: LCCOMB_X32_Y19_N6
\U9|Check_Counter~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \U9|Check_Counter~14_combout\ = (!\U9|Check_t~q\ & ((\U9|Check_Index\(2)) # ((\U9|Check_Index\(0)) # (\U9|Check_Index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U9|Check_Index\(2),
	datab => \U9|Check_t~q\,
	datac => \U9|Check_Index\(0),
	datad => \U9|Check_Index\(1),
	combout => \U9|Check_Counter~14_combout\);

-- Location: FF_X33_Y19_N15
\U9|Check_Counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U9|Low_Clk_Counter[19]~clkctrl_outclk\,
	d => \U9|Check_Counter[3]~18_combout\,
	asdata => \U9|Check_Counter~14_combout\,
	sload => \U9|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U9|Check_Counter\(3));

-- Location: LCCOMB_X33_Y19_N4
\U9|Check_Counter~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \U9|Check_Counter~15_combout\ = (\U9|Check_Counter~14_combout\) # (\U9|Check_Counter~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U9|Check_Counter~14_combout\,
	datad => \U9|Check_Counter~13_combout\,
	combout => \U9|Check_Counter~15_combout\);

-- Location: FF_X33_Y19_N11
\U9|Check_Counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U9|Low_Clk_Counter[19]~clkctrl_outclk\,
	d => \U9|Check_Counter[1]~11_combout\,
	asdata => \U9|Check_Counter~15_combout\,
	sload => \U9|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U9|Check_Counter\(1));

-- Location: LCCOMB_X33_Y19_N0
\U9|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U9|Equal0~0_combout\ = (!\U9|Check_Counter\(2) & (!\U9|Check_Counter\(3) & (!\U9|Check_Counter\(0) & !\U9|Check_Counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U9|Check_Counter\(2),
	datab => \U9|Check_Counter\(3),
	datac => \U9|Check_Counter\(0),
	datad => \U9|Check_Counter\(1),
	combout => \U9|Equal0~0_combout\);

-- Location: LCCOMB_X32_Y19_N28
\U9|Check_t~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U9|Check_t~0_combout\ = \U9|Check_t~q\ $ (((\U9|Equal0~0_combout\ & \U9|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U9|Equal0~0_combout\,
	datac => \U9|Check_t~q\,
	datad => \U9|Equal0~1_combout\,
	combout => \U9|Check_t~0_combout\);

-- Location: FF_X32_Y19_N29
\U9|Check_t\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U9|Low_Clk_Counter[19]~clkctrl_outclk\,
	d => \U9|Check_t~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U9|Check_t~q\);

-- Location: LCCOMB_X19_Y17_N24
\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: IOIBUF_X3_Y24_N22
\DQ1[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DQ1(0),
	o => \DQ1[0]~input_o\);

-- Location: LCCOMB_X16_Y14_N12
\extfifohalffull_t1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \extfifohalffull_t1~0_combout\ = (\U2|wr_t\(3) & (\U2|wr_t\(2) & !\U2|wr_t\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|wr_t\(3),
	datac => \U2|wr_t\(2),
	datad => \U2|wr_t\(1),
	combout => \extfifohalffull_t1~0_combout\);

-- Location: LCCOMB_X16_Y14_N6
\extfifohalffull_t2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \extfifohalffull_t2~0_combout\ = (!\U2|wr_t\(3) & (!\U2|wr_t\(0) & \U2|wr_t\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|wr_t\(3),
	datac => \U2|wr_t\(0),
	datad => \U2|wr_t\(1),
	combout => \extfifohalffull_t2~0_combout\);

-- Location: LCCOMB_X8_Y17_N28
\writeextfifodata_t[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \writeextfifodata_t[0]~0_combout\ = (\extfifohalffull_t1~0_combout\ & (\DQ0[0]~input_o\)) # (!\extfifohalffull_t1~0_combout\ & (((\DQ1[0]~input_o\ & \extfifohalffull_t2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DQ0[0]~input_o\,
	datab => \DQ1[0]~input_o\,
	datac => \extfifohalffull_t1~0_combout\,
	datad => \extfifohalffull_t2~0_combout\,
	combout => \writeextfifodata_t[0]~0_combout\);

-- Location: FF_X16_Y15_N27
\U5|U0|dcfifo_component|auto_generated|wrptr_g[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~q\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sload => VCC,
	ena => \U5|U0|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|U0|dcfifo_component|auto_generated|wrptr_g\(4));

-- Location: LCCOMB_X18_Y15_N18
\U5|U0|dcfifo_component|auto_generated|wrptr_g[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|U0|dcfifo_component|auto_generated|wrptr_g[8]~feeder_combout\ = \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a8~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a8~q\,
	combout => \U5|U0|dcfifo_component|auto_generated|wrptr_g[8]~feeder_combout\);

-- Location: FF_X18_Y15_N19
\U5|U0|dcfifo_component|auto_generated|wrptr_g[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U5|U0|dcfifo_component|auto_generated|wrptr_g[8]~feeder_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	ena => \U5|U0|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|U0|dcfifo_component|auto_generated|wrptr_g\(8));

-- Location: FF_X18_Y15_N11
\U5|U0|dcfifo_component|auto_generated|wrptr_g[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \U5|U0|dcfifo_component|auto_generated|wrptr_g1p|counter8a9~q\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sload => VCC,
	ena => \U5|U0|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|U0|dcfifo_component|auto_generated|wrptr_g\(9));

-- Location: IOIBUF_X0_Y6_N22
\DQ0[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DQ0(1),
	o => \DQ0[1]~input_o\);

-- Location: LCCOMB_X8_Y17_N22
\writeextfifodata_t[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \writeextfifodata_t[1]~1_combout\ = (\extfifohalffull_t1~0_combout\ & (((\DQ0[1]~input_o\)))) # (!\extfifohalffull_t1~0_combout\ & (\DQ1[1]~input_o\ & ((\extfifohalffull_t2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DQ1[1]~input_o\,
	datab => \extfifohalffull_t1~0_combout\,
	datac => \DQ0[1]~input_o\,
	datad => \extfifohalffull_t2~0_combout\,
	combout => \writeextfifodata_t[1]~1_combout\);

-- Location: IOIBUF_X5_Y24_N22
\DQ1[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DQ1(2),
	o => \DQ1[2]~input_o\);

-- Location: LCCOMB_X8_Y17_N20
\writeextfifodata_t[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \writeextfifodata_t[2]~2_combout\ = (\extfifohalffull_t1~0_combout\ & (\DQ0[2]~input_o\)) # (!\extfifohalffull_t1~0_combout\ & (((\DQ1[2]~input_o\ & \extfifohalffull_t2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DQ0[2]~input_o\,
	datab => \extfifohalffull_t1~0_combout\,
	datac => \DQ1[2]~input_o\,
	datad => \extfifohalffull_t2~0_combout\,
	combout => \writeextfifodata_t[2]~2_combout\);

-- Location: IOIBUF_X0_Y7_N22
\DQ0[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DQ0(3),
	o => \DQ0[3]~input_o\);

-- Location: LCCOMB_X8_Y17_N6
\writeextfifodata_t[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \writeextfifodata_t[3]~3_combout\ = (\extfifohalffull_t1~0_combout\ & (((\DQ0[3]~input_o\)))) # (!\extfifohalffull_t1~0_combout\ & (\DQ1[3]~input_o\ & ((\extfifohalffull_t2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DQ1[3]~input_o\,
	datab => \extfifohalffull_t1~0_combout\,
	datac => \DQ0[3]~input_o\,
	datad => \extfifohalffull_t2~0_combout\,
	combout => \writeextfifodata_t[3]~3_combout\);

-- Location: M9K_X15_Y16_N0
\U5|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_output_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "FIFO_16Bit_2K:U5|FIFO_Core:U0|dcfifo:dcfifo_component|dcfifo_d7n1:auto_generated|altsyncram_gm31:fifo_ram|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "clear1",
	port_b_address_clock => "clock1",
	port_b_address_width => 11,
	port_b_data_out_clear => "clear1",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 4,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 2047,
	port_b_logical_ram_depth => 2048,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \U5|U0|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	portbre => VCC,
	portbaddrstall => \ALT_INV_~GND~combout\,
	clk0 => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	clk1 => GND,
	ena0 => \U5|U0|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	ena1 => GND,
	clr1 => \resetn_t~clkctrl_outclk\,
	portadatain => \U5|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a0_PORTADATAIN_bus\,
	portaaddr => \U5|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a0_PORTAADDR_bus\,
	portbaddr => \U5|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \U5|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a0_PORTBDATAOUT_bus\);

-- Location: IOIBUF_X7_Y0_N22
\DQ0[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DQ0(4),
	o => \DQ0[4]~input_o\);

-- Location: LCCOMB_X8_Y17_N24
\writeextfifodata_t[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \writeextfifodata_t[4]~4_combout\ = (\extfifohalffull_t1~0_combout\ & (((\DQ0[4]~input_o\)))) # (!\extfifohalffull_t1~0_combout\ & (\DQ1[4]~input_o\ & ((\extfifohalffull_t2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DQ1[4]~input_o\,
	datab => \DQ0[4]~input_o\,
	datac => \extfifohalffull_t1~0_combout\,
	datad => \extfifohalffull_t2~0_combout\,
	combout => \writeextfifodata_t[4]~4_combout\);

-- Location: IOIBUF_X7_Y24_N15
\DQ1[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DQ1(5),
	o => \DQ1[5]~input_o\);

-- Location: LCCOMB_X8_Y17_N26
\writeextfifodata_t[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \writeextfifodata_t[5]~5_combout\ = (\extfifohalffull_t1~0_combout\ & (\DQ0[5]~input_o\)) # (!\extfifohalffull_t1~0_combout\ & (((\DQ1[5]~input_o\ & \extfifohalffull_t2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DQ0[5]~input_o\,
	datab => \DQ1[5]~input_o\,
	datac => \extfifohalffull_t1~0_combout\,
	datad => \extfifohalffull_t2~0_combout\,
	combout => \writeextfifodata_t[5]~5_combout\);

-- Location: IOIBUF_X9_Y24_N22
\DQ1[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DQ1(6),
	o => \DQ1[6]~input_o\);

-- Location: IOIBUF_X0_Y4_N22
\DQ0[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DQ0(6),
	o => \DQ0[6]~input_o\);

-- Location: LCCOMB_X10_Y15_N20
\writeextfifodata_t[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \writeextfifodata_t[6]~6_combout\ = (\extfifohalffull_t1~0_combout\ & (((\DQ0[6]~input_o\)))) # (!\extfifohalffull_t1~0_combout\ & (\extfifohalffull_t2~0_combout\ & (\DQ1[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \extfifohalffull_t2~0_combout\,
	datab => \extfifohalffull_t1~0_combout\,
	datac => \DQ1[6]~input_o\,
	datad => \DQ0[6]~input_o\,
	combout => \writeextfifodata_t[6]~6_combout\);

-- Location: IOIBUF_X0_Y4_N15
\DQ0[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DQ0(7),
	o => \DQ0[7]~input_o\);

-- Location: LCCOMB_X10_Y15_N6
\writeextfifodata_t[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \writeextfifodata_t[7]~7_combout\ = (\extfifohalffull_t1~0_combout\ & (((\DQ0[7]~input_o\)))) # (!\extfifohalffull_t1~0_combout\ & (\DQ1[7]~input_o\ & (\extfifohalffull_t2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DQ1[7]~input_o\,
	datab => \extfifohalffull_t1~0_combout\,
	datac => \extfifohalffull_t2~0_combout\,
	datad => \DQ0[7]~input_o\,
	combout => \writeextfifodata_t[7]~7_combout\);

-- Location: M9K_X15_Y15_N0
\U5|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a4\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_output_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "FIFO_16Bit_2K:U5|FIFO_Core:U0|dcfifo:dcfifo_component|dcfifo_d7n1:auto_generated|altsyncram_gm31:fifo_ram|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "clear1",
	port_b_address_clock => "clock1",
	port_b_address_width => 11,
	port_b_data_out_clear => "clear1",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 4,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 2047,
	port_b_logical_ram_depth => 2048,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \U5|U0|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	portbre => VCC,
	portbaddrstall => \ALT_INV_~GND~combout\,
	clk0 => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	clk1 => GND,
	ena0 => \U5|U0|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	ena1 => GND,
	clr1 => \resetn_t~clkctrl_outclk\,
	portadatain => \U5|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a4_PORTADATAIN_bus\,
	portaaddr => \U5|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a4_PORTAADDR_bus\,
	portbaddr => \U5|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a4_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \U5|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a4_PORTBDATAOUT_bus\);

-- Location: IOIBUF_X11_Y0_N22
\DQ0[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DQ0(8),
	o => \DQ0[8]~input_o\);

-- Location: LCCOMB_X8_Y17_N8
\writeextfifodata_t[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \writeextfifodata_t[8]~8_combout\ = (\extfifohalffull_t1~0_combout\ & (((\DQ0[8]~input_o\)))) # (!\extfifohalffull_t1~0_combout\ & (\DQ1[8]~input_o\ & ((\extfifohalffull_t2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DQ1[8]~input_o\,
	datab => \DQ0[8]~input_o\,
	datac => \extfifohalffull_t1~0_combout\,
	datad => \extfifohalffull_t2~0_combout\,
	combout => \writeextfifodata_t[8]~8_combout\);

-- Location: IOIBUF_X0_Y21_N8
\DQ1[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DQ1(9),
	o => \DQ1[9]~input_o\);

-- Location: LCCOMB_X8_Y17_N2
\writeextfifodata_t[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \writeextfifodata_t[9]~9_combout\ = (\extfifohalffull_t1~0_combout\ & (\DQ0[9]~input_o\)) # (!\extfifohalffull_t1~0_combout\ & (((\DQ1[9]~input_o\ & \extfifohalffull_t2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DQ0[9]~input_o\,
	datab => \DQ1[9]~input_o\,
	datac => \extfifohalffull_t1~0_combout\,
	datad => \extfifohalffull_t2~0_combout\,
	combout => \writeextfifodata_t[9]~9_combout\);

-- Location: IOIBUF_X0_Y19_N22
\DQ1[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DQ1(10),
	o => \DQ1[10]~input_o\);

-- Location: LCCOMB_X8_Y17_N16
\writeextfifodata_t[10]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \writeextfifodata_t[10]~10_combout\ = (\extfifohalffull_t1~0_combout\ & (\DQ0[10]~input_o\)) # (!\extfifohalffull_t1~0_combout\ & (((\DQ1[10]~input_o\ & \extfifohalffull_t2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DQ0[10]~input_o\,
	datab => \DQ1[10]~input_o\,
	datac => \extfifohalffull_t1~0_combout\,
	datad => \extfifohalffull_t2~0_combout\,
	combout => \writeextfifodata_t[10]~10_combout\);

-- Location: IOIBUF_X0_Y19_N15
\DQ1[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DQ1(11),
	o => \DQ1[11]~input_o\);

-- Location: LCCOMB_X8_Y17_N18
\writeextfifodata_t[11]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \writeextfifodata_t[11]~11_combout\ = (\extfifohalffull_t1~0_combout\ & (\DQ0[11]~input_o\)) # (!\extfifohalffull_t1~0_combout\ & (((\DQ1[11]~input_o\ & \extfifohalffull_t2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DQ0[11]~input_o\,
	datab => \extfifohalffull_t1~0_combout\,
	datac => \DQ1[11]~input_o\,
	datad => \extfifohalffull_t2~0_combout\,
	combout => \writeextfifodata_t[11]~11_combout\);

-- Location: M9K_X15_Y17_N0
\U5|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a8\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_output_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "FIFO_16Bit_2K:U5|FIFO_Core:U0|dcfifo:dcfifo_component|dcfifo_d7n1:auto_generated|altsyncram_gm31:fifo_ram|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "clear1",
	port_b_address_clock => "clock1",
	port_b_address_width => 11,
	port_b_data_out_clear => "clear1",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 4,
	port_b_first_address => 0,
	port_b_first_bit_number => 8,
	port_b_last_address => 2047,
	port_b_logical_ram_depth => 2048,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \U5|U0|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	portbre => VCC,
	portbaddrstall => \ALT_INV_~GND~combout\,
	clk0 => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	clk1 => GND,
	ena0 => \U5|U0|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	ena1 => GND,
	clr1 => \resetn_t~clkctrl_outclk\,
	portadatain => \U5|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a8_PORTADATAIN_bus\,
	portaaddr => \U5|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a8_PORTAADDR_bus\,
	portbaddr => \U5|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a8_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \U5|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a8_PORTBDATAOUT_bus\);

-- Location: IOIBUF_X5_Y0_N22
\DQ0[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DQ0(12),
	o => \DQ0[12]~input_o\);

-- Location: IOIBUF_X0_Y18_N22
\DQ1[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DQ1(12),
	o => \DQ1[12]~input_o\);

-- Location: LCCOMB_X8_Y18_N8
\writeextfifodata_t[12]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \writeextfifodata_t[12]~12_combout\ = (\extfifohalffull_t1~0_combout\ & (\DQ0[12]~input_o\)) # (!\extfifohalffull_t1~0_combout\ & (((\DQ1[12]~input_o\ & \extfifohalffull_t2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \extfifohalffull_t1~0_combout\,
	datab => \DQ0[12]~input_o\,
	datac => \DQ1[12]~input_o\,
	datad => \extfifohalffull_t2~0_combout\,
	combout => \writeextfifodata_t[12]~12_combout\);

-- Location: IOIBUF_X5_Y0_N15
\DQ0[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DQ0(13),
	o => \DQ0[13]~input_o\);

-- Location: IOIBUF_X0_Y18_N15
\DQ1[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DQ1(13),
	o => \DQ1[13]~input_o\);

-- Location: LCCOMB_X8_Y18_N6
\writeextfifodata_t[13]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \writeextfifodata_t[13]~13_combout\ = (\extfifohalffull_t1~0_combout\ & (\DQ0[13]~input_o\)) # (!\extfifohalffull_t1~0_combout\ & (((\DQ1[13]~input_o\ & \extfifohalffull_t2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \extfifohalffull_t1~0_combout\,
	datab => \DQ0[13]~input_o\,
	datac => \DQ1[13]~input_o\,
	datad => \extfifohalffull_t2~0_combout\,
	combout => \writeextfifodata_t[13]~13_combout\);

-- Location: IOIBUF_X1_Y0_N8
\DQ0[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DQ0(14),
	o => \DQ0[14]~input_o\);

-- Location: LCCOMB_X8_Y17_N0
\writeextfifodata_t[14]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \writeextfifodata_t[14]~14_combout\ = (\extfifohalffull_t1~0_combout\ & (((\DQ0[14]~input_o\)))) # (!\extfifohalffull_t1~0_combout\ & (\DQ1[14]~input_o\ & ((\extfifohalffull_t2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DQ1[14]~input_o\,
	datab => \DQ0[14]~input_o\,
	datac => \extfifohalffull_t1~0_combout\,
	datad => \extfifohalffull_t2~0_combout\,
	combout => \writeextfifodata_t[14]~14_combout\);

-- Location: IOIBUF_X0_Y10_N1
\DQ1[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DQ1(15),
	o => \DQ1[15]~input_o\);

-- Location: LCCOMB_X8_Y17_N10
\writeextfifodata_t[15]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \writeextfifodata_t[15]~15_combout\ = (\extfifohalffull_t1~0_combout\ & (\DQ0[15]~input_o\)) # (!\extfifohalffull_t1~0_combout\ & (((\DQ1[15]~input_o\ & \extfifohalffull_t2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DQ0[15]~input_o\,
	datab => \extfifohalffull_t1~0_combout\,
	datac => \DQ1[15]~input_o\,
	datad => \extfifohalffull_t2~0_combout\,
	combout => \writeextfifodata_t[15]~15_combout\);

-- Location: M9K_X15_Y18_N0
\U5|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a12\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_output_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "FIFO_16Bit_2K:U5|FIFO_Core:U0|dcfifo:dcfifo_component|dcfifo_d7n1:auto_generated|altsyncram_gm31:fifo_ram|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 12,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "clear1",
	port_b_address_clock => "clock1",
	port_b_address_width => 11,
	port_b_data_out_clear => "clear1",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 4,
	port_b_first_address => 0,
	port_b_first_bit_number => 12,
	port_b_last_address => 2047,
	port_b_logical_ram_depth => 2048,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \U5|U0|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	portbre => VCC,
	portbaddrstall => \ALT_INV_~GND~combout\,
	clk0 => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	clk1 => GND,
	ena0 => \U5|U0|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	ena1 => GND,
	clr1 => \resetn_t~clkctrl_outclk\,
	portadatain => \U5|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a12_PORTADATAIN_bus\,
	portaaddr => \U5|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a12_PORTAADDR_bus\,
	portbaddr => \U5|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a12_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \U5|U0|dcfifo_component|auto_generated|fifo_ram|ram_block11a12_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X16_Y10_N28
\U3|Selector86~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector86~0_combout\ = (\U2|wr_t\(3) & (\U2|wr_t\(2) & ((\U2|wr_t\(1)) # (!\U5|U0|dcfifo_component|auto_generated|ws_bwp|dffe12a\(10))))) # (!\U2|wr_t\(3) & (!\U2|wr_t\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|wr_t\(3),
	datab => \U2|wr_t\(2),
	datac => \U5|U0|dcfifo_component|auto_generated|ws_bwp|dffe12a\(10),
	datad => \U2|wr_t\(1),
	combout => \U3|Selector86~0_combout\);

-- Location: LCCOMB_X16_Y10_N18
\U3|Selector86~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector86~1_combout\ = (!\U3|refreshsdram~q\ & (\U3|Selector86~0_combout\ & ((\U2|wr_t\(2)) # (!\U2|wr_t\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|wr_t\(0),
	datab => \U2|wr_t\(2),
	datac => \U3|refreshsdram~q\,
	datad => \U3|Selector86~0_combout\,
	combout => \U3|Selector86~1_combout\);

-- Location: LCCOMB_X16_Y10_N16
\U3|Selector86~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector86~2_combout\ = (\U3|present_state.IDLE~q\ & (\U3|Selector86~1_combout\ & ((\U2|wr_t\(2)) # (\U1|U0|dcfifo_component|auto_generated|op_2~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|present_state.IDLE~q\,
	datab => \U2|wr_t\(2),
	datac => \U1|U0|dcfifo_component|auto_generated|op_2~20_combout\,
	datad => \U3|Selector86~1_combout\,
	combout => \U3|Selector86~2_combout\);

-- Location: FF_X16_Y10_N17
\U3|present_state.ACTIVEROW\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|Selector86~2_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|present_state.ACTIVEROW~q\);

-- Location: LCCOMB_X16_Y5_N2
\U3|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|WideOr0~0_combout\ = (!\U3|present_state.PRECHARGE~q\ & (!\U3|present_state.COMMANDDONE~q\ & (!\U3|present_state.LOADMODE~q\ & !\U3|present_state.AUTOREFRESH~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|present_state.PRECHARGE~q\,
	datab => \U3|present_state.COMMANDDONE~q\,
	datac => \U3|present_state.LOADMODE~q\,
	datad => \U3|present_state.AUTOREFRESH~q\,
	combout => \U3|WideOr0~0_combout\);

-- Location: LCCOMB_X16_Y5_N4
\U3|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector0~0_combout\ = (\U3|present_state.COMMANDDONE~q\ & (\U3|RASn~q\ & ((\U3|present_state.ACTIVEROW~q\) # (!\U3|WideOr0~0_combout\)))) # (!\U3|present_state.COMMANDDONE~q\ & ((\U3|present_state.ACTIVEROW~q\) # ((!\U3|WideOr0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|present_state.COMMANDDONE~q\,
	datab => \U3|present_state.ACTIVEROW~q\,
	datac => \U3|RASn~q\,
	datad => \U3|WideOr0~0_combout\,
	combout => \U3|Selector0~0_combout\);

-- Location: FF_X16_Y5_N5
\U3|RASn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|Selector0~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|RASn~q\);

-- Location: LCCOMB_X16_Y5_N0
\U3|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|WideOr2~0_combout\ = (!\U3|present_state.READDATA~q\ & (!\U3|present_state.AUTOREFRESH~q\ & (!\U3|present_state.WRITEDATA~q\ & !\U3|present_state.COMMANDDONE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|present_state.READDATA~q\,
	datab => \U3|present_state.AUTOREFRESH~q\,
	datac => \U3|present_state.WRITEDATA~q\,
	datad => \U3|present_state.COMMANDDONE~q\,
	combout => \U3|WideOr2~0_combout\);

-- Location: LCCOMB_X16_Y5_N6
\U3|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector1~0_combout\ = (\U3|present_state.LOADMODE~q\ & (((\U3|CASn~q\)) # (!\U3|present_state.COMMANDDONE~q\))) # (!\U3|present_state.LOADMODE~q\ & (!\U3|WideOr2~0_combout\ & ((\U3|CASn~q\) # (!\U3|present_state.COMMANDDONE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|present_state.LOADMODE~q\,
	datab => \U3|present_state.COMMANDDONE~q\,
	datac => \U3|CASn~q\,
	datad => \U3|WideOr2~0_combout\,
	combout => \U3|Selector1~0_combout\);

-- Location: FF_X16_Y5_N7
\U3|CASn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|Selector1~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|CASn~q\);

-- Location: LCCOMB_X16_Y5_N28
\U3|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector2~0_combout\ = (\U3|WideOr0~1_combout\ & (\U3|present_state.WRITEDATA~q\ & ((\U3|WEn~q\) # (!\U3|present_state.COMMANDDONE~q\)))) # (!\U3|WideOr0~1_combout\ & (((\U3|WEn~q\) # (!\U3|present_state.COMMANDDONE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|WideOr0~1_combout\,
	datab => \U3|present_state.WRITEDATA~q\,
	datac => \U3|WEn~q\,
	datad => \U3|present_state.COMMANDDONE~q\,
	combout => \U3|Selector2~0_combout\);

-- Location: FF_X16_Y5_N29
\U3|WEn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|Selector2~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|WEn~q\);

-- Location: LCCOMB_X16_Y5_N30
\U3|UDQM~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|UDQM~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \U3|UDQM~feeder_combout\);

-- Location: FF_X16_Y5_N31
\U3|UDQM\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|UDQM~feeder_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	ena => \U3|ALT_INV_present_state.COMMANDDONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|UDQM~q\);

-- Location: LCCOMB_X16_Y5_N12
\U3|LDQM~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|LDQM~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \U3|LDQM~feeder_combout\);

-- Location: FF_X16_Y5_N13
\U3|LDQM\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|LDQM~feeder_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	ena => \U3|ALT_INV_present_state.COMMANDDONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|LDQM~q\);

-- Location: LCCOMB_X16_Y7_N18
\U3|WideOr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|WideOr6~0_combout\ = (!\U3|present_state.READDATA~q\ & (!\U3|present_state.COMMANDDONE~q\ & !\U3|present_state.WRITEDATA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|present_state.READDATA~q\,
	datac => \U3|present_state.COMMANDDONE~q\,
	datad => \U3|present_state.WRITEDATA~q\,
	combout => \U3|WideOr6~0_combout\);

-- Location: LCCOMB_X16_Y7_N28
\U3|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector4~0_combout\ = (\U3|bank\(0) & ((\U3|present_state.ACTIVEROW~q\ & (!\U3|present_state~34_combout\)) # (!\U3|present_state.ACTIVEROW~q\ & ((!\U3|WideOr6~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|present_state~34_combout\,
	datab => \U3|present_state.ACTIVEROW~q\,
	datac => \U3|bank\(0),
	datad => \U3|WideOr6~0_combout\,
	combout => \U3|Selector4~0_combout\);

-- Location: LCCOMB_X16_Y7_N14
\U3|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector12~0_combout\ = (!\U3|present_state.COMMANDDONE~q\ & ((\U3|readsdram_en~q\) # (!\U3|present_state.READDATA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|present_state.COMMANDDONE~q\,
	datab => \U3|readsdram_en~q\,
	datac => \U3|present_state.READDATA~q\,
	combout => \U3|Selector12~0_combout\);

-- Location: FF_X16_Y7_N29
\U3|BA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|Selector4~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	ena => \U3|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|BA\(0));

-- Location: LCCOMB_X16_Y7_N26
\U3|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector3~0_combout\ = (\U3|bank\(1) & ((\U3|present_state.ACTIVEROW~q\ & (!\U3|present_state~34_combout\)) # (!\U3|present_state.ACTIVEROW~q\ & ((!\U3|WideOr6~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|present_state~34_combout\,
	datab => \U3|present_state.ACTIVEROW~q\,
	datac => \U3|bank\(1),
	datad => \U3|WideOr6~0_combout\,
	combout => \U3|Selector3~0_combout\);

-- Location: FF_X16_Y7_N27
\U3|BA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|Selector3~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	ena => \U3|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|BA\(1));

-- Location: LCCOMB_X16_Y7_N4
\U3|A[8]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|A[8]~10_combout\ = (\U3|present_state.ACTIVEROW~q\ & (((!\U3|writesdram_en~q\ & !\U3|readsdram_en~q\)))) # (!\U3|present_state.ACTIVEROW~q\ & (\U3|WideOr6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|WideOr6~0_combout\,
	datab => \U3|writesdram_en~q\,
	datac => \U3|readsdram_en~q\,
	datad => \U3|present_state.ACTIVEROW~q\,
	combout => \U3|A[8]~10_combout\);

-- Location: LCCOMB_X17_Y7_N0
\U3|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector17~0_combout\ = (!\U3|A[8]~10_combout\ & ((\U3|present_state.ACTIVEROW~q\ & (\U3|row\(0))) # (!\U3|present_state.ACTIVEROW~q\ & ((\U3|col\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|row\(0),
	datab => \U3|A[8]~10_combout\,
	datac => \U3|present_state.ACTIVEROW~q\,
	datad => \U3|col\(0),
	combout => \U3|Selector17~0_combout\);

-- Location: FF_X17_Y7_N1
\U3|A[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|Selector17~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	ena => \U3|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|A\(0));

-- Location: LCCOMB_X16_Y7_N20
\U3|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector16~0_combout\ = (!\U3|A[8]~10_combout\ & ((\U3|present_state.ACTIVEROW~q\ & ((\U3|row\(1)))) # (!\U3|present_state.ACTIVEROW~q\ & (\U3|col\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|col\(1),
	datab => \U3|present_state.ACTIVEROW~q\,
	datac => \U3|A[8]~10_combout\,
	datad => \U3|row\(1),
	combout => \U3|Selector16~0_combout\);

-- Location: FF_X16_Y7_N21
\U3|A[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|Selector16~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	ena => \U3|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|A\(1));

-- Location: LCCOMB_X18_Y7_N30
\U3|Selector50~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector50~0_combout\ = (\U3|row\(2) & \U3|present_state.INIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|row\(2),
	datad => \U3|present_state.INIT~q\,
	combout => \U3|Selector50~0_combout\);

-- Location: FF_X18_Y7_N7
\U3|row[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|row[2]~18_combout\,
	asdata => \U3|Selector50~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sload => \U3|ALT_INV_present_state.PRECHARGE_TRP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|row\(2));

-- Location: LCCOMB_X17_Y7_N6
\U3|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector15~0_combout\ = (!\U3|A[8]~10_combout\ & ((\U3|present_state.ACTIVEROW~q\ & ((\U3|row\(2)))) # (!\U3|present_state.ACTIVEROW~q\ & (\U3|col\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|col\(2),
	datab => \U3|A[8]~10_combout\,
	datac => \U3|present_state.ACTIVEROW~q\,
	datad => \U3|row\(2),
	combout => \U3|Selector15~0_combout\);

-- Location: FF_X17_Y7_N7
\U3|A[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|Selector15~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	ena => \U3|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|A\(2));

-- Location: LCCOMB_X17_Y7_N8
\U3|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector14~0_combout\ = (!\U3|A[8]~10_combout\ & ((\U3|present_state.ACTIVEROW~q\ & (\U3|row\(3))) # (!\U3|present_state.ACTIVEROW~q\ & ((\U3|col\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|present_state.ACTIVEROW~q\,
	datab => \U3|row\(3),
	datac => \U3|A[8]~10_combout\,
	datad => \U3|col\(3),
	combout => \U3|Selector14~0_combout\);

-- Location: FF_X17_Y7_N9
\U3|A[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|Selector14~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	ena => \U3|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|A\(3));

-- Location: LCCOMB_X17_Y7_N18
\U3|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector13~0_combout\ = (!\U3|A[8]~10_combout\ & ((\U3|present_state.ACTIVEROW~q\ & (\U3|row\(4))) # (!\U3|present_state.ACTIVEROW~q\ & ((\U3|col\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|present_state.ACTIVEROW~q\,
	datab => \U3|A[8]~10_combout\,
	datac => \U3|row\(4),
	datad => \U3|col\(4),
	combout => \U3|Selector13~0_combout\);

-- Location: FF_X17_Y7_N19
\U3|A[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|Selector13~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	ena => \U3|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|A\(4));

-- Location: LCCOMB_X16_Y7_N24
\U3|Selector12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector12~2_combout\ = (\U3|A\(5) & ((\U3|present_state.COMMANDDONE~q\) # ((!\U3|readsdram_en~q\ & \U3|present_state.READDATA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|present_state.COMMANDDONE~q\,
	datab => \U3|readsdram_en~q\,
	datac => \U3|present_state.READDATA~q\,
	datad => \U3|A\(5),
	combout => \U3|Selector12~2_combout\);

-- Location: LCCOMB_X17_Y8_N28
\U3|Selector12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector12~3_combout\ = (\U3|col\(5) & ((\U3|present_state.WRITEDATA~q\) # ((\U3|readsdram_en~q\ & \U3|present_state.READDATA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|readsdram_en~q\,
	datab => \U3|present_state.READDATA~q\,
	datac => \U3|present_state.WRITEDATA~q\,
	datad => \U3|col\(5),
	combout => \U3|Selector12~3_combout\);

-- Location: LCCOMB_X16_Y7_N30
\U3|Selector12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector12~4_combout\ = (\U3|Selector12~1_combout\) # ((\U3|Selector12~2_combout\) # ((\U3|present_state.LOADMODE~q\) # (\U3|Selector12~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Selector12~1_combout\,
	datab => \U3|Selector12~2_combout\,
	datac => \U3|present_state.LOADMODE~q\,
	datad => \U3|Selector12~3_combout\,
	combout => \U3|Selector12~4_combout\);

-- Location: FF_X16_Y7_N31
\U3|A[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|Selector12~4_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|A\(5));

-- Location: LCCOMB_X17_Y7_N4
\U3|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector11~0_combout\ = (!\U3|A[8]~10_combout\ & ((\U3|present_state.ACTIVEROW~q\ & (\U3|row\(6))) # (!\U3|present_state.ACTIVEROW~q\ & ((\U3|col\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|row\(6),
	datab => \U3|A[8]~10_combout\,
	datac => \U3|present_state.ACTIVEROW~q\,
	datad => \U3|col\(6),
	combout => \U3|Selector11~0_combout\);

-- Location: FF_X17_Y7_N5
\U3|A[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|Selector11~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	ena => \U3|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|A\(6));

-- Location: LCCOMB_X17_Y7_N30
\U3|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector10~0_combout\ = (!\U3|A[8]~10_combout\ & ((\U3|present_state.ACTIVEROW~q\ & ((\U3|row\(7)))) # (!\U3|present_state.ACTIVEROW~q\ & (\U3|col\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|present_state.ACTIVEROW~q\,
	datab => \U3|A[8]~10_combout\,
	datac => \U3|col\(7),
	datad => \U3|row\(7),
	combout => \U3|Selector10~0_combout\);

-- Location: FF_X17_Y7_N31
\U3|A[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|Selector10~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	ena => \U3|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|A\(7));

-- Location: LCCOMB_X17_Y7_N16
\U3|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector9~0_combout\ = (!\U3|A[8]~10_combout\ & ((\U3|present_state.ACTIVEROW~q\ & ((\U3|row\(8)))) # (!\U3|present_state.ACTIVEROW~q\ & (\U3|col\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|present_state.ACTIVEROW~q\,
	datab => \U3|A[8]~10_combout\,
	datac => \U3|col\(8),
	datad => \U3|row\(8),
	combout => \U3|Selector9~0_combout\);

-- Location: FF_X17_Y7_N17
\U3|A[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|Selector9~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	ena => \U3|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|A\(8));

-- Location: LCCOMB_X17_Y7_N24
\U3|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector8~0_combout\ = (\U3|present_state.ACTIVEROW~q\ & (\U3|row\(9) & ((\U3|readsdram_en~q\) # (\U3|writesdram_en~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|present_state.ACTIVEROW~q\,
	datab => \U3|readsdram_en~q\,
	datac => \U3|row\(9),
	datad => \U3|writesdram_en~q\,
	combout => \U3|Selector8~0_combout\);

-- Location: LCCOMB_X17_Y7_N22
\U3|Selector8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector8~1_combout\ = (\U3|present_state.LOADMODE~q\) # ((\U3|Selector8~0_combout\) # ((!\U3|Selector12~0_combout\ & \U3|A\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Selector12~0_combout\,
	datab => \U3|present_state.LOADMODE~q\,
	datac => \U3|A\(9),
	datad => \U3|Selector8~0_combout\,
	combout => \U3|Selector8~1_combout\);

-- Location: FF_X17_Y7_N23
\U3|A[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|Selector8~1_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|A\(9));

-- Location: LCCOMB_X17_Y7_N20
\U3|Selector7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector7~1_combout\ = (\U3|Selector7~0_combout\) # ((\U3|present_state.PRECHARGE~q\) # ((\U3|A\(10) & !\U3|Selector12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Selector7~0_combout\,
	datab => \U3|present_state.PRECHARGE~q\,
	datac => \U3|A\(10),
	datad => \U3|Selector12~0_combout\,
	combout => \U3|Selector7~1_combout\);

-- Location: FF_X17_Y7_N21
\U3|A[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|Selector7~1_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|A\(10));

-- Location: LCCOMB_X18_Y7_N24
\U3|row[11]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|row[11]~36_combout\ = (\U3|row\(11) & (!\U3|row[10]~35\)) # (!\U3|row\(11) & ((\U3|row[10]~35\) # (GND)))
-- \U3|row[11]~37\ = CARRY((!\U3|row[10]~35\) # (!\U3|row\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U3|row\(11),
	datad => VCC,
	cin => \U3|row[10]~35\,
	combout => \U3|row[11]~36_combout\,
	cout => \U3|row[11]~37\);

-- Location: LCCOMB_X19_Y7_N0
\U3|Selector41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector41~0_combout\ = (\U3|row\(11) & \U3|present_state.INIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|row\(11),
	datad => \U3|present_state.INIT~q\,
	combout => \U3|Selector41~0_combout\);

-- Location: FF_X18_Y7_N25
\U3|row[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|row[11]~36_combout\,
	asdata => \U3|Selector41~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sload => \U3|ALT_INV_present_state.PRECHARGE_TRP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|row\(11));

-- Location: LCCOMB_X17_Y7_N14
\U3|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector6~0_combout\ = (\U3|present_state.ACTIVEROW~q\ & (\U3|row\(11) & ((\U3|writesdram_en~q\) # (\U3|readsdram_en~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|writesdram_en~q\,
	datab => \U3|readsdram_en~q\,
	datac => \U3|present_state.ACTIVEROW~q\,
	datad => \U3|row\(11),
	combout => \U3|Selector6~0_combout\);

-- Location: FF_X17_Y7_N15
\U3|A[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|Selector6~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	ena => \U3|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|A\(11));

-- Location: LCCOMB_X18_Y7_N26
\U3|row[12]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|row[12]~38_combout\ = \U3|row\(12) $ (!\U3|row[11]~37\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|row\(12),
	cin => \U3|row[11]~37\,
	combout => \U3|row[12]~38_combout\);

-- Location: LCCOMB_X19_Y7_N14
\U3|Selector40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector40~0_combout\ = (\U3|row\(12) & \U3|present_state.INIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|row\(12),
	datad => \U3|present_state.INIT~q\,
	combout => \U3|Selector40~0_combout\);

-- Location: FF_X18_Y7_N27
\U3|row[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|row[12]~38_combout\,
	asdata => \U3|Selector40~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sload => \U3|ALT_INV_present_state.PRECHARGE_TRP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|row\(12));

-- Location: LCCOMB_X17_Y7_N28
\U3|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Selector5~0_combout\ = (\U3|present_state.ACTIVEROW~q\ & (\U3|row\(12) & ((\U3|writesdram_en~q\) # (\U3|readsdram_en~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|writesdram_en~q\,
	datab => \U3|readsdram_en~q\,
	datac => \U3|present_state.ACTIVEROW~q\,
	datad => \U3|row\(12),
	combout => \U3|Selector5~0_combout\);

-- Location: FF_X17_Y7_N29
\U3|A[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U3|Selector5~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	ena => \U3|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|A\(12));

-- Location: LCCOMB_X14_Y17_N2
\U4|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|WideOr0~0_combout\ = (!\U4|present_state.PRECHARGE~q\ & (!\U4|present_state.AUTOREFRESH~q\ & (!\U4|present_state.LOADMODE~q\ & !\U4|present_state.COMMANDDONE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|present_state.PRECHARGE~q\,
	datab => \U4|present_state.AUTOREFRESH~q\,
	datac => \U4|present_state.LOADMODE~q\,
	datad => \U4|present_state.COMMANDDONE~q\,
	combout => \U4|WideOr0~0_combout\);

-- Location: LCCOMB_X14_Y17_N12
\U4|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector0~0_combout\ = (\U4|present_state.ACTIVEROW~q\ & (((\U4|RASn~q\) # (!\U4|present_state.COMMANDDONE~q\)))) # (!\U4|present_state.ACTIVEROW~q\ & (!\U4|WideOr0~0_combout\ & ((\U4|RASn~q\) # (!\U4|present_state.COMMANDDONE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|present_state.ACTIVEROW~q\,
	datab => \U4|WideOr0~0_combout\,
	datac => \U4|RASn~q\,
	datad => \U4|present_state.COMMANDDONE~q\,
	combout => \U4|Selector0~0_combout\);

-- Location: FF_X14_Y17_N13
\U4|RASn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|Selector0~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|RASn~q\);

-- Location: LCCOMB_X14_Y17_N18
\U4|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|WideOr2~0_combout\ = (!\U4|present_state.READDATA~q\ & (!\U4|present_state.WRITEDATA~q\ & (!\U4|present_state.AUTOREFRESH~q\ & !\U4|present_state.COMMANDDONE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|present_state.READDATA~q\,
	datab => \U4|present_state.WRITEDATA~q\,
	datac => \U4|present_state.AUTOREFRESH~q\,
	datad => \U4|present_state.COMMANDDONE~q\,
	combout => \U4|WideOr2~0_combout\);

-- Location: LCCOMB_X14_Y17_N22
\U4|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector1~0_combout\ = (\U4|present_state.COMMANDDONE~q\ & (\U4|CASn~q\ & ((\U4|present_state.LOADMODE~q\) # (!\U4|WideOr2~0_combout\)))) # (!\U4|present_state.COMMANDDONE~q\ & ((\U4|present_state.LOADMODE~q\) # ((!\U4|WideOr2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|present_state.COMMANDDONE~q\,
	datab => \U4|present_state.LOADMODE~q\,
	datac => \U4|CASn~q\,
	datad => \U4|WideOr2~0_combout\,
	combout => \U4|Selector1~0_combout\);

-- Location: FF_X14_Y17_N23
\U4|CASn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|Selector1~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|CASn~q\);

-- Location: LCCOMB_X13_Y17_N20
\U4|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector2~0_combout\ = (\U4|WideOr0~1_combout\ & (\U4|present_state.WRITEDATA~q\ & ((\U4|WEn~q\) # (!\U4|present_state.COMMANDDONE~q\)))) # (!\U4|WideOr0~1_combout\ & (((\U4|WEn~q\) # (!\U4|present_state.COMMANDDONE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|WideOr0~1_combout\,
	datab => \U4|present_state.WRITEDATA~q\,
	datac => \U4|WEn~q\,
	datad => \U4|present_state.COMMANDDONE~q\,
	combout => \U4|Selector2~0_combout\);

-- Location: FF_X13_Y17_N21
\U4|WEn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|Selector2~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|WEn~q\);

-- Location: LCCOMB_X12_Y22_N24
\U4|UDQM~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|UDQM~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \U4|UDQM~feeder_combout\);

-- Location: FF_X12_Y22_N25
\U4|UDQM\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|UDQM~feeder_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	ena => \U4|ALT_INV_present_state.COMMANDDONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|UDQM~q\);

-- Location: LCCOMB_X12_Y22_N2
\U4|LDQM~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|LDQM~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \U4|LDQM~feeder_combout\);

-- Location: FF_X12_Y22_N3
\U4|LDQM\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|LDQM~feeder_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	ena => \U4|ALT_INV_present_state.COMMANDDONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|LDQM~q\);

-- Location: LCCOMB_X14_Y17_N26
\U4|WideOr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|WideOr6~0_combout\ = (!\U4|present_state.COMMANDDONE~q\ & (!\U4|present_state.READDATA~q\ & !\U4|present_state.WRITEDATA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|present_state.COMMANDDONE~q\,
	datac => \U4|present_state.READDATA~q\,
	datad => \U4|present_state.WRITEDATA~q\,
	combout => \U4|WideOr6~0_combout\);

-- Location: LCCOMB_X14_Y17_N8
\U4|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector4~0_combout\ = (\U4|bank\(0) & ((\U4|present_state.ACTIVEROW~q\ & ((!\U4|present_state~34_combout\))) # (!\U4|present_state.ACTIVEROW~q\ & (!\U4|WideOr6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|present_state.ACTIVEROW~q\,
	datab => \U4|bank\(0),
	datac => \U4|WideOr6~0_combout\,
	datad => \U4|present_state~34_combout\,
	combout => \U4|Selector4~0_combout\);

-- Location: LCCOMB_X14_Y17_N30
\U4|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector12~0_combout\ = (!\U4|present_state.COMMANDDONE~q\ & ((\U4|readsdram_en~q\) # (!\U4|present_state.READDATA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|readsdram_en~q\,
	datac => \U4|present_state.READDATA~q\,
	datad => \U4|present_state.COMMANDDONE~q\,
	combout => \U4|Selector12~0_combout\);

-- Location: FF_X14_Y17_N9
\U4|BA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|Selector4~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	ena => \U4|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|BA\(0));

-- Location: LCCOMB_X14_Y17_N14
\U4|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector3~0_combout\ = (\U4|bank\(1) & ((\U4|present_state.ACTIVEROW~q\ & ((!\U4|present_state~34_combout\))) # (!\U4|present_state.ACTIVEROW~q\ & (!\U4|WideOr6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|present_state.ACTIVEROW~q\,
	datab => \U4|bank\(1),
	datac => \U4|WideOr6~0_combout\,
	datad => \U4|present_state~34_combout\,
	combout => \U4|Selector3~0_combout\);

-- Location: FF_X14_Y17_N15
\U4|BA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|Selector3~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	ena => \U4|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|BA\(1));

-- Location: LCCOMB_X13_Y17_N18
\U4|A[4]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|A[4]~10_combout\ = (\U4|present_state.ACTIVEROW~q\ & (!\U4|readsdram_en~q\ & (!\U4|writesdram_en~q\))) # (!\U4|present_state.ACTIVEROW~q\ & (((\U4|WideOr6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|readsdram_en~q\,
	datab => \U4|present_state.ACTIVEROW~q\,
	datac => \U4|writesdram_en~q\,
	datad => \U4|WideOr6~0_combout\,
	combout => \U4|A[4]~10_combout\);

-- Location: LCCOMB_X13_Y17_N30
\U4|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector17~0_combout\ = (!\U4|A[4]~10_combout\ & ((\U4|present_state.ACTIVEROW~q\ & ((\U4|row\(0)))) # (!\U4|present_state.ACTIVEROW~q\ & (\U4|col\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|col\(0),
	datab => \U4|A[4]~10_combout\,
	datac => \U4|present_state.ACTIVEROW~q\,
	datad => \U4|row\(0),
	combout => \U4|Selector17~0_combout\);

-- Location: FF_X13_Y17_N31
\U4|A[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|Selector17~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	ena => \U4|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|A\(0));

-- Location: LCCOMB_X13_Y16_N24
\U4|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector16~0_combout\ = (!\U4|A[4]~10_combout\ & ((\U4|present_state.ACTIVEROW~q\ & (\U4|row\(1))) # (!\U4|present_state.ACTIVEROW~q\ & ((\U4|col\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|A[4]~10_combout\,
	datab => \U4|row\(1),
	datac => \U4|present_state.ACTIVEROW~q\,
	datad => \U4|col\(1),
	combout => \U4|Selector16~0_combout\);

-- Location: FF_X13_Y16_N25
\U4|A[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|Selector16~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	ena => \U4|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|A\(1));

-- Location: LCCOMB_X13_Y16_N6
\U4|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector15~0_combout\ = (!\U4|A[4]~10_combout\ & ((\U4|present_state.ACTIVEROW~q\ & ((\U4|row\(2)))) # (!\U4|present_state.ACTIVEROW~q\ & (\U4|col\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|A[4]~10_combout\,
	datab => \U4|col\(2),
	datac => \U4|present_state.ACTIVEROW~q\,
	datad => \U4|row\(2),
	combout => \U4|Selector15~0_combout\);

-- Location: FF_X13_Y16_N7
\U4|A[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|Selector15~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	ena => \U4|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|A\(2));

-- Location: FF_X12_Y17_N7
\U4|col[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|col[3]~28_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sclr => \U4|col[7]~22_combout\,
	ena => \U4|col[7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|col\(3));

-- Location: LCCOMB_X13_Y16_N8
\U4|Selector49~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector49~0_combout\ = (\U4|row\(3) & \U4|present_state.INIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|row\(3),
	datad => \U4|present_state.INIT~q\,
	combout => \U4|Selector49~0_combout\);

-- Location: FF_X12_Y16_N11
\U4|row[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|row[3]~20_combout\,
	asdata => \U4|Selector49~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sload => \U4|ALT_INV_present_state.PRECHARGE_TRP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|row\(3));

-- Location: LCCOMB_X13_Y16_N0
\U4|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector14~0_combout\ = (!\U4|A[4]~10_combout\ & ((\U4|present_state.ACTIVEROW~q\ & ((\U4|row\(3)))) # (!\U4|present_state.ACTIVEROW~q\ & (\U4|col\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|A[4]~10_combout\,
	datab => \U4|col\(3),
	datac => \U4|present_state.ACTIVEROW~q\,
	datad => \U4|row\(3),
	combout => \U4|Selector14~0_combout\);

-- Location: FF_X13_Y16_N1
\U4|A[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|Selector14~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	ena => \U4|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|A\(3));

-- Location: LCCOMB_X11_Y16_N16
\U4|Selector48~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector48~0_combout\ = (\U4|row\(4) & \U4|present_state.INIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|row\(4),
	datad => \U4|present_state.INIT~q\,
	combout => \U4|Selector48~0_combout\);

-- Location: FF_X12_Y16_N13
\U4|row[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|row[4]~22_combout\,
	asdata => \U4|Selector48~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	sload => \U4|ALT_INV_present_state.PRECHARGE_TRP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|row\(4));

-- Location: LCCOMB_X13_Y17_N24
\U4|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector13~0_combout\ = (!\U4|A[4]~10_combout\ & ((\U4|present_state.ACTIVEROW~q\ & ((\U4|row\(4)))) # (!\U4|present_state.ACTIVEROW~q\ & (\U4|col\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|col\(4),
	datab => \U4|present_state.ACTIVEROW~q\,
	datac => \U4|row\(4),
	datad => \U4|A[4]~10_combout\,
	combout => \U4|Selector13~0_combout\);

-- Location: FF_X13_Y17_N25
\U4|A[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|Selector13~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	ena => \U4|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|A\(4));

-- Location: LCCOMB_X14_Y14_N28
\U4|Selector12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector12~1_combout\ = (\U4|row\(5) & (\U4|present_state.ACTIVEROW~q\ & ((\U4|readsdram_en~q\) # (\U4|writesdram_en~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|row\(5),
	datab => \U4|readsdram_en~q\,
	datac => \U4|writesdram_en~q\,
	datad => \U4|present_state.ACTIVEROW~q\,
	combout => \U4|Selector12~1_combout\);

-- Location: LCCOMB_X14_Y14_N18
\U4|Selector12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector12~2_combout\ = (\U4|A\(5) & ((\U4|present_state.COMMANDDONE~q\) # ((\U4|present_state.READDATA~q\ & !\U4|readsdram_en~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|present_state.READDATA~q\,
	datab => \U4|A\(5),
	datac => \U4|present_state.COMMANDDONE~q\,
	datad => \U4|readsdram_en~q\,
	combout => \U4|Selector12~2_combout\);

-- Location: LCCOMB_X14_Y14_N2
\U4|Selector12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector12~4_combout\ = (\U4|Selector12~3_combout\) # ((\U4|Selector12~1_combout\) # ((\U4|present_state.LOADMODE~q\) # (\U4|Selector12~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|Selector12~3_combout\,
	datab => \U4|Selector12~1_combout\,
	datac => \U4|present_state.LOADMODE~q\,
	datad => \U4|Selector12~2_combout\,
	combout => \U4|Selector12~4_combout\);

-- Location: FF_X14_Y14_N3
\U4|A[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|Selector12~4_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|A\(5));

-- Location: LCCOMB_X13_Y17_N2
\U4|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector11~0_combout\ = (!\U4|A[4]~10_combout\ & ((\U4|present_state.ACTIVEROW~q\ & ((\U4|row\(6)))) # (!\U4|present_state.ACTIVEROW~q\ & (\U4|col\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|col\(6),
	datab => \U4|row\(6),
	datac => \U4|present_state.ACTIVEROW~q\,
	datad => \U4|A[4]~10_combout\,
	combout => \U4|Selector11~0_combout\);

-- Location: FF_X13_Y17_N3
\U4|A[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|Selector11~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	ena => \U4|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|A\(6));

-- Location: LCCOMB_X13_Y16_N26
\U4|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector10~0_combout\ = (!\U4|A[4]~10_combout\ & ((\U4|present_state.ACTIVEROW~q\ & (\U4|row\(7))) # (!\U4|present_state.ACTIVEROW~q\ & ((\U4|col\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|row\(7),
	datab => \U4|present_state.ACTIVEROW~q\,
	datac => \U4|col\(7),
	datad => \U4|A[4]~10_combout\,
	combout => \U4|Selector10~0_combout\);

-- Location: FF_X13_Y16_N27
\U4|A[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|Selector10~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	ena => \U4|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|A\(7));

-- Location: LCCOMB_X13_Y17_N28
\U4|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector9~0_combout\ = (!\U4|A[4]~10_combout\ & ((\U4|present_state.ACTIVEROW~q\ & ((\U4|row\(8)))) # (!\U4|present_state.ACTIVEROW~q\ & (\U4|col\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|col\(8),
	datab => \U4|present_state.ACTIVEROW~q\,
	datac => \U4|row\(8),
	datad => \U4|A[4]~10_combout\,
	combout => \U4|Selector9~0_combout\);

-- Location: FF_X13_Y17_N29
\U4|A[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|Selector9~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	ena => \U4|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|A\(8));

-- Location: LCCOMB_X13_Y16_N16
\U4|Selector8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector8~1_combout\ = (\U4|Selector8~0_combout\) # ((\U4|present_state.LOADMODE~q\) # ((\U4|A\(9) & !\U4|Selector12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|Selector8~0_combout\,
	datab => \U4|present_state.LOADMODE~q\,
	datac => \U4|A\(9),
	datad => \U4|Selector12~0_combout\,
	combout => \U4|Selector8~1_combout\);

-- Location: FF_X13_Y16_N17
\U4|A[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|Selector8~1_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|A\(9));

-- Location: LCCOMB_X14_Y16_N14
\U4|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector7~0_combout\ = (\U4|present_state.ACTIVEROW~q\ & (\U4|row\(10) & ((\U4|readsdram_en~q\) # (\U4|writesdram_en~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|present_state.ACTIVEROW~q\,
	datab => \U4|readsdram_en~q\,
	datac => \U4|row\(10),
	datad => \U4|writesdram_en~q\,
	combout => \U4|Selector7~0_combout\);

-- Location: LCCOMB_X14_Y17_N24
\U4|Selector7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector7~1_combout\ = (\U4|Selector7~0_combout\) # ((\U4|present_state.PRECHARGE~q\) # ((!\U4|Selector12~0_combout\ & \U4|A\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|Selector12~0_combout\,
	datab => \U4|Selector7~0_combout\,
	datac => \U4|A\(10),
	datad => \U4|present_state.PRECHARGE~q\,
	combout => \U4|Selector7~1_combout\);

-- Location: FF_X14_Y17_N25
\U4|A[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|Selector7~1_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|A\(10));

-- Location: LCCOMB_X13_Y16_N22
\U4|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector6~0_combout\ = (\U4|row\(11) & (\U4|present_state.ACTIVEROW~q\ & ((\U4|writesdram_en~q\) # (\U4|readsdram_en~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|row\(11),
	datab => \U4|writesdram_en~q\,
	datac => \U4|present_state.ACTIVEROW~q\,
	datad => \U4|readsdram_en~q\,
	combout => \U4|Selector6~0_combout\);

-- Location: FF_X13_Y16_N23
\U4|A[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|Selector6~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	ena => \U4|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|A\(11));

-- Location: LCCOMB_X13_Y16_N28
\U4|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Selector5~0_combout\ = (\U4|row\(12) & (\U4|present_state.ACTIVEROW~q\ & ((\U4|writesdram_en~q\) # (\U4|readsdram_en~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|row\(12),
	datab => \U4|writesdram_en~q\,
	datac => \U4|present_state.ACTIVEROW~q\,
	datad => \U4|readsdram_en~q\,
	combout => \U4|Selector5~0_combout\);

-- Location: FF_X13_Y16_N29
\U4|A[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U4|Selector5~0_combout\,
	clrn => \ALT_INV_resetn_t~clkctrl_outclk\,
	ena => \U4|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|A\(12));

-- Location: IOIBUF_X18_Y0_N1
\FLAGB~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FLAGB,
	o => \FLAGB~input_o\);

-- Location: IOIBUF_X34_Y4_N22
\Laser_On~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Laser_On,
	o => \Laser_On~input_o\);

-- Location: IOIBUF_X0_Y8_N22
\Encode_A~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Encode_A,
	o => \Encode_A~input_o\);

-- Location: IOIBUF_X0_Y8_N1
\Encode_B~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Encode_B,
	o => \Encode_B~input_o\);
END structure;


