#pragma NOIV               // Do not generate interrupt vectors
#include "fx2.h"
#include "fx2regs.h"
#include "fx2sdly.h"       // SYNCDELAY macro
#include "my.h"            


void 	SetupCommand(void);

//定义函数****************

void 	EEPROMWrite(WORD addr, BYTE length, BYTE xdata *buf); 	//TPM EEPROM Write
//void 	EEPROMWriteByte(WORD addr, BYTE value);
void 	EEPROMRead(WORD addr, BYTE length, BYTE xdata *buf);  	//TPM EEPROM Read
//BYTE 	EEPROMReadByte(WORD addr );


BOOL 	X_MOT_Move( BOOL X_Dir, WORD X_Speed_Time, WORD X_Len ) ;	//X_电机移动长度
void 	X_MOT_Stop( void ) ;										//X_电机停止
BOOL 	X_MOT_Reset( void ) ;										//X_电机复位

BOOL 	Y_MOT_Move( BOOL Y_Dir, WORD Y_Len ) ;						//Y_电机移动长度
void 	Y_MOT_Stop( void ) ;										//Y_电机停止
BOOL 	Y_MOT_Reset( void ) ;										//Y_电机复位

void 	FPGA_Write( BYTE FPGA_Com , BYTE FPGA_data_1 , BYTE FPGA_data_2 ,BYTE FPGA_data_3 ) ;	//FPGA_Write:串行写入
//void 	FPGA_WR_Out( BYTE FPGA_data ) ;	//FPGA_串行输出数据
//BYTE 	FPGA_Read( void ) ;				//FPGA_Read:串行读入
//BOOL 	FPGA_Check(void) ; 				//FPGA_自检

void 	Laser_Plus_Set( WORD lTimer ) ;	//lTimer：脉冲关闭时常数， lTimer= 0 ：结束脉冲测试
//void 	Laser_Check( void ) ;			//Laser_自检

BOOL 	Encoder_Check(void) ; 			//Encoder_自检
DWORD 	Encoder_Read( void ) ;			//Encoder光栅读取

WORD 	Temp_Read( BOOL Temp_Sel ) ;	//Temp温度读取
BOOL 	DS18B20_Reset( void ) ;			//DS18B20复位
void 	DS18B20_Write( BYTE DS_Data ) ;	//DS18B20_Write字节写
BYTE 	DS18B20_Read( void ) ;			//DS18B20_Read字节读
void 	DS18B20_Out( BOOL OUT_TP ) ;	//DS18B20端口写
BOOL 	DS18B20_In( void ) ;			//DS18B20端口读

void 	Delay_us( BYTE T_us ) ;			//延时N x us , 最大255us

void 			ADJ_Write( unsigned int RAM_adr, unsigned char RAM_data ) ;
unsigned char 	ADJ_Read( unsigned int RAM_adr ) ;

//BOOL 	Ram_Check(void) ;				//RAM_自检

void 	System_Check( void ) ;			//System_自检
void 	CPU_FPGA_Int( void ) ;			//CPU_FPGA初始化

void 	Exter_Int_0(void) ;				//外部中断0
void 	Exter_Int_1(void) ;				//外部中断1
void 	Timer0_Int_0(void) ;			//Time0中断处理, Y电机
void 	Timer1_Int_0(void) ;			//Time1中断处理,用于Laser测试
void 	Timer2_Int_0(void) ;			//Time2中断处理, X电机

//定义变量****************
extern BOOL		DB_Addr;			//TPM Dual Byte Address stat
extern BYTE		I2C_Addr;			//TPM I2C address

extern BOOL 	GotSUD ;			//接受到端点0，有USB请求标志
extern BOOL 	Sleep ;  			//睡眠标志，当有睡眠中断，将该标记设置为真
extern BOOL 	Rwuen ;				//远程唤醒标
extern BOOL 	Selfpwr ;			//是否自供电

BYTE Configuration;         		//当前的配置号
BYTE AlternateSetting;      		//可选设置号


//自定义变量**************
extern BYTE		GP_State ;			//CTS状态
extern BYTE		GP_Model ;			//CTS机型

extern BYTE		X_Mot_State ;		//X_电机状态
extern WORD		X_Timer_ip ;		//X_电机的时常数指针
extern WORD		X_Timer_Add ;		//X_电机的加速步数
extern BYTE		X_Speed_Time_H ;	//X_电机匀速时常数
extern BYTE		X_Speed_Time_L ;	//X_电机匀速时常数
extern WORD		X_Mot_Run_Len ;		//X_电机匀速运行步数
extern WORD		X_Print_speed ;		//X_电机打印速度
extern WORD		X_Print_Pos	;		//X_电机起始位移
extern WORD		X_Print_Len ;		//X_电机输出行程

extern BYTE		Y_Mot_State ;		//Y_电机状态
extern BYTE		Y_Timer_ip ;		//Y_电机的时常数指针
extern WORD		Y_Mot_Run_Len ;		//Y_电机匀速运行步数
extern WORD		Y_Print_Feed ;		//Y_电机输出行距

extern BYTE		Laser_Test_Lamp	;	//Laser测试Laser指示
extern WORD		Laser_Plus_Time ;	//Laser测试时常数,关闭时间

extern WORD 	Manage_Time ;		//CPU管理计数器

extern bit		Indic_Flash ;		//激光标尺是否闪动
extern bit		Dir_Mode ;			//方向模式:0:单,1:双向输出
extern bit		RAM_OK ;			//行数据准备好可以输出
extern bit		RAM_Null ;			//空数据
extern bit		RAM_SELECT ;		//RAM选择
extern bit		Print_Dir  ;		//打印方向
extern bit		Print_End  ;		//打印结束
extern unsigned int		ADJ_RAM_Addr ;		//ADJ RAM 地址
//extern bit		Warm_State ;		//预热状态
//extern bit		Temp_Select ;		//温度检测选择 0:内部

//----------------FPGA数据口--------------------
xdata volatile BYTE 	FPGA_Port 	_at_ 0x8000;  	//FPGA数据接口

//X_Mot延时值   文件：X_Motor-V4.txt
const WORD code X_Mot_Time[ X_Step_Add ] ={
	0x0555, 0x72D0, 0x9CB1, 0xB2A7, 0xC03A, 0xC97F, 0xD02C, 0xD53C, 0xD93B, 0xDC69,  // 10
	0xDF10, 0xE144, 0xE323, 0xE4C0, 0xE629, 0xE765, 0xE87E, 0xE977, 0xEA57, 0xEB22,  // 20
	0xEBDC, 0xEC83, 0xED1E, 0xEDAC, 0xEE2E, 0xEEA7, 0xEF17, 0xEF81, 0xEFE3, 0xF03F,  // 30
	0xF095, 0xF0E7, 0xF133, 0xF17C, 0xF1C1, 0xF201, 0xF23F, 0xF27A, 0xF2B2, 0xF2E8,  // 40
	0xF31A, 0xF34B, 0xF37A, 0xF3A6, 0xF3D1, 0xF3FA, 0xF422, 0xF448, 0xF46D, 0xF490,  // 50
	0xF4B2, 0xF4D3, 0xF4F2, 0xF511, 0xF52F, 0xF54C, 0xF568, 0xF583, 0xF59D, 0xF5B7,  // 60
	0xF5CF, 0xF5E7, 0xF5FF, 0xF615, 0xF62C, 0xF641, 0xF656, 0xF66B, 0xF67E, 0xF692,  // 70
	0xF6A5, 0xF6B7, 0xF6CA, 0xF6DB, 0xF6EC, 0xF6FD, 0xF70E, 0xF71E, 0xF72D, 0xF73D,  // 80
	0xF74C, 0xF75B, 0xF769, 0xF778, 0xF786, 0xF793, 0xF7A1, 0xF7AE, 0xF7BB, 0xF7C8,  // 90
	0xF7D4, 0xF7E0, 0xF7EC, 0xF7F8, 0xF804, 0xF80F, 0xF81A, 0xF825, 0xF830, 0xF83A,  // 100
	0xF845, 0xF84F, 0xF85A, 0xF863, 0xF86D, 0xF877, 0xF880, 0xF88A, 0xF893, 0xF89C,  // 110
	0xF8A5, 0xF8AE, 0xF8B7, 0xF8BF, 0xF8C8, 0xF8D0, 0xF8D8, 0xF8E1, 0xF8E9, 0xF8F0,  // 120
	0xF8F8, 0xF900, 0xF908, 0xF90F, 0xF916, 0xF91E, 0xF925, 0xF92C, 0xF933, 0xF93A,  // 130
	0xF941, 0xF948, 0xF94E, 0xF955, 0xF95C, 0xF962, 0xF968, 0xF96F, 0xF975, 0xF97B,  // 140
	0xF981, 0xF987, 0xF98D, 0xF993, 0xF999, 0xF99F, 0xF9A4, 0xF9AA, 0xF9B0, 0xF9B5,  // 150
	0xF9BB, 0xF9C0, 0xF9C6, 0xF9CB, 0xF9D0, 0xF9D6, 0xF9DB, 0xF9E0, 0xF9E5, 0xF9EA,  // 160
	0xF9EF, 0xF9F4, 0xF9F8, 0xF9FD, 0xFA02, 0xFA07, 0xFA0C, 0xFA10, 0xFA15, 0xFA19,  // 170
	0xFA1E, 0xFA22, 0xFA27, 0xFA2B, 0xFA2F, 0xFA34, 0xFA38, 0xFA3C, 0xFA40, 0xFA45,  // 180
	0xFA49, 0xFA4D, 0xFA51, 0xFA55, 0xFA59, 0xFA5D, 0xFA61, 0xFA65, 0xFA69, 0xFA6C,  // 190
	0xFA70, 0xFA74, 0xFA78, 0xFA7C, 0xFA7F, 0xFA83, 0xFA86, 0xFA8A, 0xFA8E, 0xFA91,  // 200
	0xFA95, 0xFA98, 0xFA9C, 0xFA9F, 0xFAA2, 0xFAA6, 0xFAA9, 0xFAAD, 0xFAB0, 0xFAB3,  // 210
	0xFAB6, 0xFABA, 0xFABD, 0xFAC0, 0xFAC3, 0xFAC6, 0xFAC9, 0xFACC, 0xFAD0, 0xFAD3,  // 220
	0xFAD6, 0xFAD9, 0xFADC, 0xFADF, 0xFAE2, 0xFAE4, 0xFAE7, 0xFAEA, 0xFAED, 0xFAF0,  // 230
	0xFAF3, 0xFAF6, 0xFAF8, 0xFAFB, 0xFAFE, 0xFB01, 0xFB03, 0xFB06, 0xFB09, 0xFB0B,  // 240
	0xFB0E, 0xFB11, 0xFB13, 0xFB16, 0xFB19, 0xFB1B, 0xFB1E, 0xFB20, 0xFB23, 0xFB25,  // 250
	0xFB28, 0xFB2A, 0xFB2D, 0xFB2F, 0xFB32, 0xFB34, 0xFB36, 0xFB39, 0xFB3B, 0xFB3D,  // 260
	0xFB40, 0xFB42, 0xFB45, 0xFB47, 0xFB49, 0xFB4B, 0xFB4E, 0xFB50, 0xFB52, 0xFB54,  // 270
	0xFB57, 0xFB59, 0xFB5B, 0xFB5D, 0xFB5F, 0xFB61, 0xFB64, 0xFB66, 0xFB68, 0xFB6A,  // 280
	0xFB6C, 0xFB6E, 0xFB70, 0xFB72, 0xFB74, 0xFB76, 0xFB78, 0xFB7A, 0xFB7C, 0xFB7E,  // 290
	0xFB80, 0xFB82, 0xFB84, 0xFB86, 0xFB88, 0xFB8A, 0xFB8C, 0xFB8E, 0xFB90, 0xFB92,  // 300
	0xFB94, 0xFB95, 0xFB97, 0xFB99, 0xFB9B, 0xFB9D, 0xFB9F, 0xFBA0, 0xFBA2, 0xFBA4,  // 310
	0xFBA6, 0xFBA8, 0xFBA9, 0xFBAB, 0xFBAD, 0xFBAF, 0xFBB0, 0xFBB2, 0xFBB4, 0xFBB5,  // 320
	0xFBB7, 0xFBB9, 0xFBBB, 0xFBBC, 0xFBBE, 0xFBC0, 0xFBC1, 0xFBC3, 0xFBC4, 0xFBC6,  // 330
	0xFBC8, 0xFBC9, 0xFBCB, 0xFBCD, 0xFBCE, 0xFBD0, 0xFBD1, 0xFBD3, 0xFBD5, 0xFBD6,  // 340
	0xFBD8, 0xFBD9, 0xFBDB, 0xFBDC, 0xFBDE, 0xFBDF, 0xFBE1, 0xFBE2, 0xFBE4, 0xFBE5,  // 350
	0xFBE7, 0xFBE8, 0xFBEA, 0xFBEB, 0xFBED, 0xFBEE, 0xFBEF, 0xFBF1, 0xFBF2, 0xFBF4,  // 360
	0xFBF5, 0xFBF7, 0xFBF8, 0xFBF9, 0xFBFB, 0xFBFC, 0xFBFE, 0xFBFF, 0xFC00, 0xFC02,  // 370
	0xFC03, 0xFC04, 0xFC06, 0xFC07, 0xFC08, 0xFC0A, 0xFC0B, 0xFC0C, 0xFC0E, 0xFC0F,  // 380
	0xFC10, 0xFC12, 0xFC13, 0xFC14, 0xFC15, 0xFC17, 0xFC18, 0xFC19, 0xFC1A, 0xFC1C,  // 390
	0xFC1D, 0xFC1E, 0xFC20, 0xFC21, 0xFC22, 0xFC23, 0xFC24, 0xFC26, 0xFC27, 0xFC28,  // 400
	0xFC29, 0xFC2B, 0xFC2C, 0xFC2D, 0xFC2E, 0xFC2F, 0xFC30, 0xFC32, 0xFC33, 0xFC34,  // 410
	0xFC35, 0xFC36, 0xFC37, 0xFC39, 0xFC3A, 0xFC3B, 0xFC3C, 0xFC3D, 0xFC3E, 0xFC3F,  // 420
	0xFC40, 0xFC41, 0xFC43, 0xFC44, 0xFC45, 0xFC46, 0xFC47, 0xFC48, 0xFC49, 0xFC4A,  // 430
	0xFC4B, 0xFC4C, 0xFC4D, 0xFC4F, 0xFC50, 0xFC51, 0xFC52, 0xFC53, 0xFC54, 0xFC55,  // 440
	0xFC56, 0xFC57, 0xFC58, 0xFC59, 0xFC5A, 0xFC5B, 0xFC5C, 0xFC5D, 0xFC5E, 0xFC5F,  // 450
	0xFC60, 0xFC61, 0xFC62, 0xFC63, 0xFC64, 0xFC65, 0xFC66, 0xFC67, 0xFC68, 0xFC69,  // 460
	0xFC6A, 0xFC6B, 0xFC6C, 0xFC6D, 0xFC6E, 0xFC6F, 0xFC70, 0xFC71, 0xFC71, 0xFC72,  // 470
	0xFC73, 0xFC74, 0xFC75, 0xFC76, 0xFC77, 0xFC78, 0xFC79, 0xFC7A, 0xFC7B, 0xFC7C   // 480

};


