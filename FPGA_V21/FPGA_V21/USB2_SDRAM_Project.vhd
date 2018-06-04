LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;

ENTITY USB2_SDRAM_Project IS											--实体（entity）
PORT																			--														pin		PCB_name
(		
	RESETn : in std_logic;												--in  0复位 											N13		FReset												
	CLK48M : in std_logic;												--in  时钟											E1
	Check : out std_logic;												--out FPGA检测LED信号								K1			Led_F		

	--usb FIFO--
	--FLAGA - fixed EP2PF, FLAGB - fixed EP2FF
	--FLAGC - fixed EP2EF, FLAGD - reserved
	SLRD : out std_logic;--enable										--使能***，						RDY0				L11		RDY0		
	SLWR : out std_logic;--wr,high									--读  ***       ，死：一直高		RDY1			L10		RDY1
	FLAGC : in std_logic;--empty										--in 数据空			CTL2/FLAGC					N12		G_WR
	FLAGB : in std_logic;--Full										--in 数据满			CTL1/FLAGB					L9 		G_RD
	IFCLK : out std_logic;--clk										--FIFO时钟 ，36Mhz持续							L13		IFCLK		
--	SDRAMEMPTY : out std_logic;										--out ***空标志，PA0

	DATAIN : in std_logic_vector(15 downto 0);					--in  数据														G_D[x]														

	--CPU Order--
	CPU_Data: inout std_logic_vector(7 downto 0);				--双向: CPU数据													C_D[x]
	CPU_WR : in std_logic;												--输入: CPU写脉冲,负脉冲上升沿写入				D16		C_WR						
	CPU_RD : in std_logic;												--输入: CPU读脉冲,负脉冲上升沿读取				D15		C_RD
	CPU_Set : in std_logic;												--输入: CPU指令设置脉冲,上升沿设置				N11		C_SET

	--Laser--
	Laser_On : in std_logic;											--in  CPU激光控制信号:输出使能, 0低电平输出	N14		Laser_ON	
	Laser_En : out std_logic;											--out 激光控制信号:输出使能,0低电平输出			B16		Laser_EN
	Laser_ST : out std_logic;											--out 激光控制信号:数据写入,1高电平锁存			C16		Laser_ST
	Laser_Clk :	out std_logic;											--out 激光控制信号:串行数据时钟,上升沿触发		C15		Laser_CP
	Laser_Data : out std_logic_vector(15 downto 0);				--out 激光控制信号:16位串行数据								Laser_D[x]

	--Encoder--
	Encode_A : in std_logic;											--in 光栅编码器差分输入A							L1			ENcoder_A
	Encode_B : in std_logic; 											--in 光栅编码器差分输入B							K2			ENcoder_B

	--sdram0--
	CLK0 : out std_logic;												--out System Clock Input						R7			A_CLK
	CKE0 : out std_logic;												--out Clock Enable								T8			A_CKE
	CSn0 : out std_logic;												--out Chip Select									N6			A_CS
	RASn0 : out std_logic;												--out Row Address Strobe Command				P6			A_RAS
	CASn0 : out std_logic;												--out Column Address Strobe Command			P3			A_CAS
	WEn0 : out std_logic;												--out Write Enable								T2			A_WE
	UDQM0 : out std_logic;												--out x16 Upper Byte, Input/Output Mask	T7			A_QMH
	LDQM0 : out std_logic;												--out x16 Lower Byte, Input/Output Mask	R1			A_QML
	BA0 : out std_logic_vector(1 downto 0);						--out Bank Select Address						N8,M7		A_BA1,A_BA0
	A0 : out std_logic_vector(12 downto 0);						--out sdram0 Row Address Input							A_A[x]
	DQ0 : inout std_logic_vector(15 downto 0);					--inout sdram0 Data I/O										A_D[x]

	--sdram1--
	CLK1 : out std_logic;												--														C3			B_CLK
	CKE1 : out std_logic;												--														B1			B_CKE
	CSn1 : out std_logic;												--														B9			B_CS
	RASn1 : out std_logic;												--														A8			B_RAS
	CASn1 : out std_logic;												--														B8			B_CAS
	WEn1 : out std_logic;												--														A7			B_WE
	UDQM1 : out std_logic;												--														C2			B_QMH
	LDQM1 : out std_logic;												--														B7			B_QML
	BA1 : out std_logic_vector(1 downto 0);						--														B10,A9	B_BA1,A_BA0
	A1 : out std_logic_vector(12 downto 0);						--																	B_A[x]
	DQ1 : inout std_logic_vector(15 downto 0)						--																	B_D[x]
);
END USB2_SDRAM_Project;

