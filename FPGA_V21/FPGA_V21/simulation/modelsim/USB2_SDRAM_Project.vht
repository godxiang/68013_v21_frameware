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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "06/02/2018 02:42:37"
                                                            
-- Vhdl Test Bench template for design  :  USB2_SDRAM_Project
-- 
-- Simulation tool : ModelSim (VHDL)
-- 



LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY USB2_SDRAM_Project_vhd_tst IS
END USB2_SDRAM_Project_vhd_tst;
ARCHITECTURE USB2_SDRAM_Project_arch OF USB2_SDRAM_Project_vhd_tst IS




-- constants 
--********与CPU接口:CPU写********
--------CPU_FPGA指令定义--------
Constant COM_Mode_Sel   	: std_logic_vector := X"01" ; 	--FPGA写指令:模式选择: 
Constant COM_Encode_Div		: std_logic_vector := X"02" ; 	--FPGA写指令:光栅分频值
Constant COM_Encode_Min		: std_logic_vector := X"03" ; 	--FPGA写指令:激光输出范围光栅最小位置_L
Constant COM_Encode_Max		: std_logic_vector := X"04" ; 	--FPGA写指令:激光输出范围光栅最大位置_L
Constant COM_Encode_Clr		: std_logic_vector := X"05" ; 	--光栅计数器清零; 0:保持 1:清零
Constant COM_Encode_Read 	: std_logic_vector := X"06" ; 	--FPGA写指令:CPU读光栅
Constant	COM_Encode_Delay	: std_logic_vector := X"11" ; 	--FPGA写指令:光栅延时值
Constant	COM_Encode_Word	: std_logic_vector := X"0e" ; 	--FPGA写指令:每个光栅点的Laser字数

Constant COM_Laser_Set		: std_logic_vector := X"07" ; 	--FPGA写指令:激光锁存
Constant COM_Laser_Data		: std_logic_vector := X"08" ; 	--FPGA写指令:激光串行数据值
Constant COM_Laser_Enable	: std_logic_vector := X"09"; 		--允许Laser打印输出
Constant COM_Laser_Disable	: std_logic_vector := X"0a" ; 	--禁止Laser打印输出
Constant COM_Laser_Clk		: std_logic_vector := X"12" ; 	--FPGA写指令:激光串行移位脉冲

Constant COM_Ram_Addr_Clr	: std_logic_vector := X"0d" ; 	--RAM地址清零; 0:保持 1:清零
Constant COM_Ram_Read		: std_logic_vector := X"0c" ; 	--RAM读

Constant	COM_Check_LED		: std_logic_vector := X"0f" ;		--FPGA检测LED值
Constant	COM_Check_Read		: std_logic_vector := X"10" ;		--FPGA检测,读FPGA的LED值


--------RAM选择模式定义
Constant Mode_0 : integer := 0 ;	--rMode_Sel=000:	RAM_A→Laser,    RAM_B←GPIF,     Laser←RAM_A,      	GPIF→RAM_B	
Constant Mode_1 : integer := 1 ;	--rMode_Sel=001:	RAM_A←GPIF, 	RAM_B→Laser, 	Laser←RAM_B,    	GPIF→RAM_A
Constant Mode_2 : integer := 2 ;	--rMode_Sel=010:	RAM_A→CPU_Read,	RAM_B←rRAM_Val,	Laser←rLaser_Val, 	CPU_Read←RAM_A				
Constant Mode_3 : integer := 3 ;	--rMode_Sel=011:	RAM_A←rRAM_Val,	RAM_B→CPU_Read,	Laser←rLaser_Val,	CPU_Read←RAM_B				
Constant Mode_4 : integer := 4 ;	--rMode_Sel=100:		
Constant Mode_5 : integer := 5 ;	--rMode_Sel=101:	
Constant Mode_6 : integer := 6 ;	--rMode_Sel=110:					
Constant Mode_7 : integer := 7 ;	--rMode_Sel=111:						