//Y_Mot延时值
const WORD code Y_Mot_Time[ Y_Add_Step ] ={
	0x15B4, 0xD37B, 0xE547, 0xEC04, 0xEF90, 0xF1C4, 0xF345, 0xF45D, 0xF532, 0xF5DB,  // 10
	0xF664, 0xF6D6, 0xF735, 0xF788, 0xF7CF											 // 15
};

const BYTE code EEPROM_Register[ 24 ] = {	//注册信息16字节:
	0x00, 0x00, 0x00, 0x00 ,				//安全字节4byte
	'C', 'T', 'S',						    //头标志'CTS'					 
	0x01, 0x00,								//型号:word
	0x02, 0x00,								//版本:word
	15,										//年:byte
	9,										//月:byte
	0x00, 0x00,								//状态:word
	0x01, 0x00,	0x00, 0x00,					//输出次数:Dword
	'E',									//结束标志'E'
	0x00, 0x00, 0x00, 0x00					//安全字节4byte
};
//*************初始化处理，在程序开始时调用****************
void TD_Init(void)            
{
	CPUCS = ((CPUCS & ~bmCLKSPD) | bmCLKSPD1) ;	//将CPU时钟设置为48MHz
	SYNCDELAY;

//--------------------------
//	 同步FIFO模式 
//	 当IFCFG设置为FIFO模式时，即IFCFG1:0 = 11
//	 PA.2口被置为 SLOE功能引脚，PA.4被置为FIFOADR0功能引脚
//	 PA.5口被置为FIFOADR1功能引脚，PA.6被置为PKTEND 功能引脚
	IFCONFIG =0x43; 		//b7: IFCLKSRC：FIFO时钟内部/外部时钟源选择，0外部时钟源，1内部时钟源。
	//       =0100,0011		//b6: 3048MHZ： 如选择内部时钟，30MHz/48MHz频率选择，0 IFCLK时钟30M，1 IFCLK时钟48M。
							//b5: IFCLKOE： IFCLK时钟输出使能，0关闭，1打开。
							//b4: IFCLKPOL：IFCLK输出反转使能，0不反转，1反转。
							//b3: ASYNC：   Slave FIFO同步/异步工作方式选择，0同步，1异步。
							//b2: GSTATE：  选择是否将GSTATE[2:0]在PORTE[2:0]输出，0关闭，1使能。
							//b10:IFCFG1:0：FX2 I/O端口模式选择，也既是上面所说的FX2与外部逻辑传输方式的选择。00：I/O方式, 01：reserved, 10：GPIF方式, 11： Slave FIFO方式。
	SYNCDELAY;

//------------USB功能初始化------------- 
//  	Configuration = 0 ;		//当前的配置设置
//  	AlternateSetting = 1;	//可选设置
 
  	EP1OUTCFG = 0xA0;		//对各个端点进行设置,见TRM section 15.14
	SYNCDELAY;
  	EP1INCFG  = 0xA0;
  	SYNCDELAY;           	// see TRM section 15.14

//------------2Endpoint初始化------------
  	EP2CFG = 0xA0;			//EP2 OUT=1, bulk size 512, 4x buffered
  	SYNCDELAY; 
  	EP6CFG = 0xE0;          //EP6 in ,  	512 bytes, 4x, bulk
  	SYNCDELAY;              

 	EP4CFG = 0x02;          //clear valid bit
  	SYNCDELAY;                     
  	EP8CFG = 0x02;          //clear valid bit
  	SYNCDELAY; 



//EPxCFG:Endpoint Configuration
//bit7 		VALID=1		,to activate an Endpoint
//bit6		DIR=0 		,Endpoint Direction is OUT
//bit5,4 	TYPE1:0=10 	,Endpoint Type is BULK (default)
//bit3		SIZE=0		,512 bytes ,SIZE=1:1024bytes
//bit2		=0
//bit1,0	BUF1:0=00	,4x buffered, 10:2x buffered, 11:3x buffered 
//------------FIFO初始化--------------
  	FIFORESET = 0x80;  		// set NAKALL bit to NAK all transfers from host
  	SYNCDELAY;
  	FIFORESET = 0x02;  		// reset EP2 FIFO
  	SYNCDELAY;
  	FIFORESET = 0x04;       // reset, FIFO 4
  	SYNCDELAY;              // 
  	FIFORESET = 0x06;       // reset, FIFO 6
  	SYNCDELAY;              // 
  	FIFORESET = 0x08;       // reset, FIFO 8
  	SYNCDELAY;              // 
  	FIFORESET = 0x00;  		// clear NAKALL bit to resume normal operation
  	SYNCDELAY;


//FLAGA，FLAGB，FLAGC，FLAGD反映FIFO状态选择。
//每个脚有编址/固定两种模式：如设为编址模式，则它们都反映FIFOADR[1:0]脚当前所指端点的状态
//FLAGA反映"可编程极限"，FLAGB反映"满"标志，FLAGC反映"空"标志，FLAGD不存在；
//如设为固定模式，它们均可任意设置成反映任意端点的任意标志，而不受限于FIFOADR[1:0]脚当前所指端点的状态。
//Slave fifo模式中，用引脚FLAGA~FLAGD来定义用端点FIFO的状态，并可灵活编程来实现FLAGx设置，
//Programmable Flag (PF), Empty Flag (EF), Full Flag (FF).
//FLAGA=PF, FLAGB=FF, FLAGC=EF,FLAGD=EP2PF (Actual FIFO is selected by FIFOADR[0,1] pins)

	PINFLAGSAB = 0xc4;      // FLAGA - fixed EP2PF, FLAGB - fixed EP2FF
//FLAGB3 FLAGB2 FLAGB1 FLAGB0 FLAGA3 FLAGA2 FLAGA1 FLAGA0
//FLAGA表示端点6            FLAGB 表示端点2 满状态 
	SYNCDELAY;

	PINFLAGSCD = 0x18;      // FLAGC - fixed EP2EF, FLAGD - reserved
//FLAGD3 FLAGD2 FLAGD1 FLAGD0 FLAGC3 FLAGC2 FLAGC1 FLAGC0
//  FLAGC 表示端点2空状态
	SYNCDELAY;

//Restore FIFOs to Default State
  	EP2FIFOCFG = 0x00; 		// allow core to see zero to one transition of auto out bit
  	SYNCDELAY;
  	EP2FIFOCFG = 0x11; 		// auto out mode, disable PKTEND zero length send, word ops
  	SYNCDELAY;
//Endpoint 2/Slave FIFO Configuration
//Bit 7 0
//Bit 6 INFM1		,IN Full Minus One ,FIFO状态标志是否提前一个字节有效选择，IN端点满减１，１使能
//Bit 5 OEP1 		,OUT Empty Plus One,FIFO状态标志是否提前一个字节有效选择，OUT端点空加1，１使能
//Bit 4 AUTOOUT 	,Instantaneous Connection to Endpoint FIFO. １使能,FX2固件只需要完成初始化,数据传输无需固件,当FX2从主机收到一包数据时,外部逻辑即可看到FIFO端点缓冲区状态的改变，然后从中取数。
//Bit 3 AUTOIN 		,Auto Commit to SIE. Auto IN和Auto OUT有一点不同，Auto OUT时,包只能是512或1024. Auto IN时,包的大小任意,甚至可以是0字节，这可以通过EPxAUTOINLENTH/L设置。
//Bit 2 ZEROLENIN 	,Enable Zero-length IN Packets, 是否允许传输0字节,1使能，０非使能。
//Bit 1 0
//Bit 0 WORDWIDE 	,Select Byte/Word FIFOs on PORTB/D Pins
//在FX2复位后,如OUT端点缓冲区内有一包数据未处理,这包数据并不会自动传给外部逻辑。为保证OUT端点缓冲区内没有未处理数据,要清空一下OUT端点缓冲区,具体做法就是向SKIP位写1（OUT端点缓冲区有几个缓冲区就写几次）。

         
//------------设置GPIF中断------------ 
// setup INT4 as internal source for GPIF interrupts
// using INT4CLR (SFR), automatically enabled
// INTSETUP |= 0x03; //Enable INT4 Autovectoring
// GPIFIE = 0x03; // Enable GPIFDONE and GPIFWF interrupt(s)
// EIE |= 0x04; // Enable INT4 ISR, EIE.2(EIEX4)=1

//------------频率初始化--------- 
	CKCON = 0x39 ;					//xx11,1001->T0=CLKOUT/4; T1=CLKOUT/4; T2=CLKOUT/4; Ram000模式=83.3ns
//------------I/O端口初始化-------------
	PORTACFG 	= Val_P_A_CFG ;		//portA 功能设置
	OEA 		= Val_P_A_IO ;		//portA  I/O设置
	IOA 		= Val_P_A_Ini ;		//portA   初始化 

	PORTCCFG 	= Val_P_C_CFG ;		//portC 7~0设置为I/O功能
	OEC 		= Val_P_C_IO ;		//portC  I/O设置
	IOC 		= Val_P_C_Ini ;		//portC   初始化 

	PORTECFG	= Val_P_E_CFG ;
	OEE 		= Val_P_E_IO ;		//portE  I/O设置
	IOE 		= Val_P_E_Ini ;		//portE   初始化 


//------------外部中断0初始化-----------		
//	IT0 = TRUE ;			//中断0边沿触发
//	EX0 = TRUE ;			//外部中断0使能

//------------外部中断1初始化-----------


//------------时钟/计数器初始化--------- 
//本系统中:CLKOUT1/4=12Mhz->T=250/3ns=，计数时间很准确,响应时间有0-4T的延时(dTmax=0.333us)
//		   T0:CLKOUT/4用于Y电机的控制
	TMOD = 0x11 ;			//0001,0001:T1:模式1,16bits;   T0:模式1,16bits

//------------时钟0初始化---------------
//		T0:CLKOUT/4用于Y电机的控制
	TR0 = FALSE ;			//不允许T0计数
	ET0 = TRUE ;			//允许T0中断

//------------时钟1初始化---------------
//		T1:CLKOUT/4用于Laser测试
	TR1 = FALSE ;			//不允许T1计数
	ET1 = TRUE ;			//允许T1中断

//------------时钟2初始化,X_Mot---------
//		T2:CLKOUT/4用于X电机的控制
	T2CON = 0x00;			//0000,0001:T2:16bits自动,不允许T2计数 
	ET2 = TRUE;				//允许T2中断	

//------------串行端口初始化------------ 


//------------I2C端口初始化-------------
//	EI2C = 0;				//不允许I2C中断

	EZUSB_InitI2C();		// Initialize I2C Bus

	// Determine I2C boot eeprom device address; addr = 0x0 for 8 bit addr eeproms (24LC00)
	I2C_Addr = SERIAL_ADDR | ((I2CS & 0x10) >> 4); 	// addr=0x01 for 16 bit addr eeprom (LC65)
	// Indicate if it is a dual byte address part
	DB_Addr = (BOOL)(I2C_Addr & 0x01); 				//TPM: ID1 is 16 bit addr bit - set by rocker sw or jumper

	I2CTL |= bm400KHZ ; 	//eeprom 400khz
//	I2CTL &= ~bm400KHZ;		//eeprom 100khz


}