ARCHITECTURE RTL OF USB2_SDRAM_Project IS						--结构（ARCHITECTURE）

--元件定义
-------------------------------------------------------
component CLKGen IS													--时钟模块，输入48Mhz，输出36Mhz，108Mhz
PORT
(
--	RESETn : in std_logic;											--in  复位	
	CLK48M : in std_logic;											--in  48Mhz时钟输入
	CLK108M : out std_logic;										--out 108Mhz时钟输出	用于FPGA时钟
	CLK36M : out std_logic;											--out 36Mhz时钟输出		用于IFCLK      ？？？？？？？？？？？？？？？？？？？
	LOCKED : out std_logic
);
end component;

-------------------------------------------------------
component SDRAM_Controller is
port
(
	RESETn : in std_logic;											--in  复位 0:复位																					
	CLOCK : in std_logic;											--in  时钟108Mhz
	WR : in std_logic_vector(1 downto 0);
	USBFIFOFull : in std_logic;
	EXTFIFOEmpty : in std_logic;
	ReadUSBFIFO : out std_logic;
	WriteEXTFIFO : out std_logic;
	ReadUSBFIFOData : in std_logic_vector(15 downto 0);	--in  读USB FIFO数据
	WriteEXTFIFOData : out std_logic_vector(15 downto 0);	--out 写外部FIFO数据	
	Full : out std_logic;
	Empty : out std_logic;
	CSn : out std_logic;												--out Chip Select	
	CLK : out std_logic;												--out System Clock Input
	CKE : out std_logic;												--out Clock Enable
	RASn : out std_logic;											--out Row Address Strobe Command
	CASn : out std_logic;											--out Column Address Strobe Command
	WEn : out std_logic;												--out Write Enable
	UDQM : out std_logic;											--out x16 Upper Byte, Input/Output Mask
	LDQM : out std_logic;											--out x16 Lower Byte, Input/Output Mask
	BA : out std_logic_vector(1 downto 0);						--out Bank Select Address
	A : out std_logic_vector(12 downto 0);						--out Row Address Input
	DQ : inout std_logic_vector(15 downto 0)					--out Data I/O
);
end component;

-------------------------------------------------------
component FIFO_16Bit_2K IS
PORT
(
	RESETn : in std_logic;								--in  清零，1有效
	WCLK : in std_logic;									--in  写时钟，上升取样
	RCLK : in std_logic;									--in  读时钟，上升沿有效，下降沿是中间
	WEN : in std_logic;									--in  写请求，1有效
	REN : in std_logic;									--in  读请求，1有效，REN置位后的第二个时钟数据才开始有效
	DIN : in std_logic_vector(15 downto 0);		--in  数据入
	DOUT : out std_logic_vector(15 downto 0);		--out 数据出
	HALFFULL : out std_logic;							--out 写半满，1有效
	HALFEMPTY : out std_logic;							--out 读半空，1有效
	QUARTERFULL : out std_logic;						--out 写1/4满，，1有效
	FULL : out std_logic									--out 写满，1有效
);
end component;

-------------------------------------------------------
component Controller IS
PORT
(
	RESETn : in std_logic;		
	CLK108M : in std_logic;
	CLK36M : in std_logic;
	SDRAMFULL : in std_logic_vector(1 downto 0);
	SDRAMEMPTY : in std_logic_vector(1 downto 0);
	WR : out std_logic_vector(3 downto 0);
	FLAGC : in std_logic;
	SLRD : out std_logic;
	FULL : in std_logic
);
end component;

-------------------------------------------------------
component Encode_Filter IS
PORT
(
	clk : in std_logic;									--in  时钟 
	D : 	in std_logic;									--in  输入信号
	Q :   out std_logic									--out 输出信号
);
end component;