Constant Encode_Reset_Val : integer := 200000 ;	--Encode复位时的初值，约=100mm	



                                                
-- signals                                                   
SIGNAL A0 : STD_LOGIC_VECTOR(12 DOWNTO 0);
SIGNAL A1 : STD_LOGIC_VECTOR(12 DOWNTO 0);
SIGNAL BA0 : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL BA1 : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL CASn0 : STD_LOGIC;
SIGNAL CASn1 : STD_LOGIC;
SIGNAL Check : STD_LOGIC;
SIGNAL CKE0 : STD_LOGIC;
SIGNAL CKE1 : STD_LOGIC;
SIGNAL CLK0 : STD_LOGIC;
SIGNAL CLK1 : STD_LOGIC;
SIGNAL CLK48M : STD_LOGIC;
SIGNAL CPU_Data : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL CPU_RD : STD_LOGIC;
SIGNAL CPU_Set : STD_LOGIC;
SIGNAL CPU_WR : STD_LOGIC;
SIGNAL CSn0 : STD_LOGIC;
SIGNAL CSn1 : STD_LOGIC;
SIGNAL DATAIN : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL DQ0 : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL DQ1 : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL Encode_A : STD_LOGIC;
SIGNAL Encode_B : STD_LOGIC;
SIGNAL FLAGB : STD_LOGIC;
SIGNAL FLAGC : STD_LOGIC;
SIGNAL IFCLK : STD_LOGIC;
SIGNAL Laser_Clk : STD_LOGIC;
SIGNAL Laser_Data : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL Laser_En : STD_LOGIC;
SIGNAL Laser_On : STD_LOGIC;
SIGNAL Laser_ST : STD_LOGIC;
SIGNAL LDQM0 : STD_LOGIC;
SIGNAL LDQM1 : STD_LOGIC;
SIGNAL RASn0 : STD_LOGIC;
SIGNAL RASn1 : STD_LOGIC;
SIGNAL RESETn : STD_LOGIC;
SIGNAL SLRD : STD_LOGIC;
SIGNAL SLWR : STD_LOGIC;
SIGNAL UDQM0 : STD_LOGIC;
SIGNAL UDQM1 : STD_LOGIC;
SIGNAL WEn0 : STD_LOGIC;
SIGNAL WEn1 : STD_LOGIC;
COMPONENT USB2_SDRAM_Project
	PORT (
	A0 : OUT STD_LOGIC_VECTOR(12 DOWNTO 0);
	A1 : OUT STD_LOGIC_VECTOR(12 DOWNTO 0);
	BA0 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	BA1 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	CASn0 : OUT STD_LOGIC;
	CASn1 : OUT STD_LOGIC;
	Check : OUT STD_LOGIC;
	CKE0 : OUT STD_LOGIC;
	CKE1 : OUT STD_LOGIC;
	CLK0 : OUT STD_LOGIC;
	CLK1 : OUT STD_LOGIC;
	CLK48M : IN STD_LOGIC;
	CPU_Data : INOUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	CPU_RD : IN STD_LOGIC;
	CPU_Set : IN STD_LOGIC;
	CPU_WR : IN STD_LOGIC;
	CSn0 : OUT STD_LOGIC;
	CSn1 : OUT STD_LOGIC;
	DATAIN : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	DQ0 : INOUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	DQ1 : INOUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	Encode_A : IN STD_LOGIC;
	Encode_B : IN STD_LOGIC;
	FLAGB : IN STD_LOGIC;
	FLAGC : IN STD_LOGIC;
	IFCLK : OUT STD_LOGIC;
	Laser_Clk : OUT STD_LOGIC;
	Laser_Data : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	Laser_En : OUT STD_LOGIC;
	Laser_On : IN STD_LOGIC;
	Laser_ST : OUT STD_LOGIC;
	LDQM0 : OUT STD_LOGIC;
	LDQM1 : OUT STD_LOGIC;
	RASn0 : OUT STD_LOGIC;
	RASn1 : OUT STD_LOGIC;
	RESETn : IN STD_LOGIC;
	SLRD : OUT STD_LOGIC;
	SLWR : OUT STD_LOGIC;
	UDQM0 : OUT STD_LOGIC;
	UDQM1 : OUT STD_LOGIC;
	WEn0 : OUT STD_LOGIC;
	WEn1 : OUT STD_LOGIC
	);
END COMPONENT;







BEGIN
	i1 : USB2_SDRAM_Project
	PORT MAP (
-- list connections between master ports and signals
	A0 => A0,
	A1 => A1,
	BA0 => BA0,
	BA1 => BA1,
	CASn0 => CASn0,
	CASn1 => CASn1,
	Check => Check,
	CKE0 => CKE0,
	CKE1 => CKE1,
	CLK0 => CLK0,
	CLK1 => CLK1,
	CLK48M => CLK48M,
	CPU_Data => CPU_Data,
	CPU_RD => CPU_RD,
	CPU_Set => CPU_Set,
	CPU_WR => CPU_WR,
	CSn0 => CSn0,
	CSn1 => CSn1,
	DATAIN => DATAIN,
	DQ0 => DQ0,
	DQ1 => DQ1,
	Encode_A => Encode_A,
	Encode_B => Encode_B,
	FLAGB => FLAGB,
	FLAGC => FLAGC,
	IFCLK => IFCLK,
	Laser_Clk => Laser_Clk,
	Laser_Data => Laser_Data,
	Laser_En => Laser_En,
	Laser_On => Laser_On,
	Laser_ST => Laser_ST,
	LDQM0 => LDQM0,
	LDQM1 => LDQM1,
	RASn0 => RASn0,
	RASn1 => RASn1,
	RESETn => RESETn,
	SLRD => SLRD,
	SLWR => SLWR,
	UDQM0 => UDQM0,
	UDQM1 => UDQM1,
	WEn0 => WEn0,
	WEn1 => WEn1
	);
	
	

	
