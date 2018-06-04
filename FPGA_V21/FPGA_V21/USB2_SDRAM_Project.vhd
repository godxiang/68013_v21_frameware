LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;

ENTITY USB2_SDRAM_Project IS											--ʵ�壨entity��
PORT																			--														pin		PCB_name
(		
	RESETn : in std_logic;												--in  0��λ 											N13		FReset												
	CLK48M : in std_logic;												--in  ʱ��											E1
	Check : out std_logic;												--out FPGA���LED�ź�								K1			Led_F		

	--usb FIFO--
	--FLAGA - fixed EP2PF, FLAGB - fixed EP2FF
	--FLAGC - fixed EP2EF, FLAGD - reserved
	SLRD : out std_logic;--enable										--ʹ��***��						RDY0				L11		RDY0		
	SLWR : out std_logic;--wr,high									--��  ***       ������һֱ��		RDY1			L10		RDY1
	FLAGC : in std_logic;--empty										--in ���ݿ�			CTL2/FLAGC					N12		G_WR
	FLAGB : in std_logic;--Full										--in ������			CTL1/FLAGB					L9 		G_RD
	IFCLK : out std_logic;--clk										--FIFOʱ�� ��36Mhz����							L13		IFCLK		
--	SDRAMEMPTY : out std_logic;										--out ***�ձ�־��PA0

	DATAIN : in std_logic_vector(15 downto 0);					--in  ����														G_D[x]														

	--CPU Order--
	CPU_Data: inout std_logic_vector(7 downto 0);				--˫��: CPU����													C_D[x]
	CPU_WR : in std_logic;												--����: CPUд����,������������д��				D16		C_WR						
	CPU_RD : in std_logic;												--����: CPU������,�����������ض�ȡ				D15		C_RD
	CPU_Set : in std_logic;												--����: CPUָ����������,����������				N11		C_SET

	--Laser--
	Laser_On : in std_logic;											--in  CPU��������ź�:���ʹ��, 0�͵�ƽ���	N14		Laser_ON	
	Laser_En : out std_logic;											--out ��������ź�:���ʹ��,0�͵�ƽ���			B16		Laser_EN
	Laser_ST : out std_logic;											--out ��������ź�:����д��,1�ߵ�ƽ����			C16		Laser_ST
	Laser_Clk :	out std_logic;											--out ��������ź�:��������ʱ��,�����ش���		C15		Laser_CP
	Laser_Data : out std_logic_vector(15 downto 0);				--out ��������ź�:16λ��������								Laser_D[x]

	--Encoder--
	Encode_A : in std_logic;											--in ��դ�������������A							L1			ENcoder_A
	Encode_B : in std_logic; 											--in ��դ�������������B							K2			ENcoder_B

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

ARCHITECTURE RTL OF USB2_SDRAM_Project IS						--�ṹ��ARCHITECTURE��

--Ԫ������
-------------------------------------------------------
component CLKGen IS													--ʱ��ģ�飬����48Mhz�����36Mhz��108Mhz
PORT
(
--	RESETn : in std_logic;											--in  ��λ	
	CLK48M : in std_logic;											--in  48Mhzʱ������
	CLK108M : out std_logic;										--out 108Mhzʱ�����	����FPGAʱ��
	CLK36M : out std_logic;											--out 36Mhzʱ�����		����IFCLK      ��������������������������������������
	LOCKED : out std_logic
);
end component;

-------------------------------------------------------
component SDRAM_Controller is
port
(
	RESETn : in std_logic;											--in  ��λ 0:��λ																					
	CLOCK : in std_logic;											--in  ʱ��108Mhz
	WR : in std_logic_vector(1 downto 0);
	USBFIFOFull : in std_logic;
	EXTFIFOEmpty : in std_logic;
	ReadUSBFIFO : out std_logic;
	WriteEXTFIFO : out std_logic;
	ReadUSBFIFOData : in std_logic_vector(15 downto 0);	--in  ��USB FIFO����
	WriteEXTFIFOData : out std_logic_vector(15 downto 0);	--out д�ⲿFIFO����	
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
	RESETn : in std_logic;								--in  ���㣬1��Ч
	WCLK : in std_logic;									--in  дʱ�ӣ�����ȡ��
	RCLK : in std_logic;									--in  ��ʱ�ӣ���������Ч���½������м�
	WEN : in std_logic;									--in  д����1��Ч
	REN : in std_logic;									--in  ������1��Ч��REN��λ��ĵڶ���ʱ�����ݲſ�ʼ��Ч
	DIN : in std_logic_vector(15 downto 0);		--in  ������
	DOUT : out std_logic_vector(15 downto 0);		--out ���ݳ�
	HALFFULL : out std_logic;							--out д������1��Ч
	HALFEMPTY : out std_logic;							--out ����գ�1��Ч
	QUARTERFULL : out std_logic;						--out д1/4������1��Ч
	FULL : out std_logic									--out д����1��Ч
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
	clk : in std_logic;									--in  ʱ�� 
	D : 	in std_logic;									--in  �����ź�
	Q :   out std_logic									--out ����ź�
);
end component;

-------------------------------------------------------
component Encode_4x IS
PORT
(
	clk : 		in std_logic;									--in  ����ʱ�� 
	En_A : 		in std_logic;									--in  ����A��
	En_B : 		in std_logic;									--in  ����B��
	Clr : 		in std_logic;									--in  �ߵ�ƽ����
	Counter :	out std_logic_vector( 23 downto 0 );	--����ֵ
	Div :			in std_logic_vector( 7 downto 0 );		--��դ��Ƶֵ
	cInt:			out std_logic	;								--�����������
	CN_Min :		in std_logic_vector( 23 downto 0 );  	--�����ΧСֵ
	CN_Max :		in std_logic_vector( 23 downto 0 );  	--�����Χ��ֵ
	Out_En :		out std_logic									--�����Χʹ�ܣ�ָʾ
);
end component;

-------------------------------------------------------
component LED_Check IS
PORT
(
	CLK : in std_logic;										--in  ʱ�� 
	LED_Data : in std_logic_vector( 7 downto 0 );	--in Ledֵ
	LED_Out : out std_logic								   --out Led����ź�
);
end component;

-------------------------------------------------------
component Encode_CP IS
PORT
(
	CLK : in std_logic;										--in  ʱ�� 
	INT : in std_logic;										--in  ��������
	Word : in std_logic_vector( 7 downto 0 );			--in  ��λ����=word��
	CP : out std_logic ;								   	--out Laser CP�ź�
	STR : out std_logic ;									--out Laser �����ź�
	RD : out std_logic										--out FIFO���ź�
	
);
END component;



--��������
--********��CPU�ӿ�:CPUд********
--------CPU_FPGAָ���--------
Constant COM_Mode_Sel   	: std_logic_vector := X"01" ; 	--FPGAдָ��:ģʽѡ��: 
Constant COM_Encode_Div		: std_logic_vector := X"02" ; 	--FPGAдָ��:��դ��Ƶֵ
Constant COM_Encode_Min		: std_logic_vector := X"03" ; 	--FPGAдָ��:���������Χ��դ��Сλ��_L
Constant COM_Encode_Max		: std_logic_vector := X"04" ; 	--FPGAдָ��:���������Χ��դ���λ��_L
Constant COM_Encode_Clr		: std_logic_vector := X"05" ; 	--��դ����������; 0:���� 1:����
Constant COM_Encode_Read 	: std_logic_vector := X"06" ; 	--FPGAдָ��:CPU����դ
Constant	COM_Encode_Delay	: std_logic_vector := X"11" ; 	--FPGAдָ��:��դ��ʱֵ
Constant	COM_Encode_Word	: std_logic_vector := X"0e" ; 	--FPGAдָ��:ÿ����դ���Laser����

Constant COM_Laser_Set		: std_logic_vector := X"07" ; 	--FPGAдָ��:��������
Constant COM_Laser_Data		: std_logic_vector := X"08" ; 	--FPGAдָ��:���⴮������ֵ
Constant COM_Laser_Enable	: std_logic_vector := X"09"; 		--����Laser��ӡ���
Constant COM_Laser_Disable	: std_logic_vector := X"0a" ; 	--��ֹLaser��ӡ���
Constant COM_Laser_Clk		: std_logic_vector := X"12" ; 	--FPGAдָ��:���⴮����λ����

Constant COM_Ram_Addr_Clr	: std_logic_vector := X"0d" ; 	--RAM��ַ����; 0:���� 1:����
Constant COM_Ram_Read		: std_logic_vector := X"0c" ; 	--RAM��

Constant	COM_Check_LED		: std_logic_vector := X"0f" ;		--FPGA���LEDֵ
Constant	COM_Check_Read		: std_logic_vector := X"10" ;		--FPGA���,��FPGA��LEDֵ


--------RAMѡ��ģʽ����
Constant Mode_0 : integer := 0 ;	--rMode_Sel=000:	RAM_A��Laser,    RAM_B��GPIF,     Laser��RAM_A,      	GPIF��RAM_B	
Constant Mode_1 : integer := 1 ;	--rMode_Sel=001:	RAM_A��GPIF, 	RAM_B��Laser, 	Laser��RAM_B,    	GPIF��RAM_A
Constant Mode_2 : integer := 2 ;	--rMode_Sel=010:	RAM_A��CPU_Read,	RAM_B��rRAM_Val,	Laser��rLaser_Val, 	CPU_Read��RAM_A				
Constant Mode_3 : integer := 3 ;	--rMode_Sel=011:	RAM_A��rRAM_Val,	RAM_B��CPU_Read,	Laser��rLaser_Val,	CPU_Read��RAM_B				
Constant Mode_4 : integer := 4 ;	--rMode_Sel=100:		
Constant Mode_5 : integer := 5 ;	--rMode_Sel=101:	
Constant Mode_6 : integer := 6 ;	--rMode_Sel=110:					
Constant Mode_7 : integer := 7 ;	--rMode_Sel=111:						

Constant Encode_Reset_Val : integer := 200000 ;	--Encode��λʱ�ĳ�ֵ��Լ=100mm




--�źŶ���
-------------------------------------------------------
signal resetn_t : std_logic := '0';																	--��λ�ź�	0��λ
signal clk108m_t, clk36m_t : std_logic := '0';													--ʱ���ź�
signal lock_t : std_logic := '0';																	--����״̬�ź�
signal slrd_t : std_logic := '1';																	--USBFIFO д����1��Ч,����U2
signal readusbfifo_t, readusbfifo_t1, readusbfifo_t2 : std_logic := '0';				--USBFIFO���ź�,
signal readusbfifodata_t, readusbfifodata_t1, readusbfifodata_t2 : std_logic_vector(15 downto 0) := ( others => '0' );				--USBFIFO��������
signal usbfifohalffull_t, usbfifohalffull_t1, usbfifohalffull_t2 : std_logic := '0';
signal writeextfifo_t, writeextfifo_t1, writeextfifo_t2 : std_logic := '0';			--EXTFIFOд�ź�
signal writeextfifodata_t, writeextfifodata_t1, writeextfifodata_t2 : std_logic_vector(15 downto 0) := ( others => '0' );			--EXTFIFO��������
signal extfifohalffull_t, extfifohalffull_t1, extfifohalffull_t2 : std_logic := '0';
signal quarterfull_t : std_logic := '1';
signal wr_t : std_logic_vector(3 downto 0) := "0000";											--wr_t����U2_Controller��WR. 01����USBfifoдsdram, 10����sdramдEXTfifo. λ32:U3, λ10:U4
signal full_t1, full_t2 : std_logic := '0';
signal empty_t1, empty_t2 : std_logic := '0';
signal Laser_Data_t : std_logic_vector(15 downto 0) := ( others => '0' );
signal empty_t : std_logic := '1';
signal empty_st : std_logic_vector(1 downto 0) := "00";
signal empty_count : integer range 0 to 31 := 0;												--�ռ�����,0~31
signal FIFO_RD_CP : std_logic;																		--���FIFO���ź� ��������Ч
signal OEn_tt : std_logic;																				--in  �ⲿ�ӿڶ�����0��Ч  
signal EMPTY_tt : std_logic;																			--out �ⲿFIFO��
signal SDRAMEMPTY_tt : std_logic;																	--out ***�ձ�־��PA0

signal Encode_A_F : std_logic ;									--�˲���														
signal Encode_B_F : std_logic ;

signal EN_Counter : std_logic_vector( 23 downto 0 ) ;			--��դ����ֵ, ��ֵ=200000
signal EN_DIV : std_logic_vector( 7 downto 0 ) := "00000000" ;					--��դ��Ƶֵ  0~255,0:����Ƶ
signal EN_Clr : std_logic := '0';									--��դ�ߵ�ƽ����
signal EN_cInt : std_logic ;
signal EN_Conter_Min : std_logic_vector( 23 downto 0 );		--�����ΧСֵ
signal EN_Conter_Max : std_logic_vector( 23 downto 0 );		--�����Χ��ֵ
signal EN_Out_en : std_logic ;
signal rEncode_Delay : std_logic_vector( 15 downto 0 );		--��դ��ʱֵ
signal rEncode_Word : std_logic_vector( 7 downto 0 );

signal CPU_Command_1 : std_logic_vector( 7 downto 0 );		--CPUָ��1
signal CPU_Command_2 : std_logic_vector( 7 downto 0 );		--CPUָ��2
signal CPU_Command_3 : std_logic_vector( 7 downto 0 );		--CPUָ��3
signal CPU_Command_4 : std_logic_vector( 7 downto 0 );		--CPUָ��4 
signal CPU_Read_1 : std_logic_vector( 7 downto 0 );			--CPU����1
signal CPU_Read_2 : std_logic_vector( 7 downto 0 );			--CPU����2
signal CPU_Read_3 : std_logic_vector( 7 downto 0 );			--CPU����3
signal CPU_Read_4 : std_logic_vector( 7 downto 0 );			--CPU����4
signal CPU_Read_1_t : std_logic_vector( 7 downto 0 );			--CPU����1
signal CPU_Read_2_t : std_logic_vector( 7 downto 0 );			--CPU����2
signal CPU_Read_3_t : std_logic_vector( 7 downto 0 );			--CPU����3
signal CPU_Read_4_t : std_logic_vector( 7 downto 0 );			--CPU����4
signal rMode_Sel : std_logic_vector( 7 downto 0 );				--Mode_Sel�趨ֵ

signal rLaser_Data : std_logic_vector( 15 downto 0 );
signal rLaser_En : std_logic ;
signal rLaser_Set : std_logic ;
signal CPU_Laser_CP : std_logic ;
signal FIFO_Lser_CP : std_logic ;

signal rRam_Addr_Clr : std_logic ;
signal rRam_Read_T : std_logic ;

signal Check_Led : std_logic_vector( 7 downto 0 ) := "00001111" ;			--LED ����

signal EN_Laser_CP :	std_logic ;					   	--out ��դ������Laser CP�ź�
signal EN_Laser_STR : std_logic ;							--out ��դ������Laser ���������ź�
signal EN_Laser_RD :	std_logic ;						--out ��դ������FIFO���ź�




--����
-------------------------------------------------------
begin

	SLWR <= '1';
	SLRD <= slrd_t;
	IFCLK <= clk36m_t;
	EMPTY_tt <= quarterfull_t;																			--����ӿڿ�ָʾ = U5��1/4��ָʾ
	Laser_Data <= Laser_Data_t ;																		--laser���ݽӿ�	
	empty_t <= '0' when ( empty_t1 = '1' or empty_t2 = '1' ) else '1';

	process ( resetn_t, clk108m_t )
	begin
		if ( resetn_t = '0' ) then											--0��λ
			empty_count <= 0;													--�ռ�����=0
			SDRAMEMPTY_tt <= '1';												--SDRAM�����->CPU
			empty_st <= "00";													--
		elsif ( clk108m_t'event and clk108m_t = '1' ) then			--clk108m_t ������
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
	
	resetn_t <= '1' when ( RESETn = '1' and lock_t = '1' ) else '0';														--ʱ������ʧ�ܾ͸�λ��0��λ
	readusbfifo_t <= readusbfifo_t1 when ( wr_t = "0100" or wr_t = "0110" ) else										--USBFIFO���ź�,
					     readusbfifo_t2 when ( wr_t = "1001" or wr_t = "0001" ) else '0';
	readusbfifodata_t1 <= readusbfifodata_t when ( wr_t = "0100" or wr_t = "0110" ) else ( others => '0');	--�����л���U3_SDRAM ���ݿ�
	readusbfifodata_t2 <= readusbfifodata_t when ( wr_t = "1001" or wr_t = "0001" ) else ( others => '0');   --�����л���U4_SDRAM ���ݿ�
	usbfifohalffull_t1 <= usbfifohalffull_t when ( wr_t = "0100" or wr_t = "0110" ) else '0';
	usbfifohalffull_t2 <= usbfifohalffull_t when ( wr_t = "1001" or wr_t = "0001" ) else '0';
	writeextfifo_t <= writeextfifo_t1 when ( wr_t = "1001" or wr_t = "1000" ) else									--EXTFIFOд�ź�
                     writeextfifo_t2 when ( wr_t = "0010" or wr_t = "0110" ) else '0';
	writeextfifodata_t <= writeextfifodata_t1 when ( wr_t = "1001" or wr_t = "1000" ) else
                         writeextfifodata_t2 when ( wr_t = "0010" or wr_t = "0110" ) else ( others => '0');
	extfifohalffull_t1 <= extfifohalffull_t when ( wr_t = "1001" or wr_t = "1000" ) else '0';
	extfifohalffull_t2 <= extfifohalffull_t when ( wr_t = "0010" or wr_t = "0110" ) else '0';

	

	
--ָ������˫��˿�

	CPU_Data <= CPU_Read_1 when CPU_RD = '0' else ( others => 'Z' );		--WR=01ʱ��SDRAMд��, SDRAM���� = FIFO����,�������	
	
--********CPU��������********
--32λ(4�ֽ�)��������Ϊһ��ָ�ָ��+3�ֽ�����
	process ( CPU_WR )
	begin
		if rising_edge( CPU_WR ) then
			CPU_Command_4 <= CPU_Command_3 ;
			CPU_Command_3 <= CPU_Command_2 ;
			CPU_Command_2 <= CPU_Command_1 ;
			CPU_Command_1 <= CPU_Data ;
		end if ;
	end process ;

--********CPU��������********	
	process ( CPU_RD, CPU_Set )
	begin	
		if rising_edge( CPU_RD ) then	--�����Ƴ�
			CPU_Read_1 <= CPU_Read_2 ;
			CPU_Read_2 <= CPU_Read_3 ;
			CPU_Read_3 <= CPU_Read_4 ;
		end if ;	
		
		if ( CPU_Set = '0' ) then	--�����Ƴ�
			CPU_Read_1 <= CPU_Read_1_t ;
			CPU_Read_2 <= CPU_Read_2_t ;
			CPU_Read_3 <= CPU_Read_3_t ;
			CPU_Read_4 <= CPU_Read_4_t ;
		end if ;		
	
	end process ;	
	
	
--********CPUָ������********
	process( CPU_Set ) 	--CPUָ������
	begin
		if ( CPU_Set = '1' ) then									--CPU_Set������
			case CPU_Command_1 is									--ָ���ж�
				when COM_Mode_Sel =>									--Mode_Sel�趨ֵ
					rMode_Sel <= CPU_Command_2 ;		

				when COM_Encode_Div =>								--ENcoder: ��դ��Ƶֵ
					EN_DIV <= CPU_Command_2 ;	

				when COM_Encode_Min =>								--ENcoder: �����Χ��դ��Сλ��
					EN_Conter_Min <= CPU_Command_2 & CPU_Command_3 & CPU_Command_4 ;

				when COM_Encode_Max =>								--ENcoder: �����Χ��դ���λ��
					EN_Conter_Max <= CPU_Command_2 & CPU_Command_3 & CPU_Command_4 ;				

				when COM_Encode_Clr =>								--ENcoder: ��դ����������; 0:���� 1:����
					EN_Clr <= '1' ;									--��դ����

				when COM_Encode_Word => 							--ENcoder: ÿ����դ���Laser����,2�ֽ�=16bit	
					rEncode_Word <= CPU_Command_2 ;	

				when COM_Encode_Read =>								--ENcoder: CPU����դ
					CPU_Read_1_t <= EN_Counter( 23 downto 16 ) ;
					CPU_Read_2_t <= EN_Counter( 15 downto 8 ) ;
					CPU_Read_3_t <= EN_Counter( 7 downto 0 ) ;				
					
				when COM_Encode_Delay =>							--��դ��ʱֵ
					rEncode_Delay <=	CPU_Command_2 & CPU_Command_3 ;					
					
				when COM_Laser_Data =>								--Laser: ���⴮������ֵ
					rLaser_Data	<= CPU_Command_2 & CPU_Command_3 ;

				when COM_Laser_Clk =>								--Laser: ��ֹLaser��ӡ���
					CPU_Laser_CP <= '1' ;							--����������λ����
					
				when COM_Laser_Set =>								--Laser: ��������
					rLaser_Set <= '1' ;								--Laserֵ��������

				when COM_Laser_Enable =>							--Laser: ����Laser��ӡ���
					rLaser_En <= '1' ;
			
				when COM_Laser_Disable =>							--Laser: ��ֹLaser��ӡ���
					rLaser_En <= '0' ;

				when COM_Ram_Addr_Clr =>							--RAM: Ram��ַ����
					rRam_Addr_Clr <= '1' ;
				
				when COM_Ram_Read =>									--RAM: Ram��ַ����
					rRam_Read_T <= '1' ;

				when COM_Check_LED => 								--Check: ���ü��LEDֵ
					Check_Led	<= CPU_Command_2 ;	

				when COM_Check_Read => 								--Check: ��FPGA��LEDֵ
					CPU_Read_1_t <= Check_Led ;
				when others =>
				
			end case;

		else									--CPU_Set�½���
			EN_Clr 			<= '0' ;		--��դ����_��λ
			rLaser_Set 		<= '0' ;		--Laserֵ��������_��λ
			CPU_Laser_CP 	<= '0' ;		--����������λ����_��λ
			rRam_Addr_Clr 	<= '0' ;		--RAM��ַ����_��λ
			rRam_Read_T 	<= '0' ;		--CPU����ַ�ź�����_��λ			
		end if ;
		
	end process ;


--�˿�ӳ��
-------------------------------------------------------	
U0:CLKGen
PORT MAP
(
--	RESETn => '0',								--������λ	
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
	RESETn => resetn_t,							--in  ���㣬0��λ	
	WCLK => not clk36m_t ,						--in  дʱ�ӣ�����ȡ��
	RCLK => clk108m_t,							--in  ��ʱ�ӣ���������Ч���½������м�
	WEN => not slrd_t,							--in  д����1��Ч,����U2
	REN => readusbfifo_t,						--in  ������1��Ч��REN��λ��ĵڶ���ʱ�����ݲſ�ʼ��Ч,��USBFIFO���ź�����
	DIN => DATAIN,									--in  �����룬USBFIFO�������ߣ���CPU���뵽USBFIFO
	DOUT => readusbfifodata_t,					--out �����SDRAM
	HALFFULL => usbfifohalffull_t				--out д������1��Ч
);

-------------------------------------------------------
U2:Controller
PORT MAP
(
	RESETn => resetn_t,							--in 	��λ
	CLK108M => clk108m_t,
	CLK36M => clk36m_t,
	SDRAMFULL => full_t1 & full_t2 ,			--in 	SDRAM�����߼�ʸ��2λ��������һƬSDRAM
	SDRAMEMPTY => empty_t1 & empty_t2 ,		--in 	SDRAM�գ��߼�ʸ��2λ��������һƬSDRAM
	WR => wr_t,										--out	4λ ����д���ȴ����ơ�32λ��U3,10λ��U4,01����USBfifoдsdram, 10����sdramдEXTfifo
	FLAGC => FLAGC,								--in 
	SLRD => slrd_t,								--out
	FULL => usbfifohalffull_t					--in 
);

-------------------------------------------------------
U3: SDRAM_Controller		--controller 1--
port map
(
	RESETn => resetn_t,								--0��λ
	CLOCK => clk108m_t,	
	WR => wr_t(3 downto 2),							--in U3��3,2λ, 01����USBfifoдsdram, 10����sdramдEXTfifo
	USBFIFOFull => usbfifohalffull_t1,
	EXTFIFOEmpty => extfifohalffull_t1,
	ReadUSBFIFO => readusbfifo_t1,				--USBFIFO���ź�
	WriteEXTFIFO => writeextfifo_t1,
	ReadUSBFIFOData => readusbfifodata_t1,		--usb������������
	WriteEXTFIFOData => writeextfifodata_t1,	--�ⲿ���������������
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
	RESETn => resetn_t,								--0��λ
	CLOCK => clk108m_t,	
	WR => wr_t(1 downto 0),							--BANK_2��1,0λ, 01����USBfifoдsdram, 10����sdramдEXTfifo
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
	RESETn => resetn_t,							--0��λ	
	WCLK => clk108m_t,							--in  дʱ�ӣ�����ȡ��
	RCLK => FIFO_RD_CP,							--in  ��ʱ�ӣ���������Ч���½������м�
	WEN => writeextfifo_t,						--in  д����1��Ч
	REN => '1' ,									--in  ������1��Ч��REN��λ��ĵڶ���ʱ�����ݲſ�ʼ��Ч,��Laser��������
	DIN => writeextfifodata_t,					--in  �����룬SDRAM�������ߣ���SDRAM���뵽FIFO
	DOUT => Laser_Data_t,						--out �����Laser�ӿ�,
	QUARTERFULL => quarterfull_t,
	HALFFULL => extfifohalffull_t				--out д������1��Ч
);
-------------------------------------------------------
U6: Encode_Filter		--Filter_A--
PORT MAP
(
	clk => clk108m_t ,				--in  ʱ�� 
	D   => Encode_A ,					--in  �����ź�
	Q   => Encode_A_F					--out ����ź�
);

-------------------------------------------------------
U7: Encode_Filter		--Filter_A--
PORT MAP
(
	clk => clk108m_t ,				--in  ʱ�� 
	D   => Encode_B ,					--in  �����ź�
	Q   => Encode_B_F					--out ����ź�
);

-------------------------------------------------------
U8: Encode_4x		--Encoder_4x--
PORT MAP
(
	clk 		=> clk108m_t ,			--in  ����ʱ�� 
	En_A 		=> Encode_A_F ,		--in  ����A��
	En_B 		=> Encode_B_F ,		--in  ����B��
	Clr   	=> EN_Clr ,				--in  �ߵ�ƽ����
	Counter 	=> EN_Counter,			--����ֵ
	Div  		=> EN_DIV ,				--��դ��Ƶֵ
	cInt		=> EN_cInt ,			--���ͬ������,��խ
	CN_Min  	=> EN_Conter_Min , 	--�����ΧСֵ
	CN_Max   => EN_Conter_Max ,  	--�����Χ��ֵ
	Out_En  	=> EN_Out_en			--�����Χʹ�ܣ�ָʾ
);

-------------------------------------------------------
U9: LED_Check		--LED_Check--
PORT MAP
(
	CLK 		=> CLK48M ,				--in  ʱ�� 
	LED_Data => Check_Led ,			--in  Ledֵ
	LED_Out 	=> Check					--out Led����ź�
);

-------------------------------------------------------
U10: Encode_CP
PORT MAP
(
	CLK 	=> clk108m_t ,				--in  ����ʱ�� 
	INT 	=> EN_cInt ,				--in  ��������
	Word  => rEncode_Word ,			--in  ��λ����=word��
	CP 	=> EN_Laser_CP ,			--out ��դ������Laser CP�ź�
	STR 	=>	EN_Laser_STR ,			--out ��դ������Laser ���������ź�
	RD 	=>	EN_Laser_RD				--out ��դ������FIFO���ź�
	
);






END RTL;