-------------------------------------------------------
component Encode_4x IS
PORT
(
	clk : 		in std_logic;									--in  输入时钟 
	En_A : 		in std_logic;									--in  输入A相
	En_B : 		in std_logic;									--in  输入B相
	Clr : 		in std_logic;									--in  高电平清零
	Counter :	out std_logic_vector( 23 downto 0 );	--计数值
	Div :			in std_logic_vector( 7 downto 0 );		--光栅分频值
	cInt:			out std_logic	;								--输出计数脉冲
	CN_Min :		in std_logic_vector( 23 downto 0 );  	--输出范围小值
	CN_Max :		in std_logic_vector( 23 downto 0 );  	--输出范围大值
	Out_En :		out std_logic									--输出范围使能，指示
);
end component;

-------------------------------------------------------
component LED_Check IS
PORT
(
	CLK : in std_logic;										--in  时钟 
	LED_Data : in std_logic_vector( 7 downto 0 );	--in Led值
	LED_Out : out std_logic								   --out Led输出信号
);
end component;

-------------------------------------------------------
component Encode_CP IS
PORT
(
	CLK : in std_logic;										--in  时钟 
	INT : in std_logic;										--in  启动脉冲
	Word : in std_logic_vector( 7 downto 0 );			--in  移位次数=word数
	CP : out std_logic ;								   	--out Laser CP信号
	STR : out std_logic ;									--out Laser 设置信号
	RD : out std_logic										--out FIFO读信号
	
);
END component;



--常数定义
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




--信号定义
-------------------------------------------------------
signal resetn_t : std_logic := '0';																	--复位信号	0复位
signal clk108m_t, clk36m_t : std_logic := '0';													--时钟信号
signal lock_t : std_logic := '0';																	--锁相状态信号
signal slrd_t : std_logic := '1';																	--USBFIFO 写请求，1有效,来自U2
signal readusbfifo_t, readusbfifo_t1, readusbfifo_t2 : std_logic := '0';				--USBFIFO读信号,
signal readusbfifodata_t, readusbfifodata_t1, readusbfifodata_t2 : std_logic_vector(15 downto 0) := ( others => '0' );				--USBFIFO数据总线
signal usbfifohalffull_t, usbfifohalffull_t1, usbfifohalffull_t2 : std_logic := '0';
signal writeextfifo_t, writeextfifo_t1, writeextfifo_t2 : std_logic := '0';			--EXTFIFO写信号
signal writeextfifodata_t, writeextfifodata_t1, writeextfifodata_t2 : std_logic_vector(15 downto 0) := ( others => '0' );			--EXTFIFO数据总线
signal extfifohalffull_t, extfifohalffull_t1, extfifohalffull_t2 : std_logic := '0';
signal quarterfull_t : std_logic := '1';
signal wr_t : std_logic_vector(3 downto 0) := "0000";											--wr_t来自U2_Controller的WR. 01：读USBfifo写sdram, 10：读sdram写EXTfifo. 位32:U3, 位10:U4
signal full_t1, full_t2 : std_logic := '0';
signal empty_t1, empty_t2 : std_logic := '0';
signal Laser_Data_t : std_logic_vector(15 downto 0) := ( others => '0' );
signal empty_t : std_logic := '1';
signal empty_st : std_logic_vector(1 downto 0) := "00";
signal empty_count : integer range 0 to 31 := 0;												--空计数器,0~31
signal FIFO_RD_CP : std_logic;																		--输出FIFO读信号 上升沿有效
signal OEn_tt : std_logic;																				--in  外部接口读请求，0有效  
signal EMPTY_tt : std_logic;																			--out 外部FIFO空
signal SDRAMEMPTY_tt : std_logic;																	--out ***空标志，PA0

signal Encode_A_F : std_logic ;									--滤波后														
signal Encode_B_F : std_logic ;

signal EN_Counter : std_logic_vector( 23 downto 0 ) ;			--光栅计数值, 初值=200000
signal EN_DIV : std_logic_vector( 7 downto 0 ) := "00000000" ;					--光栅分频值  0~255,0:不分频
signal EN_Clr : std_logic := '0';									--光栅高电平清零
signal EN_cInt : std_logic ;
signal EN_Conter_Min : std_logic_vector( 23 downto 0 );		--输出范围小值
signal EN_Conter_Max : std_logic_vector( 23 downto 0 );		--输出范围大值
signal EN_Out_en : std_logic ;
signal rEncode_Delay : std_logic_vector( 15 downto 0 );		--光栅延时值
signal rEncode_Word : std_logic_vector( 7 downto 0 );

