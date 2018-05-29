 //2012.12.15	VER2.00
 //�����ڵ����PCB

#include "fx2.h"
#include "fx2regs.h"
#include "fx2sdly.h"             // Define _IFREQ and _CFREQ above this #include
//#include "gpif.h"
#include "my.h"
//#include "reg51.h"
//-----------------------------------------------------------------------------
// ��������,����ͬ������ʱ����
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
// ȫ�ֱ��� Global Variables
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


//�Զ������**************
BYTE		GP_State ;			//CTS״̬
BYTE		GP_Model ;			//CTS����

BYTE		X_Mot_State ;		//X_���״̬
WORD		X_Timer_ip ;		//X_�����ʱ����ָ��
WORD		X_Timer_Add ;		//X_����ļ��ٲ���
BYTE		X_Speed_Time_H ;	//X_�������ʱ����
BYTE		X_Speed_Time_L ;	//X_�������ʱ����
WORD		X_Mot_Run_Len ;		//X_����������в���
WORD		X_Print_speed ;		//X_�����ӡ�ٶ�
WORD		X_Print_Pos	;		//X_�����ʼλ��
WORD		X_Print_Len ;		//X_�������г�

BYTE		Y_Mot_State ;		//Y_���״̬
BYTE		Y_Timer_ip ;		//Y_�����ʱ����ָ��
WORD		Y_Mot_Run_Len ;		//Y_����������в���
WORD		Y_Print_Feed ;		//Y_�������о�

BYTE		Laser_Test_Lamp	;	//Laser����Laserָʾ
WORD		Laser_Plus_Time ;	//Laser����ʱ����,�ر�ʱ��

WORD 		Manage_Time ;		//CPU���������
unsigned int		ADJ_RAM_Addr ;		//ADJ RAM ��ַ



//bit			Indic_Flash ;		//�������Ƿ�����
bit			Dir_Mode ;			//����ģʽ:0:��,1:˫�����
bit			RAM_OK ;			//������׼���ÿ������
bit			RAM_Null ;			//������
bit			RAM_SELECT ;		//RAMѡ��
bit			Print_Dir  ;		//��ӡ����
bit			Print_End  ;		//��ӡ����
//bit			Warm_State ;		//Ԥ��״̬
//bit			Temp_Select ;		//�¶ȼ��ѡ�� 0:�ڲ�

//----------------FPGA���ݿ�--------------------
extern xdata BYTE 	FPGA_Port ;  	//FPGA���ݽӿ�

//----------------�ж���ת��ַ---------------------
void Exter_Int_0(void) ;		//�ⲿ�ж�0

void Exter_Int_1(void) ;		//�ⲿ�ж�1

void Timer0_Int_0(void) ; 	    	

void Timer1_Int_0(void) ;

void Timer2_Int_0(void) ;

void Set_GpifCounter( unsigned long ) ;


//-----------------------------------------------------------------------------
// Prototypes ���庯��
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


BOOL 	X_MOT_Move( BOOL X_Dir, WORD X_Speed_Time, WORD X_Len ) ;	//X_����ƶ�����
void 	X_MOT_Stop( void ) ;										//X_���ֹͣ
BOOL 	X_MOT_Reset( void ) ;									   	//X_�����λ

BOOL 	Y_MOT_Move( BOOL Y_Dir, WORD Y_Len ) ;					   	//Y_����ƶ�����
void 	Y_MOT_Stop( void ) ;										//Y_���ֹͣ
BOOL 	Y_MOT_Reset( void ) ;										//Y_�����λ

void 	FPGA_Write( BYTE FPGA_Com , BYTE FPGA_data_1 , BYTE FPGA_data_2 ,BYTE FPGA_data_3 ) ;	//FPGA_Write:����д��
//void 	FPGA_WR_Out( BYTE FPGA_data ) ;							 	//FPGA_�����������
//BYTE 	FPGA_Read( void ) ;											//FPGA_Read:���ж���
//BOOL 	FPGA_Check(void) ;											//FPGA_�Լ�

void 	Laser_Plus_Set( WORD lTimer ) ;								//lTimer������ر�ʱ������ lTimer= 0 �������������
//void 	Laser_Check( void ) ;										//Laser_�Լ�

BOOL 	Encoder_Check(void) ; 										//Encoder_�Լ�
DWORD 	Encoder_Read( void ) ;										//Encoder��դ��ȡ

