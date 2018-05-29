//V19
/*
XMot:扫描电机，8细分，
XMot:最高速度Smax=1000mm/s，转速rmax=625r/min，频率fmax=16666Hz，周期Tmin=60us，机器周期Nmax=720
XMot:最低速度Smin=100mm/s， 转速rmin=62.5r/min，频率fmin=1666.6Hz，周期Tmax=600us，机器周期Nmin=7200

*/

//参数设置
#define CTS_Ver		21					// 固件版本5
#define CTS_Model	CTS_500				// 机型:CTS330=33, CTS500=50, CTS840=84
#define Serial_No   21001				// 机号，2字节


//my.h
//定义端口和寄存器Header file for cy7c68013 fx2 microcontroller.
//端口C 电机控制端口	8位输出
//端口D 0,1:LED驱动输出 2,3:传感器输入 4:按键3输入 5,6,7:RAM控制输出

//CPU电平设置和参数,常数
#define CTS_300	  	0
#define CTS_500	  	1
#define CTS_1000  	2

#define EP0BUFF_SIZE		0x40

#define Motor_EN_Hold		TRUE		//定义电机使能：保持		
#define Motor_EN_Free		FALSE		//定义电机使能：释放

#define Motor_CP_Normal		TRUE		//定义电机脉冲：常态
#define Motor_CP_Plus		FALSE		//定义电机脉冲：脉冲

#define RAM_Bank_A			TRUE		//Bank A	GPIF与Bank A相连
#define RAM_Bank_B			FALSE		//Bank B	CPU与Bank B相连

#define X_Pos_On			TRUE		//定义X电机在检测位置
#define X_Pos_Off			FALSE		//定义X电机不在检测位置

#define Y_Pos_On			TRUE		//定义Y电机在检测位置
#define Y_Pos_Off			FALSE		//定义Y电机不在检测位置

#define Laser_On			FALSE
#define Laser_Off			TRUE

#define Laser_Gain_Check	40			//Laser测试时的高功率

#define Encode_Div_2540     1       	//10u   光栅分频值


//-------电机状态------


//-------注册-------
#define Ver_Register  	0x02 	//系统已注册

//*********定义USB请求号，GP指令 0xa0-0xaf ****************
#define VR_ANCHOR_DLD   0xa0 // handled by core
#define VR_EEPROM		0xa2 // loads (uploads) EEPROM
#define	VR_RAM			0xa3 // loads (uploads) external ram
#define VR_SETI2CADDR	0xa4
#define VR_GETI2C_TYPE  0xa5 // 8 or 16 byte address
#define VR_GET_CHIP_REV 0xa6 // Rev A, B = 0, Rev C = 2 // NOTE: New TNG Rev
#define VR_TEST_MEM     0xa7 // runs mem test and returns result
#define VR_RENUM	    0xa8 // renum
#define VR_DB_FX	    0xa9 // Force use of double byte address EEPROM (for FX)
#define VR_I2C_100    	0xaa // put the i2c bus in 100Khz mode
#define VR_I2C_400    	0xab // put the i2c bus in 400Khz mode
#define VR_NOSDPAUTO  	0xac // test code. does uploads using SUDPTR with manual length override

#define	VR_UPLOAD		0xc0
#define VR_DOWNLOAD		0x40
#define SERIAL_ADDR		0x50



//-----定义USB请求号，GP指令 0xb0-0xff ------------------
//1:指令'GP_COM_Prar' 设定参数
//2:响应'GP_GET_Start' Y电机复位、启动X电机、等待X电机稳定、等待X电机复位、响应
//3:高速发送一圈数据、响应'GP_GET_Line'等待响应
//4:指令'GP_COM_End' 结束

#define GP_COM_X_Move		0xb0	//USB请求号,指令:启动X电机			5		:1BYTE(方向),1WORD(速度),1WORD(长度)
#define GP_COM_X_Stop	  	0xb1    //USB请求号,指令:X电机停止			0
#define GP_COM_X_Reset  	0xb2    //USB请求号,指令:X电机复位			0
#define GP_COM_X_Free     	0xb3    //USB请求号,指令:X电机释放			0
#define GP_COM_X_Hold     	0xb4    //USB请求号,指令:X电机锁定			0

