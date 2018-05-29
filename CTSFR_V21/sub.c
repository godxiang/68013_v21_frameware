#pragma NOIV               // Do not generate interrupt vectors
#include "fx2.h"
#include "fx2regs.h"
#include "fx2sdly.h"       // SYNCDELAY macro
#include "my.h"            


void 	SetupCommand(void);

//���庯��****************

void 	EEPROMWrite(WORD addr, BYTE length, BYTE xdata *buf); 	//TPM EEPROM Write
//void 	EEPROMWriteByte(WORD addr, BYTE value);
void 	EEPROMRead(WORD addr, BYTE length, BYTE xdata *buf);  	//TPM EEPROM Read
//BYTE 	EEPROMReadByte(WORD addr );


BOOL 	X_MOT_Move( BOOL X_Dir, WORD X_Speed_Time, WORD X_Len ) ;	//X_����ƶ�����
void 	X_MOT_Stop( void ) ;										//X_���ֹͣ
BOOL 	X_MOT_Reset( void ) ;										//X_�����λ

BOOL 	Y_MOT_Move( BOOL Y_Dir, WORD Y_Len ) ;						//Y_����ƶ�����
void 	Y_MOT_Stop( void ) ;										//Y_���ֹͣ
BOOL 	Y_MOT_Reset( void ) ;										//Y_�����λ

void 	FPGA_Write( BYTE FPGA_Com , BYTE FPGA_data_1 , BYTE FPGA_data_2 ,BYTE FPGA_data_3 ) ;	//FPGA_Write:����д��
//void 	FPGA_WR_Out( BYTE FPGA_data ) ;	//FPGA_�����������
//BYTE 	FPGA_Read( void ) ;				//FPGA_Read:���ж���
//BOOL 	FPGA_Check(void) ; 				//FPGA_�Լ�

void 	Laser_Plus_Set( WORD lTimer ) ;	//lTimer������ر�ʱ������ lTimer= 0 �������������
//void 	Laser_Check( void ) ;			//Laser_�Լ�

BOOL 	Encoder_Check(void) ; 			//Encoder_�Լ�
DWORD 	Encoder_Read( void ) ;			//Encoder��դ��ȡ

WORD 	Temp_Read( BOOL Temp_Sel ) ;	//Temp�¶ȶ�ȡ
BOOL 	DS18B20_Reset( void ) ;			//DS18B20��λ
void 	DS18B20_Write( BYTE DS_Data ) ;	//DS18B20_Write�ֽ�д
BYTE 	DS18B20_Read( void ) ;			//DS18B20_Read�ֽڶ�
void 	DS18B20_Out( BOOL OUT_TP ) ;	//DS18B20�˿�д
BOOL 	DS18B20_In( void ) ;			//DS18B20�˿ڶ�

void 	Delay_us( BYTE T_us ) ;			//��ʱN x us , ���255us

void 			ADJ_Write( unsigned int RAM_adr, unsigned char RAM_data ) ;
unsigned char 	ADJ_Read( unsigned int RAM_adr ) ;

//BOOL 	Ram_Check(void) ;				//RAM_�Լ�

void 	System_Check( void ) ;			//System_�Լ�
void 	CPU_FPGA_Int( void ) ;			//CPU_FPGA��ʼ��

void 	Exter_Int_0(void) ;				//�ⲿ�ж�0
void 	Exter_Int_1(void) ;				//�ⲿ�ж�1
void 	Timer0_Int_0(void) ;			//Time0�жϴ���, Y���
void 	Timer1_Int_0(void) ;			//Time1�жϴ���,����Laser����
void 	Timer2_Int_0(void) ;			//Time2�жϴ���, X���

//�������****************
extern BOOL		DB_Addr;			//TPM Dual Byte Address stat
extern BYTE		I2C_Addr;			//TPM I2C address

extern BOOL 	GotSUD ;			//���ܵ��˵�0����USB�����־
extern BOOL 	Sleep ;  			//˯�߱�־������˯���жϣ����ñ������Ϊ��
extern BOOL 	Rwuen ;				//Զ�̻��ѱ�
extern BOOL 	Selfpwr ;			//�Ƿ��Թ���

BYTE Configuration;         		//��ǰ�����ú�
BYTE AlternateSetting;      		//��ѡ���ú�


//�Զ������**************
extern BYTE		GP_State ;			//CTS״̬
extern BYTE		GP_Model ;			//CTS����

extern BYTE		X_Mot_State ;		//X_���״̬
extern WORD		X_Timer_ip ;		//X_�����ʱ����ָ��
extern WORD		X_Timer_Add ;		//X_����ļ��ٲ���
extern BYTE		X_Speed_Time_H ;	//X_�������ʱ����
extern BYTE		X_Speed_Time_L ;	//X_�������ʱ����
extern WORD		X_Mot_Run_Len ;		//X_����������в���
extern WORD		X_Print_speed ;		//X_�����ӡ�ٶ�
extern WORD		X_Print_Pos	;		//X_�����ʼλ��
extern WORD		X_Print_Len ;		//X_�������г�

extern BYTE		Y_Mot_State ;		//Y_���״̬
extern BYTE		Y_Timer_ip ;		//Y_�����ʱ����ָ��
extern WORD		Y_Mot_Run_Len ;		//Y_����������в���
extern WORD		Y_Print_Feed ;		//Y_�������о�

extern BYTE		Laser_Test_Lamp	;	//Laser����Laserָʾ
extern WORD		Laser_Plus_Time ;	//Laser����ʱ����,�ر�ʱ��

extern WORD 	Manage_Time ;		//CPU���������

extern bit		Indic_Flash ;		//�������Ƿ�����
extern bit		Dir_Mode ;			//����ģʽ:0:��,1:˫�����
extern bit		RAM_OK ;			//������׼���ÿ������
extern bit		RAM_Null ;			//������
extern bit		RAM_SELECT ;		//RAMѡ��
extern bit		Print_Dir  ;		//��ӡ����
extern bit		Print_End  ;		//��ӡ����
extern unsigned int		ADJ_RAM_Addr ;		//ADJ RAM ��ַ
//extern bit		Warm_State ;		//Ԥ��״̬
//extern bit		Temp_Select ;		//�¶ȼ��ѡ�� 0:�ڲ�

//----------------FPGA���ݿ�--------------------
xdata volatile BYTE 	FPGA_Port 	_at_ 0x8000;  	//FPGA���ݽӿ�

//X_Mot��ʱֵ   �ļ���X_Motor-V4.txt
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


//Y_Mot��ʱֵ
const WORD code Y_Mot_Time[ Y_Add_Step ] ={
	0x15B4, 0xD37B, 0xE547, 0xEC04, 0xEF90, 0xF1C4, 0xF345, 0xF45D, 0xF532, 0xF5DB,  // 10
	0xF664, 0xF6D6, 0xF735, 0xF788, 0xF7CF											 // 15
};