signal CPU_Command_1 : std_logic_vector( 7 downto 0 );		--CPU指令1
signal CPU_Command_2 : std_logic_vector( 7 downto 0 );		--CPU指令2
signal CPU_Command_3 : std_logic_vector( 7 downto 0 );		--CPU指令3
signal CPU_Command_4 : std_logic_vector( 7 downto 0 );		--CPU指令4 
signal CPU_Read_1 : std_logic_vector( 7 downto 0 );			--CPU数据1
signal CPU_Read_2 : std_logic_vector( 7 downto 0 );			--CPU数据2
signal CPU_Read_3 : std_logic_vector( 7 downto 0 );			--CPU数据3
signal CPU_Read_4 : std_logic_vector( 7 downto 0 );			--CPU数据4
signal CPU_Read_1_t : std_logic_vector( 7 downto 0 );			--CPU数据1
signal CPU_Read_2_t : std_logic_vector( 7 downto 0 );			--CPU数据2
signal CPU_Read_3_t : std_logic_vector( 7 downto 0 );			--CPU数据3
signal CPU_Read_4_t : std_logic_vector( 7 downto 0 );			--CPU数据4
signal rMode_Sel : std_logic_vector( 7 downto 0 );				--Mode_Sel设定值

signal rLaser_Data : std_logic_vector( 15 downto 0 );
signal rLaser_En : std_logic ;
signal rLaser_Set : std_logic ;
signal CPU_Laser_CP : std_logic ;
signal FIFO_Lser_CP : std_logic ;

signal rRam_Addr_Clr : std_logic ;
signal rRam_Read_T : std_logic ;

signal Check_Led : std_logic_vector( 7 downto 0 ) := "00001111" ;			--LED 数据

signal EN_Laser_CP :	std_logic ;					   	--out 光栅产生的Laser CP信号
signal EN_Laser_STR : std_logic ;							--out 光栅产生的Laser 数据锁存信号
signal EN_Laser_RD :	std_logic ;						--out 光栅产生的FIFO读信号