#define GP_COM_Y_Move		0xb5	//USB请求号,指令:Y电机走			3		:1BYTE(方向),1WORD(长度)
#define GP_COM_Y_Stop	  	0xb6    //USB请求号,指令:Y电机停止			0
#define GP_COM_Y_Reset  	0xb7    //USB请求号,指令:Y电机复位			0
#define GP_COM_Y_Free  	    0xb8    //USB请求号,指令:Y电机释放			0
#define GP_COM_Y_Hold  	    0xb9    //USB请求号,指令:Y电机锁定			0

#define GP_COM_Laser_On    	0xba    //USB请求号,指令:打开Laser  		0
#define GP_COM_Laser_Off 	0xbb    //USB请求号,指令:关闭Laser			0
#define GP_COM_Laser_Plus  	0xbc    //USB请求号,指令:Laser脉冲测试 		2	    :1WORD(Laser测试时常数,关闭时间)
#define GP_COM_Laser_Mode  	0xbd    //USB请求号,指令:驱动模式 			1	    :1BYTE(设置Laser驱动芯片模式，0:输出模式/POS检测，1:校正参数输入/温度读取)
#define GP_COM_FPGA_Write  	0xbe    //USB请求号,指令:FPGA写				5		:1BYTE(FPGA指令),1BYTE(参数H),1BYTE(参数M),1BYTE(参数L),1BYTE(参数字节数)
#define GP_COM_Light 	  	0xbf    //USB请求号,指令:亮度AD设置			0		

#define GP_COM_Data_Ok   	0xc1    //USB请求号,指令:一行数据传送完毕	1		:1BYTE(数据相关信息)
#define GP_COM_End	    	0xc2    //USB请求号,指令:输出结束			0
#define GP_COM_COM_Test	 	0xc3    //USB请求号,指令:测试				1
#define GP_COM_Regist   	0xc4    //USB请求号,指令:写注册信息			16		:16BYTE(注册信息):头标志"CTS":0x43, 0x54, 0x53 + 型号:word + 版本:word + 时间:byte年,byte月 + 状态:word + 输出次数:Dword + 结束:0x0d .
#define GP_COM_Indic   	    0xc5    //USB请求号,指令:激光标尺			1       :1BYTE(激光指示标尺,0:关闭; 1:显示; 2:闪动):

#define GP_COM_Port_Set  	0xc7    //USB请求号,指令:设置端口			1	    :1BYTE(端口设置)
#define GP_COM_Port_Write  	0xc8    //USB请求号,指令:写端口				1	    :1BYTE(写端口)

#define GP_COM_ADJ_Addr  	0xc9    //USB请求号,指令:设置横梁RAM地址	2	    :2BYTE(地址)
#define GP_COM_ADJ_Write  	0xca    //USB请求号,指令:写横梁RAM			16	    :16BYTE(数据)

#define GP_GET_state 		0xd1 	//USB请求号, 响应->返回状态,		12		:1B(状态), 1B(Port_A), 1B(Port_C), 1B(Port_D), 1B(Port_E), 1B(USB模式), 1B(版本), 1B(机型), 2B(序列号码), 2b(注册信息)
#define GP_GET_Busy			0xd2 	//USB请求号, 响应->返回状态,		1		:1BYTE(RAM_OK,行数据准备好可以输出)
#define GP_GET_Encode     	0xd3    //USB请求号, 响应->返回光栅值		3       :1BYTE(光栅L),1BYTE(光栅M),1BYTE(光栅H)
#define GP_GET_Ram       	0xd4    //USB请求号, 响应->返回Ram值		2       :2BYTE(Ram值)
#define	GP_GET_FPGA			0xd5	//USB请求号, 响应->回读				1
#define	GP_GET_XMot			0xd6	//USB请求号, 响应->回读				1       :1BYTE(X电机状态)
#define	GP_GET_YMot			0xd7	//USB请求号, 响应->回读				1       :1BYTE(Y电机状态)
#define	GP_GET_XYStop		0xd8	//USB请求号, 响应->回读				1       :1BYTE(),当XY电机都停止时返回数据，否则等待
#define	GP_GET_Temp			0xd9	//USB请求号, 响应->回读				4       :1WORD(内部温度),1WORD(外部温度)
#define	GP_GET_Port			0xda	//USB请求号, 响应->回读				1       :1BYTE()(读端口)
#define GP_GET_Regist 	    0xdb    //USB请求号, 响应->回读注册信息	    16		:16BYTE(注册信息):头标志"CTS":0x43, 0x54, 0x53 + 型号:word + 版本:word + 时间:byte年,byte月 + 状态:word + 输出次数:Dword + 结束:0x0d .
#define	GP_GET_Light		0xdc	//USB请求号, 响应->回读				3		:1BYTE(激光号),1WORD(亮度)
#define GP_GET_COM_Test	 	0xde    //USB请求号, 响应->测试				1

