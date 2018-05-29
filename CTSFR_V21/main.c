 //2012.12.15	VER2.00
 //适用于第五版PCB

#include "fx2.h"
#include "fx2regs.h"
#include "fx2sdly.h"             // Define _IFREQ and _CFREQ above this #include
//#include "gpif.h"
#include "my.h"
//#include "reg51.h"
//-----------------------------------------------------------------------------
// 常量定义,用于同步和延时处理
//-----------------------------------------------------------------------------
#define DELAY_COUNT   0x9248*8L  // Delay for 8 sec at 24Mhz, 4 sec at 48
#define _IFREQ  48000            // IFCLK constant for Synchronization Delay
#define _CFREQ  48000            // CLKOUT constant for Synchronization Delay
#define   min(a,b) (((a)<(b))?(a):(b))
#define   max(a,b) (((a)>(b))?(a):(b))


  // Registers which require a synchronization delay, see section 15.14
  // FIFORESET        FIFOPINPOLAR
  // INPKTEND         OUTPKTEND
  // EPxBCH:L         REVCTL
  // GPIFTCB3         GPIFTCB2
  // GPIFTCB1         GPIFTCB0
  // EPxFIFOPFH:L     EPxAUTOINLENH:L
  // EPxFIFOCFG       EPxGPIFFLGSEL
  // PINFLAGSxx       EPxFIFOIRQ
  // EPxFIFOIE        GPIFIRQ
  // GPIFIE           GPIFADRH:L
  // UDMACRCH:L       EPxGPIFTRIG
  // GPIFTRIG
  
  // Note: The pre-REVE EPxGPIFTCH/L register are affected, as well...
  //      ...these have been replaced by GPIFTC[B3:B0] registers
  
//-----------------------------------------------------------------------------
// 全局变量 Global Variables
//-----------------------------------------------------------------------------
volatile BOOL   GotSUD;
BOOL  	Rwuen;
BOOL   	Selfpwr;
volatile BOOL   Sleep;      	// Sleep mode enable flag

WORD   	pDeviceDscr;			// Pointer to Device Descriptor; Descriptors may be moved
WORD   	pDeviceQualDscr;
WORD   	pHighSpeedConfigDscr;
WORD   	pFullSpeedConfigDscr;   
WORD   	pConfigDscr;
WORD   	pOtherConfigDscr;   
WORD   	pStringDscr;

BOOL	DB_Addr;				//TPM Dual Byte Address stat
BYTE	I2C_Addr;				//TPM I2C address


//自定义变量**************
BYTE		GP_State ;			//CTS状态
BYTE		GP_Model ;			//CTS机型

BYTE		X_Mot_State ;		//X_电机状态
WORD		X_Timer_ip ;		//X_电机的时常数指针
WORD		X_Timer_Add ;		//X_电机的加速步数
BYTE		X_Speed_Time_H ;	//X_电机匀速时常数
BYTE		X_Speed_Time_L ;	//X_电机匀速时常数
WORD		X_Mot_Run_Len ;		//X_电机匀速运行步数
WORD		X_Print_speed ;		//X_电机打印速度
WORD		X_Print_Pos	;		//X_电机起始位移
WORD		X_Print_Len ;		//X_电机输出行程

BYTE		Y_Mot_State ;		//Y_电机状态
BYTE		Y_Timer_ip ;		//Y_电机的时常数指针
WORD		Y_Mot_Run_Len ;		//Y_电机匀速运行步数
WORD		Y_Print_Feed ;		//Y_电机输出行距

BYTE		Laser_Test_Lamp	;	//Laser测试Laser指示
WORD		Laser_Plus_Time ;	//Laser测试时常数,关闭时间

WORD 		Manage_Time ;		//CPU管理计数器
unsigned int		ADJ_RAM_Addr ;		//ADJ RAM 地址



