//V19
/*
XMot:ɨ������8ϸ�֣�
XMot:����ٶ�Smax=1000mm/s��ת��rmax=625r/min��Ƶ��fmax=16666Hz������Tmin=60us����������Nmax=720
XMot:����ٶ�Smin=100mm/s�� ת��rmin=62.5r/min��Ƶ��fmin=1666.6Hz������Tmax=600us����������Nmin=7200

*/

//��������
#define CTS_Ver		21					// �̼��汾5
#define CTS_Model	CTS_500				// ����:CTS330=33, CTS500=50, CTS840=84
#define Serial_No   21001				// ���ţ�2�ֽ�


//my.h
//����˿ںͼĴ���Header file for cy7c68013 fx2 microcontroller.
//�˿�C ������ƶ˿�	8λ���
//�˿�D 0,1:LED������� 2,3:���������� 4:����3���� 5,6,7:RAM�������

//CPU��ƽ���úͲ���,����
#define CTS_300	  	0
#define CTS_500	  	1
#define CTS_1000  	2

#define EP0BUFF_SIZE		0x40

#define Motor_EN_Hold		TRUE		//������ʹ�ܣ�����		
#define Motor_EN_Free		FALSE		//������ʹ�ܣ��ͷ�

#define Motor_CP_Normal		TRUE		//���������壺��̬
#define Motor_CP_Plus		FALSE		//���������壺����

#define RAM_Bank_A			TRUE		//Bank A	GPIF��Bank A����
#define RAM_Bank_B			FALSE		//Bank B	CPU��Bank B����

#define X_Pos_On			TRUE		//����X����ڼ��λ��
#define X_Pos_Off			FALSE		//����X������ڼ��λ��

#define Y_Pos_On			TRUE		//����Y����ڼ��λ��
#define Y_Pos_Off			FALSE		//����Y������ڼ��λ��

#define Laser_On			FALSE
#define Laser_Off			TRUE

#define Laser_Gain_Check	40			//Laser����ʱ�ĸ߹���

#define Encode_Div_2540     1       	//10u   ��դ��Ƶֵ


//-------���״̬------


//-------ע��-------
#define Ver_Register  	0x02 	//ϵͳ��ע��

//*********����USB����ţ�GPָ�� 0xa0-0xaf ****************
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



//-----����USB����ţ�GPָ�� 0xb0-0xff ------------------
//1:ָ��'GP_COM_Prar' �趨����
//2:��Ӧ'GP_GET_Start' Y�����λ������X������ȴ�X����ȶ����ȴ�X�����λ����Ӧ
//3:���ٷ���һȦ���ݡ���Ӧ'GP_GET_Line'�ȴ���Ӧ
//4:ָ��'GP_COM_End' ����

#define GP_COM_X_Move		0xb0	//USB�����,ָ��:����X���			5		:1BYTE(����),1WORD(�ٶ�),1WORD(����)
#define GP_COM_X_Stop	  	0xb1    //USB�����,ָ��:X���ֹͣ			0
#define GP_COM_X_Reset  	0xb2    //USB�����,ָ��:X�����λ			0
#define GP_COM_X_Free     	0xb3    //USB�����,ָ��:X����ͷ�			0
#define GP_COM_X_Hold     	0xb4    //USB�����,ָ��:X�������			0

#define GP_COM_Y_Move		0xb5	//USB�����,ָ��:Y�����			3		:1BYTE(����),1WORD(����)
#define GP_COM_Y_Stop	  	0xb6    //USB�����,ָ��:Y���ֹͣ			0
#define GP_COM_Y_Reset  	0xb7    //USB�����,ָ��:Y�����λ			0
#define GP_COM_Y_Free  	    0xb8    //USB�����,ָ��:Y����ͷ�			0
#define GP_COM_Y_Hold  	    0xb9    //USB�����,ָ��:Y�������			0