#define GP_GET_ADJ_Read	 	0xdf    //USB请求号, 响应->回读写横梁RAM	16		:16BYTE(数据)

#define GP_COM_X_Move_Len		5
#define GP_COM_X_Stop_Len	  	0
#define GP_COM_X_Reset_Len  	0
#define GP_COM_X_Free_Len     	0
#define GP_COM_X_Hold_Len     	0

#define GP_COM_Y_Move_Len		3
#define GP_COM_Y_Stop_Len	  	0
#define GP_COM_Y_Reset_Len  	0
#define GP_COM_Y_Free_Len     	0
#define GP_COM_Y_Hold_Len     	0

#define GP_COM_Laser_On_Len    	0
#define GP_COM_Laser_Off_Len 	0
#define GP_COM_Laser_Plus_Len 	2
#define GP_COM_Laser_Mode_Len	1
#define	GP_COM_FPGA_Write_Len	4
#define GP_COM_Light_Len		0

#define GP_COM_Data_Ok_Len   	1
#define GP_COM_End_Len	    	0
#define GP_COM_COM_Test_Len	 	1
#define GP_COM_Regist_Len	    16
#define GP_COM_Indic_Len		1

#define GP_COM_Port_Set_Len  	1
#define GP_COM_Port_Write_Len	1

#define GP_GET_state_Len 		12
#define GP_GET_Busy_Len			1
#define GP_GET_Encode_Len     	3
#define GP_GET_Ram_Len       	2
#define	GP_GET_FPGA_Len			1
#define	GP_GET_XMot_Len			1
#define	GP_GET_YMot_Len			1
#define	GP_GET_XYStop_Len		1
#define	GP_GET_Temp_Len			4
#define	GP_GET_Port_Len			1
#define GP_GET_Regist_Len		16
#define	GP_GET_Light_Len		3
#define GP_GET_COM_Test_Len	 	1
#define GP_GET_ADJ_Read_Len	 	16

//--------CPU状态定义---------
#define GP_KEY_No       		0		//无按键
#define GP_KEY_1        		1
#define GP_KEY_2        		2
#define GP_KEY_1_2      		3

#define GP_State_OK		   		0		//等待
#define GP_State_Check			1		//自检
#define GP_State_Error			2		//故障
#define GP_State_Pring			3		//输出
#define GP_Error_X_Mot			4		//X_电机故障
#define GP_Error_Y_Mot			5		//Y_电机故障
#define GP_Error_FPGA			6		//FPGA故障
#define GP_Error_RAM			7		//RAM故障
#define GP_Error_Encoder		8		//Encoder故障
#define GP_Error_Laser			9		//Laser故障
#define GP_OK_X_Mot				14		//X_电机正常
#define GP_OK_Y_Mot				15		//Y_电机正常






#define GP_RAM_OK		   		0		//正常数据
#define GP_RAM_Null		   		1		//数据空

#define Dir_Mode_Bidir			0		//双向打印
#define Dir_Mode_Unidir			1		//单向打印

#define Mot_State_Free			0		//定义电机释放
#define Mot_State_Hold			1		//定义电机静止锁定
#define Mot_State_Up			2		//定义电机加速段
#define Mot_State_Run			3		//定义电机匀速段
#define Mot_State_Down			4		//定义电机减速段
#define Mot_State_End			5		//定义电机减速段最后一步
#define Mot_State_Error			6		//定义电机故障

//****定义USB结束


//--------CPU_FPGA指令定义--------
#define 	COM_Mode_Sel		 1  	//FPGA写指令:模式选择: 
#define 	COM_Encode_Div		 2  	//FPGA写指令:光栅分频值
#define 	COM_Encode_Min		 3  	//FPGA写指令:激光输出范围光栅最小位置
#define 	COM_Encode_Max		 4  	//FPGA写指令:激光输出范围光栅最大位置
#define 	COM_Encode_Clr		 5  	//光栅计数器清零; 0:保持 1:清零
#define 	COM_Encode_Read		 6  	//FPGA写指令:CPU读光栅