WORD 	Temp_Read( BOOL Temp_Sel ) ;								//Temp�¶ȶ�ȡ
BOOL 	DS18B20_Reset( void ) ;										//DS18B20_Reset��λ
void 	DS18B20_Write( BYTE DS_Data ) ;								//DS18B20_Write�ֽ�д
BYTE 	DS18B20_Read( void ) ;										//DS18B20_Read�ֽڶ�
void 	DS18B20_Out( BOOL OUT_TP ) ;								//DS18B20�˿�д
BOOL 	DS18B20_In( void ) ;										//DS18B20�˿ڶ�

void 	Delay_us( BYTE T_us ) ;										//��ʱN x us ,���255us

//BOOL 	Ram_Check(void) ;											//RAM_�Լ�

void 	System_Check( void ) ;										//System_�Լ�
void 	CPU_FPGA_Int( void ) ;										//CPU_FPGA��ʼ��

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

//------------------������-------------------------
void main(void)
{

   	//��ʼ������
   
   	Sleep = FALSE;               // ˯��ģʽ��ʹ��
   	Rwuen = FALSE;               // Զ�̻��Ѳ�ʹ��
   	Selfpwr = TRUE;              // ���������߹���ΪFlash,��ӵ�ԴΪTRUE
   	GotSUD = FALSE;              // ��USB�����־


   	TD_Init();		//USB��ʼ��ϵͳ����

   // The following section of code is used to relocate the descriptor table. 
   // Since the SUDPTRH and SUDPTRL are assigned the address of the descriptor 
   // table, the descriptor table must be located in on-part memory.
   // The 4K demo tools locate all code sections in external memory.
   // The descriptor table is relocated by the frameworks ONLY if it is found 
   	//���豸�������������������������豸���������Ϣ�����ڴ�
   	pDeviceDscr = (WORD)&DeviceDscr;
   	pDeviceQualDscr = (WORD)&DeviceQualDscr;
   	pHighSpeedConfigDscr = (WORD)&HighSpeedConfigDscr;
   	pFullSpeedConfigDscr = (WORD)&FullSpeedConfigDscr;
   	pStringDscr = (WORD)&StringDscr;

   	EZUSB_IRQ_ENABLE(); 				// USB�ж�ʹ��            

   	EZUSB_ENABLE_RSMIRQ();				// �����ж�ʹ��            
   
   	INTSETUP |= (bmAV2EN | bmAV4EN);	// Enable INT 2 & 4 autovectoring

//  	USBIE |= bmSUDAV | bmSUTOK | bmSUSP | bmURES | bmHSGRANT;	// Enable selected interrupts
   	USBIE |= bmSUDAV | bmSUTOK | bmURES | bmHSGRANT;	// Enable selected interrupts

	EA = 1;                 			//8051�ж�ʹ��

//#ifndef NO_RENUM

    // Renumerate if necessary.  Do this by checking the renum bit.  If it
    // is already set, there is no need to renumerate.  The renum bit will
    // already be set if this firmware was loaded from an eeprom.
   	if(!(USBCS & bmRENUM))	
		EZUSB_Discon(TRUE);				// renumerate����ö��
//#endif

    // unconditionally re-connect.  If we loaded from eeprom we are
    // disconnected and need to connect.  If we just renumerated this
    // is not necessary but doesn't hurt anything
   	USBCS &=~bmDISCON;					//���½������� 
   
  	CKCON = (CKCON&(~bmSTRETCH)) | FW_STRETCH_VALUE;	// Set stretch to 0 (after renumeration)

	// clear the Sleep flag.
    Sleep = FALSE;

//**********��ʼ********
//--------������ʼ��--------
	CPU_FPGA_Int() ;

//--------�Լ�--------

	GP_Model = 0 ;						//�趨����

/*
//����
while(TRUE)              
{
	Delay_us( 200 ) ;
	Laser_Mode = ~Laser_Mode ;
}
//���Խ���
*/


//	System_Check() ;				   	//�Լ�


//--------״̬��ʾ--------
	FPGA_Write( COM_LED_Check, GP_State, 0, 0 ) ;	//FPGA_LED��ʾ״̬


//********ѭ����ʼ�Դ���������********
	while(TRUE)              
	{

//------�˵�0 USB����
		if(GotSUD)						//�ж϶˵�0�Ƿ���USB����            
		{
			SetupCommand();				//�������󣬽���������         
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
//-----�˵�2���ݴ����豸����ʱ�ظ����ù���
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
//To use the Transaction Counter for FIFO ��x��, load GPIFTCB3:0 with the desired number of transactions
//(1 to 4,294,967,295). When a FIFO-Read or -Write waveform is triggered on that FIFO, the
//GPIF will transfer the specified number of bytes (or words, if WORDWIDE = 1) automatically.
*/

//------�ڲ�����--------
		Manage_Time++ ;		//���������+1

		//CPU����LEDָʾ��״̬LED
		if( Manage_Time == 0 )		
		{
			Led_CPU = ~ Led_CPU ;  					//LED: CPU����ָʾ

/*
			if( Indic_Flash == TRUE )			    //�������?
			{	
				if( PortE_OUT & Indic_Red )			//�Ƿ�RED����ָʾ��=1
					PortE_OUT &= ~Indic_Red ;		//RED����ָʾ��=0
				else
					PortE_OUT |=  Indic_Red ;		//RED����ָʾ��=1

			}
*/
		}
	}
}


//********������********
void SetupCommand(void)
{
   void   *dscr_ptr;

   //�ж���������
   switch(SETUPDAT[1])
   {
		//********����Ϊ��׼USB�豸����
      case SC_GET_DESCRIPTOR:							//*������Ϣ����
			switch(SETUPDAT[3])         
			{
				case GD_DEVICE:            				//**�豸��Ϣ Device
					SUDPTRH = MSB(pDeviceDscr);
					SUDPTRL = LSB(pDeviceDscr);
					break;
				case GD_DEVICE_QUALIFIER:				//**�豸Ʒ�� Device Qualifier
					SUDPTRH = MSB(pDeviceQualDscr);
					SUDPTRL = LSB(pDeviceQualDscr);
					break;
				case GD_CONFIGURATION:					//**������Ϣ Configuration
					SUDPTRH = MSB(pConfigDscr);
					SUDPTRL = LSB(pConfigDscr);
					break;
				case GD_OTHER_SPEED_CONFIGURATION:  	//**�ٶȺ��������� Other Speed Configuration
					SUDPTRH = MSB(pOtherConfigDscr);
					SUDPTRL = LSB(pOtherConfigDscr);
					break;
				case GD_STRING:            				//**�����̶��������� String
					if(dscr_ptr = (void *)EZUSB_GetStringDscr(SETUPDAT[2]))
					{
						SUDPTRH = MSB(dscr_ptr);
						SUDPTRL = LSB(dscr_ptr);
					}
					else 
						EZUSB_STALL_EP0();   			//***��������,Stall End Point 0
					break;
				default:            					//**��������,Stall End Point 0
					EZUSB_STALL_EP0();
			}
         break;
		case SC_GET_INTERFACE:							//*��ȡ�ӿ���Ϣ���� Get Interface
			DR_GetInterface();
         break;
		case SC_SET_INTERFACE:							//*���ýӿ���Ϣ���� Set Interface
			DR_SetInterface();
			break;
      case SC_SET_CONFIGURATION:						//*����������Ϣ���� Set Configuration
         DR_SetConfiguration();
         break;
      case SC_GET_CONFIGURATION:						//*��ȡ������Ϣ���� Get Configuration
         DR_GetConfiguration();
         break;
      case SC_GET_STATUS:								//*��ȡ״̬����Get Status
			switch(SETUPDAT[0])
			{
				case GS_DEVICE:							//**�豸״̬Device
					EP0BUF[0] = ((BYTE)Rwuen << 1) | (BYTE)Selfpwr;
					EP0BUF[1] = 0;
					EP0BCH = 0;
					EP0BCL = 2;
					break;
				case GS_INTERFACE:						//**�ӿ�״̬ Interface
					EP0BUF[0] = 0;
					EP0BUF[1] = 0;
					EP0BCH = 0;
					EP0BCL = 2;
					break;
				case GS_ENDPOINT:						//**�˵�״̬ End Point
					EP0BUF[0] = *(BYTE xdata *) epcs(SETUPDAT[4]) & bmEPSTALL;
					EP0BUF[1] = 0;
					EP0BCH = 0;
					EP0BCL = 2;
					break;
            default:            						//**Invalid Command
               EZUSB_STALL_EP0();						//Stall End Point 0
            }
         break;
      case SC_CLEAR_FEATURE:							//*����������� Clear Feature
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
      case SC_SET_FEATURE:								//*������������ Set Feature
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

	//********������Ϊ��׼USB�豸��������Ϊ�û��Զ���������
         if(DR_VendorCmnd())
            EZUSB_STALL_EP0();            //��������, Stall End Point 0
   }

   // Acknowledge handshake phase of device request
   EP0CS |= bmHSNAK;
}

// Wake-up interrupt handler
void resume_isr(void) interrupt WKUP_VECT
{
   EZUSB_CLEAR_RSMIRQ();
}