const BYTE code EEPROM_Register[ 24 ] = {	//ע����Ϣ16�ֽ�:
	0x00, 0x00, 0x00, 0x00 ,				//��ȫ�ֽ�4byte
	'C', 'T', 'S',						    //ͷ��־'CTS'					 
	0x01, 0x00,								//�ͺ�:word
	0x02, 0x00,								//�汾:word
	15,										//��:byte
	9,										//��:byte
	0x00, 0x00,								//״̬:word
	0x01, 0x00,	0x00, 0x00,					//�������:Dword
	'E',									//������־'E'
	0x00, 0x00, 0x00, 0x00					//��ȫ�ֽ�4byte
};
//*************��ʼ�������ڳ���ʼʱ����****************
void TD_Init(void)            
{
	CPUCS = ((CPUCS & ~bmCLKSPD) | bmCLKSPD1) ;	//��CPUʱ������Ϊ48MHz
	SYNCDELAY;

//--------------------------
//	 ͬ��FIFOģʽ 
//	 ��IFCFG����ΪFIFOģʽʱ����IFCFG1:0 = 11
//	 PA.2�ڱ���Ϊ SLOE�������ţ�PA.4����ΪFIFOADR0��������
//	 PA.5�ڱ���ΪFIFOADR1�������ţ�PA.6����ΪPKTEND ��������
	IFCONFIG =0x43; 		//b7: IFCLKSRC��FIFOʱ���ڲ�/�ⲿʱ��Դѡ��0�ⲿʱ��Դ��1�ڲ�ʱ��Դ��
	//       =0100,0011		//b6: 3048MHZ�� ��ѡ���ڲ�ʱ�ӣ�30MHz/48MHzƵ��ѡ��0 IFCLKʱ��30M��1 IFCLKʱ��48M��
							//b5: IFCLKOE�� IFCLKʱ�����ʹ�ܣ�0�رգ�1�򿪡�
							//b4: IFCLKPOL��IFCLK�����תʹ�ܣ�0����ת��1��ת��
							//b3: ASYNC��   Slave FIFOͬ��/�첽������ʽѡ��0ͬ����1�첽��
							//b2: GSTATE��  ѡ���Ƿ�GSTATE[2:0]��PORTE[2:0]�����0�رգ�1ʹ�ܡ�
							//b10:IFCFG1:0��FX2 I/O�˿�ģʽѡ��Ҳ����������˵��FX2���ⲿ�߼����䷽ʽ��ѡ��00��I/O��ʽ, 01��reserved, 10��GPIF��ʽ, 11�� Slave FIFO��ʽ��
	SYNCDELAY;

//------------USB���ܳ�ʼ��------------- 
//  	Configuration = 0 ;		//��ǰ����������
//  	AlternateSetting = 1;	//��ѡ����
 
  	EP1OUTCFG = 0xA0;		//�Ը����˵��������,��TRM section 15.14
	SYNCDELAY;
  	EP1INCFG  = 0xA0;
  	SYNCDELAY;           	// see TRM section 15.14

//------------2Endpoint��ʼ��------------
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
//------------FIFO��ʼ��--------------
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


//FLAGA��FLAGB��FLAGC��FLAGD��ӳFIFO״̬ѡ��
//ÿ�����б�ַ/�̶�����ģʽ������Ϊ��ַģʽ�������Ƕ���ӳFIFOADR[1:0]�ŵ�ǰ��ָ�˵��״̬
//FLAGA��ӳ"�ɱ�̼���"��FLAGB��ӳ"��"��־��FLAGC��ӳ"��"��־��FLAGD�����ڣ�
//����Ϊ�̶�ģʽ�����Ǿ����������óɷ�ӳ����˵�������־������������FIFOADR[1:0]�ŵ�ǰ��ָ�˵��״̬��
//Slave fifoģʽ�У�������FLAGA~FLAGD�������ö˵�FIFO��״̬�������������ʵ��FLAGx���ã�
//Programmable Flag (PF), Empty Flag (EF), Full Flag (FF).
//FLAGA=PF, FLAGB=FF, FLAGC=EF,FLAGD=EP2PF (Actual FIFO is selected by FIFOADR[0,1] pins)

	PINFLAGSAB = 0xc4;      // FLAGA - fixed EP2PF, FLAGB - fixed EP2FF
//FLAGB3 FLAGB2 FLAGB1 FLAGB0 FLAGA3 FLAGA2 FLAGA1 FLAGA0
//FLAGA��ʾ�˵�6            FLAGB ��ʾ�˵�2 ��״̬ 
	SYNCDELAY;

	PINFLAGSCD = 0x18;      // FLAGC - fixed EP2EF, FLAGD - reserved
//FLAGD3 FLAGD2 FLAGD1 FLAGD0 FLAGC3 FLAGC2 FLAGC1 FLAGC0
//  FLAGC ��ʾ�˵�2��״̬
	SYNCDELAY;

//Restore FIFOs to Default State
  	EP2FIFOCFG = 0x00; 		// allow core to see zero to one transition of auto out bit
  	SYNCDELAY;
  	EP2FIFOCFG = 0x11; 		// auto out mode, disable PKTEND zero length send, word ops
  	SYNCDELAY;
//Endpoint 2/Slave FIFO Configuration
//Bit 7 0
//Bit 6 INFM1		,IN Full Minus One ,FIFO״̬��־�Ƿ���ǰһ���ֽ���Чѡ��IN�˵�����������ʹ��
//Bit 5 OEP1 		,OUT Empty Plus One,FIFO״̬��־�Ƿ���ǰһ���ֽ���Чѡ��OUT�˵�ռ�1����ʹ��
//Bit 4 AUTOOUT 	,Instantaneous Connection to Endpoint FIFO. ��ʹ��,FX2�̼�ֻ��Ҫ��ɳ�ʼ��,���ݴ�������̼�,��FX2�������յ�һ������ʱ,�ⲿ�߼����ɿ���FIFO�˵㻺����״̬�ĸı䣬Ȼ�����ȡ����
//Bit 3 AUTOIN 		,Auto Commit to SIE. Auto IN��Auto OUT��һ�㲻ͬ��Auto OUTʱ,��ֻ����512��1024. Auto INʱ,���Ĵ�С����,����������0�ֽڣ������ͨ��EPxAUTOINLENTH/L���á�
//Bit 2 ZEROLENIN 	,Enable Zero-length IN Packets, �Ƿ�������0�ֽ�,1ʹ�ܣ�����ʹ�ܡ�
//Bit 1 0
//Bit 0 WORDWIDE 	,Select Byte/Word FIFOs on PORTB/D Pins
//��FX2��λ��,��OUT�˵㻺��������һ������δ����,������ݲ������Զ������ⲿ�߼���Ϊ��֤OUT�˵㻺������û��δ��������,Ҫ���һ��OUT�˵㻺����,��������������SKIPλд1��OUT�˵㻺�����м�����������д���Σ���

         
//------------����GPIF�ж�------------ 
// setup INT4 as internal source for GPIF interrupts
// using INT4CLR (SFR), automatically enabled
// INTSETUP |= 0x03; //Enable INT4 Autovectoring
// GPIFIE = 0x03; // Enable GPIFDONE and GPIFWF interrupt(s)
// EIE |= 0x04; // Enable INT4 ISR, EIE.2(EIEX4)=1

//------------Ƶ�ʳ�ʼ��--------- 
	CKCON = 0x39 ;					//xx11,1001->T0=CLKOUT/4; T1=CLKOUT/4; T2=CLKOUT/4; Ram000ģʽ=83.3ns
//------------I/O�˿ڳ�ʼ��-------------
	PORTACFG 	= Val_P_A_CFG ;		//portA ��������
	OEA 		= Val_P_A_IO ;		//portA  I/O����
	IOA 		= Val_P_A_Ini ;		//portA   ��ʼ�� 

	PORTCCFG 	= Val_P_C_CFG ;		//portC 7~0����ΪI/O����
	OEC 		= Val_P_C_IO ;		//portC  I/O����
	IOC 		= Val_P_C_Ini ;		//portC   ��ʼ�� 

	PORTECFG	= Val_P_E_CFG ;
	OEE 		= Val_P_E_IO ;		//portE  I/O����
	IOE 		= Val_P_E_Ini ;		//portE   ��ʼ�� 


//------------�ⲿ�ж�0��ʼ��-----------		
//	IT0 = TRUE ;			//�ж�0���ش���
//	EX0 = TRUE ;			//�ⲿ�ж�0ʹ��

//------------�ⲿ�ж�1��ʼ��-----------


//------------ʱ��/��������ʼ��--------- 
//��ϵͳ��:CLKOUT1/4=12Mhz->T=250/3ns=������ʱ���׼ȷ,��Ӧʱ����0-4T����ʱ(dTmax=0.333us)
//		   T0:CLKOUT/4����Y����Ŀ���
	TMOD = 0x11 ;			//0001,0001:T1:ģʽ1,16bits;   T0:ģʽ1,16bits

//------------ʱ��0��ʼ��---------------
//		T0:CLKOUT/4����Y����Ŀ���
	TR0 = FALSE ;			//������T0����
	ET0 = TRUE ;			//����T0�ж�

//------------ʱ��1��ʼ��---------------
//		T1:CLKOUT/4����Laser����
	TR1 = FALSE ;			//������T1����
	ET1 = TRUE ;			//����T1�ж�

//------------ʱ��2��ʼ��,X_Mot---------
//		T2:CLKOUT/4����X����Ŀ���
	T2CON = 0x00;			//0000,0001:T2:16bits�Զ�,������T2���� 
	ET2 = TRUE;				//����T2�ж�	

//------------���ж˿ڳ�ʼ��------------ 


//------------I2C�˿ڳ�ʼ��-------------
//	EI2C = 0;				//������I2C�ж�

	EZUSB_InitI2C();		// Initialize I2C Bus

	// Determine I2C boot eeprom device address; addr = 0x0 for 8 bit addr eeproms (24LC00)
	I2C_Addr = SERIAL_ADDR | ((I2CS & 0x10) >> 4); 	// addr=0x01 for 16 bit addr eeprom (LC65)
	// Indicate if it is a dual byte address part
	DB_Addr = (BOOL)(I2C_Addr & 0x01); 				//TPM: ID1 is 16 bit addr bit - set by rocker sw or jumper

	I2CTL |= bm400KHZ ; 	//eeprom 400khz
//	I2CTL &= ~bm400KHZ;		//eeprom 100khz


}

//********����Ϊ�˵�0��USB������
//��ȡ������
/*
BOOL DR_GetDescriptor(void)
{
   return(TRUE);
}
*/

//**********��������**********
BOOL DR_SetConfiguration(void)   // Called when a Set Configuration command is received
{
   Configuration = SETUPDAT[2];
   return(TRUE);            // Handled by user code
}

//**********��ȡ����**********
BOOL DR_GetConfiguration(void)   // Called when a Get Configuration command is received
{
   EP0BUF[0] = Configuration;
   EP0BCH = 0;
   EP0BCL = 1;
   return(TRUE);            // Handled by user code
}