//********下面为端点0，USB请求处理
//获取描述符
/*
BOOL DR_GetDescriptor(void)
{
   return(TRUE);
}
*/

//**********设置配置**********
BOOL DR_SetConfiguration(void)   // Called when a Set Configuration command is received
{
   Configuration = SETUPDAT[2];
   return(TRUE);            // Handled by user code
}

//**********读取配置**********
BOOL DR_GetConfiguration(void)   // Called when a Get Configuration command is received
{
   EP0BUF[0] = Configuration;
   EP0BCH = 0;
   EP0BCL = 1;
   return(TRUE);            // Handled by user code
}

//**********设置接口配置**********
BOOL DR_SetInterface(void)       // Called when a Set Interface command is received
{
   AlternateSetting = SETUPDAT[2];
   return(TRUE);            // Handled by user code
}

//**********读取接口配置**********
BOOL DR_GetInterface(void)       // Called when a Set Interface command is received
{
   EP0BUF[0] = AlternateSetting;
   EP0BCH = 0;
   EP0BCL = 1;
   return(TRUE);            // Handled by user code
}

//获取设备状态
/*BOOL DR_GetStatus(void)
{
   return(TRUE);
}*/

//清除特性
/*BOOL DR_ClearFeature(void)
{
   return(TRUE);
}*/

//设置特性
/*BOOL DR_SetFeature(void)
{
   return(TRUE);
}*/


