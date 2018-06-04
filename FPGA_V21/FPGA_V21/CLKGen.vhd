LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;

ENTITY CLKGen IS						--
PORT
(
--	RESETn : in std_logic;			--in  ��λ		
	CLK48M : in std_logic;			--in  ����ʱ��
	CLK108M : out std_logic;		--out	���ʱ��
	CLK36M : out std_logic;			--out	���ʱ��
	LOCKED : out std_logic			--out	����ָʾ
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
--	areset => RESETn,			--in  ��λ
	inclk0 => CLK48M,			--in  ����ʱ��
	c0 => CLK108M,				--out	���ʱ��
	c1 => CLK36M,				--out	���ʱ��
	locked => LOCKED			--out	����ָʾ
);

END RTL;