#define 	COM_Laser_Set		 7  	//FPGA写指令:激光产生一个XLAT正脉冲
#define 	COM_Laser_Data		 8  	//FPGA写指令:激光一个串行数据
#define 	COM_Laser_Enable	 9  	//允许Laser打印输出
#define 	COM_Laser_Disable	10  	//禁止Laser打印输出
	
#define 	COM_Ram_Write		11  	//FPGA写指令:Ram写入
#define 	COM_Ram_Read		12  	//FPGA写指令:CPU读RAM
#define 	COM_Ram_Addr_Clr	13  	//RAM地址清零; 0:保持 1:清零

#define 	COM_Dot_Byte		14  	//FPGA写指令:每个光栅点的Laser字节数
	
#define		COM_LED_Check		15 		//FPGA检测LED值
#define		COM_Check_Read		16 		//FPGA检测,回读
#define		COM_Encode_Delay    17  	//FPGA写指令:光栅延时值


//--------RAM选择模式定义
#define 	Mode_0	0 	//	rMode_Sel=000:	RAM_A→Laser,    RAM_B←GPIF,     Laser←RAM_A,      	GPIF→RAM_B
#define 	Mode_1	1	//	rMode_Sel=001:	RAM_A←GPIF, 	RAM_B→Laser, 	Laser←RAM_B,    	GPIF→RAM_A
#define 	Mode_2	2 	//	rMode_Sel=010:	RAM_A→CPU_Read,	RAM_B←rRAM_Val,	Laser←rLaser_Val, 	CPU_Read←RAM_A				
#define 	Mode_3	3 	//	rMode_Sel=011:	RAM_A←rRAM_Val,	RAM_B→CPU_Read,	Laser←rLaser_Val,	CPU_Read←RAM_B				
#define 	Mode_4	4 	//	rMode_Sel=100:		
#define 	Mode_5	5 	//	rMode_Sel=101:	
#define 	Mode_6	6 	//	rMode_Sel=110:					
#define 	Mode_7	7 	//	rMode_Sel=111:


//--------激光增益指令定义

#define     Laser_Gain_Head     0x0140      //0000_0001_0100_0000
#define     Laser_Gain_Head_H   0x01        //0000_0001
#define     Laser_Gain_Head_L   0x40        //0100_0000

//****CPU_FPGA指令定义结束********

//****CTS机器硬件信息********
#define		Laser_Byte          32          //每个光栅点的Laser字节数
#define		Laser_Word          16          //每个光栅点的Laser字数

#define		Encode_Reset_Val	200000 		//Encode复位时的初值，约=50mm
#define		Encode_100mm		210000      //210000
#define		Encode_500mm		250000		//250000
#define		Encode_d_100mm		10000       //210000
#define		Encode_Check		400			//光栅检测冗余度

#define 	X_mm_Add            108      	//加速距离=108mm= 480tep
#define 	X_Step_Add          480     	//最大加速步数
#define 	X_Step_1mm          4.44444444444444	//定义X电机1mm步数,  180mm=800step
#define 	X_Step_5mm			22			//定义X电机5mm步长
#define 	X_Step_10mm			44			//定义X电机10mm步长
#define 	X_Step_50mm			222			//定义X电机50mm步长
#define 	X_Step_100mm		444			//定义X电机100mm步长
#define 	X_Step_500mm		2222		//定义X电机500mm步长
#define 	X_Step_1000mm		4444		//定义X电机1000mm步长
#define 	X_Step_2000mm		8889		//定义X电机2000mm步长

#define 	X_Dir_Lift		    TRUE    	//定义X电机方向-左行
#define 	X_Dir_Right		    FALSE   	//定义X电机方向-右行

#define 	X_Max_Len			17778		//最长行走距离，因为当Len小于2*加速步数时，Len出错 180*25000/800

#define 	X_Low_Speed		    0x9688	    //复位速度时常数=50mm/s
#define 	X_High_Speed	    0xFC7C	    //高速度时常数  =1500mm/s

#define 	X_Time_N            270000		//72000 //101250//202500

#define 	Y_Add_Step			15			//定义Y电机加速步长
#define 	Y_Dir_Forward       FALSE    	//定义Y电机方向-前进
#define 	Y_Dir_Back          TRUE   		//定义Y电机方向-返回
#define 	Y_1mm   			6400		//定义Y电机1mm步长

//****CTS机器硬件信息-结束********