//bit			Indic_Flash ;		//激光标尺是否闪动
bit			Dir_Mode ;			//方向模式:0:单,1:双向输出
bit			RAM_OK ;			//行数据准备好可以输出
bit			RAM_Null ;			//空数据
bit			RAM_SELECT ;		//RAM选择
bit			Print_Dir  ;		//打印方向
bit			Print_End  ;		//打印结束
//bit			Warm_State ;		//预热状态
//bit			Temp_Select ;		//温度检测选择 0:内部

//----------------FPGA数据口--------------------
extern xdata BYTE 	FPGA_Port ;  	//FPGA数据接口

//----------------中断跳转地址---------------------
void Exter_Int_0(void) ;		//外部中断0

void Exter_Int_1(void) ;		//外部中断1

void Timer0_Int_0(void) ; 	    	

void Timer1_Int_0(void) ;

void Timer2_Int_0(void) ;

void Set_GpifCounter( unsigned long ) ;


//-----------------------------------------------------------------------------
// Prototypes 定义函数
//-----------------------------------------------------------------------------
void 	EEPROMWrite(WORD addr, BYTE length, BYTE xdata *buf); //TPM EEPROM Write
//void 	EEPROMWriteByte(WORD addr, BYTE value);
void 	EEPROMRead(WORD addr, BYTE length, BYTE xdata *buf);  //TPM EEPROM Read
//BYTE 	EEPROMReadByte(WORD addr );

void 	SetupCommand(void);
void 	TD_Init(void);
void 	TD_Poll(void);
BOOL 	TD_Suspend(void);
BOOL 	TD_Resume(void);


BOOL 	X_MOT_Move( BOOL X_Dir, WORD X_Speed_Time, WORD X_Len ) ;	//X_电机移动长度
void 	X_MOT_Stop( void ) ;										//X_电机停止
BOOL 	X_MOT_Reset( void ) ;									   	//X_电机复位

BOOL 	Y_MOT_Move( BOOL Y_Dir, WORD Y_Len ) ;					   	//Y_电机移动长度
void 	Y_MOT_Stop( void ) ;										//Y_电机停止
BOOL 	Y_MOT_Reset( void ) ;										//Y_电机复位

void 	FPGA_Write( BYTE FPGA_Com , BYTE FPGA_data_1 , BYTE FPGA_data_2 ,BYTE FPGA_data_3 ) ;	//FPGA_Write:串行写入
//void 	FPGA_WR_Out( BYTE FPGA_data ) ;							 	//FPGA_串行输出数据
//BYTE 	FPGA_Read( void ) ;											//FPGA_Read:串行读入
//BOOL 	FPGA_Check(void) ;											//FPGA_自检

void 	Laser_Plus_Set( WORD lTimer ) ;								//lTimer：脉冲关闭时常数， lTimer= 0 ：结束脉冲测试
//void 	Laser_Check( void ) ;										//Laser_自检

BOOL 	Encoder_Check(void) ; 										//Encoder_自检
DWORD 	Encoder_Read( void ) ;										//Encoder光栅读取

WORD 	Temp_Read( BOOL Temp_Sel ) ;								//Temp温度读取
BOOL 	DS18B20_Reset( void ) ;										//DS18B20_Reset复位
void 	DS18B20_Write( BYTE DS_Data ) ;								//DS18B20_Write字节写
BYTE 	DS18B20_Read( void ) ;										//DS18B20_Read字节读
void 	DS18B20_Out( BOOL OUT_TP ) ;								//DS18B20端口写
BOOL 	DS18B20_In( void ) ;										//DS18B20端口读

void 	Delay_us( BYTE T_us ) ;										//延时N x us ,最大255us

//BOOL 	Ram_Check(void) ;											//RAM_自检

void 	System_Check( void ) ;										//System_自检
void 	CPU_FPGA_Int( void ) ;										//CPU_FPGA初始化

//-------------------------------------
BOOL 	DR_SetConfiguration(void);
BOOL 	DR_GetConfiguration(void);
BOOL 	DR_SetInterface(void);
BOOL 	DR_GetInterface(void);
BOOL 	DR_ClearFeature(void);
BOOL 	DR_SetFeature(void);
BOOL 	DR_VendorCmnd(void);