//**********用户自定义命令处理**********
BOOL DR_VendorCmnd(void)
{ 
	WORD addr, i, len, bc;

	//--------判断请求类型--------
	switch(SETUPDAT[1])
	{ 
 		//-----响应->接受响应处理,是否忙,返回RAM状态长度=1 BYTE
		case GP_GET_Busy:
			while(EP0CS & bmEPBUSY);			//等待端点0空闲

			*( EP0BUF+0 ) = 0 ;					//无用

			EP0BCH = 0;							//通知发送
			EP0BCL = GP_GET_Busy_Len; 			//Arm endpoint with 3 bytes to transfer
			EP0CS |= bmHSNAK; 					//Acknowledge handshake phase of device request
			break ;

		//-----响应->接受响应处理,返回状态长度4BYTE		:1B(状态),1B(按键),1B(USB模式),1B(版本),1B(机型)
		case GP_GET_state:
			while(EP0CS & bmEPBUSY);			//等待端点0空闲

			*( EP0BUF+0 ) = GP_State ;			//装载CTS状态

			*( EP0BUF+1 ) = IOA ;				//Port_A

			*( EP0BUF+2 ) = IOC ;				//Port_C

			*( EP0BUF+3 ) = IOD ;				//Port_D

			*( EP0BUF+4 ) = IOE ;				//Port_E

			if(EZUSB_HIGHSPEED())				//检测USB Speed 1:High Speed 
				*( EP0BUF+5 ) = 1 ;				//读取USB版本
			else
				*( EP0BUF+5 ) = 0 ;

			*( EP0BUF+6 ) = CTS_Ver ;			//版本

			*( EP0BUF+7 ) = GP_Model ;			//机型

			*( EP0BUF+8 ) = Serial_No & 0xff ;	//序列号码

			*( EP0BUF+9 ) = ( Serial_No >> 8) & 0xff ;
			
			*( EP0BUF+10 ) = 0 ;				//注册信息0
			
			*( EP0BUF+11 ) = 0 ;				//注册信息1

			EP0BCH = 0;							//通知发送
			EP0BCL = GP_GET_state_Len; 			//Arm endpoint with 3 bytes to transfer
			EP0CS |= bmHSNAK; 					//Acknowledge handshake phase of device request
			break;

 		//-----响应->接受响应处理,返回光栅读数 = 3BYTE
		case GP_GET_Encode:
			while(EP0CS & bmEPBUSY);			//等待端点0空闲

			FPGA_Write( COM_Encode_Read, 0, 0, 0 ) ;	//CPU读光栅

			*( EP0BUF+2 ) = FPGA_Port ;
			*( EP0BUF+1 ) = FPGA_Port ;
			*( EP0BUF+0 ) = FPGA_Port ;

			EP0BCH = 0;							//通知发送
			EP0BCL = GP_GET_Encode_Len; 		//Arm endpoint with 3 bytes to transfer
			EP0CS |= bmHSNAK; 					//Acknowledge handshake phase of device request
			break ;

		//-----响应->接受响应处理,返回Ram值 = 1BYTE
		case GP_GET_Ram:
			while(EP0CS & bmEPBUSY);			//等待端点0空闲

			FPGA_Write( COM_Ram_Read, 0, 0, 0 ) ;	//CPU读RAM

			*( EP0BUF+0 ) = FPGA_Port ;
			*( EP0BUF+1 ) = FPGA_Port ;

			EP0BCH = 0;							//通知发送
			EP0BCL = GP_GET_Ram_Len; 			//Arm endpoint with 3 bytes to transfer
			EP0CS |= bmHSNAK; 					//Acknowledge handshake phase of device request
			break ;

		//-----响应->接受响应处理,返回FPGA值 = 1BYTE
		case GP_GET_FPGA:
			while(EP0CS & bmEPBUSY);			//等待端点0空闲

			FPGA_Write( COM_Check_Read, 0, 0, 0 ) ;	//读FPGA的LED值

			*( EP0BUF+0 ) = FPGA_Port ;

			EP0BCH = 0;							//通知发送
			EP0BCL = GP_GET_FPGA_Len; 			//Arm endpoint with 3 bytes to transfer
			EP0CS |= bmHSNAK; 					//Acknowledge handshake phase of device request
			break ;

		//-----响应->接受响应处理,返回X电机状态值 = 1BYTE
		case GP_GET_XMot:
			while(EP0CS & bmEPBUSY);			//等待端点0空闲

			*( EP0BUF+0 ) = X_Mot_State ;		//X电机状态值

			EP0BCH = 0;							//通知发送
			EP0BCL = GP_GET_XMot_Len; 			//Arm endpoint with 3 bytes to transfer
			EP0CS |= bmHSNAK; 					//Acknowledge handshake phase of device request
			break ;

		//-----响应->接受响应处理,返回Y电机状态值 = 1BYTE
		case GP_GET_YMot:
			while(EP0CS & bmEPBUSY);			//等待端点0空闲

			*( EP0BUF+0 ) = Y_Mot_State ;		//Y电机状态值

			EP0BCH = 0;							//通知发送
			EP0BCL = GP_GET_YMot_Len; 			//Arm endpoint with 3 bytes to transfer
			EP0CS |= bmHSNAK; 					//Acknowledge handshake phase of device request
			break ;

		//-----响应->接受响应处理,等待XY电机停止，返回状态值 = 1BYTE
		case GP_GET_XYStop:
			while(EP0CS & bmEPBUSY);			//等待端点0空闲

		   	while( Y_Mot_State != Mot_State_Hold ) ;	//等待Y电机停止
			while( X_Mot_State != Mot_State_Hold ) ;	//等待X电机停止

			*( EP0BUF+0 ) = 0 ;					//状态值

			EP0BCH = 0;							//通知发送
			EP0BCL = GP_GET_XYStop_Len; 		//Arm endpoint with 3 bytes to transfer
			EP0CS |= bmHSNAK; 					//Acknowledge handshake phase of device request
			break ;

		//-----响应->接受响应处理,回读注册信息 = 16BYTE
		case GP_GET_Regist:
			while(EP0CS & bmEPBUSY);			//等待端点0空闲

			addr = &EEPROM_Register + 20 ;		//设定Register地址 + code与EEPROM地址差16+安全字节4
			bc   = GP_GET_Regist_Len ; 			//Register数据长度

			EEPROMRead( addr , (WORD)bc , (WORD)EP0BUF ) ;		//读注册信息

			EP0BCH = 0;							//通知发送
			EP0BCL = GP_GET_Regist_Len; 		//Arm endpoint with 3 bytes to transfer
			EP0CS |= bmHSNAK; 					//Acknowledge handshake phase of device request
			break ;

		//-----响应->接受响应处理,返回:iBYTE(激光号),1WORD(亮度)
		case GP_GET_Light:
			while(EP0CS & bmEPBUSY);			//等待端点0空闲


			EP0BCH = 0;							//通知发送
			EP0BCL = GP_GET_Light_Len; 			//Arm endpoint with 3 bytes to transfer
			EP0CS |= bmHSNAK; 					//Acknowledge handshake phase of device request
			break ;

/*
		//-----响应->接受响应处理,返回内、外温度值 = 2WORD(内、外部温度)
		case GP_GET_Temp:
			while(EP0CS & bmEPBUSY);			//等待端点0空闲

			len = Temp_Read( 0 ) ; 					//内部温度
			*( EP0BUF+0 ) = len & 0xff ;			//温度值低8位
			*( EP0BUF+1 ) = ( len >> 8 ) & 0xff ;	//温度值高8位

			len = Temp_Read( 1 ) ; 					//外部温度
			*( EP0BUF+2 ) = len & 0xff ;			//温度值低8位
			*( EP0BUF+3 ) = ( len >> 8 ) & 0xff ;	//温度值高8位

			EP0BCH = 0;							//通知发送
			EP0BCL = GP_GET_Temp_Len; 		    //Arm endpoint with 3 bytes to transfer
			EP0CS |= bmHSNAK; 					//Acknowledge handshake phase of device request
			break ;
*/

/*
		//-----响应->接受响应处理,返回测试 = 1BYTE
		case GP_GET_COM_Test:
			while(EP0CS & bmEPBUSY);			//等待端点0空闲

			*( EP0BUF+0 ) = 55 ;

			EP0BCH = 0;							//通知发送
			EP0BCL = GP_GET_COM_Test_Len; 		//Arm endpoint with 3 bytes to transfer
			EP0CS |= bmHSNAK; 					//Acknowledge handshake phase of device request
			break ;
*/


		//-----指令->指示数据传送完毕1BYTE--------------
		case GP_COM_Data_Ok:
			EP0BCH = 0 ;
			EP0BCL = 0 ;
			while( EP0CS & bmEPBUSY ) ;			//等待端点0空闲

			RAM_OK = TRUE ;						//数据准备好

 			if( *( EP0BUF+0 ) == GP_RAM_Null )	//是否为空数据
				RAM_Null = TRUE ;
			else
				RAM_Null = FALSE ;

			EP0BCH = 0 ;// Clear bytecount to allow new data in; also stops NAKing
			EP0BCL = 0 ;
			break;

		//-----指令->输出结束-----
		case GP_COM_End:

			Print_End = TRUE;					//指示停止

			EP0BCH = 0 ;// Clear bytecount to allow new data in; also stops NAKing
			EP0BCL = 0 ;
			break;

		//**********************************
		//-----指令->X电机移动--------------
		case GP_COM_X_Move:						//1BYTE(方向),1WORD(速度),1WORD(长度)
			EP0BCH = 0 ;
			EP0BCL = 0 ;
			while( EP0CS & bmEPBUSY ) ;			//等待端点0空闲

			i = *( EP0BUF+1 ) ;					//X电机速度
 			i |= *( EP0BUF+2 ) << 8 ; 

			len  = *( EP0BUF+3 ) ;				//设定X电机移动长度
 			len |= *( EP0BUF+4 ) << 8 ;

			X_MOT_Move( *( EP0BUF ), i, len );	//X电机移动

			EP0BCH = 0 ;// Clear bytecount to allow new data in; also stops NAKing
			EP0BCL = 0 ;
			break;

		//-----指令->X电机停止-----
		case GP_COM_X_Stop:
			X_MOT_Stop() ;

			EP0BCH = 0 ;// Clear bytecount to allow new data in; also stops NAKing
			EP0BCL = 0 ;
			break;

		//-----指令->X电机复位-----
		case GP_COM_X_Reset:
			GP_State = GP_OK_X_Mot ;
			if( X_MOT_Reset() == FALSE )		//X_MOT复位
				GP_State = GP_Error_X_Mot ;		//X_MOT故障	

			EP0BCH = 0 ;// Clear bytecount to allow new data in; also stops NAKing
			EP0BCL = 0 ;
			break;

		//-----指令->X电机释放	-----
		case GP_COM_X_Free:
//			X_Mot_EN = Motor_EN_Free ;			//X_电机释放
			X_Mot_State = Mot_State_Free ;		//电机状态

			EP0BCH = 0 ;// Clear bytecount to allow new data in; also stops NAKing
			EP0BCL = 0 ;
			break;

		//-----指令->X电机锁定	-----
		case GP_COM_X_Hold:
//			X_Mot_EN = Motor_EN_Hold ;			//X_电机锁定
			X_Mot_State = Mot_State_Hold ;		//电机状态

			EP0BCH = 0 ;// Clear bytecount to allow new data in; also stops NAKing
			EP0BCL = 0 ;
			break;

		//**********************************
		//-----指令->Y电机移动--------------
		case GP_COM_Y_Move:						//1BYTE(方向),1WORD(长度)
			EP0BCH = 0 ;
			EP0BCL = 0 ;
			while( EP0CS & bmEPBUSY ) ;			//等待端点0空闲

			len  = *( EP0BUF+1 ) ;				//设定Y电机移动长度
 			len |= *( EP0BUF+2 ) << 8 ;

			Y_MOT_Move( *( EP0BUF ), len ) ;	//Y电机移动

			EP0BCH = 0 ;// Clear bytecount to allow new data in; also stops NAKing
			EP0BCL = 0 ;
			break;

		//-----指令->Y电机停止-----
		case GP_COM_Y_Stop:
			Y_MOT_Stop( ) ;

			EP0BCH = 0 ;// Clear bytecount to allow new data in; also stops NAKing
			EP0BCL = 0 ;
			break;

		//-----指令->Y电机复位-----
		case GP_COM_Y_Reset:
			
			GP_State = GP_OK_Y_Mot ;
			if( Y_MOT_Reset() == FALSE )		//Y_MOT自检
				GP_State = GP_Error_Y_Mot ;		//Y_MOT故障	

			EP0BCH = 0 ;// Clear bytecount to allow new data in; also stops NAKing
			EP0BCL = 0 ;
			break;

		//-----指令->Y电机释放	-----
		case GP_COM_Y_Free:
			Y_Mot_EN = Motor_EN_Free ;			//Y_电机释放
			Y_Mot_State = Mot_State_Free ;		//Y_电机状态

			EP0BCH = 0 ;// Clear bytecount to allow new data in; also stops NAKing
			EP0BCL = 0 ;
			break;

		//-----指令->Y电机锁定	-----
		case GP_COM_Y_Hold:
			Y_Mot_EN = Motor_EN_Hold ;			//Y_电机锁定
			Y_Mot_State = Mot_State_Hold ;		//Y_电机状态

			EP0BCH = 0 ;// Clear bytecount to allow new data in; also stops NAKing
			EP0BCL = 0 ;
			break;

	   //********FPGA**************************
		//-----指令->FPGA写--------
		case GP_COM_FPGA_Write:			//1BYTE(FPGA指令),1BYTE(参数H),1BYTE(参数M),1BYTE(参数L)
			EP0BCH = 0 ;
			EP0BCL = 0 ;
			while( EP0CS & bmEPBUSY ) ;			//等待端点0空闲

			FPGA_Write( *( EP0BUF+0 ) , *( EP0BUF+1 ), *( EP0BUF+2 ), *( EP0BUF+3 ) ) ;

			EP0BCH = 0 ;// Clear bytecount to allow new data in; also stops NAKing
			EP0BCL = 0 ;
			break;

		//**********************************
		//-----指令->接受设置Laser点--------
		case GP_COM_Laser_On:

			Laser_EN = Laser_On ;		//打开Laser		

			EP0BCH = 0 ;
			EP0BCL = 0 ;
			break;

		//-----指令->关闭Laser-----
		case GP_COM_Laser_Off:

			Laser_EN = Laser_Off ;		//关闭Laser

			EP0BCH = 0 ;// Clear bytecount to allow new data in; also stops NAKing
			EP0BCL = 0 ;
			break;

		//-----指令->Laser脉冲测试-----
		case GP_COM_Laser_Plus:
			EP0BCH = 0 ;
			EP0BCL = 0 ;
			while( EP0CS & bmEPBUSY ) ;		//等待端点0空闲

			len  = *( EP0BUF+0 ) ;			//取Laser测试时常数
 			len |= *( EP0BUF+1 ) << 8 ;

			Laser_Plus_Set( len ) ;			//设定Laser脉冲

			EP0BCH = 0 ;// Clear bytecount to allow new data in; also stops NAKing
			EP0BCL = 0 ;
			break;

		//-----指令->Laser驱动模式设置-----
		case GP_COM_Laser_Mode:
			EP0BCH = 0 ;
			EP0BCL = 0 ;
			while( EP0CS & bmEPBUSY ) ;			//等待端点0空闲

			if( *( EP0BUF+0 ) == 0 )			//是否输出模式
 		   		PortE_OUT &= ~Laser_Mode ;		//Laser输出模式
			else
				PortE_OUT |= Laser_Mode ;		//Laser校正参数设置模式

			EP0BCH = 0 ;// Clear bytecount to allow new data in; also stops NAKing
			EP0BCL = 0 ;
			break;

		//-----指令->写注册信息	= 16BYTE
		case GP_COM_Regist:
			EP0BCH = 0 ;
			EP0BCL = 0 ;
			while(EP0CS & bmEPBUSY);		//等待端点0空闲

			addr = &EEPROM_Register + 20 ;				//设定Register地址 + code与EEPROM地址差16+安全字节4
			bc   = GP_GET_Regist_Len ; 					//Register数据长度

			EEPROMWrite( addr, bc, (WORD)EP0BUF );		//写注册信息

			EP0BCH = 0 ;// Clear bytecount to allow new data in; also stops NAKing
			EP0BCL = 0 ;
			break ;

/*		//-----指令->激光标尺设置-----
		case GP_COM_Indic:
			EP0BCH = 0 ;
			EP0BCL = 0 ;
			while( EP0CS & bmEPBUSY ) ;		//等待端点0空闲

			Indic_Flash = FALSE ;			//关闭闪动

			if( *( EP0BUF+0 ) == 2 )		//是否激光标尺闪动?
				Indic_Flash = TRUE ;		//闪动
			else if( *( EP0BUF+0 ) == 1 )	//是否激光标尺打开?
 		   		PortE_OUT &= ~Indic_Red ;	//RED激光指示亮=0
			else
				PortE_OUT |=  Indic_Red ;	//RED激光指示灭=1

			EP0BCH = 0 ;// Clear bytecount to allow new data in; also stops NAKing
			EP0BCL = 0 ;
			break;
*/
		//-----指令->亮度AD设置-----
		case GP_COM_Light:
			EP0BCH = 0 ;
			EP0BCL = 0 ;
			while( EP0CS & bmEPBUSY ) ;		//等待端点0空闲


			EP0BCH = 0 ;// Clear bytecount to allow new data in; also stops NAKing
			EP0BCL = 0 ;
			break;

		//-----指令->设置ADJ_RAM地址= 2BYTE
		case GP_COM_ADJ_Addr:
			EP0BCH = 0 ;
			EP0BCL = 0 ;
			while(EP0CS & bmEPBUSY);				//等待端点0空闲

			ADJ_RAM_Addr  = *( EP0BUF+0 ) ;			//ADJ_RAM地址
 			ADJ_RAM_Addr |= *( EP0BUF+1 ) << 8 ;

			EP0BCH = 0 ;// Clear bytecount to allow new data in; also stops NAKing
			EP0BCL = 0 ;
			break ;

		//-----指令->ADJ写入	= 16BYTE
		case GP_COM_ADJ_Write:
			EP0BCH = 0 ;
			EP0BCL = 0 ;
			while(EP0CS & bmEPBUSY);				//等待端点0空闲

		   	for( i = 0 ; i < 16 ; i++ )
			{
				ADJ_Write( ADJ_RAM_Addr , *( EP0BUF + i ) ) ;		//写ADJ_RAM
				ADJ_RAM_Addr++ ;
			}

			EP0BCH = 0 ;// Clear bytecount to allow new data in; also stops NAKing
			EP0BCL = 0 ;
			break ;
	   	
		//-----响应->ADJ读取 = 16BYTE
		case GP_GET_ADJ_Read:
			while(EP0CS & bmEPBUSY);			//等待端点0空闲

		   	for( i = 0 ; i < 16 ; i++ )
			{
				*( EP0BUF+i ) = ADJ_Read( ADJ_RAM_Addr ) ;
				ADJ_RAM_Addr++ ;
			}

			EP0BCH = 0;							//通知发送
			EP0BCL = GP_GET_ADJ_Read_Len; 		//Arm endpoint with 3 bytes to transfer
			EP0CS |= bmHSNAK; 					//Acknowledge handshake phase of device request
			break ;



		//**********************************
		//-----EZ-USB Control Panel EEPROM,读写--------
		case VR_DB_FX:
			DB_Addr = 0x01;		//TPM: need to assert double byte
			I2C_Addr |= 0x01;	//TPM: need to assert double byte
        // NOTE: This case falls through !
		case VR_RAM:
		case VR_EEPROM:
			addr = SETUPDAT[2];		// Get address and length
			addr |= SETUPDAT[3] << 8;
			len = SETUPDAT[6];
			len |= SETUPDAT[7] << 8;
			// Is this an upload command ?
			if(SETUPDAT[0] == VR_UPLOAD)
			{
				while(len)					// Move requested data through EP0IN 
				{							// one packet at a time.

               		while(EP0CS & bmEPBUSY);

					if(len < EP0BUFF_SIZE)
						bc = len;
					else
						bc = EP0BUFF_SIZE;

					// Is this a RAM upload ?
					if(SETUPDAT[1] == VR_RAM)
					{
						for(i=0; i<bc; i++)
							*(EP0BUF+i) = *((BYTE xdata *)addr+i);
					}
					else
					{
						for(i=0; i<bc; i++)
							*(EP0BUF+i) = 0xcd;
						EEPROMRead(addr,(WORD)bc,(WORD)EP0BUF);
					}

					EP0BCH = 0;
					EP0BCL = (BYTE)bc; // Arm endpoint with # bytes to transfer

					addr += bc;
					len -= bc;

				}
			}
			// Is this a download command ?
			else if(SETUPDAT[0] == VR_DOWNLOAD)
			{
				while(len)					// Move new data through EP0OUT 
				{							// one packet at a time.
					// Arm endpoint - do it here to clear (after sud avail)
					EP0BCH = 0;
					EP0BCL = 0; // Clear bytecount to allow new data in; also stops NAKing

					while(EP0CS & bmEPBUSY);

					bc = EP0BCL; // Get the new bytecount

					// Is this a RAM download ?
					if(SETUPDAT[1] == VR_RAM)
					{
						for(i=0; i<bc; i++)
							 *((BYTE xdata *)addr+i) = *(EP0BUF+i);
					}
					else
						EEPROMWrite(addr,bc,(WORD)EP0BUF);

					addr += bc;
					len -= bc;
				}
			}
			break;

		//-----TEST-----
		default:
			return (TRUE);
	}

	return(FALSE); // no error; command handled OK   

}