//----------------端口A---------------------
#define  Val_P_A_CFG	0x40	//portA 功能设置: PA.7为SLCS功能(IFCONGIFCFG1:0 = 11)
#define  Val_P_A_IO		0xfb	//portA  I/O设置: 1111,1011	0:输入,1:输出
#define  Val_P_A_Ini	0x03	//portA 初始化值: 0000,0011

#define	 Led_Off		TRUE	//定义LED灭
#define	 Led_On			FALSE	//定义LED亮

sbit 	Y_Mot_CP	= IOA^0; 	//端口A.0	扫描电机脉冲信号 		输出: 1:初态，0:有效 ,脉宽T>1.2us 
sbit 	Y_Mot_Dir	= IOA^1; 	//端口A.1	扫描电机方向信号 		输出: 1:初态，Dir提前CP至少5us

sbit	Led_CPU		= IOA^3; 	//端口A.3	CPU工作指示 			输出: 0:亮，  1:灭-初态

//----------------端口C---------------------
#define  Val_P_C_CFG	0x00	//portC 功能设置: bit0~7:I/O功能
#define  Val_P_C_IO		0x9f	//portC  I/O设置: 1001,1111 0:输入,1:输出
#define  Val_P_C_Ini	0x0e	//portC 初始化值: 0000,1110

#define	PC_ADJ_WR		0xff   	//portC  I/O设置: 1111,1111 SDA输出
#define	PC_ADJ_RD		0xfd   	//portC  I/O设置: 1111,1101 SDA输入

sbit 	FPGA_Set	= IOC^0; 	//端口C.0	FPGA指令设置		   	输出: 0:初态，1:设置 
sbit 	Laser_EN	= IOC^1; 	//端口C.1	激光输出使能信号 		输出: 1:初态, 0:输出
sbit 	FPGA_Reset	= IOC^2; 	//端口C.2	FPGA复位			   	输出: 1:初态，0:复位 
sbit 	X_Mot_Dir	= IOC^3; 	//端口C.3	行移电机方向信号 		输出: 1:初态，Dir提前CP至少5us
sbit 	X_Mot_CP	= IOC^4; 	//端口C.4	行移电机脉冲信号 		输出: 0:初态，0:有效 ,脉宽T>1.2us=14.4T
sbit 	X_Mot_Pos	= IOC^5; 	//端口C.5	扫描电机待用信号 		输入: 
sbit 	Y_Mot_Pos	= IOC^6; 	//端口C.6	行移电机位置检测 		输入: 
sbit 	Y_Mot_EN	= IOC^7; 	//端口C.7	扫描电机使能信号 		输出: 0:初态，1:使能 ,EN提前Dir至少5us

//----------------端口E---------------------
#define  Val_P_E_CFG	0x00	//portE 功能设置: bit0~7:I/O功能
#define  Val_P_E_IO		0xbd	//portE  I/O设置: 1011,1101	 0:输入,1:输出
#define  Val_P_E_Ini	0x0c	//portE 初始化值: 0000,1100

#define  PortE_OUT	IOE	     	//端口E 外界待用信号

#define  SLOE		bmBIT0 	 	//端口E.0	预备9					输出: 0:初态，缺省=0	
#define  Laser_Err	bmBIT1 		//端口E.1	驱动板检测    			输入:
#define	 ADJ_SCL	bmBIT2 		//端口E.2	ADJ时钟	 	 			输出: 1:初态，缺省=1
#define  ADJ_SDA	bmBIT3	 	//端口E.3	ADJ数据 		 		输出: 1:初态，缺省=1
#define  Laser_Mode	bmBIT4	 	//端口E.4	激光控制模式 			输出: 0:输出模式/POS检测，1:校准功率参数输入/温度读取，缺省=0
#define  Resav_1 	bmBIT5	 	//端口E.5   预备输出1				输出: 0:初态
#define  Resav_2 	bmBIT6	 	//端口E.6   预备输出2				输出: 0:初态
#define  Resav_0 	bmBIT7	 	//端口E.7   预备输出0				输出: 0:初态

//----------------Gpif---------------------						  
#define GPIFTRIGWR 	0
#define GPIF_EP2 	0
#define GPIF_EP4 	1
#define GPIF_EP6 	2
#define GPIF_EP8 	3
#define BURSTMODE 	0x0000

//----------参数----------
#define	us_5	10
#define	us_2	10  

//---------------EEPROM 32k 地址分配
//0000-23ff:9k: 程序
//7c00-7cff:1k: 机型,编号,计数,分辨率