// this table is used by the epcs macro 
const char code  EPCS_Offset_Lookup_Table[] =
{
   0,    // EP1OUT
   1,    // EP1IN
   2,    // EP2OUT
   2,    // EP2IN
   3,    // EP4OUT
   3,    // EP4IN
   4,    // EP6OUT
   4,    // EP6IN
   5,    // EP8OUT
   5,    // EP8IN
};

// macro for generating the address of an endpoint's control and status register (EPnCS)
#define epcs(EP) (EPCS_Offset_Lookup_Table[(EP & 0x7E) | (EP > 128)] + 0xE6A1)

//------------------主程序-------------------------
void main(void)
{

   	//初始化变量
   
   	Sleep = FALSE;               // 睡眠模式不使能
   	Rwuen = FALSE;               // 远程唤醒不使能
   	Selfpwr = TRUE;              // 若采用总线供电为Flash,外接电源为TRUE
   	GotSUD = FALSE;              // 清USB请求标志


   	TD_Init();		//USB初始化系统配置

   // The following section of code is used to relocate the descriptor table. 
   // Since the SUDPTRH and SUDPTRL are assigned the address of the descriptor 
   // table, the descriptor table must be located in on-part memory.
   // The 4K demo tools locate all code sections in external memory.
   // The descriptor table is relocated by the frameworks ONLY if it is found 
   	//将设备描述符，速率配置描述符和设备相关描述信息调入内存
   	pDeviceDscr = (WORD)&DeviceDscr;
   	pDeviceQualDscr = (WORD)&DeviceQualDscr;
   	pHighSpeedConfigDscr = (WORD)&HighSpeedConfigDscr;
   	pFullSpeedConfigDscr = (WORD)&FullSpeedConfigDscr;
   	pStringDscr = (WORD)&StringDscr;

   	EZUSB_IRQ_ENABLE(); 				// USB中断使能            

   	EZUSB_ENABLE_RSMIRQ();				// 唤醒中断使能            
   
   	INTSETUP |= (bmAV2EN | bmAV4EN);	// Enable INT 2 & 4 autovectoring

//  	USBIE |= bmSUDAV | bmSUTOK | bmSUSP | bmURES | bmHSGRANT;	// Enable selected interrupts
   	USBIE |= bmSUDAV | bmSUTOK | bmURES | bmHSGRANT;	// Enable selected interrupts

	EA = 1;                 			//8051中断使能

//#ifndef NO_RENUM

    // Renumerate if necessary.  Do this by checking the renum bit.  If it
    // is already set, there is no need to renumerate.  The renum bit will
    // already be set if this firmware was loaded from an eeprom.
   	if(!(USBCS & bmRENUM))	
		EZUSB_Discon(TRUE);				// renumerate重新枚举
//#endif

    // unconditionally re-connect.  If we loaded from eeprom we are
    // disconnected and need to connect.  If we just renumerated this
    // is not necessary but doesn't hurt anything
   	USBCS &=~bmDISCON;					//重新建立连接 
   
  	CKCON = (CKCON&(~bmSTRETCH)) | FW_STRETCH_VALUE;	// Set stretch to 0 (after renumeration)

	// clear the Sleep flag.
    Sleep = FALSE;

//**********开始********
//--------参数初始化--------
	CPU_FPGA_Int() ;

//--------自检--------

	GP_Model = 0 ;						//设定机型

/*
//测试
while(TRUE)              
{
	Delay_us( 200 ) ;
	Laser_Mode = ~Laser_Mode ;
}
//测试结束
*/


//	System_Check() ;				   	//自检


//--------状态显示--------
	FPGA_Write( COM_LED_Check, GP_State, 0, 0 ) ;	//FPGA_LED显示状态


//********循环开始对传输任务处理********
	while(TRUE)              
	{

//------端点0 USB请求
		if(GotSUD)						//判断端点0是否有USB请求            
		{
			SetupCommand();				//若有请求，进入请求处理         
			GotSUD = FALSE;            
		}

      // Poll User Device
      // NOTE: Idle mode stops the processor clock.  There are only two
      // ways out of idle mode, the WAKEUP pin, and detection of the USB
      // resume state on the USB bus.  The timers will stop and the
      // processor will not wake up on any other interrupts.

/*
      	if (Sleep)
        {
          	if(TD_Suspend())
            { 
             	Sleep = FALSE;            // Clear the "go to sleep" flag.  Do it here to prevent any race condition between wakeup and the next sleep.
              	do
                {
                 	EZUSB_Susp();         // Place processor in idle mode.
                }
                while(!Rwuen && EZUSB_EXTWAKEUP());
                // Must continue to go back into suspend if the host has disabled remote wakeup
                // *and* the wakeup was caused by the external wakeup pin.
                
             // 8051 activity will resume here due to USB bus or Wakeup# pin activity.
             	EZUSB_Resume();   // If source is the Wakeup# pin, signal the host to Resume.      
             	TD_Resume();
          	}   
        }
*/

/*
//-----端点2数据处理。设备空闲时重复调用功能
		if( GPIFTRIG & 0x80 )              // if GPIF interface IDLE
  		{
    		if ( !( EP24FIFOFLGS & 0x02 )) // if there's a packet in the peripheral domain for EP2
    		{
	  			SYNCDELAY;
      			GPIFTCB1 = EP2FIFOBCH;     // setup transaction count with number of bytes in the EP2 FIFO
      			SYNCDELAY;
      			GPIFTCB0 = EP2FIFOBCL;
      			SYNCDELAY;
      			GPIFTRIG = GPIF_EP2;       // launch GPIF FIFO WRITE Transaction from EP2 FIFO
      			SYNCDELAY;
    		}
  		}
//To use the Transaction Counter for FIFO “x”, load GPIFTCB3:0 with the desired number of transactions
//(1 to 4,294,967,295). When a FIFO-Read or -Write waveform is triggered on that FIFO, the
//GPIF will transfer the specified number of bytes (or words, if WORDWIDE = 1) automatically.
*/

//------内部管理--------
		Manage_Time++ ;		//管理计数器+1

		//CPU工作LED指示，状态LED
		if( Manage_Time == 0 )		
		{
			Led_CPU = ~ Led_CPU ;  					//LED: CPU工作指示

/*
			if( Indic_Flash == TRUE )			    //标尺闪动?
			{	
				if( PortE_OUT & Indic_Red )			//是否RED激光指示灭=1
					PortE_OUT &= ~Indic_Red ;		//RED激光指示亮=0
				else
					PortE_OUT |=  Indic_Red ;		//RED激光指示灭=1

			}
*/
		}
	}
}