/*
//********System_自检*******
void System_Check( void )
{
//1:FPGA检测
	if( FPGA_Check( ) == FALSE )
	{
	 	GP_State = GP_Error_FPGA ;		//FPGA故障	
		return ;
	}
										//为避免USB连接错误
	if( GotSUD )						//判断端点0是否有USB请求            
	{
		SetupCommand();					//若有请求，进入请求处理         
		GotSUD = FALSE;            
	}

//2:RAM检测
	if( Ram_Check() == FALSE )			//RAM_自检
	{
		GP_State = GP_Error_RAM ;		//RAM故障	
		return ;
	}

	if( GotSUD )						//判断端点0是否有USB请求            
	{
		SetupCommand();					//若有请求，进入请求处理         
		GotSUD = FALSE;            
	}

//3:Y_Mot检测
	if( Y_MOT_Reset() == FALSE )		//Y_MOT自检
	{
		GP_State = GP_Error_Y_Mot ;		//Y_MOT故障	
		return ;
	}

	if( GotSUD )						//判断端点0是否有USB请求            
	{
		SetupCommand();					//若有请求，进入请求处理         
		GotSUD = FALSE;            
	}

//4:X_Mot检测
	if( X_MOT_Reset() == FALSE )		//X_MOT自检
	{
		GP_State = GP_Error_X_Mot ;		//X_MOT故障	
		return ;
	}

	if( GotSUD )						//判断端点0是否有USB请求            
	{
		SetupCommand();					//若有请求，进入请求处理         
		GotSUD = FALSE;            
	}

/*
//5:Encoider检测
	if( Encoder_Check() == FALSE )		//Encoder自检
	{
		GP_State = GP_Error_Encoder ;	//Encoder故障	
		return ;
	}

	if( GotSUD )						//判断端点0是否有USB请求            
	{
		SetupCommand();					//若有请求，进入请求处理         
		GotSUD = FALSE;            
	}


//6:Laser检测
//	Laser_Check() ;


//7:SYStem_正常
	GP_State 	= GP_State_OK ;
} 
*/

//**********外部中断0
void Exter_Int_0(void) interrupt 0
{

}

//**********外部中断1
void Exter_Int_1(void) interrupt 0
{

}


//--------Laser-----------------------------------------
//**********Time1中断处理,用于Laser测试
void Timer1_Int_0(void) interrupt 0		//***T1=CLKOUT/4;  T=250/4ns
{
	Laser_EN = Laser_On ;				//打开Laser

	TR1 = FALSE ;						//停止T1计数

	TL1 = LSB( Laser_Plus_Time ) ;		//设置时常数低8位
    TH1 = MSB( Laser_Plus_Time ) ;		//设置时常数高8位

	TR1 = TRUE ;						//启动T1计数

	Laser_EN = Laser_Off ;				//关闭Laser
}

//*******Laser脉冲设置********
void Laser_Plus_Set( WORD lTimer )		//lTimer：脉冲关闭时常数， lTimer= 0 ：结束脉冲测试
{
	TR1 = FALSE ;						//停止T1计数
	Laser_EN = Laser_Off ;				//关闭Laser

	Laser_Plus_Time  = lTimer ;			//保存Laser测试时常数

	if( Laser_Plus_Time != 0 )
	{
		TL1 = LSB( Laser_Plus_Time ) ;	//设置时常数低8位
    	TH1 = MSB( Laser_Plus_Time ) ;	//设置时常数高8位

		TR1 = TRUE ;					//启动T1计数	
	}
}


/*
//*******Laser_自检*******
void Laser_Check( void )
{
	BYTE	AAAA , BBBB ;

	if( CTS_Model == CTS_330  )					//机型选择
		BBBB = 17 ;
	else if( CTS_Model == CTS_500 )
		BBBB = 33 ;
	else
		BBBB = 65 ;

}
*/




//----------X_电机------------------------------------------------------
//**********Time2中断处理, X电机
void Timer2_Int_0(void) interrupt 0	using 3				//***T2=CLKOUT/4;  T=0.08333us //实测T_Min=3.24us
{
	X_Mot_CP = Motor_CP_Plus ;							//电机脉冲

	TF2 = FALSE ;										//Timer2中断标志清除

	switch( X_Mot_State )
	{
		//加速段
		case  Mot_State_Up :							//加速段
			RCAP2L = LSB( X_Mot_Time[ X_Timer_ip ] ) ;	//重置值
			RCAP2H = MSB( X_Mot_Time[ X_Timer_ip ] ) ;	//高8位

			X_Timer_ip++ ;								//指针+1

			X_Timer_Add-- ;								//加速步数-1

			if( X_Timer_Add == 0 )						//是否加速结束?
				X_Mot_State = Mot_State_Run ;			//进入匀速段

			break ;

		//匀速段
		case  Mot_State_Run :							//匀速段
			RCAP2L = X_Speed_Time_L ;					//重置值
			RCAP2H = X_Speed_Time_H ;					//高8位

			X_Mot_Run_Len-- ;							//步长-1

			if ( X_Mot_Run_Len == 0 ) 					//是否匀速结束?
			{	
				X_Mot_State = Mot_State_Down ;			//进入减速段
			    
				X_Timer_ip-- ;							//指针-1
			}

			_nop_ ();		//延时
			_nop_ ();		//延时
//			_nop_ ();		//延时
//			_nop_ ();		//延时
//			_nop_ ();		//延时

			break ;

		//减速段
		case  Mot_State_Down :							//减速段
			RCAP2L = LSB( X_Mot_Time[ X_Timer_ip ] ) ;	//重置值
			RCAP2H = MSB( X_Mot_Time[ X_Timer_ip ] ) ;	//高8位

			if( X_Timer_ip == 0 ) 						//是否减速到底?
			{
				TF2 = FALSE ;							//Timer2中断标志清除
				TR2 = FALSE;							//不允许T2计数,停止步进
				X_Mot_State = Mot_State_Hold ;			//进入锁定

			}
			else
				X_Timer_ip-- ;							//指针-1

		 	break ;
	}

	X_Mot_CP = Motor_CP_Normal ;									//电机脉冲升高 22~38T
}