#define GP_COM_Laser_On    	0xba    //USB�����,ָ��:��Laser  		0
#define GP_COM_Laser_Off 	0xbb    //USB�����,ָ��:�ر�Laser			0
#define GP_COM_Laser_Plus  	0xbc    //USB�����,ָ��:Laser������� 		2	    :1WORD(Laser����ʱ����,�ر�ʱ��)
#define GP_COM_Laser_Mode  	0xbd    //USB�����,ָ��:����ģʽ 			1	    :1BYTE(����Laser����оƬģʽ��0:���ģʽ/POS��⣬1:У����������/�¶ȶ�ȡ)
#define GP_COM_FPGA_Write  	0xbe    //USB�����,ָ��:FPGAд				5		:1BYTE(FPGAָ��),1BYTE(����H),1BYTE(����M),1BYTE(����L),1BYTE(�����ֽ���)
#define GP_COM_Light 	  	0xbf    //USB�����,ָ��:����AD����			0		

#define GP_COM_Data_Ok   	0xc1    //USB�����,ָ��:һ�����ݴ������	1		:1BYTE(���������Ϣ)
#define GP_COM_End	    	0xc2    //USB�����,ָ��:�������			0
#define GP_COM_COM_Test	 	0xc3    //USB�����,ָ��:����				1
#define GP_COM_Regist   	0xc4    //USB�����,ָ��:дע����Ϣ			16		:16BYTE(ע����Ϣ):ͷ��־"CTS":0x43, 0x54, 0x53 + �ͺ�:word + �汾:word + ʱ��:byte��,byte�� + ״̬:word + �������:Dword + ����:0x0d .
#define GP_COM_Indic   	    0xc5    //USB�����,ָ��:������			1       :1BYTE(����ָʾ���,0:�ر�; 1:��ʾ; 2:����):

#define GP_COM_Port_Set  	0xc7    //USB�����,ָ��:���ö˿�			1	    :1BYTE(�˿�����)
#define GP_COM_Port_Write  	0xc8    //USB�����,ָ��:д�˿�				1	    :1BYTE(д�˿�)

#define GP_COM_ADJ_Addr  	0xc9    //USB�����,ָ��:���ú���RAM��ַ	2	    :2BYTE(��ַ)
#define GP_COM_ADJ_Write  	0xca    //USB�����,ָ��:д����RAM			16	    :16BYTE(����)

#define GP_GET_state 		0xd1 	//USB�����, ��Ӧ->����״̬,		12		:1B(״̬), 1B(Port_A), 1B(Port_C), 1B(Port_D), 1B(Port_E), 1B(USBģʽ), 1B(�汾), 1B(����), 2B(���к���), 2b(ע����Ϣ)
#define GP_GET_Busy			0xd2 	//USB�����, ��Ӧ->����״̬,		1		:1BYTE(RAM_OK,������׼���ÿ������)
#define GP_GET_Encode     	0xd3    //USB�����, ��Ӧ->���ع�դֵ		3       :1BYTE(��դL),1BYTE(��դM),1BYTE(��դH)
#define GP_GET_Ram       	0xd4    //USB�����, ��Ӧ->����Ramֵ		2       :2BYTE(Ramֵ)
#define	GP_GET_FPGA			0xd5	//USB�����, ��Ӧ->�ض�				1
#define	GP_GET_XMot			0xd6	//USB�����, ��Ӧ->�ض�				1       :1BYTE(X���״̬)
#define	GP_GET_YMot			0xd7	//USB�����, ��Ӧ->�ض�				1       :1BYTE(Y���״̬)
#define	GP_GET_XYStop		0xd8	//USB�����, ��Ӧ->�ض�				1       :1BYTE(),��XY�����ֹͣʱ�������ݣ�����ȴ�
#define	GP_GET_Temp			0xd9	//USB�����, ��Ӧ->�ض�				4       :1WORD(�ڲ��¶�),1WORD(�ⲿ�¶�)
#define	GP_GET_Port			0xda	//USB�����, ��Ӧ->�ض�				1       :1BYTE()(���˿�)
#define GP_GET_Regist 	    0xdb    //USB�����, ��Ӧ->�ض�ע����Ϣ	    16		:16BYTE(ע����Ϣ):ͷ��־"CTS":0x43, 0x54, 0x53 + �ͺ�:word + �汾:word + ʱ��:byte��,byte�� + ״̬:word + �������:Dword + ����:0x0d .
#define	GP_GET_Light		0xdc	//USB�����, ��Ӧ->�ض�				3		:1BYTE(�����),1WORD(����)
#define GP_GET_COM_Test	 	0xde    //USB�����, ��Ӧ->����				1