//********请求处理********
void SetupCommand(void)
{
   void   *dscr_ptr;

   //判断请求类型
   switch(SETUPDAT[1])
   {
		//********以下为标准USB设备请求
      case SC_GET_DESCRIPTOR:							//*描述信息请求
			switch(SETUPDAT[3])         
			{
				case GD_DEVICE:            				//**设备信息 Device
					SUDPTRH = MSB(pDeviceDscr);
					SUDPTRL = LSB(pDeviceDscr);
					break;
				case GD_DEVICE_QUALIFIER:				//**设备品质 Device Qualifier
					SUDPTRH = MSB(pDeviceQualDscr);
					SUDPTRL = LSB(pDeviceQualDscr);
					break;
				case GD_CONFIGURATION:					//**配置信息 Configuration
					SUDPTRH = MSB(pConfigDscr);
					SUDPTRL = LSB(pConfigDscr);
					break;
				case GD_OTHER_SPEED_CONFIGURATION:  	//**速度和其他配置 Other Speed Configuration
					SUDPTRH = MSB(pOtherConfigDscr);
					SUDPTRL = LSB(pOtherConfigDscr);
					break;
				case GD_STRING:            				//**开发商定义描述符 String
					if(dscr_ptr = (void *)EZUSB_GetStringDscr(SETUPDAT[2]))
					{
						SUDPTRH = MSB(dscr_ptr);
						SUDPTRL = LSB(dscr_ptr);
					}
					else 
						EZUSB_STALL_EP0();   			//***错误请求,Stall End Point 0
					break;
				default:            					//**错误请求,Stall End Point 0
					EZUSB_STALL_EP0();
			}
         break;
		case SC_GET_INTERFACE:							//*读取接口信息请求 Get Interface
			DR_GetInterface();
         break;
		case SC_SET_INTERFACE:							//*设置接口信息请求 Set Interface
			DR_SetInterface();
			break;
      case SC_SET_CONFIGURATION:						//*设置配置信息请求 Set Configuration
         DR_SetConfiguration();
         break;
      case SC_GET_CONFIGURATION:						//*读取配置信息请求 Get Configuration
         DR_GetConfiguration();
         break;
      case SC_GET_STATUS:								//*读取状态请求Get Status
			switch(SETUPDAT[0])
			{
				case GS_DEVICE:							//**设备状态Device
					EP0BUF[0] = ((BYTE)Rwuen << 1) | (BYTE)Selfpwr;
					EP0BUF[1] = 0;
					EP0BCH = 0;
					EP0BCL = 2;
					break;
				case GS_INTERFACE:						//**接口状态 Interface
					EP0BUF[0] = 0;
					EP0BUF[1] = 0;
					EP0BCH = 0;
					EP0BCL = 2;
					break;
				case GS_ENDPOINT:						//**端点状态 End Point
					EP0BUF[0] = *(BYTE xdata *) epcs(SETUPDAT[4]) & bmEPSTALL;
					EP0BUF[1] = 0;
					EP0BCH = 0;
					EP0BCL = 2;
					break;
            default:            						//**Invalid Command
               EZUSB_STALL_EP0();						//Stall End Point 0
            }
         break;
      case SC_CLEAR_FEATURE:							//*清除特性请求 Clear Feature
         switch(SETUPDAT[0])
         {
            case FT_DEVICE:           				 	//**Device
               if(SETUPDAT[2] == 1)
                  Rwuen = FALSE;       					//**Disable Remote Wakeup
               else
                  EZUSB_STALL_EP0();   					//**Stall End Point 0
               break;
            case FT_ENDPOINT:         					//**End Point
               if(SETUPDAT[2] == 0)
               {
                  *(BYTE xdata *) epcs(SETUPDAT[4]) &= ~bmEPSTALL;
                  EZUSB_RESET_DATA_TOGGLE( SETUPDAT[4] );
               }
               else
                  EZUSB_STALL_EP0();   					//***Stall End Point 0
               break;
         }
      	break;
      case SC_SET_FEATURE:								//*设置特性请求 Set Feature
         switch(SETUPDAT[0])
         {
            case FT_DEVICE:            					//**Device
               if(SETUPDAT[2] == 1)
                  Rwuen = TRUE;      					//***Enable Remote Wakeup
               else if(SETUPDAT[2] == 2)
                  // Set Feature Test Mode.  The core handles this request.  However, it is
                  // necessary for the firmware to complete the handshake phase of the
                  // control transfer before the chip will enter test mode.  It is also
                  // necessary for FX2 to be physically disconnected (D+ and D-)
                  // from the host before it will enter test mode.
                  break;
               else
                  EZUSB_STALL_EP0();   //***Stall End Point 0
               break;
            case FT_ENDPOINT:         	//**End Point
               *(BYTE xdata *) epcs(SETUPDAT[4]) |= bmEPSTALL;
               break;
         }
      	break;
      default:                     		// *Invalid Command

	//********上述均为标准USB设备请求，以下为用户自定义请求处理
         if(DR_VendorCmnd())
            EZUSB_STALL_EP0();            //错误请求, Stall End Point 0
   }

   // Acknowledge handshake phase of device request
   EP0CS |= bmHSNAK;
}

// Wake-up interrupt handler
void resume_isr(void) interrupt WKUP_VECT
{
   EZUSB_CLEAR_RSMIRQ();
}