//**********X电机移动长度,当Stop_Bar=X_Bar_Leng时启动 
//			X_MOT_Dir:X_电机方向, X_Speed_Time:X_电机速度时常数, X_MOT_Len:X_电机运行长度step
//X_Speed_Time = 65536-72000/速度
BOOL X_MOT_Move( BOOL X_Dir, WORD X_Speed_Time , WORD X_Len )
{
//1：是否停止
	if( ( X_Mot_State != Mot_State_Free) && ( X_Mot_State != Mot_State_Hold ) )		//是否正在运行？
		return( FALSE ) ; 						//失败,	正在运行

//2：是否锁定
//	X_Mot_EN = Motor_EN_Hold ;					//X_电机加电锁定
//	X_Mot_State = Mot_State_Hold ;				//X_电机状态设定

//	EZUSB_Delay( 2 ) ;							//延时2ms

//3：分拆、保存时常数供中断程序用
	X_Speed_Time_L = LSB( X_Speed_Time ) ;		//X_电机速度时常数
	X_Speed_Time_H = MSB( X_Speed_Time ) ;

//4：计算加速步长
  	for ( X_Timer_Add = 0 ; X_Timer_Add < X_Step_Add ; X_Timer_Add++ )				//计算加速步长
	{
		if( X_Mot_Time[ X_Timer_Add ] > X_Speed_Time )		//是否已达到速度？	
			break ;

		if( 2 * X_Timer_Add >= X_Len )			//是否已到达或超过长度?
		    break ;
	}

	X_Timer_Add = X_Timer_Add - 1 ;				//步长-1

//5：计算匀速步长
	X_Mot_Run_Len = X_Len - 2 *  X_Timer_Add ;	//计算匀速步长

//6：是否超长	
	if( X_Mot_Run_Len > X_Max_Len )
		return( FALSE ) ; 						//超长，失败。

//7：设定X_电机方向
	X_Mot_Dir = X_Dir ; 						//设定X_电机方向

	X_Timer_ip = 0 ;							//时常数指针

	TL2 = RCAP2L = LSB( X_Mot_Time[ 0 ] ) ;		//设置时常数低8位
    TH2 = RCAP2H = MSB( X_Mot_Time[ 0 ] ) ;		//设置时常数高8位

	X_Mot_State = Mot_State_Up ;				//进入加速段

   	TR2 = TRUE ;								//启动T2计数

	return( TRUE ) ; 
}

//**********X电机停止
void X_MOT_Stop( void )
{
	if( ( X_Mot_State == Mot_State_Free) || ( X_Mot_State == Mot_State_Hold ) )		//是否没有运行？
		return ; 								//返回,	没有运行

	X_Mot_State = Mot_State_Down ;				//进入减速段
}

//********X_电机复位
BOOL X_MOT_Reset( void )
{
//1:是否正在运行？
	if( ( X_Mot_State != Mot_State_Free) && ( X_Mot_State != Mot_State_Hold ) )		//是否正在运行？
		return( FALSE ) ; 									//放弃,	正在运行

//2:是否在检测位置上?
	if( X_Mot_Pos == X_Pos_On )								//是否在检测位置上?
	{
 		X_MOT_Move( X_Dir_Lift , X_Low_Speed, X_Step_50mm );//在检测位置上,向左移动50mm

		while( X_Mot_State != Mot_State_Hold ) ;			//等待电机停止

		if( X_Mot_Pos == X_Pos_On )							//是否任在检测位置上?
		{
			X_Mot_State = Mot_State_Free ;					//电机状态

			return( FALSE ) ;								//任在检测位置上,复位失败
		}

		EZUSB_Delay( 100 ) ;								//延时100ms
	}

//3:寻找位置
	X_MOT_Move( X_Dir_Right , X_Low_Speed , X_Step_2000mm );//向右移动1000mm
	
	while( X_Mot_Pos != X_Pos_On )							//是否不在检测位置上?
	{
		if( X_Mot_State == Mot_State_Hold )					//是否已经移动1000mm?
		{
			X_Mot_State = Mot_State_Free ;					//电机状态

			return( FALSE ) ;								//任未到检测位置上,复位失败
	   	}
	}
	
	X_Mot_State = Mot_State_Down ;							//进入减速段

	while( X_Mot_State != Mot_State_Hold );					//等待电机停止

	EZUSB_Delay( 100 ) ;									//延时100ms

//4:向左移动
	X_MOT_Move( X_Dir_Lift , X_Low_Speed , X_Step_50mm ) ;	//向左移动50mm
	
	while( X_Mot_State != Mot_State_Hold ) ;				//等待电机停止

	EZUSB_Delay( 100 ) ;									//延时100ms

//5:再次寻找位置
	X_MOT_Move( X_Dir_Right , X_Low_Speed , X_Step_2000mm );//向右移动1000mm
	
	while( X_Mot_Pos != X_Pos_On )							//是否不在检测位置上?
	{
		if( X_Mot_State == Mot_State_Hold )					//是否已经移动1000mm?
		{
			X_Mot_State = Mot_State_Free ;					//电机状态

			return( FALSE ) ;								//任未到检测位置上,复位失败
	   	}
	}
	
	X_Mot_State = Mot_State_Down ;							//进入减速段

	while( X_Mot_State != Mot_State_Hold );					//等待电机停止

	EZUSB_Delay( 100 ) ;									//延时100ms

//6:向左移动到零位置
	X_MOT_Move( X_Dir_Lift , X_Low_Speed , X_Step_5mm ) ;	//在检测位置上,向左移动5mm

    while( X_Mot_State != Mot_State_Hold );					//等待电机停止

	return( TRUE ) ;										//复位完成
}

//----------Y_电机------------------------------------------------------
//**********Time0中断处理, Y电机
void Timer0_Int_0(void) interrupt 0				//***T0=CLKOUT/4;  T=0.08333us// 实测T_min=4.6us
{
	Y_Mot_CP = Motor_CP_Plus ;					//电机脉冲
		
	TR0 = FALSE ;								//停止计数

	TL0 = LSB( Y_Mot_Time[ Y_Timer_ip ] ) ;		//设置时常数低8位
    TH0 = MSB( Y_Mot_Time[ Y_Timer_ip ] ) ;		//设置时常数高8位
	TR0 = TRUE ;								//启动T0计数

	switch( Y_Mot_State )
	{
		case  Mot_State_Up :					//加速段
			Y_Timer_ip++ ;						//指针+1

	   		if( Y_Timer_ip == Y_Add_Step - 1 ) 	//是否加速到顶?
				Y_Mot_State = Mot_State_Run ;	//进入匀速段

			break ;

		case  Mot_State_Run :					//匀速段
			Y_Mot_Run_Len-- ;					//步长-1

			if ( Y_Mot_Run_Len == 0 ) 			//是否匀速结束?
				Y_Mot_State = Mot_State_Down ;	//进入减速段

			break ;

		case  Mot_State_Down :					//减速段
			if( Y_Timer_ip == 0 )
				Y_Mot_State = Mot_State_End ; 	//进入结束
			else
		    	Y_Timer_ip-- ;					//指针-1 

		 	break ;

	   case  Mot_State_End :					//结束
		   	Y_Mot_State = Mot_State_Hold ;		//进入锁定

			TR0 = FALSE ;						//停止计数

			break ;
	 }

	Y_Mot_CP = Motor_CP_Normal ;				//电机脉冲常态
	
}

//**********Y电机移动长度,当Stop_Bar=X_Bar_Leng时启动 
//			Y_Dir:Y_电机方向, Y_Len:Y_电机运行步长，Y_Len>60steps
//			返回TRUE启动；返回FALSE失败，正在运行
BOOL Y_MOT_Move( BOOL Y_Dir, WORD Y_Len )
{
	if( ( Y_Mot_State != Mot_State_Free) && ( Y_Mot_State != Mot_State_Hold ) )		//是否正在运行？
		return( FALSE ) ; 						//失败,	正在运行

	if( Y_Len < 2 * Y_Add_Step - 1 )
		return( FALSE ) ; 						//失败,	小于2个Y_Add_Step
	 
	Y_Mot_EN = Motor_EN_Hold ;					//Y_电机加电锁定
	Y_Mot_State = Mot_State_Hold ;				//Y_电机状态设定
		
	EZUSB_Delay( 2 ) ;							//延时2ms

	Y_Mot_Dir = Y_Dir ; 						//设定Y_电机方向

	Y_Mot_Run_Len = Y_Len - 2 * Y_Add_Step ;	//计算匀速步长	

	Y_Timer_ip = 0 ;							//时常数指针
	TL0 = LSB( Y_Mot_Time[ 0 ] ) ;				//设置时常数低8位
    TH0 = MSB( Y_Mot_Time[ 0 ] ) ;				//设置时常数高8位

	TR0 = TRUE ;								//启动T0计数

	Y_Mot_State = Mot_State_Up ;				//进入加速段

	return( TRUE ) ;
}

//**********Y_电机停止
void Y_MOT_Stop( void )
{
	if( ( Y_Mot_State == Mot_State_Free) || ( Y_Mot_State == Mot_State_Hold ) )		//是否没有运行？
		return ; 								//返回,	没有运行

	Y_Mot_State = Mot_State_Down ;				//进入减速段
}


//**********Y_电机复位
BOOL Y_MOT_Reset( void )
{
	BYTE iAAAA ;   	

	Y_MOT_Move( Y_Dir_Forward , Y_1mm ) ;					//正向移动1mm

	while( Y_Mot_State != Mot_State_Hold ) ;				//等待电机停止

	EZUSB_Delay( 20 ) ;										//延时20ms

	for( iAAAA = 0; iAAAA < 2; iAAAA++ )	   				//Y_MOT_Move最长65535=6.5mm
	{
		Y_MOT_Move( Y_Dir_Back , 10 * Y_1mm ) ;				//反向移动5mm

		while( Y_Mot_State != Mot_State_Hold )				//等待电机停止
		{
			if( Y_Mot_Pos == Y_Pos_On )						//是否到位置?
			{
		 		Y_Mot_State = Mot_State_Down ;				//进入减速段

				while( Y_Mot_State != Mot_State_Hold ) ;	//等待电机停止

				EZUSB_Delay( 20 ) ;							//延时20ms

				Y_MOT_Move( Y_Dir_Forward , Y_1mm ) ;		//正向移动1mm

				while( Y_Mot_State != Mot_State_Hold ) ;	//等待电机停止

				return( TRUE ) ; 							//复位正常,返回
			}
		}
   	}

	Y_Mot_EN = Motor_EN_Free ;								//Y_电机释放
	Y_Mot_State = Mot_State_Free ;							//Y_电机状态设定
		
	return( FALSE ) ; 										//复位失败,返回
}