#define GP_GET_ADJ_Read	 	0xdf    //USB�����, ��Ӧ->�ض�д����RAM	16		:16BYTE(����)

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

//--------CPU״̬����---------
#define GP_KEY_No       		0		//�ް���
#define GP_KEY_1        		1
#define GP_KEY_2        		2
#define GP_KEY_1_2      		3

#define GP_State_OK		   		0		//�ȴ�
#define GP_State_Check			1		//�Լ�
#define GP_State_Error			2		//����
#define GP_State_Pring			3		//���
#define GP_Error_X_Mot			4		//X_�������
#define GP_Error_Y_Mot			5		//Y_�������
#define GP_Error_FPGA			6		//FPGA����
#define GP_Error_RAM			7		//RAM����
#define GP_Error_Encoder		8		//Encoder����
#define GP_Error_Laser			9		//Laser����
#define GP_OK_X_Mot				14		//X_�������
#define GP_OK_Y_Mot				15		//Y_�������






#define GP_RAM_OK		   		0		//��������
#define GP_RAM_Null		   		1		//���ݿ�

#define Dir_Mode_Bidir			0		//˫���ӡ
#define Dir_Mode_Unidir			1		//�����ӡ

#define Mot_State_Free			0		//�������ͷ�
#define Mot_State_Hold			1		//��������ֹ����
#define Mot_State_Up			2		//���������ٶ�
#define Mot_State_Run			3		//���������ٶ�
#define Mot_State_Down			4		//���������ٶ�
#define Mot_State_End			5		//���������ٶ����һ��
#define Mot_State_Error			6		//����������

//****����USB����


//--------CPU_FPGAָ���--------
#define 	COM_Mode_Sel		 1  	//FPGAдָ��:ģʽѡ��: 
#define 	COM_Encode_Div		 2  	//FPGAдָ��:��դ��Ƶֵ
#define 	COM_Encode_Min		 3  	//FPGAдָ��:���������Χ��դ��Сλ��
#define 	COM_Encode_Max		 4  	//FPGAдָ��:���������Χ��դ���λ��
#define 	COM_Encode_Clr		 5  	//��դ����������; 0:���� 1:����
#define 	COM_Encode_Read		 6  	//FPGAдָ��:CPU����դ

#define 	COM_Laser_Set		 7  	//FPGAдָ��:�������һ��XLAT������
#define 	COM_Laser_Data		 8  	//FPGAдָ��:����һ����������
#define 	COM_Laser_Enable	 9  	//����Laser��ӡ���
#define 	COM_Laser_Disable	10  	//��ֹLaser��ӡ���
	
#define 	COM_Ram_Write		11  	//FPGAдָ��:Ramд��
#define 	COM_Ram_Read		12  	//FPGAдָ��:CPU��RAM
#define 	COM_Ram_Addr_Clr	13  	//RAM��ַ����; 0:���� 1:����

#define 	COM_Dot_Byte		14  	//FPGAдָ��:ÿ����դ���Laser�ֽ���
	
#define		COM_LED_Check		15 		//FPGA���LEDֵ
#define		COM_Check_Read		16 		//FPGA���,�ض�
#define		COM_Encode_Delay    17  	//FPGAдָ��:��դ��ʱֵ