//**********���ýӿ�����**********
BOOL DR_SetInterface(void)       // Called when a Set Interface command is received
{
   AlternateSetting = SETUPDAT[2];
   return(TRUE);            // Handled by user code
}

//**********��ȡ�ӿ�����**********
BOOL DR_GetInterface(void)       // Called when a Set Interface command is received
{
   EP0BUF[0] = AlternateSetting;
   EP0BCH = 0;
   EP0BCL = 1;
   return(TRUE);            // Handled by user code
}

//��ȡ�豸״̬
/*BOOL DR_GetStatus(void)
{
   return(TRUE);
}*/

//�������
/*BOOL DR_ClearFeature(void)
{
   return(TRUE);
}*/

//��������
/*BOOL DR_SetFeature(void)
{
   return(TRUE);
}*/


//**********�û��Զ��������**********
BOOL DR_VendorCmnd(void)
{ 
	WORD addr, i, len, bc;

	//--------�ж���������--------
	switch(SETUPDAT[1])
	{ 
 		//-----��Ӧ->������Ӧ����,�Ƿ�æ,����RAM״̬����=1 BYTE
		case GP_GET_Busy:
			while(EP0CS & bmEPBUSY);			//�ȴ��˵�0����

			*( EP0BUF+0 ) = 0 ;					//����

			EP0BCH = 0;							//֪ͨ����
			EP0BCL = GP_GET_Busy_Len; 			//Arm endpoint with 3 bytes to transfer
			EP0CS |= bmHSNAK; 					//Acknowledge handshake phase of device request
			break ;

		//-----��Ӧ->������Ӧ����,����״̬����4BYTE		:1B(״̬),1B(����),1B(USBģʽ),1B(�汾),1B(����)
		case GP_GET_state:
			while(EP0CS & bmEPBUSY);			//�ȴ��˵�0����

			*( EP0BUF+0 ) = GP_State ;			//װ��CTS״̬

			*( EP0BUF+1 ) = IOA ;				//Port_A

			*( EP0BUF+2 ) = IOC ;				//Port_C

			*( EP0BUF+3 ) = IOD ;				//Port_D

			*( EP0BUF+4 ) = IOE ;				//Port_E

			if(EZUSB_HIGHSPEED())				//���USB Speed 1:High Speed 
				*( EP0BUF+5 ) = 1 ;				//��ȡUSB�汾
			else
				*( EP0BUF+5 ) = 0 ;

			*( EP0BUF+6 ) = CTS_Ver ;			//�汾

			*( EP0BUF+7 ) = GP_Model ;			//����

			*( EP0BUF+8 ) = Serial_No & 0xff ;	//���к���

			*( EP0BUF+9 ) = ( Serial_No >> 8) & 0xff ;
			
			*( EP0BUF+10 ) = 0 ;				//ע����Ϣ0
			
			*( EP0BUF+11 ) = 0 ;				//ע����Ϣ1

			EP0BCH = 0;							//֪ͨ����
			EP0BCL = GP_GET_state_Len; 			//Arm endpoint with 3 bytes to transfer
			EP0CS |= bmHSNAK; 					//Acknowledge handshake phase of device request
			break;

 		//-----��Ӧ->������Ӧ����,���ع�դ���� = 3BYTE
		case GP_GET_Encode:
			while(EP0CS & bmEPBUSY);			//�ȴ��˵�0����

			FPGA_Write( COM_Encode_Read, 0, 0, 0 ) ;	//CPU����դ

			*( EP0BUF+2 ) = FPGA_Port ;
			*( EP0BUF+1 ) = FPGA_Port ;
			*( EP0BUF+0 ) = FPGA_Port ;

			EP0BCH = 0;							//֪ͨ����
			EP0BCL = GP_GET_Encode_Len; 		//Arm endpoint with 3 bytes to transfer
			EP0CS |= bmHSNAK; 					//Acknowledge handshake phase of device request
			break ;

		//-----��Ӧ->������Ӧ����,����Ramֵ = 1BYTE
		case GP_GET_Ram:
			while(EP0CS & bmEPBUSY);			//�ȴ��˵�0����

			FPGA_Write( COM_Ram_Read, 0, 0, 0 ) ;	//CPU��RAM

			*( EP0BUF+0 ) = FPGA_Port ;
			*( EP0BUF+1 ) = FPGA_Port ;

			EP0BCH = 0;							//֪ͨ����
			EP0BCL = GP_GET_Ram_Len; 			//Arm endpoint with 3 bytes to transfer
			EP0CS |= bmHSNAK; 					//Acknowledge handshake phase of device request
			break ;

		//-----��Ӧ->������Ӧ����,����FPGAֵ = 1BYTE
		case GP_GET_FPGA:
			while(EP0CS & bmEPBUSY);			//�ȴ��˵�0����

			FPGA_Write( COM_Check_Read, 0, 0, 0 ) ;	//��FPGA��LEDֵ

			*( EP0BUF+0 ) = FPGA_Port ;

			EP0BCH = 0;							//֪ͨ����
			EP0BCL = GP_GET_FPGA_Len; 			//Arm endpoint with 3 bytes to transfer
			EP0CS |= bmHSNAK; 					//Acknowledge handshake phase of device request
			break ;

		//-----��Ӧ->������Ӧ����,����X���״ֵ̬ = 1BYTE
		case GP_GET_XMot:
			while(EP0CS & bmEPBUSY);			//�ȴ��˵�0����

			*( EP0BUF+0 ) = X_Mot_State ;		//X���״ֵ̬

			EP0BCH = 0;							//֪ͨ����
			EP0BCL = GP_GET_XMot_Len; 			//Arm endpoint with 3 bytes to transfer
			EP0CS |= bmHSNAK; 					//Acknowledge handshake phase of device request
			break ;

		//-----��Ӧ->������Ӧ����,����Y���״ֵ̬ = 1BYTE
		case GP_GET_YMot:
			while(EP0CS & bmEPBUSY);			//�ȴ��˵�0����

			*( EP0BUF+0 ) = Y_Mot_State ;		//Y���״ֵ̬

			EP0BCH = 0;							//֪ͨ����
			EP0BCL = GP_GET_YMot_Len; 			//Arm endpoint with 3 bytes to transfer
			EP0CS |= bmHSNAK; 					//Acknowledge handshake phase of device request
			break ;

		//-----��Ӧ->������Ӧ����,�ȴ�XY���ֹͣ������״ֵ̬ = 1BYTE
		case GP_GET_XYStop:
			while(EP0CS & bmEPBUSY);			//�ȴ��˵�0����

		   	while( Y_Mot_State != Mot_State_Hold ) ;	//�ȴ�Y���ֹͣ
			while( X_Mot_State != Mot_State_Hold ) ;	//�ȴ�X���ֹͣ

			*( EP0BUF+0 ) = 0 ;					//״ֵ̬

			EP0BCH = 0;							//֪ͨ����
			EP0BCL = GP_GET_XYStop_Len; 		//Arm endpoint with 3 bytes to transfer
			EP0CS |= bmHSNAK; 					//Acknowledge handshake phase of device request
			break ;

		//-----��Ӧ->������Ӧ����,�ض�ע����Ϣ = 16BYTE
		case GP_GET_Regist:
			while(EP0CS & bmEPBUSY);			//�ȴ��˵�0����

			addr = &EEPROM_Register + 20 ;		//�趨Register��ַ + code��EEPROM��ַ��16+��ȫ�ֽ�4
			bc   = GP_GET_Regist_Len ; 			//Register���ݳ���

			EEPROMRead( addr , (WORD)bc , (WORD)EP0BUF ) ;		//��ע����Ϣ

			EP0BCH = 0;							//֪ͨ����
			EP0BCL = GP_GET_Regist_Len; 		//Arm endpoint with 3 bytes to transfer
			EP0CS |= bmHSNAK; 					//Acknowledge handshake phase of device request
			break ;

		//-----��Ӧ->������Ӧ����,����:iBYTE(�����),1WORD(����)
		case GP_GET_Light:
			while(EP0CS & bmEPBUSY);			//�ȴ��˵�0����


			EP0BCH = 0;							//֪ͨ����
			EP0BCL = GP_GET_Light_Len; 			//Arm endpoint with 3 bytes to transfer
			EP0CS |= bmHSNAK; 					//Acknowledge handshake phase of device request
			break ;

/*
		//-----��Ӧ->������Ӧ����,�����ڡ����¶�ֵ = 2WORD(�ڡ��ⲿ�¶�)
		case GP_GET_Temp:
			while(EP0CS & bmEPBUSY);			//�ȴ��˵�0����

			len = Temp_Read( 0 ) ; 					//�ڲ��¶�
			*( EP0BUF+0 ) = len & 0xff ;			//�¶�ֵ��8λ
			*( EP0BUF+1 ) = ( len >> 8 ) & 0xff ;	//�¶�ֵ��8λ

			len = Temp_Read( 1 ) ; 					//�ⲿ�¶�
			*( EP0BUF+2 ) = len & 0xff ;			//�¶�ֵ��8λ
			*( EP0BUF+3 ) = ( len >> 8 ) & 0xff ;	//�¶�ֵ��8λ

			EP0BCH = 0;							//֪ͨ����
			EP0BCL = GP_GET_Temp_Len; 		    //Arm endpoint with 3 bytes to transfer
			EP0CS |= bmHSNAK; 					//Acknowledge handshake phase of device request
			break ;
*/

/*
		//-----��Ӧ->������Ӧ����,���ز��� = 1BYTE
		case GP_GET_COM_Test:
			while(EP0CS & bmEPBUSY);			//�ȴ��˵�0����

			*( EP0BUF+0 ) = 55 ;

			EP0BCH = 0;							//֪ͨ����
			EP0BCL = GP_GET_COM_Test_Len; 		//Arm endpoint with 3 bytes to transfer
			EP0CS |= bmHSNAK; 					//Acknowledge handshake phase of device request
			break ;
*/


		//-----ָ��->ָʾ���ݴ������1BYTE--------------
		case GP_COM_Data_Ok:
			EP0BCH = 0 ;
			EP0BCL = 0 ;
			while( EP0CS & bmEPBUSY ) ;			//�ȴ��˵�0����

			RAM_OK = TRUE ;						//����׼����

 			if( *( EP0BUF+0 ) == GP_RAM_Null )	//�Ƿ�Ϊ������
				RAM_Null = TRUE ;
			else
				RAM_Null = FALSE ;

			EP0BCH = 0 ;// Clear bytecount to allow new data in; also stops NAKing
			EP0BCL = 0 ;
			break;

		//-----ָ��->�������-----
		case GP_COM_End:

			Print_End = TRUE;					//ָʾֹͣ

			EP0BCH = 0 ;// Clear bytecount to allow new data in; also stops NAKing
			EP0BCL = 0 ;
			break;

		//**********************************
		//-----ָ��->X����ƶ�--------------
		case GP_COM_X_Move:						//1BYTE(����),1WORD(�ٶ�),1WORD(����)
			EP0BCH = 0 ;
			EP0BCL = 0 ;
			while( EP0CS & bmEPBUSY ) ;			//�ȴ��˵�0����

			i = *( EP0BUF+1 ) ;					//X����ٶ�
 			i |= *( EP0BUF+2 ) << 8 ; 

			len  = *( EP0BUF+3 ) ;				//�趨X����ƶ�����
 			len |= *( EP0BUF+4 ) << 8 ;

			X_MOT_Move( *( EP0BUF ), i, len );	//X����ƶ�

			EP0BCH = 0 ;// Clear bytecount to allow new data in; also stops NAKing
			EP0BCL = 0 ;
			break;

		//-----ָ��->X���ֹͣ-----
		case GP_COM_X_Stop:
			X_MOT_Stop() ;

			EP0BCH = 0 ;// Clear bytecount to allow new data in; also stops NAKing
			EP0BCL = 0 ;
			break;

		//-----ָ��->X�����λ-----
		case GP_COM_X_Reset:
			GP_State = GP_OK_X_Mot ;
			if( X_MOT_Reset() == FALSE )		//X_MOT��λ
				GP_State = GP_Error_X_Mot ;		//X_MOT����	

			EP0BCH = 0 ;// Clear bytecount to allow new data in; also stops NAKing
			EP0BCL = 0 ;
			break;

		//-----ָ��->X����ͷ�	-----
		case GP_COM_X_Free:
//			X_Mot_EN = Motor_EN_Free ;			//X_����ͷ�
			X_Mot_State = Mot_State_Free ;		//���״̬

			EP0BCH = 0 ;// Clear bytecount to allow new data in; also stops NAKing
			EP0BCL = 0 ;
			break;

		//-----ָ��->X�������	-----
		case GP_COM_X_Hold:
//			X_Mot_EN = Motor_EN_Hold ;			//X_�������
			X_Mot_State = Mot_State_Hold ;		//���״̬

			EP0BCH = 0 ;// Clear bytecount to allow new data in; also stops NAKing
			EP0BCL = 0 ;
			break;

		//**********************************
		//-----ָ��->Y����ƶ�--------------
		case GP_COM_Y_Move:						//1BYTE(����),1WORD(����)
			EP0BCH = 0 ;
			EP0BCL = 0 ;
			while( EP0CS & bmEPBUSY ) ;			//�ȴ��˵�0����

			len  = *( EP0BUF+1 ) ;				//�趨Y����ƶ�����
 			len |= *( EP0BUF+2 ) << 8 ;

			Y_MOT_Move( *( EP0BUF ), len ) ;	//Y����ƶ�

			EP0BCH = 0 ;// Clear bytecount to allow new data in; also stops NAKing
			EP0BCL = 0 ;
			break;

		//-----ָ��->Y���ֹͣ-----
		case GP_COM_Y_Stop:
			Y_MOT_Stop( ) ;

			EP0BCH = 0 ;// Clear bytecount to allow new data in; also stops NAKing
			EP0BCL = 0 ;
			break;

		//-----ָ��->Y�����λ-----
		case GP_COM_Y_Reset:
			
			GP_State = GP_OK_Y_Mot ;
			if( Y_MOT_Reset() == FALSE )		//Y_MOT�Լ�
				GP_State = GP_Error_Y_Mot ;		//Y_MOT����	

			EP0BCH = 0 ;// Clear bytecount to allow new data in; also stops NAKing
			EP0BCL = 0 ;
			break;

		//-----ָ��->Y����ͷ�	-----
		case GP_COM_Y_Free:
			Y_Mot_EN = Motor_EN_Free ;			//Y_����ͷ�
			Y_Mot_State = Mot_State_Free ;		//Y_���״̬

			EP0BCH = 0 ;// Clear bytecount to allow new data in; also stops NAKing
			EP0BCL = 0 ;
			break;

		//-----ָ��->Y�������	-----
		case GP_COM_Y_Hold:
			Y_Mot_EN = Motor_EN_Hold ;			//Y_�������
			Y_Mot_State = Mot_State_Hold ;		//Y_���״̬

			EP0BCH = 0 ;// Clear bytecount to allow new data in; also stops NAKing
			EP0BCL = 0 ;
			break;

	   //********FPGA**************************
		//-----ָ��->FPGAд--------
		case GP_COM_FPGA_Write:			//1BYTE(FPGAָ��),1BYTE(����H),1BYTE(����M),1BYTE(����L)
			EP0BCH = 0 ;
			EP0BCL = 0 ;
			while( EP0CS & bmEPBUSY ) ;			//�ȴ��˵�0����

			FPGA_Write( *( EP0BUF+0 ) , *( EP0BUF+1 ), *( EP0BUF+2 ), *( EP0BUF+3 ) ) ;

			EP0BCH = 0 ;// Clear bytecount to allow new data in; also stops NAKing
			EP0BCL = 0 ;
			break;

		//**********************************
		//-----ָ��->��������Laser��--------
		case GP_COM_Laser_On:

			Laser_EN = Laser_On ;		//��Laser		

			EP0BCH = 0 ;
			EP0BCL = 0 ;
			break;

		//-----ָ��->�ر�Laser-----
		case GP_COM_Laser_Off:

			Laser_EN = Laser_Off ;		//�ر�Laser

			EP0BCH = 0 ;// Clear bytecount to allow new data in; also stops NAKing
			EP0BCL = 0 ;
			break;

		//-----ָ��->Laser�������-----
		case GP_COM_Laser_Plus:
			EP0BCH = 0 ;
			EP0BCL = 0 ;
			while( EP0CS & bmEPBUSY ) ;		//�ȴ��˵�0����

			len  = *( EP0BUF+0 ) ;			//ȡLaser����ʱ����
 			len |= *( EP0BUF+1 ) << 8 ;

			Laser_Plus_Set( len ) ;			//�趨Laser����

			EP0BCH = 0 ;// Clear bytecount to allow new data in; also stops NAKing
			EP0BCL = 0 ;
			break;

		//-----ָ��->Laser����ģʽ����-----
		case GP_COM_Laser_Mode:
			EP0BCH = 0 ;
			EP0BCL = 0 ;
			while( EP0CS & bmEPBUSY ) ;			//�ȴ��˵�0����

			if( *( EP0BUF+0 ) == 0 )			//�Ƿ����ģʽ
 		   		PortE_OUT &= ~Laser_Mode ;		//Laser���ģʽ
			else
				PortE_OUT |= Laser_Mode ;		//LaserУ����������ģʽ

			EP0BCH = 0 ;// Clear bytecount to allow new data in; also stops NAKing
			EP0BCL = 0 ;
			break;

		//-----ָ��->дע����Ϣ	= 16BYTE
		case GP_COM_Regist:
			EP0BCH = 0 ;
			EP0BCL = 0 ;
			while(EP0CS & bmEPBUSY);		//�ȴ��˵�0����

			addr = &EEPROM_Register + 20 ;				//�趨Register��ַ + code��EEPROM��ַ��16+��ȫ�ֽ�4
			bc   = GP_GET_Regist_Len ; 					//Register���ݳ���

			EEPROMWrite( addr, bc, (WORD)EP0BUF );		//дע����Ϣ

			EP0BCH = 0 ;// Clear bytecount to allow new data in; also stops NAKing
			EP0BCL = 0 ;
			break ;

/*		//-----ָ��->����������-----
		case GP_COM_Indic:
			EP0BCH = 0 ;
			EP0BCL = 0 ;
			while( EP0CS & bmEPBUSY ) ;		//�ȴ��˵�0����

			Indic_Flash = FALSE ;			//�ر�����

			if( *( EP0BUF+0 ) == 2 )		//�Ƿ񼤹�������?
				Indic_Flash = TRUE ;		//����
			else if( *( EP0BUF+0 ) == 1 )	//�Ƿ񼤹��ߴ�?
 		   		PortE_OUT &= ~Indic_Red ;	//RED����ָʾ��=0
			else
				PortE_OUT |=  Indic_Red ;	//RED����ָʾ��=1

			EP0BCH = 0 ;// Clear bytecount to allow new data in; also stops NAKing
			EP0BCL = 0 ;
			break;
*/
		//-----ָ��->����AD����-----
		case GP_COM_Light:
			EP0BCH = 0 ;
			EP0BCL = 0 ;
			while( EP0CS & bmEPBUSY ) ;		//�ȴ��˵�0����


			EP0BCH = 0 ;// Clear bytecount to allow new data in; also stops NAKing
			EP0BCL = 0 ;
			break;

		//-----ָ��->����ADJ_RAM��ַ= 2BYTE
		case GP_COM_ADJ_Addr:
			EP0BCH = 0 ;
			EP0BCL = 0 ;
			while(EP0CS & bmEPBUSY);				//�ȴ��˵�0����

			ADJ_RAM_Addr  = *( EP0BUF+0 ) ;			//ADJ_RAM��ַ
 			ADJ_RAM_Addr |= *( EP0BUF+1 ) << 8 ;

			EP0BCH = 0 ;// Clear bytecount to allow new data in; also stops NAKing
			EP0BCL = 0 ;
			break ;

		//-----ָ��->ADJд��	= 16BYTE
		case GP_COM_ADJ_Write:
			EP0BCH = 0 ;
			EP0BCL = 0 ;
			while(EP0CS & bmEPBUSY);				//�ȴ��˵�0����

		   	for( i = 0 ; i < 16 ; i++ )
			{
				ADJ_Write( ADJ_RAM_Addr , *( EP0BUF + i ) ) ;		//дADJ_RAM
				ADJ_RAM_Addr++ ;
			}

			EP0BCH = 0 ;// Clear bytecount to allow new data in; also stops NAKing
			EP0BCL = 0 ;
			break ;
	   	
		//-----��Ӧ->ADJ��ȡ = 16BYTE
		case GP_GET_ADJ_Read:
			while(EP0CS & bmEPBUSY);			//�ȴ��˵�0����

		   	for( i = 0 ; i < 16 ; i++ )
			{
				*( EP0BUF+i ) = ADJ_Read( ADJ_RAM_Addr ) ;
				ADJ_RAM_Addr++ ;
			}

			EP0BCH = 0;							//֪ͨ����
			EP0BCL = GP_GET_ADJ_Read_Len; 		//Arm endpoint with 3 bytes to transfer
			EP0CS |= bmHSNAK; 					//Acknowledge handshake phase of device request
			break ;



		//**********************************
		//-----EZ-USB Control Panel EEPROM,��д--------
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
//********System_�Լ�*******
void System_Check( void )
{
//1:FPGA���
	if( FPGA_Check( ) == FALSE )
	{
	 	GP_State = GP_Error_FPGA ;		//FPGA����	
		return ;
	}
										//Ϊ����USB���Ӵ���
	if( GotSUD )						//�ж϶˵�0�Ƿ���USB����            
	{
		SetupCommand();					//�������󣬽���������         
		GotSUD = FALSE;            
	}

//2:RAM���
	if( Ram_Check() == FALSE )			//RAM_�Լ�
	{
		GP_State = GP_Error_RAM ;		//RAM����	
		return ;
	}

	if( GotSUD )						//�ж϶˵�0�Ƿ���USB����            
	{
		SetupCommand();					//�������󣬽���������         
		GotSUD = FALSE;            
	}

//3:Y_Mot���
	if( Y_MOT_Reset() == FALSE )		//Y_MOT�Լ�
	{
		GP_State = GP_Error_Y_Mot ;		//Y_MOT����	
		return ;
	}

	if( GotSUD )						//�ж϶˵�0�Ƿ���USB����            
	{
		SetupCommand();					//�������󣬽���������         
		GotSUD = FALSE;            
	}

//4:X_Mot���
	if( X_MOT_Reset() == FALSE )		//X_MOT�Լ�
	{
		GP_State = GP_Error_X_Mot ;		//X_MOT����	
		return ;
	}

	if( GotSUD )						//�ж϶˵�0�Ƿ���USB����            
	{
		SetupCommand();					//�������󣬽���������         
		GotSUD = FALSE;            
	}

/*
//5:Encoider���
	if( Encoder_Check() == FALSE )		//Encoder�Լ�
	{
		GP_State = GP_Error_Encoder ;	//Encoder����	
		return ;
	}

	if( GotSUD )						//�ж϶˵�0�Ƿ���USB����            
	{
		SetupCommand();					//�������󣬽���������         
		GotSUD = FALSE;            
	}


//6:Laser���
//	Laser_Check() ;


//7:SYStem_����
	GP_State 	= GP_State_OK ;
} 
*/

//**********�ⲿ�ж�0
void Exter_Int_0(void) interrupt 0
{

}

//**********�ⲿ�ж�1
void Exter_Int_1(void) interrupt 0
{

}


//--------Laser-----------------------------------------
//**********Time1�жϴ���,����Laser����
void Timer1_Int_0(void) interrupt 0		//***T1=CLKOUT/4;  T=250/4ns
{
	Laser_EN = Laser_On ;				//��Laser

	TR1 = FALSE ;						//ֹͣT1����

	TL1 = LSB( Laser_Plus_Time ) ;		//����ʱ������8λ
    TH1 = MSB( Laser_Plus_Time ) ;		//����ʱ������8λ

	TR1 = TRUE ;						//����T1����

	Laser_EN = Laser_Off ;				//�ر�Laser
}

//*******Laser��������********
void Laser_Plus_Set( WORD lTimer )		//lTimer������ر�ʱ������ lTimer= 0 �������������
{
	TR1 = FALSE ;						//ֹͣT1����
	Laser_EN = Laser_Off ;				//�ر�Laser

	Laser_Plus_Time  = lTimer ;			//����Laser����ʱ����

	if( Laser_Plus_Time != 0 )
	{
		TL1 = LSB( Laser_Plus_Time ) ;	//����ʱ������8λ
    	TH1 = MSB( Laser_Plus_Time ) ;	//����ʱ������8λ

		TR1 = TRUE ;					//����T1����	
	}
}


/*
//*******Laser_�Լ�*******
void Laser_Check( void )
{
	BYTE	AAAA , BBBB ;

	if( CTS_Model == CTS_330  )					//����ѡ��
		BBBB = 17 ;
	else if( CTS_Model == CTS_500 )
		BBBB = 33 ;
	else
		BBBB = 65 ;

}
*/




//----------X_���------------------------------------------------------
//**********Time2�жϴ���, X���
void Timer2_Int_0(void) interrupt 0	using 3				//***T2=CLKOUT/4;  T=0.08333us //ʵ��T_Min=3.24us
{
	X_Mot_CP = Motor_CP_Plus ;							//�������

	TF2 = FALSE ;										//Timer2�жϱ�־���

	switch( X_Mot_State )
	{
		//���ٶ�
		case  Mot_State_Up :							//���ٶ�
			RCAP2L = LSB( X_Mot_Time[ X_Timer_ip ] ) ;	//����ֵ
			RCAP2H = MSB( X_Mot_Time[ X_Timer_ip ] ) ;	//��8λ

			X_Timer_ip++ ;								//ָ��+1

			X_Timer_Add-- ;								//���ٲ���-1

			if( X_Timer_Add == 0 )						//�Ƿ���ٽ���?
				X_Mot_State = Mot_State_Run ;			//�������ٶ�

			break ;

		//���ٶ�
		case  Mot_State_Run :							//���ٶ�
			RCAP2L = X_Speed_Time_L ;					//����ֵ
			RCAP2H = X_Speed_Time_H ;					//��8λ

			X_Mot_Run_Len-- ;							//����-1

			if ( X_Mot_Run_Len == 0 ) 					//�Ƿ����ٽ���?
			{	
				X_Mot_State = Mot_State_Down ;			//������ٶ�
			    
				X_Timer_ip-- ;							//ָ��-1
			}

			_nop_ ();		//��ʱ
			_nop_ ();		//��ʱ
//			_nop_ ();		//��ʱ
//			_nop_ ();		//��ʱ
//			_nop_ ();		//��ʱ

			break ;

		//���ٶ�
		case  Mot_State_Down :							//���ٶ�
			RCAP2L = LSB( X_Mot_Time[ X_Timer_ip ] ) ;	//����ֵ
			RCAP2H = MSB( X_Mot_Time[ X_Timer_ip ] ) ;	//��8λ

			if( X_Timer_ip == 0 ) 						//�Ƿ���ٵ���?
			{
				TF2 = FALSE ;							//Timer2�жϱ�־���
				TR2 = FALSE;							//������T2����,ֹͣ����
				X_Mot_State = Mot_State_Hold ;			//��������

			}
			else
				X_Timer_ip-- ;							//ָ��-1

		 	break ;
	}

	X_Mot_CP = Motor_CP_Normal ;									//����������� 22~38T
}

//**********X����ƶ�����,��Stop_Bar=X_Bar_Lengʱ���� 
//			X_MOT_Dir:X_�������, X_Speed_Time:X_����ٶ�ʱ����, X_MOT_Len:X_������г���step
//X_Speed_Time = 65536-72000/�ٶ�
BOOL X_MOT_Move( BOOL X_Dir, WORD X_Speed_Time , WORD X_Len )
{
//1���Ƿ�ֹͣ
	if( ( X_Mot_State != Mot_State_Free) && ( X_Mot_State != Mot_State_Hold ) )		//�Ƿ��������У�
		return( FALSE ) ; 						//ʧ��,	��������

//2���Ƿ�����
//	X_Mot_EN = Motor_EN_Hold ;					//X_����ӵ�����
//	X_Mot_State = Mot_State_Hold ;				//X_���״̬�趨

//	EZUSB_Delay( 2 ) ;							//��ʱ2ms

//3���ֲ𡢱���ʱ�������жϳ�����
	X_Speed_Time_L = LSB( X_Speed_Time ) ;		//X_����ٶ�ʱ����
	X_Speed_Time_H = MSB( X_Speed_Time ) ;

//4��������ٲ���
  	for ( X_Timer_Add = 0 ; X_Timer_Add < X_Step_Add ; X_Timer_Add++ )				//������ٲ���
	{
		if( X_Mot_Time[ X_Timer_Add ] > X_Speed_Time )		//�Ƿ��Ѵﵽ�ٶȣ�	
			break ;

		if( 2 * X_Timer_Add >= X_Len )			//�Ƿ��ѵ���򳬹�����?
		    break ;
	}

	X_Timer_Add = X_Timer_Add - 1 ;				//����-1

//5���������ٲ���
	X_Mot_Run_Len = X_Len - 2 *  X_Timer_Add ;	//�������ٲ���

//6���Ƿ񳬳�	
	if( X_Mot_Run_Len > X_Max_Len )
		return( FALSE ) ; 						//������ʧ�ܡ�

//7���趨X_�������
	X_Mot_Dir = X_Dir ; 						//�趨X_�������

	X_Timer_ip = 0 ;							//ʱ����ָ��

	TL2 = RCAP2L = LSB( X_Mot_Time[ 0 ] ) ;		//����ʱ������8λ
    TH2 = RCAP2H = MSB( X_Mot_Time[ 0 ] ) ;		//����ʱ������8λ

	X_Mot_State = Mot_State_Up ;				//������ٶ�

   	TR2 = TRUE ;								//����T2����

	return( TRUE ) ; 
}

//**********X���ֹͣ
void X_MOT_Stop( void )
{
	if( ( X_Mot_State == Mot_State_Free) || ( X_Mot_State == Mot_State_Hold ) )		//�Ƿ�û�����У�
		return ; 								//����,	û������

	X_Mot_State = Mot_State_Down ;				//������ٶ�
}

//********X_�����λ
BOOL X_MOT_Reset( void )
{
//1:�Ƿ��������У�
	if( ( X_Mot_State != Mot_State_Free) && ( X_Mot_State != Mot_State_Hold ) )		//�Ƿ��������У�
		return( FALSE ) ; 									//����,	��������

//2:�Ƿ��ڼ��λ����?
	if( X_Mot_Pos == X_Pos_On )								//�Ƿ��ڼ��λ����?
	{
 		X_MOT_Move( X_Dir_Lift , X_Low_Speed, X_Step_50mm );//�ڼ��λ����,�����ƶ�50mm

		while( X_Mot_State != Mot_State_Hold ) ;			//�ȴ����ֹͣ

		if( X_Mot_Pos == X_Pos_On )							//�Ƿ����ڼ��λ����?
		{
			X_Mot_State = Mot_State_Free ;					//���״̬

			return( FALSE ) ;								//���ڼ��λ����,��λʧ��
		}

		EZUSB_Delay( 100 ) ;								//��ʱ100ms
	}

//3:Ѱ��λ��
	X_MOT_Move( X_Dir_Right , X_Low_Speed , X_Step_2000mm );//�����ƶ�1000mm
	
	while( X_Mot_Pos != X_Pos_On )							//�Ƿ��ڼ��λ����?
	{
		if( X_Mot_State == Mot_State_Hold )					//�Ƿ��Ѿ��ƶ�1000mm?
		{
			X_Mot_State = Mot_State_Free ;					//���״̬

			return( FALSE ) ;								//��δ�����λ����,��λʧ��
	   	}
	}
	
	X_Mot_State = Mot_State_Down ;							//������ٶ�

	while( X_Mot_State != Mot_State_Hold );					//�ȴ����ֹͣ

	EZUSB_Delay( 100 ) ;									//��ʱ100ms

//4:�����ƶ�
	X_MOT_Move( X_Dir_Lift , X_Low_Speed , X_Step_50mm ) ;	//�����ƶ�50mm
	
	while( X_Mot_State != Mot_State_Hold ) ;				//�ȴ����ֹͣ

	EZUSB_Delay( 100 ) ;									//��ʱ100ms

//5:�ٴ�Ѱ��λ��
	X_MOT_Move( X_Dir_Right , X_Low_Speed , X_Step_2000mm );//�����ƶ�1000mm
	
	while( X_Mot_Pos != X_Pos_On )							//�Ƿ��ڼ��λ����?
	{
		if( X_Mot_State == Mot_State_Hold )					//�Ƿ��Ѿ��ƶ�1000mm?
		{
			X_Mot_State = Mot_State_Free ;					//���״̬

			return( FALSE ) ;								//��δ�����λ����,��λʧ��
	   	}
	}
	
	X_Mot_State = Mot_State_Down ;							//������ٶ�

	while( X_Mot_State != Mot_State_Hold );					//�ȴ����ֹͣ

	EZUSB_Delay( 100 ) ;									//��ʱ100ms

//6:�����ƶ�����λ��
	X_MOT_Move( X_Dir_Lift , X_Low_Speed , X_Step_5mm ) ;	//�ڼ��λ����,�����ƶ�5mm

    while( X_Mot_State != Mot_State_Hold );					//�ȴ����ֹͣ

	return( TRUE ) ;										//��λ���
}

//----------Y_���------------------------------------------------------
//**********Time0�жϴ���, Y���
void Timer0_Int_0(void) interrupt 0				//***T0=CLKOUT/4;  T=0.08333us// ʵ��T_min=4.6us
{
	Y_Mot_CP = Motor_CP_Plus ;					//�������
		
	TR0 = FALSE ;								//ֹͣ����

	TL0 = LSB( Y_Mot_Time[ Y_Timer_ip ] ) ;		//����ʱ������8λ
    TH0 = MSB( Y_Mot_Time[ Y_Timer_ip ] ) ;		//����ʱ������8λ
	TR0 = TRUE ;								//����T0����

	switch( Y_Mot_State )
	{
		case  Mot_State_Up :					//���ٶ�
			Y_Timer_ip++ ;						//ָ��+1

	   		if( Y_Timer_ip == Y_Add_Step - 1 ) 	//�Ƿ���ٵ���?
				Y_Mot_State = Mot_State_Run ;	//�������ٶ�

			break ;

		case  Mot_State_Run :					//���ٶ�
			Y_Mot_Run_Len-- ;					//����-1

			if ( Y_Mot_Run_Len == 0 ) 			//�Ƿ����ٽ���?
				Y_Mot_State = Mot_State_Down ;	//������ٶ�

			break ;

		case  Mot_State_Down :					//���ٶ�
			if( Y_Timer_ip == 0 )
				Y_Mot_State = Mot_State_End ; 	//�������
			else
		    	Y_Timer_ip-- ;					//ָ��-1 

		 	break ;

	   case  Mot_State_End :					//����
		   	Y_Mot_State = Mot_State_Hold ;		//��������

			TR0 = FALSE ;						//ֹͣ����

			break ;
	 }

	Y_Mot_CP = Motor_CP_Normal ;				//������峣̬
	
}

//**********Y����ƶ�����,��Stop_Bar=X_Bar_Lengʱ���� 
//			Y_Dir:Y_�������, Y_Len:Y_������в�����Y_Len>60steps
//			����TRUE����������FALSEʧ�ܣ���������
BOOL Y_MOT_Move( BOOL Y_Dir, WORD Y_Len )
{
	if( ( Y_Mot_State != Mot_State_Free) && ( Y_Mot_State != Mot_State_Hold ) )		//�Ƿ��������У�
		return( FALSE ) ; 						//ʧ��,	��������

	if( Y_Len < 2 * Y_Add_Step - 1 )
		return( FALSE ) ; 						//ʧ��,	С��2��Y_Add_Step
	 
	Y_Mot_EN = Motor_EN_Hold ;					//Y_����ӵ�����
	Y_Mot_State = Mot_State_Hold ;				//Y_���״̬�趨
		
	EZUSB_Delay( 2 ) ;							//��ʱ2ms

	Y_Mot_Dir = Y_Dir ; 						//�趨Y_�������

	Y_Mot_Run_Len = Y_Len - 2 * Y_Add_Step ;	//�������ٲ���	

	Y_Timer_ip = 0 ;							//ʱ����ָ��
	TL0 = LSB( Y_Mot_Time[ 0 ] ) ;				//����ʱ������8λ
    TH0 = MSB( Y_Mot_Time[ 0 ] ) ;				//����ʱ������8λ

	TR0 = TRUE ;								//����T0����

	Y_Mot_State = Mot_State_Up ;				//������ٶ�

	return( TRUE ) ;
}

//**********Y_���ֹͣ
void Y_MOT_Stop( void )
{
	if( ( Y_Mot_State == Mot_State_Free) || ( Y_Mot_State == Mot_State_Hold ) )		//�Ƿ�û�����У�
		return ; 								//����,	û������

	Y_Mot_State = Mot_State_Down ;				//������ٶ�
}


//**********Y_�����λ
BOOL Y_MOT_Reset( void )
{
	BYTE iAAAA ;   	

	Y_MOT_Move( Y_Dir_Forward , Y_1mm ) ;					//�����ƶ�1mm

	while( Y_Mot_State != Mot_State_Hold ) ;				//�ȴ����ֹͣ

	EZUSB_Delay( 20 ) ;										//��ʱ20ms

	for( iAAAA = 0; iAAAA < 2; iAAAA++ )	   				//Y_MOT_Move�65535=6.5mm
	{
		Y_MOT_Move( Y_Dir_Back , 10 * Y_1mm ) ;				//�����ƶ�5mm

		while( Y_Mot_State != Mot_State_Hold )				//�ȴ����ֹͣ
		{
			if( Y_Mot_Pos == Y_Pos_On )						//�Ƿ�λ��?
			{
		 		Y_Mot_State = Mot_State_Down ;				//������ٶ�

				while( Y_Mot_State != Mot_State_Hold ) ;	//�ȴ����ֹͣ

				EZUSB_Delay( 20 ) ;							//��ʱ20ms

				Y_MOT_Move( Y_Dir_Forward , Y_1mm ) ;		//�����ƶ�1mm

				while( Y_Mot_State != Mot_State_Hold ) ;	//�ȴ����ֹͣ

				return( TRUE ) ; 							//��λ����,����
			}
		}
   	}

	Y_Mot_EN = Motor_EN_Free ;								//Y_����ͷ�
	Y_Mot_State = Mot_State_Free ;							//Y_���״̬�趨
		
	return( FALSE ) ; 										//��λʧ��,����
}



//--------FPGA------------------------------
//********CPU_FPGA��ʼ��
void CPU_FPGA_Int( void )
{
	Laser_EN = Laser_Off ;								//�ر�Laser

	FPGA_Write( COM_Laser_Disable, 0		 , 0, 0 ) ;	//��ֹLaser��ӡ���
	FPGA_Write( COM_Mode_Sel	 , Mode_1	 , 0, 0 ) ;	//����ģʽ=1��RAM_A��GPIF��RAM_B��Laser
	FPGA_Write( COM_Dot_Byte	 , Laser_Byte, 0, 0 ) ;	//ÿ����դ���Laser�ֽ���
	FPGA_Write( COM_LED_Check	 , 0xff		 , 0, 0 ) ;	//FPGA_LEDֵ
}

//********FPGA_Write:����д�룬FPGA_Com:ָ��,FPGA_data:ָ�����ݣ�FPGA_Com.0�ȳ�
void FPGA_Write( BYTE FPGA_Com , BYTE FPGA_data_1 , BYTE FPGA_data_2 ,BYTE FPGA_data_3 )
{
	FPGA_Port = FPGA_data_3 ;		//�����������3
	FPGA_Port = FPGA_data_2 ;		//�����������2
	FPGA_Port = FPGA_data_1 ;		//�����������1
	FPGA_Port = FPGA_Com ;			//�������ָ��

	FPGA_Set = TRUE ;				//CPU������������					
	FPGA_Set = FALSE ;
}

//********FPGA_�Լ�*******
/*
BOOL FPGA_Check(void) 
{
	FPGA_Write( COM_LED_Check, 0x5a, 0, 0, 1 ) ;	//����FPGA��LEDֵ
	FPGA_Write( COM_Check_Read, 0, 0, 0, 0 ) ;		//��ȡFPGA��LEDֵ

	if( FPGA_Port == 0x5a )							//�Ƿ�LEDֵ��ȷ��
		return( TRUE ) ;							//FPGA_����
	else
		return( FALSE ) ;							//FPGA_����
}
*/

//--------RAM------------------------------------
//********RAM_�Լ�*******
/*
BOOL Ram_Check(void) 
{
	BYTE	AAAA ;

//1:RAM_Aд256������
	FPGA_Write( COM_Mode_Sel, Mode_3, 0, 0, 1 ) ;	//Mode_3: RAM_A��rRAM_Val,	RAM_B��CPU_Read		
	FPGA_Write( COM_Ram_Addr_Clr, 0, 0, 0, 0 ) ;	//Ram��ַ����

	for( AAAA = 0 ; AAAA < 250 ; AAAA++ )
		FPGA_Write( COM_Ram_Write, AAAA, 0, 0, 1 ) ;

//2:RAM_Bд256������	
	FPGA_Write( COM_Mode_Sel, Mode_2, 0, 0, 1 ) ;	//Mode_2: RAM_A��CPU_Read,	RAM_B��rRAM_Val,	
	FPGA_Write( COM_Ram_Addr_Clr, 0, 0, 0, 0 ) ;	//Ram��ַ����	

	for( AAAA = 0 ; AAAA < 250 ; AAAA++ )
		FPGA_Write( COM_Ram_Write, AAAA, 0, 0, 1 ) ;

//3:RAM_A��256�����ݡ��Ƚ�
	FPGA_Write( COM_Mode_Sel, Mode_2, 0, 0, 1 ) ;	//Mode_2: RAM_A��rRAM_Val,	RAM_B��CPU_Read
	FPGA_Write( COM_Ram_Addr_Clr, 0, 0, 0, 0 ) ;	//Ram��ַ����

	for( AAAA = 0 ; AAAA < 250 ; AAAA++ )
	{
		FPGA_Write( COM_Ram_Read, 0, 0, 0, 0 ) ;	//CPU��RAM

		if( FPGA_Port != AAAA )
			return( FALSE ) ;						//RAM_����
	}

//4:RAM_B��256�����ݡ��Ƚ�
	FPGA_Write( COM_Mode_Sel, Mode_3, 0, 0, 1 ) ;	//Mode_3: RAM_A��rRAM_Val,	RAM_B��CPU_Read
	FPGA_Write( COM_Ram_Addr_Clr, 0, 0, 0, 0 ) ;	//Ram��ַ����

	for( AAAA = 0 ; AAAA < 250 ; AAAA++ )
	{
		FPGA_Write( COM_Ram_Read, 0, 0, 0, 0 ) ;	//CPU��RAM

		if( FPGA_Port != AAAA )
			return( FALSE ) ;						//RAM_����
	}

//5:RAM_����
	return( TRUE ) ;
}
*/

//--------Encoder-----------------------------------
//********Encoder_�Լ�*******
/*
BOOL Encoder_Check(void) 
{
//1:��դģʽ������	
	FPGA_Write( COM_Encode_Div , Encode_Div_2540 , 0, 0, 1 ) ;	//��դ2540dpi=10u
	FPGA_Write( COM_Encode_Clr, 0, 0, 0, 0 ) ;					//��դ����

//2:�������ƶ�50mm������դ
	X_MOT_Move( X_Dir_Lift , X_Low_Speed , X_50mm ) ;			//****�ڼ��λ����,�����ƶ�90

	while( X_Mot_State != Mot_State_Hold ) ;					//�ȴ�X���ֹͣ	
	EZUSB_Delay( 200 ) ;										//��ʱ200ms

	if( ( Encoder_Read() - Encode_50mm + 200 ) > Encode_Check ) 	//�������90mm Encoder ֵ
  		return( FALSE ) ;

//3:�������ƶ�50mm��λ������դ
	X_MOT_Move( X_Dir_Right , X_Low_Speed , X_50mm ) ;			//****�����ƶ�90����λ

	while( X_Mot_State != Mot_State_Hold ) ;					//�ȴ�X���ֹͣ	
	EZUSB_Delay( 200 ) ;										//��ʱ200ms

	if( ( Encoder_Read() - Encode_Reset_Val + 200 ) > Encode_Check )		//������ٻ�λ Encoder ֵ
   		return( FALSE ) ;

//4:�������ƶ�500mm������դ
	X_MOT_Move( X_Dir_Lift , X_High_Speed , X_500mm ) ;			//****���������ƶ�500mm

	while( X_Mot_State != Mot_State_Hold ) ;					//�ȴ�X���ֹͣ	
	EZUSB_Delay( 200 ) ;										//��ʱ200ms

	if( ( Encoder_Read() - Encode_500mm + 200 ) > Encode_Check ) 	//�������90mm Encoder ֵ
   		return( FALSE ) ;

//5:�������ƶ�500mm��λ������դ
	X_MOT_Move( X_Dir_Right , X_High_Speed , X_500mm ) ;		//****���������ƶ�500mm

	while( X_Mot_State != Mot_State_Hold ) ;					//�ȴ�X���ֹͣ	
	EZUSB_Delay( 200 ) ;										//��ʱ200ms

	if( ( Encoder_Read() - Encode_Reset_Val + 200 ) > Encode_Check ) 	//�������90mm Encoder ֵ
   		return( FALSE ) ;

//6:Encoder_����
	X_MOT_Reset() ;			//��λ

	return( TRUE ) ;
}
*/


//********��ʱ0.5us ���255us*******
void Delay_us( BYTE T_us )
{
	while( T_us-- ) ;					//��ʱ:1��T_us Լ0.5us	
}

//**********ADJ RAM*************
	#define  ADJ_ADR_WR  0xa0           // slave address + write_bit 
	#define  ADJ_ADR_RD  0xa1           // slave address +  read_bit 

//��������
void ADJ_Start(void)  
{ 
	//SCL���ڸߵ�ƽʱ,SDA�Ӹߵ�ƽת��͵�ƽ,��ʾһ��"��ʼ"״̬,��״̬��������������֮ǰִ��
	PortE_OUT |= ADJ_SDA ; 				// initial state of the I2C bus 
  	PortE_OUT |= ADJ_SCL ; 
  	Delay_us( 14 ) ;

  	PortE_OUT &= ~ADJ_SDA ;  			   	// SCL=1 , SDA=0 after 7 usecs 
  	Delay_us( 10 ) ;  

  	PortE_OUT &= ~ADJ_SCL ;    		   	// SCL=0 , SDA=0 after other 5 usecs
}  

//ֹͣ���� 
void ADJ_Stop( void )  
{ 
	//SCL���ڸߵ�ƽʱ,SDA�ӵ͵�ƽת��ߵ�ƽ,��ʾһ��"ֹͣ"״̬,��״̬��ֹ����ͨѶ
	PortE_OUT &= ~ADJ_SCL ; 				// SDA=0,SCL=0, initial state of I2C  
  	PortE_OUT &= ~ADJ_SDA ; 				  
  	Delay_us( 4 ) ;

  	PortE_OUT |= ADJ_SCL ;  			   	// SDA=0,SCL=1, after 2 usecs 
  	Delay_us( 12 ) ;

  	PortE_OUT |= ADJ_SDA ;   		   	// SDA=1,SCL=1, after other 5 usecs
}  
  
//��IIC���߲���Ӧ��
void ADJ_Ack(void)  
{ 
	//EEPROMͨ�����յ�ÿ����ַ������֮��,��SDA�͵�ƽ�ķ�ʽȷ�ϱ�ʾ�յ���SDA��״̬
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

//����IIC���߲���Ӧ��
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
 

//��IIC����д���� 
void ADJ_Send( BYTE Sendbyte ) 	// write an 8b streamin 
{ 
	BYTE iAAAA ; 
  
  	for( iAAAA = 8 ; iAAAA > 0 ; iAAAA-- )  
  	{ 
		Delay_us( 6 ) ;			// SDA = bit_n of eeprom's data buffer 
    	Sendbyte <<= 1; 		//ʹCY=sendbyte^7   	
		
		if( CY )
			PortE_OUT |= ADJ_SDA ; 			//CY ��λ��־λ
		else
		    PortE_OUT &= ~ADJ_SDA ;
		
		Delay_us( 4 ) ;		   	

		PortE_OUT |= ADJ_SCL ;  			//pulse high SCL 
		Delay_us( 10 ) ;		//for 5 microseconds 

		PortE_OUT &= ~ADJ_SCL ; 
		Delay_us( 4 ) ;
  	}  

	PortE_OUT |= ADJ_SDA ;				//rise-up SDA and program it as input to read the ACK from the memory
	OEC = PC_ADJ_RD ;			//portC I/O���� 
	Delay_us( 6 ) ;
  
  	PortE_OUT |= ADJ_SCL ;  			   	// pulse high SCL for 5 useconds
  	Delay_us( 10 ) ; 
	
	PortE_OUT &= ~ADJ_SCL ; 			    // 
	OEC = PC_ADJ_WR ;			//portC  I/O����,program again SDA as open-drain out 
}

//��IIC�����϶������ӳ��� * * * * */  
BYTE ADJ_Rec( void )  
{ 
	BYTE R_Data , iAAAA ;
	  
  	PortE_OUT |= ADJ_SDA ;
	OEC = PC_ADJ_RD ;			//portC I/O���� ,prepare SDA as input (=1)

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

	OEC = PC_ADJ_WR ;			//portC  I/O����,program again SDA as open-drain out   
  	return( R_Data ) ;  
}   

//���д
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
//24C256 �Ķ�д����
BOOL   ADJ_RW(unsigned char *DataBuff,unsigned char Length,unsigned int Addr,  
                     unsigned char Control,enum eepromtype enumer)  
{   
  
  unsigned char data j,i=ERROR;  
  bit errorflag=1;  						//�����־  
  while(i--)  
  { Start();  								//��������  
    Send(Control & 0xfe); 					//��IIC����д���ݣ�������ַ  
    if(RecAck()) continue; 					//��д����ȷ��������ѭ��  
    if(enumer > AT2416)  
    { Send((unsigned char)(Addr >> 8));		//����������ת��Ϊ�ַ������ݣ�����ȡ�ͣ�ֻȡ��8λ.�����������32Kλ��ʹ��16λ��ַѰַ��д��߰�λ��ַ  
      if(RecAck())  continue;  
    }  
    Send((unsigned char)Addr); 				//��IIC����д����  
    if(RecAck())  continue; 				//��д��ȷ��������ѭ��  
    if(!(Control & 0x01))   				//�ж��Ƕ���������д����  
    { j=Length;  
      errorflag=0;         					//���������λ  
      while(j--)  
      { Send(*DataBuff++); 					//��IIC����д���� 
        if(!RecAck()) continue; 			//��д��ȷ��������ѭ�� 
        errorflag=1;  
        break;  
      }  
      if(errorflag==1) continue;  
      break;  
    }  
    else  
    { Start();  						//��������  
      Send(Control);					//��IIC����д���� 
      if(RecAck()) continue;			//����ûӦ��������α���ѭ��  
      while(--Length)  					//�ֽڳ�Ϊ0����
      { *DataBuff ++= Receive();  
        Ack();   						//��IIC���߲���Ӧ�� 
      }  
      *DataBuff=Receive(); 				//�����һ���ֽ�  
      NoAck();  						//����IIC���߲���Ӧ��  
      errorflag=0;  
      break;  
    }  
  }  
  Stop();  								//ֹͣIIC����  
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
{							//�������ģʽ
   return(TRUE);
}

BOOL TD_Resume(void)        // Called after the device resumes
{							//�˳�����ģʽ
   return(TRUE);
}
*/

//-----------------------------------------------------------------------------
//USB�жϴ���, ����ĺ���ͨ���ж���ڱ�������
// **********�˵�0 USB���󵽴��ж�
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
   if (EZUSB_HIGHSPEED())	//���USB Speed 1:High Speed
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
   if (EZUSB_HIGHSPEED())	//���USB Speed 1:High Speed
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
//GPIF done ���ݽ��ս����ж�
void ISR_GpifComplete(void) interrupt 0
{
}
void ISR_GpifWaveform(void) interrupt 0
{
}