//--------FPGA------------------------------
//********CPU_FPGA初始化
void CPU_FPGA_Int( void )
{
	Laser_EN = Laser_Off ;								//关闭Laser

	FPGA_Write( COM_Laser_Disable, 0		 , 0, 0 ) ;	//禁止Laser打印输出
	FPGA_Write( COM_Mode_Sel	 , Mode_1	 , 0, 0 ) ;	//设置模式=1：RAM_A←GPIF，RAM_B→Laser
	FPGA_Write( COM_Dot_Byte	 , Laser_Byte, 0, 0 ) ;	//每个光栅点的Laser字节数
	FPGA_Write( COM_LED_Check	 , 0xff		 , 0, 0 ) ;	//FPGA_LED值
}

//********FPGA_Write:串行写入，FPGA_Com:指令,FPGA_data:指令数据，FPGA_Com.0先出
void FPGA_Write( BYTE FPGA_Com , BYTE FPGA_data_1 , BYTE FPGA_data_2 ,BYTE FPGA_data_3 )
{
	FPGA_Port = FPGA_data_3 ;		//串行输出数据3
	FPGA_Port = FPGA_data_2 ;		//串行输出数据2
	FPGA_Port = FPGA_data_1 ;		//串行输出数据1
	FPGA_Port = FPGA_Com ;			//串行输出指令

	FPGA_Set = TRUE ;				//CPU串行数据设置					
	FPGA_Set = FALSE ;
}

//********FPGA_自检*******
/*
BOOL FPGA_Check(void) 
{
	FPGA_Write( COM_LED_Check, 0x5a, 0, 0, 1 ) ;	//设置FPGA的LED值
	FPGA_Write( COM_Check_Read, 0, 0, 0, 0 ) ;		//读取FPGA的LED值

	if( FPGA_Port == 0x5a )							//是否LED值正确？
		return( TRUE ) ;							//FPGA_正常
	else
		return( FALSE ) ;							//FPGA_错误
}
*/

//--------RAM------------------------------------
//********RAM_自检*******
/*
BOOL Ram_Check(void) 
{
	BYTE	AAAA ;

//1:RAM_A写256个数据
	FPGA_Write( COM_Mode_Sel, Mode_3, 0, 0, 1 ) ;	//Mode_3: RAM_A←rRAM_Val,	RAM_B→CPU_Read		
	FPGA_Write( COM_Ram_Addr_Clr, 0, 0, 0, 0 ) ;	//Ram地址清零

	for( AAAA = 0 ; AAAA < 250 ; AAAA++ )
		FPGA_Write( COM_Ram_Write, AAAA, 0, 0, 1 ) ;

//2:RAM_B写256个数据	
	FPGA_Write( COM_Mode_Sel, Mode_2, 0, 0, 1 ) ;	//Mode_2: RAM_A→CPU_Read,	RAM_B←rRAM_Val,	
	FPGA_Write( COM_Ram_Addr_Clr, 0, 0, 0, 0 ) ;	//Ram地址清零	

	for( AAAA = 0 ; AAAA < 250 ; AAAA++ )
		FPGA_Write( COM_Ram_Write, AAAA, 0, 0, 1 ) ;

//3:RAM_A读256个数据、比较
	FPGA_Write( COM_Mode_Sel, Mode_2, 0, 0, 1 ) ;	//Mode_2: RAM_A←rRAM_Val,	RAM_B→CPU_Read
	FPGA_Write( COM_Ram_Addr_Clr, 0, 0, 0, 0 ) ;	//Ram地址清零

	for( AAAA = 0 ; AAAA < 250 ; AAAA++ )
	{
		FPGA_Write( COM_Ram_Read, 0, 0, 0, 0 ) ;	//CPU读RAM

		if( FPGA_Port != AAAA )
			return( FALSE ) ;						//RAM_错误
	}

//4:RAM_B读256个数据、比较
	FPGA_Write( COM_Mode_Sel, Mode_3, 0, 0, 1 ) ;	//Mode_3: RAM_A←rRAM_Val,	RAM_B→CPU_Read
	FPGA_Write( COM_Ram_Addr_Clr, 0, 0, 0, 0 ) ;	//Ram地址清零

	for( AAAA = 0 ; AAAA < 250 ; AAAA++ )
	{
		FPGA_Write( COM_Ram_Read, 0, 0, 0, 0 ) ;	//CPU读RAM

		if( FPGA_Port != AAAA )
			return( FALSE ) ;						//RAM_错误
	}

//5:RAM_正常
	return( TRUE ) ;
}
*/

//--------Encoder-----------------------------------
//********Encoder_自检*******
/*
BOOL Encoder_Check(void) 
{
//1:光栅模式、清零	
	FPGA_Write( COM_Encode_Div , Encode_Div_2540 , 0, 0, 1 ) ;	//光栅2540dpi=10u
	FPGA_Write( COM_Encode_Clr, 0, 0, 0, 0 ) ;					//光栅清零

//2:慢速左移动50mm、读光栅
	X_MOT_Move( X_Dir_Lift , X_Low_Speed , X_50mm ) ;			//****在检测位置上,向左移动90

	while( X_Mot_State != Mot_State_Hold ) ;					//等待X电机停止	
	EZUSB_Delay( 200 ) ;										//延时200ms

	if( ( Encoder_Read() - Encode_50mm + 200 ) > Encode_Check ) 	//检测慢速90mm Encoder 值
  		return( FALSE ) ;

//3:慢速右移动50mm回位、读光栅
	X_MOT_Move( X_Dir_Right , X_Low_Speed , X_50mm ) ;			//****向右移动90，回位

	while( X_Mot_State != Mot_State_Hold ) ;					//等待X电机停止	
	EZUSB_Delay( 200 ) ;										//延时200ms

	if( ( Encoder_Read() - Encode_Reset_Val + 200 ) > Encode_Check )		//检测慢速回位 Encoder 值
   		return( FALSE ) ;

//4:高速左移动500mm、读光栅
	X_MOT_Move( X_Dir_Lift , X_High_Speed , X_500mm ) ;			//****高速向左移动500mm

	while( X_Mot_State != Mot_State_Hold ) ;					//等待X电机停止	
	EZUSB_Delay( 200 ) ;										//延时200ms

	if( ( Encoder_Read() - Encode_500mm + 200 ) > Encode_Check ) 	//检测慢速90mm Encoder 值
   		return( FALSE ) ;

//5:高速右移动500mm回位、读光栅
	X_MOT_Move( X_Dir_Right , X_High_Speed , X_500mm ) ;		//****高速向左移动500mm

	while( X_Mot_State != Mot_State_Hold ) ;					//等待X电机停止	
	EZUSB_Delay( 200 ) ;										//延时200ms

	if( ( Encoder_Read() - Encode_Reset_Val + 200 ) > Encode_Check ) 	//检测慢速90mm Encoder 值
   		return( FALSE ) ;

//6:Encoder_正常
	X_MOT_Reset() ;			//复位

	return( TRUE ) ;
}
*/


//********延时0.5us 最大255us*******
void Delay_us( BYTE T_us )
{
	while( T_us-- ) ;					//延时:1个T_us 约0.5us	
}

//**********ADJ RAM*************
	#define  ADJ_ADR_WR  0xa0           // slave address + write_bit 
	#define  ADJ_ADR_RD  0xa1           // slave address +  read_bit 

//启动总线
void ADJ_Start(void)  
{ 
	//SCL处于高电平时,SDA从高电平转向低电平,表示一个"开始"状态,该状态必须在其他命令之前执行
	PortE_OUT |= ADJ_SDA ; 				// initial state of the I2C bus 
  	PortE_OUT |= ADJ_SCL ; 
  	Delay_us( 14 ) ;

  	PortE_OUT &= ~ADJ_SDA ;  			   	// SCL=1 , SDA=0 after 7 usecs 
  	Delay_us( 10 ) ;  

  	PortE_OUT &= ~ADJ_SCL ;    		   	// SCL=0 , SDA=0 after other 5 usecs
}  

//停止总线 
void ADJ_Stop( void )  
{ 
	//SCL处于高电平时,SDA从低电平转向高电平,表示一个"停止"状态,该状态终止所有通讯
	PortE_OUT &= ~ADJ_SCL ; 				// SDA=0,SCL=0, initial state of I2C  
  	PortE_OUT &= ~ADJ_SDA ; 				  
  	Delay_us( 4 ) ;

  	PortE_OUT |= ADJ_SCL ;  			   	// SDA=0,SCL=1, after 2 usecs 
  	Delay_us( 12 ) ;

  	PortE_OUT |= ADJ_SDA ;   		   	// SDA=1,SCL=1, after other 5 usecs
}  
  
//对IIC总线产生应答
void ADJ_Ack(void)  
{ 
	//EEPROM通过在收到每个地址或数据之后,置SDA低电平的方式确认表示收到读SDA口状态
	PortE_OUT &= ~ADJ_SDA ;				// SDA=0,SCL=0 for 3 usec
	PortE_OUT &= ~ADJ_SCL ;
	Delay_us( 6 ) ;	    

  	PortE_OUT |= ADJ_SCL ;  	   			// +pulse SCL  for 6 usec
  	Delay_us( 12 ) ;  
  
  	PortE_OUT &= ~ADJ_SCL ;  	   			// 2 usec stabilization for SCL
  	Delay_us( 4 ) ;  
  
  	PortE_OUT |= ADJ_SDA ;  	  			// prepare SDA for reception 
  	Delay_us( 4 ) ;  
   
} 

//不对IIC总线产生应答
void ADJ_NoAck(void)  
{ 
	PortE_OUT |= ADJ_SDA ;				// SDA=1,SCL=0 for 3 usecs
	PortE_OUT &= ~ADJ_SCL ;
	Delay_us( 6 ) ;
	 
  	PortE_OUT |= ADJ_SCL ; 			   	// SDA=1,SCL=1 for 6 usecs ; +pulse SCL
  	Delay_us( 12 ) ;  
  
  	PortE_OUT &= ~ADJ_SCL ;  			   	// SDA=1,SCL=0,SCL stabilization 2us
  	Delay_us( 4 ) ;  
}  
 

//向IIC总线写数据 
void ADJ_Send( BYTE Sendbyte ) 	// write an 8b streamin 
{ 
	BYTE iAAAA ; 
  
  	for( iAAAA = 8 ; iAAAA > 0 ; iAAAA-- )  
  	{ 
		Delay_us( 6 ) ;			// SDA = bit_n of eeprom's data buffer 
    	Sendbyte <<= 1; 		//使CY=sendbyte^7   	
		
		if( CY )
			PortE_OUT |= ADJ_SDA ; 			//CY 进位标志位
		else
		    PortE_OUT &= ~ADJ_SDA ;
		
		Delay_us( 4 ) ;		   	

		PortE_OUT |= ADJ_SCL ;  			//pulse high SCL 
		Delay_us( 10 ) ;		//for 5 microseconds 

		PortE_OUT &= ~ADJ_SCL ; 
		Delay_us( 4 ) ;
  	}  

	PortE_OUT |= ADJ_SDA ;				//rise-up SDA and program it as input to read the ACK from the memory
	OEC = PC_ADJ_RD ;			//portC I/O设置 
	Delay_us( 6 ) ;
  
  	PortE_OUT |= ADJ_SCL ;  			   	// pulse high SCL for 5 useconds
  	Delay_us( 10 ) ; 
	
	PortE_OUT &= ~ADJ_SCL ; 			    // 
	OEC = PC_ADJ_WR ;			//portC  I/O设置,program again SDA as open-drain out 
}