//--------RAMѡ��ģʽ����
#define 	Mode_0	0 	//	rMode_Sel=000:	RAM_A��Laser,    RAM_B��GPIF,     Laser��RAM_A,      	GPIF��RAM_B
#define 	Mode_1	1	//	rMode_Sel=001:	RAM_A��GPIF, 	RAM_B��Laser, 	Laser��RAM_B,    	GPIF��RAM_A
#define 	Mode_2	2 	//	rMode_Sel=010:	RAM_A��CPU_Read,	RAM_B��rRAM_Val,	Laser��rLaser_Val, 	CPU_Read��RAM_A				
#define 	Mode_3	3 	//	rMode_Sel=011:	RAM_A��rRAM_Val,	RAM_B��CPU_Read,	Laser��rLaser_Val,	CPU_Read��RAM_B				
#define 	Mode_4	4 	//	rMode_Sel=100:		
#define 	Mode_5	5 	//	rMode_Sel=101:	
#define 	Mode_6	6 	//	rMode_Sel=110:					
#define 	Mode_7	7 	//	rMode_Sel=111:


//--------��������ָ���

#define     Laser_Gain_Head     0x0140      //0000_0001_0100_0000
#define     Laser_Gain_Head_H   0x01        //0000_0001
#define     Laser_Gain_Head_L   0x40        //0100_0000

//****CPU_FPGAָ������********

//****CTS����Ӳ����Ϣ********
#define		Laser_Byte          32          //ÿ����դ���Laser�ֽ���
#define		Laser_Word          16          //ÿ����դ���Laser����

#define		Encode_Reset_Val	200000 		//Encode��λʱ�ĳ�ֵ��Լ=50mm
#define		Encode_100mm		210000      //210000
#define		Encode_500mm		250000		//250000
#define		Encode_d_100mm		10000       //210000
#define		Encode_Check		400			//��դ��������

#define 	X_mm_Add            108      	//���پ���=108mm= 480tep
#define 	X_Step_Add          480     	//�����ٲ���
#define 	X_Step_1mm          4.44444444444444	//����X���1mm����,  180mm=800step
#define 	X_Step_5mm			22			//����X���5mm����
#define 	X_Step_10mm			44			//����X���10mm����
#define 	X_Step_50mm			222			//����X���50mm����
#define 	X_Step_100mm		444			//����X���100mm����
#define 	X_Step_500mm		2222		//����X���500mm����
#define 	X_Step_1000mm		4444		//����X���1000mm����
#define 	X_Step_2000mm		8889		//����X���2000mm����

#define 	X_Dir_Lift		    TRUE    	//����X�������-����
#define 	X_Dir_Right		    FALSE   	//����X�������-����

#define 	X_Max_Len			17778		//����߾��룬��Ϊ��LenС��2*���ٲ���ʱ��Len���� 180*25000/800

#define 	X_Low_Speed		    0x9688	    //��λ�ٶ�ʱ����=50mm/s
#define 	X_High_Speed	    0xFC7C	    //���ٶ�ʱ����  =1500mm/s

#define 	X_Time_N            270000		//72000 //101250//202500

#define 	Y_Add_Step			15			//����Y������ٲ���
#define 	Y_Dir_Forward       FALSE    	//����Y�������-ǰ��
#define 	Y_Dir_Back          TRUE   		//����Y�������-����
#define 	Y_1mm   			6400		//����Y���1mm����

//****CTS����Ӳ����Ϣ-����********


//----------------�˿�A---------------------
#define  Val_P_A_CFG	0x40	//portA ��������: PA.7ΪSLCS����(IFCONGIFCFG1:0 = 11)
#define  Val_P_A_IO		0xfb	//portA  I/O����: 1111,1011	0:����,1:���
#define  Val_P_A_Ini	0x03	//portA ��ʼ��ֵ: 0000,0011

#define	 Led_Off		TRUE	//����LED��
#define	 Led_On			FALSE	//����LED��

sbit 	Y_Mot_CP	= IOA^0; 	//�˿�A.0	ɨ���������ź� 		���: 1:��̬��0:��Ч ,����T>1.2us 
sbit 	Y_Mot_Dir	= IOA^1; 	//�˿�A.1	ɨ���������ź� 		���: 1:��̬��Dir��ǰCP����5us

