LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;

ENTITY CLKGen IS						--
PORT
(
--	RESETn : in std_logic;			--in  复位		
	CLK48M : in std_logic;			--in  输入时钟
	CLK108M : out std_logic;		--out	输出时钟
	CLK36M : out std_logic;			--out	输出时钟
	LOCKED : out std_logic			--out	锁相指示
);
END CLKGen;

ARCHITECTURE RTL OF CLKGen IS

-------------------------------------------------------
component PLL_Core IS
PORT
(
--	areset : IN STD_LOGIC  := '0';
	inclk0 : IN STD_LOGIC  := '0';
	c0 : OUT STD_LOGIC ;
	c1 : OUT STD_LOGIC ;
	locked : OUT STD_LOGIC
);
end component;

-------------------------------------------------------
begin
U0:PLL_Core
PORT MAP
(
--	areset => RESETn,			--in  复位
	inclk0 => CLK48M,			--in  输入时钟
	c0 => CLK108M,				--out	输出时钟
	c1 => CLK36M,				--out	输出时钟
	locked => LOCKED			--out	锁相指示
);

END RTL;