LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;

ENTITY Encode_CP IS
PORT
(
	CLK : in std_logic;										--in  时钟 
	INT : in std_logic;										--in  启动脉冲
	LED_Data : in std_logic_vector( 7 downto 0 );	--in  Led值
	CP : out std_logic								   	--out Laser CP信号
	STR ：out std_logic										--out Laser 设置信号
	
);
END Encode_CP;

ARCHITECTURE RTL OF Encode_CP IS
								--LED 输出

begin


	process ( CLK  )
	begin

	end process ;

END RTL;