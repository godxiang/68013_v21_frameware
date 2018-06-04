LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;

ENTITY FIFO_16Bit_2K IS
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
	QUARTERFULL : out std_logic;						--out 写1/4满，，1有效,128
	FULL : out std_logic									--out 写满，1有效
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
	aclr => not RESETn ,			--in  清零
	data => DIN,					--in  写数据
	rdclk => RCLK,					--in  读时钟
	rdreq => REN,					--in  读请求
	wrclk => WCLK,					--in  写时钟
	wrreq => WEN,					--in  写请求
	q => DOUT,						--out 读数据
	rdusedw => he,					--out FIFO内数据个数
	wrfull => FULL,				--out 数据满
	wrusedw => hf					--out FIFO内数据个数
);

END RTL;