--程序
-------------------------------------------------------
begin

	SLWR <= '1';
	SLRD <= slrd_t;
	IFCLK <= clk36m_t;
	EMPTY_tt <= quarterfull_t;																			--输出接口空指示 = U5的1/4空指示
	Laser_Data <= Laser_Data_t ;																		--laser数据接口	
	empty_t <= '0' when ( empty_t1 = '1' or empty_t2 = '1' ) else '1';

	process ( resetn_t, clk108m_t )
	begin
		if ( resetn_t = '0' ) then											--0复位
			empty_count <= 0;													--空计数器=0
			SDRAMEMPTY_tt <= '1';												--SDRAM空输出->CPU
			empty_st <= "00";													--
		elsif ( clk108m_t'event and clk108m_t = '1' ) then			--clk108m_t 上升沿
			case empty_st is
				when "00" =>
					if ( empty_t = '0' ) then
						empty_count <= 0;
						SDRAMEMPTY_tt <= '0';
						empty_st <= "11";
					else
						empty_count <= empty_count;
						SDRAMEMPTY_tt <= '1';
						empty_st <= "00";
					end if;
				when "11" =>
					if ( empty_count = 31 ) then
						empty_count <= 0;
						SDRAMEMPTY_tt <= '1';
						empty_st <= "00";
					else
						empty_count <= empty_count + 1;
						SDRAMEMPTY_tt <= '0';
						empty_st <= "11";
					end if;
				when others =>
					empty_count <= 0;
					SDRAMEMPTY_tt <= '1';
					empty_st <= "00";
			end case;
		end if;
	end process;
	
	resetn_t <= '1' when ( RESETn = '1' and lock_t = '1' ) else '0';														--时钟锁相失败就复位，0复位
	readusbfifo_t <= readusbfifo_t1 when ( wr_t = "0100" or wr_t = "0110" ) else										--USBFIFO读信号,
					     readusbfifo_t2 when ( wr_t = "1001" or wr_t = "0001" ) else '0';
	readusbfifodata_t1 <= readusbfifodata_t when ( wr_t = "0100" or wr_t = "0110" ) else ( others => '0');	--数据切换，U3_SDRAM 数据口
	readusbfifodata_t2 <= readusbfifodata_t when ( wr_t = "1001" or wr_t = "0001" ) else ( others => '0');   --数据切换，U4_SDRAM 数据口
	usbfifohalffull_t1 <= usbfifohalffull_t when ( wr_t = "0100" or wr_t = "0110" ) else '0';
	usbfifohalffull_t2 <= usbfifohalffull_t when ( wr_t = "1001" or wr_t = "0001" ) else '0';
	writeextfifo_t <= writeextfifo_t1 when ( wr_t = "1001" or wr_t = "1000" ) else									--EXTFIFO写信号
                     writeextfifo_t2 when ( wr_t = "0010" or wr_t = "0110" ) else '0';
	writeextfifodata_t <= writeextfifodata_t1 when ( wr_t = "1001" or wr_t = "1000" ) else
                         writeextfifodata_t2 when ( wr_t = "0010" or wr_t = "0110" ) else ( others => '0');
	extfifohalffull_t1 <= extfifohalffull_t when ( wr_t = "1001" or wr_t = "1000" ) else '0';
	extfifohalffull_t2 <= extfifohalffull_t when ( wr_t = "0010" or wr_t = "0110" ) else '0';

	

	
--指令数据双向端口

	CPU_Data <= CPU_Read_1 when CPU_RD = '0' else ( others => 'Z' );		--WR=01时：SDRAM写入, SDRAM数据 = FIFO数据,否则高阻	
	
--********CPU数据移入********
--32位(4字节)移入数据为一组指令：指令+3字节数据
	process ( CPU_WR )
	begin
		if rising_edge( CPU_WR ) then
			CPU_Command_4 <= CPU_Command_3 ;
			CPU_Command_3 <= CPU_Command_2 ;
			CPU_Command_2 <= CPU_Command_1 ;
			CPU_Command_1 <= CPU_Data ;
		end if ;
	end process ;

--********CPU数据移入********	
	process ( CPU_RD, CPU_Set )
	begin	
		if rising_edge( CPU_RD ) then	--数据移出
			CPU_Read_1 <= CPU_Read_2 ;
			CPU_Read_2 <= CPU_Read_3 ;
			CPU_Read_3 <= CPU_Read_4 ;
		end if ;	
		
		if ( CPU_Set = '0' ) then	--数据移出
			CPU_Read_1 <= CPU_Read_1_t ;
			CPU_Read_2 <= CPU_Read_2_t ;
			CPU_Read_3 <= CPU_Read_3_t ;
			CPU_Read_4 <= CPU_Read_4_t ;
		end if ;		
	
	end process ;	
	
	
--********CPU指令设置********
	process( CPU_Set ) 	--CPU指令启动
	begin
		if ( CPU_Set = '1' ) then									--CPU_Set上升沿
			case CPU_Command_1 is									--指令判断
				when COM_Mode_Sel =>									--Mode_Sel设定值
					rMode_Sel <= CPU_Command_2 ;		

				when COM_Encode_Div =>								--ENcoder: 光栅分频值
					EN_DIV <= CPU_Command_2 ;	

				when COM_Encode_Min =>								--ENcoder: 输出范围光栅最小位置
					EN_Conter_Min <= CPU_Command_2 & CPU_Command_3 & CPU_Command_4 ;

				when COM_Encode_Max =>								--ENcoder: 输出范围光栅最大位置
					EN_Conter_Max <= CPU_Command_2 & CPU_Command_3 & CPU_Command_4 ;				

				when COM_Encode_Clr =>								--ENcoder: 光栅计数器清零; 0:保持 1:清零
					EN_Clr <= '1' ;									--光栅清零

				when COM_Encode_Word => 							--ENcoder: 每个光栅点的Laser字数,2字节=16bit	
					rEncode_Word <= CPU_Command_2 ;	

				when COM_Encode_Read =>								--ENcoder: CPU读光栅
					CPU_Read_1_t <= EN_Counter( 23 downto 16 ) ;
					CPU_Read_2_t <= EN_Counter( 15 downto 8 ) ;
					CPU_Read_3_t <= EN_Counter( 7 downto 0 ) ;				
					
				when COM_Encode_Delay =>							--光栅延时值
					rEncode_Delay <=	CPU_Command_2 & CPU_Command_3 ;					
					
				when COM_Laser_Data =>								--Laser: 激光串行数据值
					rLaser_Data	<= CPU_Command_2 & CPU_Command_3 ;

				when COM_Laser_Clk =>								--Laser: 禁止Laser打印输出
					CPU_Laser_CP <= '1' ;							--串行数据移位脉冲
					
				when COM_Laser_Set =>								--Laser: 激光锁存
					rLaser_Set <= '1' ;								--Laser值设置脉冲

				when COM_Laser_Enable =>							--Laser: 允许Laser打印输出
					rLaser_En <= '1' ;
			
				when COM_Laser_Disable =>							--Laser: 禁止Laser打印输出
					rLaser_En <= '0' ;

				when COM_Ram_Addr_Clr =>							--RAM: Ram地址清零
					rRam_Addr_Clr <= '1' ;
				
				when COM_Ram_Read =>									--RAM: Ram地址清零
					rRam_Read_T <= '1' ;

				when COM_Check_LED => 								--Check: 设置检测LED值
					Check_Led	<= CPU_Command_2 ;	

				when COM_Check_Read => 								--Check: 读FPGA的LED值
					CPU_Read_1_t <= Check_Led ;
				when others =>
				
			end case;

		else									--CPU_Set下降沿
			EN_Clr 			<= '0' ;		--光栅清零_复位
			rLaser_Set 		<= '0' ;		--Laser值设置脉冲_复位
			CPU_Laser_CP 	<= '0' ;		--串行数据移位脉冲_复位
			rRam_Addr_Clr 	<= '0' ;		--RAM地址清零_复位
			rRam_Read_T 	<= '0' ;		--CPU读地址信号脉冲_复位			
		end if ;
		
	end process ;


--端口映射
-------------------------------------------------------	
U0:CLKGen
PORT MAP
(
--	RESETn => '0',								--永不复位	
--RESETn => resetn_t,
	CLK48M => CLK48M,
	CLK108M => clk108m_t,
	CLK36M => clk36m_t,
	LOCKED => lock_t
);

-------------------------------------------------------
U1:FIFO_16Bit_2K									--usb fifo--
PORT MAP
(
	RESETn => resetn_t,							--in  清零，0复位	
	WCLK => not clk36m_t ,						--in  写时钟，上升取样
	RCLK => clk108m_t,							--in  读时钟，上升沿有效，下降沿是中间
	WEN => not slrd_t,							--in  写请求，1有效,来自U2
	REN => readusbfifo_t,						--in  读请求，1有效，REN置位后的第二个时钟数据才开始有效,与USBFIFO读信号连接
	DIN => DATAIN,									--in  数据入，USBFIFO数据总线，从CPU输入到USBFIFO
	DOUT => readusbfifodata_t,					--out 输出到SDRAM
	HALFFULL => usbfifohalffull_t				--out 写半满，1有效
);

-------------------------------------------------------
U2:Controller
PORT MAP
(
	RESETn => resetn_t,							--in 	复位
	CLK108M => clk108m_t,
	CLK36M => clk36m_t,
	SDRAMFULL => full_t1 & full_t2 ,			--in 	SDRAM满，逻辑矢量2位，各代表一片SDRAM
	SDRAMEMPTY => empty_t1 & empty_t2 ,		--in 	SDRAM空，逻辑矢量2位，各代表一片SDRAM
	WR => wr_t,										--out	4位 读、写、等待控制。32位控U3,10位控U4,01：读USBfifo写sdram, 10：读sdram写EXTfifo
	FLAGC => FLAGC,								--in 
	SLRD => slrd_t,								--out
	FULL => usbfifohalffull_t					--in 
);

-------------------------------------------------------
U3: SDRAM_Controller		--controller 1--
port map
(
	RESETn => resetn_t,								--0复位
	CLOCK => clk108m_t,	
	WR => wr_t(3 downto 2),							--in U3用3,2位, 01：读USBfifo写sdram, 10：读sdram写EXTfifo
	USBFIFOFull => usbfifohalffull_t1,
	EXTFIFOEmpty => extfifohalffull_t1,
	ReadUSBFIFO => readusbfifo_t1,				--USBFIFO读信号
	WriteEXTFIFO => writeextfifo_t1,
	ReadUSBFIFOData => readusbfifodata_t1,		--usb方向数据总线
	WriteEXTFIFOData => writeextfifodata_t1,	--外部输出方向数据总线
	Full => full_t1,
	Empty => empty_t1,
	CSn => CSn0,
	CLK => CLK0,
	CKE => CKE0,
	RASn => RASn0,
	CASn => CASn0,
	WEn => WEn0,
	UDQM => UDQM0,
	LDQM => LDQM0,
	BA => BA0,											--out sdram0 Row Address Input
	A => A0,	
	DQ => DQ0											--inout sdram0 Data I/O	
);

-------------------------------------------------------
U4: SDRAM_Controller		--controller 2--
port map
(
	RESETn => resetn_t,								--0复位
	CLOCK => clk108m_t,	
	WR => wr_t(1 downto 0),							--BANK_2用1,0位, 01：读USBfifo写sdram, 10：读sdram写EXTfifo
	USBFIFOFull => usbfifohalffull_t2,
	EXTFIFOEmpty => extfifohalffull_t2,
	ReadUSBFIFO => readusbfifo_t2,
	WriteEXTFIFO => writeextfifo_t2,
	ReadUSBFIFOData => readusbfifodata_t2,
	WriteEXTFIFOData => writeextfifodata_t2,	
	Full => full_t2,
	Empty => empty_t2,
	CSn => CSn1,	
	CLK => CLK1,
	CKE => CKE1,
	RASn => RASn1,
	CASn => CASn1,
	WEn => WEn1,
	UDQM => UDQM1,
	LDQM => LDQM1,
	BA => BA1,
	A => A1,
	DQ => DQ1	
);

-------------------------------------------------------
U5:FIFO_16Bit_2K		--ext fifo--
PORT MAP
(
	RESETn => resetn_t,							--0复位	
	WCLK => clk108m_t,							--in  写时钟，上升取样
	RCLK => FIFO_RD_CP,							--in  读时钟，上升沿有效，下降沿是中间
	WEN => writeextfifo_t,						--in  写请求，1有效
	REN => '1' ,									--in  读请求，1有效，REN置位后的第二个时钟数据才开始有效,与Laser数据连接
	DIN => writeextfifodata_t,					--in  数据入，SDRAM数据总线，从SDRAM输入到FIFO
	DOUT => Laser_Data_t,						--out 输出到Laser接口,
	QUARTERFULL => quarterfull_t,
	HALFFULL => extfifohalffull_t				--out 写半满，1有效
);
-------------------------------------------------------
U6: Encode_Filter		--Filter_A--
PORT MAP
(
	clk => clk108m_t ,				--in  时钟 
	D   => Encode_A ,					--in  输入信号
	Q   => Encode_A_F					--out 输出信号
);

-------------------------------------------------------
U7: Encode_Filter		--Filter_A--
PORT MAP
(
	clk => clk108m_t ,				--in  时钟 
	D   => Encode_B ,					--in  输入信号
	Q   => Encode_B_F					--out 输出信号
);

-------------------------------------------------------
U8: Encode_4x		--Encoder_4x--
PORT MAP
(
	clk 		=> clk108m_t ,			--in  输入时钟 
	En_A 		=> Encode_A_F ,		--in  输入A相
	En_B 		=> Encode_B_F ,		--in  输入B相
	Clr   	=> EN_Clr ,				--in  高电平清零
	Counter 	=> EN_Counter,			--计数值
	Div  		=> EN_DIV ,				--光栅分频值
	cInt		=> EN_cInt ,			--输出同步脉冲,较窄
	CN_Min  	=> EN_Conter_Min , 	--输出范围小值
	CN_Max   => EN_Conter_Max ,  	--输出范围大值
	Out_En  	=> EN_Out_en			--输出范围使能，指示
);

-------------------------------------------------------
U9: LED_Check		--LED_Check--
PORT MAP
(
	CLK 		=> CLK48M ,				--in  时钟 
	LED_Data => Check_Led ,			--in  Led值
	LED_Out 	=> Check					--out Led输出信号
);

-------------------------------------------------------
U10: Encode_CP
PORT MAP
(
	CLK 	=> clk108m_t ,				--in  输入时钟 
	INT 	=> EN_cInt ,				--in  启动脉冲
	Word  => rEncode_Word ,			--in  移位次数=word数
	CP 	=> EN_Laser_CP ,			--out 光栅产生的Laser CP信号
	STR 	=>	EN_Laser_STR ,			--out 光栅产生的Laser 数据锁存信号
	RD 	=>	EN_Laser_RD				--out 光栅产生的FIFO读信号
	
);






END RTL;