//从IIC总线上读数据子程序 * * * * */  
BYTE ADJ_Rec( void )  
{ 
	BYTE R_Data , iAAAA ;
	  
  	PortE_OUT |= ADJ_SDA ;
	OEC = PC_ADJ_RD ;			//portC I/O设置 ,prepare SDA as input (=1)

	iAAAA = 8 ;  
  	while( iAAAA-- )  
  	{ 
		Delay_us( 8 ) ; 
		PortE_OUT |= ADJ_SCL ;  
    	R_Data = ( R_Data << 1 ) | ADJ_SDA ;
 
    	Delay_us( 8 ) ; 
		 
    	PortE_OUT &= ~ADJ_SCL ;  
    	Delay_us( 8 ) ;  
  	}

	OEC = PC_ADJ_WR ;			//portC  I/O设置,program again SDA as open-drain out   
  	return( R_Data ) ;  
}   

//随机写
void ADJ_Write( unsigned int RAM_adr, unsigned char RAM_data ) 
{
	ADJ_Start() 				;    // START command 

	ADJ_Send( ADJ_ADR_WR )		;    // write first slave adr + write_bit 

	ADJ_Send( RAM_adr >> 8 )	;    // write the high_byte of the adr 

	ADJ_Send( RAM_adr & 0xff )	;    // write the  low_byte of the adr

	ADJ_Send( RAM_data ) 		;    // write the data_character 

	ADJ_Stop()                 	;    // finally , STOP command 

	EZUSB_Delay( 5 ) 			;	//5ms  write cycle time after each byte  
}

unsigned char ADJ_Read( unsigned int RAM_adr ) 
{  
	unsigned char RAM_data 		;

	ADJ_Start()                	;  // START command
    
	ADJ_Send( ADJ_ADR_WR )		;  // write slave address + write_bit
	 
	ADJ_Send( RAM_adr >> 8 )	;  // write the high_byte of the adr
	       
	ADJ_Send( RAM_adr & 0xff )	;  // write the  low_byte of the adr
	 
	ADJ_Start()               	;  // REPEATED START condition
     
	ADJ_Send( ADJ_ADR_RD )		;  // change the direction of the trsf
	 
	RAM_data = ADJ_Rec()        ;  // store the result in "dst"(<-eep_buf)

	ADJ_NoAck()             	;  // send a NACK from MCU to the memory
	 
	ADJ_Stop()                 	;  // finally , STOP command
	
	return( RAM_data ) 			;              
} 




/*
//24C256 的读写程序
BOOL   ADJ_RW(unsigned char *DataBuff,unsigned char Length,unsigned int Addr,  
                     unsigned char Control,enum eepromtype enumer)  
{   
  
  unsigned char data j,i=ERROR;  
  bit errorflag=1;  						//出错标志  
  while(i--)  
  { Start();  								//启动总线  
    Send(Control & 0xfe); 					//向IIC总线写数据，器件地址  
    if(RecAck()) continue; 					//如写不正确结束本次循环  
    if(enumer > AT2416)  
    { Send((unsigned char)(Addr >> 8));		//把整型数据转换为字符型数据：弃高取低，只取低8位.如果容量大于32K位，使用16位地址寻址，写入高八位地址  
      if(RecAck())  continue;  
    }  
    Send((unsigned char)Addr); 				//向IIC总线写数据  
    if(RecAck())  continue; 				//如写正确结束本次循环  
    if(!(Control & 0x01))   				//判断是读器件还是写器件  
    { j=Length;  
      errorflag=0;         					//清错误特征位  
      while(j--)  
      { Send(*DataBuff++); 					//向IIC总线写数据 
        if(!RecAck()) continue; 			//如写正确结束本次循环 
        errorflag=1;  
        break;  
      }  
      if(errorflag==1) continue;  
      break;  
    }  
    else  
    { Start();  						//启动总线  
      Send(Control);					//向IIC总线写数据 
      if(RecAck()) continue;			//器件没应答结束本次本层循环  
      while(--Length)  					//字节长为0结束
      { *DataBuff ++= Receive();  
        Ack();   						//对IIC总线产生应答 
      }  
      *DataBuff=Receive(); 				//读最后一个字节  
      NoAck();  						//不对IIC总线产生应答  
      errorflag=0;  
      break;  
    }  
  }  
  Stop();  								//停止IIC总线  
  if(!(Control & 0x01))  
  {   
  Delay(255);   
  Delay(255);   
  Delay(255);  
  }  
  return(errorflag);  
}  

*/

//************EEPROM************
void EEPROMWriteByte(WORD addr, BYTE value)
{
	BYTE		i = 0;
	BYTE xdata 	ee_str[3];

	if(DB_Addr)
		ee_str[i++] = MSB(addr);

	ee_str[i++] = LSB(addr);
	ee_str[i++] = value;

	EZUSB_WriteI2C(I2C_Addr, i, ee_str);
    EZUSB_WaitForEEPROMWrite(I2C_Addr);
}

void EEPROMWrite(WORD addr, BYTE length, BYTE xdata *buf)
{
	BYTE	i;

	EZUSB_Delay( 1 ) ;	//1ms
	
	for(i=0;i<length;++i)
		EEPROMWriteByte(addr++,buf[i]);

}

/*
BYTE EEPROMReadByte(WORD addr )
{
	BYTE xdata dddd[1];
	EEPROMRead( addr, 1, (BYTE)dddd );
	
	return( dddd[0] );
}
*/

void EEPROMRead(WORD addr, BYTE length, BYTE xdata *buf)
{
	BYTE		i = 0;
	BYTE		j = 0;
	BYTE xdata 	ee_str[2];

	if(DB_Addr)
		ee_str[i++] = MSB(addr);

	ee_str[i++] = LSB(addr);

	EZUSB_WriteI2C(I2C_Addr, i, ee_str);

//	for(j=0; j < length; j++)
//		*(buf+j) = 0xcd;

	EZUSB_ReadI2C(I2C_Addr, length, buf);
}
 
//**************************************
/*
BOOL TD_Suspend(void)       // Called before the device goes into suspend mode
{							//进入挂起模式
   return(TRUE);
}

BOOL TD_Resume(void)        // Called after the device resumes
{							//退出挂起模式
   return(TRUE);
}
*/

//-----------------------------------------------------------------------------
//USB中断处理, 下面的函数通过中断入口表来调用
// **********端点0 USB请求到达中断
void ISR_Sudav(void) interrupt 0
{
   GotSUD = TRUE;            // Set flag
   EZUSB_IRQ_CLEAR();
   USBIRQ = bmSUDAV;         // Clear SUDAV IRQ
}

//**********Setup Token Interrupt Handler
void ISR_Sutok(void) interrupt 0
{
   EZUSB_IRQ_CLEAR();
   USBIRQ = bmSUTOK;         // Clear SUTOK IRQ
}

void ISR_Sof(void) interrupt 0
{
   EZUSB_IRQ_CLEAR();
   USBIRQ = bmSOF;            // Clear SOF IRQ
}

void ISR_Ures(void) interrupt 0
{
   if (EZUSB_HIGHSPEED())	//检测USB Speed 1:High Speed
   {
      pConfigDscr = pHighSpeedConfigDscr;
      pOtherConfigDscr = pFullSpeedConfigDscr;
   }
   else
   {
      pConfigDscr = pFullSpeedConfigDscr;
      pOtherConfigDscr = pHighSpeedConfigDscr;
   }
   
   EZUSB_IRQ_CLEAR();
   USBIRQ = bmURES;         // Clear URES IRQ
}

void ISR_Susp(void) interrupt 0
{
   Sleep = TRUE;
   EZUSB_IRQ_CLEAR();
   USBIRQ = bmSUSP;
}

void ISR_Highspeed(void) interrupt 0
{
   if (EZUSB_HIGHSPEED())	//检测USB Speed 1:High Speed
   {
      pConfigDscr = pHighSpeedConfigDscr;
      pOtherConfigDscr = pFullSpeedConfigDscr;
   }
   else
   {
      pConfigDscr = pFullSpeedConfigDscr;
      pOtherConfigDscr = pHighSpeedConfigDscr;
   }

   EZUSB_IRQ_CLEAR();
   USBIRQ = bmHSGRANT;
}


void ISR_Ep0ack(void) interrupt 0
{
}
void ISR_Stub(void) interrupt 0
{
}
void ISR_Ep0in(void) interrupt 0
{
}
void ISR_Ep0out(void) interrupt 0
{
}
void ISR_Ep1in(void) interrupt 0
{
}
void ISR_Ep1out(void) interrupt 0
{
}
void ISR_Ep2inout(void) interrupt 0
{
}
void ISR_Ep4inout(void) interrupt 0
{
}
void ISR_Ep6inout(void) interrupt 0
{
}
void ISR_Ep8inout(void) interrupt 0
{
}
void ISR_Ibn(void) interrupt 0
{
}
void ISR_Ep0pingnak(void) interrupt 0
{
}
void ISR_Ep1pingnak(void) interrupt 0
{
}
void ISR_Ep2pingnak(void) interrupt 0
{
}
void ISR_Ep4pingnak(void) interrupt 0
{
}
void ISR_Ep6pingnak(void) interrupt 0
{
}
void ISR_Ep8pingnak(void) interrupt 0
{
}
void ISR_Errorlimit(void) interrupt 0
{
}
void ISR_Ep2piderror(void) interrupt 0
{
}
void ISR_Ep4piderror(void) interrupt 0
{
}
void ISR_Ep6piderror(void) interrupt 0
{
}
void ISR_Ep8piderror(void) interrupt 0
{
}
void ISR_Ep2pflag(void) interrupt 0
{
}
void ISR_Ep4pflag(void) interrupt 0
{
}
void ISR_Ep6pflag(void) interrupt 0
{
}
void ISR_Ep8pflag(void) interrupt 0
{
}
void ISR_Ep2eflag(void) interrupt 0
{
}
void ISR_Ep4eflag(void) interrupt 0
{
}
void ISR_Ep6eflag(void) interrupt 0
{
}
void ISR_Ep8eflag(void) interrupt 0
{
}
void ISR_Ep2fflag(void) interrupt 0
{
}
void ISR_Ep4fflag(void) interrupt 0
{
}
void ISR_Ep6fflag(void) interrupt 0
{
}
void ISR_Ep8fflag(void) interrupt 0
{
}
//GPIF done 数据接收结束中断
void ISR_GpifComplete(void) interrupt 0
{
}
void ISR_GpifWaveform(void) interrupt 0
{
}