---初始化----	
	init : PROCESS                                               
	-- variable declarations                                     
	BEGIN                                                       
		WAIT;                                                       
	END PROCESS init;  

	--------时钟信号-------
	CLK_Main : PROCESS                                              
	BEGIN                                                         
		CLK48M <= '1' ; wait for 10417ps ;
		CLK48M <= '0' ; wait for 10417ps ;
	END PROCESS CLK_Main ; 

	--------光栅信号-----
	ENcoder_I : PROCESS                                              
	BEGIN
		Encode_A  <= '1' ;
		Encode_B  <= '0' ;

		wait for 10007ns ;		--5m/s, 5um A相
		
		for i in 1 to 1000 loop		--1000步正向
			Encode_A <= not Encode_A ; wait for 998ns ;
			Encode_B <= not Encode_B ; wait for 1002ns ;
		end loop ;

		---------------------------------------
		wait for 10021ns ;
		for i in 1 to 10 loop		--10 正向
			Encode_A <= not Encode_A ; wait for 998ns ;
			Encode_B <= not Encode_B ; wait for 1002ns ;
		end loop ;

		wait for 10021ns ;
		for i in 1 to 10 loop		--10 反向
			Encode_B <= not Encode_B ; wait for 998ns ;
			Encode_A <= not Encode_A ; wait for 1002ns ;
		end loop ;

		wait for 10021ns ;
		for i in 1 to 10 loop		--10 正向
			Encode_A <= not Encode_A ; wait for 998ns ;
			Encode_B <= not Encode_B ; wait for 1002ns ;
		end loop ;

		wait for 10021ns ;
		for i in 1 to 10 loop		--10 反向
			Encode_B <= not Encode_B ; wait for 998ns ;
			Encode_A <= not Encode_A ; wait for 1002ns ;
		end loop ;

		wait for 10021ns ;
		for i in 1 to 10 loop		--10 正向
			Encode_A <= not Encode_A ; wait for 998ns ;
			Encode_B <= not Encode_B ; wait for 1002ns ;
		end loop ;

		wait for 10021ns ;
		for i in 1 to 10 loop		--10 反向
			Encode_B <= not Encode_B ; wait for 998ns ;
			Encode_A <= not Encode_A ; wait for 1002ns ;
		end loop ;

		wait for 10021ns ;
		for i in 1 to 10 loop		--10 正向
			Encode_A <= not Encode_A ; wait for 998ns ;
			Encode_B <= not Encode_B ; wait for 1002ns ;
		end loop ;

		wait for 10021ns ;
		for i in 1 to 10 loop		--10 反向
			Encode_B <= not Encode_B ; wait for 998ns ;
			Encode_A <= not Encode_A ; wait for 1002ns ;
		end loop ;






		
		
		
		wait ;
	END PROCESS ENcoder_I ; 	
	

	--------CPU控制------
	LED_DATA: PROCESS                                              
	BEGIN
		----端口初始化----
		CPU_RD <= '1' ; 
		CPU_WR <= '1' ;	
		CPU_Set <= '0' ;

		----LED 写入----
		wait for 100ns ;	

		CPU_Data <= "11000101" ; wait for 10ns ;
		CPU_WR <= '0' ; wait for 20ns ;	
		CPU_WR <= '1' ; wait for 40ns ;

		CPU_Data <= COM_Check_LED ; wait for 10ns ;
		CPU_WR <= '0' ; wait for 20ns ;	
		CPU_WR <= '1' ; wait for 40ns ;

		CPU_Set <= '1' ; wait for 20ns ;
		CPU_Set <= '0' ; wait for 20ns ;
		
		
		----ENcoder 清零----
		wait for 1000ns ;		
		CPU_Data <= COM_Encode_Clr ; wait for 10ns ;
		CPU_WR <= '0' ; wait for 20ns ;	
		CPU_WR <= '1' ; wait for 40ns ;

		CPU_Set <= '1' ; wait for 20ns ;
		CPU_Set <= '0' ; wait for 20ns ;	
	

		----ENcoder DIV----
		CPU_Data <= "00000001" ; wait for 10ns ;
		CPU_WR <= '0' ; wait for 20ns ;	
		CPU_WR <= '1' ; wait for 40ns ;
		
		CPU_Data <= COM_Encode_Div ; wait for 10ns ;
		CPU_WR <= '0' ; wait for 20ns ;	
		CPU_WR <= '1' ; wait for 40ns ;

		CPU_Set <= '1' ; wait for 20ns ;
		CPU_Set <= '0' ; wait for 20ns ;		
		

		WAIT;
	END PROCESS LED_DATA ; 






	SIM_END : PROCESS                                              
	BEGIN  
		wait for 4000ms ;
		
		assert false
			report "Simulation is finished!"
		severity Failure;
		
	END PROCESS SIM_END ; 
                                        
END USB2_SDRAM_Project_arch;
