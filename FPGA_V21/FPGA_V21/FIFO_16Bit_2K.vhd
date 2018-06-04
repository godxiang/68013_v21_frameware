LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;

ENTITY FIFO_16Bit_2K IS
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
	QUARTERFULL : out std_logic;						--out д1/4������1��Ч,128
	FULL : out std_logic									--out д����1��Ч
);
END FIFO_16Bit_2K;

ARCHITECTURE RTL OF FIFO_16Bit_2K IS

-------------------------------------------------------
component FIFO_Core IS
PORT
(
	aclr		: IN STD_LOGIC  := '0';
	data		: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
	rdclk		: IN STD_LOGIC ;
	rdreq		: IN STD_LOGIC ;
	wrclk		: IN STD_LOGIC ;
	wrreq		: IN STD_LOGIC ;
	q			: OUT STD_LOGIC_VECTOR (15 DOWNTO 0);
	rdusedw		: OUT STD_LOGIC_VECTOR (10 DOWNTO 0);
	wrfull		: OUT STD_LOGIC ;
	wrusedw		: OUT STD_LOGIC_VECTOR (10 DOWNTO 0)
);
end component;

-------------------------------------------------------
signal hf : std_logic_vector(10 downto 0) := ( others => '0' );
signal he : std_logic_vector(10 downto 0) := ( others => '0' );

-------------------------------------------------------
begin

HALFFULL <= hf(10);
HALFEMPTY <= he(10);
QUARTERFULL <= '0' when hf(10 downto 7) = "0000" else '1';

-------------------------------------------------------
U0:FIFO_Core
PORT MAP
(
	aclr => not RESETn ,			--in  ����
	data => DIN,					--in  д����
	rdclk => RCLK,					--in  ��ʱ��
	rdreq => REN,					--in  ������
	wrclk => WCLK,					--in  дʱ��
	wrreq => WEN,					--in  д����
	q => DOUT,						--out ������
	rdusedw => he,					--out FIFO�����ݸ���
	wrfull => FULL,				--out ������
	wrusedw => hf					--out FIFO�����ݸ���
);

END RTL;