LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;

ENTITY Encode_CP IS
PORT
(
	CLK : in std_logic;										--in  ʱ�� 
	INT : in std_logic;										--in  ��������
	LED_Data : in std_logic_vector( 7 downto 0 );	--in  Ledֵ
	CP : out std_logic								   	--out Laser CP�ź�
	STR ��out std_logic										--out Laser �����ź�
	
);
END Encode_CP;

ARCHITECTURE RTL OF Encode_CP IS
								--LED ���

begin


	process ( CLK  )
	begin

	end process ;

END RTL;