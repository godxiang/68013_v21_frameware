LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;

ENTITY CPU_Command IS
PORT
(
	CLK : in std_logic;											--in  ʱ�� 
	CPU_WR : in std_logic;										--����: CPUд����,������������д��
	CPU_RD : in std_logic;										--����: CPU������,�����������ض�ȡ
	CPU_Set��in std_logic; 										--����: CPUָ����������,����������
	CPU_Data_In : in std_logic_vector( 7 downto 0 );	--����: CPUָ������
	CPU_Data_Out : out std_logic vector( 7 downto 0 );	--out Led����ź�
	CPU_WR_1	: out std_logic vector( 7 downto 0 );		--out CPUָ������
	
	
	
	
);
END CPU_Command;

ARCHITECTURE RTL OF CPU_Command IS

begin

	process ( Low_Clk )
	begin

	
	
	
	
	
	end process ;

END RTL;