sbit	Led_CPU		= IOA^3; 	//�˿�A.3	CPU����ָʾ 			���: 0:����  1:��-��̬

//----------------�˿�C---------------------
#define  Val_P_C_CFG	0x00	//portC ��������: bit0~7:I/O����
#define  Val_P_C_IO		0x9f	//portC  I/O����: 1001,1111 0:����,1:���
#define  Val_P_C_Ini	0x0e	//portC ��ʼ��ֵ: 0000,1110

#define	PC_ADJ_WR		0xff   	//portC  I/O����: 1111,1111 SDA���
#define	PC_ADJ_RD		0xfd   	//portC  I/O����: 1111,1101 SDA����

sbit 	FPGA_Set	= IOC^0; 	//�˿�C.0	FPGAָ������		   	���: 0:��̬��1:���� 
sbit 	Laser_EN	= IOC^1; 	//�˿�C.1	�������ʹ���ź� 		���: 1:��̬, 0:���
sbit 	FPGA_Reset	= IOC^2; 	//�˿�C.2	FPGA��λ			   	���: 1:��̬��0:��λ 
sbit 	X_Mot_Dir	= IOC^3; 	//�˿�C.3	���Ƶ�������ź� 		���: 1:��̬��Dir��ǰCP����5us
sbit 	X_Mot_CP	= IOC^4; 	//�˿�C.4	���Ƶ�������ź� 		���: 0:��̬��0:��Ч ,����T>1.2us=14.4T
sbit 	X_Mot_Pos	= IOC^5; 	//�˿�C.5	ɨ���������ź� 		����: 
sbit 	Y_Mot_Pos	= IOC^6; 	//�˿�C.6	���Ƶ��λ�ü�� 		����: 
sbit 	Y_Mot_EN	= IOC^7; 	//�˿�C.7	ɨ����ʹ���ź� 		���: 0:��̬��1:ʹ�� ,EN��ǰDir����5us

//----------------�˿�E---------------------
#define  Val_P_E_CFG	0x00	//portE ��������: bit0~7:I/O����
#define  Val_P_E_IO		0xbd	//portE  I/O����: 1011,1101	 0:����,1:���
#define  Val_P_E_Ini	0x0c	//portE ��ʼ��ֵ: 0000,1100

#define  PortE_OUT	IOE	     	//�˿�E �������ź�

#define  SLOE		bmBIT0 	 	//�˿�E.0	Ԥ��9					���: 0:��̬��ȱʡ=0	
#define  Laser_Err	bmBIT1 		//�˿�E.1	��������    			����:
#define	 ADJ_SCL	bmBIT2 		//�˿�E.2	ADJʱ��	 	 			���: 1:��̬��ȱʡ=1
#define  ADJ_SDA	bmBIT3	 	//�˿�E.3	ADJ���� 		 		���: 1:��̬��ȱʡ=1
#define  Laser_Mode	bmBIT4	 	//�˿�E.4	�������ģʽ 			���: 0:���ģʽ/POS��⣬1:У׼���ʲ�������/�¶ȶ�ȡ��ȱʡ=0
#define  Resav_1 	bmBIT5	 	//�˿�E.5   Ԥ�����1				���: 0:��̬
#define  Resav_2 	bmBIT6	 	//�˿�E.6   Ԥ�����2				���: 0:��̬
#define  Resav_0 	bmBIT7	 	//�˿�E.7   Ԥ�����0				���: 0:��̬

//----------------Gpif---------------------						  
#define GPIFTRIGWR 	0
#define GPIF_EP2 	0
#define GPIF_EP4 	1
#define GPIF_EP6 	2
#define GPIF_EP8 	3
#define BURSTMODE 	0x0000

//----------����----------
#define	us_5	10
#define	us_2	10  

//---------------EEPROM 32k ��ַ����
//0000-23ff:9k: ����
//7c00-7cff:1k: ����,���,����,�ֱ���


