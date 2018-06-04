LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;

ENTITY LED_Check IS
PORT
(
	CLK : in std_logic ;										--in  ʱ�� 
	LED_Data : in std_logic_vector( 7 downto 0 );	--in Ledֵ
	LED_Out : out std_logic 							   --out Led����ź�
);
END LED_Check;

ARCHITECTURE RTL OF LED_Check IS

signal Low_Clk_Counter : std_logic_vector( 19 downto 0 ) := "00000000000000000000" ;	--��ʱ�Ӽ�����
signal Low_Clk : std_logic :='0' ;											--��ʱ��wLow_Clk����Check LED�ļ����ʱ

signal Check_Index : integer range 0 to 7 ; 						--�Լ�λָ��
signal Check_Counter : integer range 0 to 255 ;					--LED Check ������
signal Check_t : std_logic ;											--LED ���

begin

	Low_Clk <= Low_Clk_Counter( 19 ) ;
	LED_Out <= Check_t ;
	
	
	process ( CLK )
	begin
		if rising_edge( CLK ) then
			Low_Clk_Counter <= Low_Clk_Counter + 1 ;
		end if ;
	end process ;

	process ( Low_Clk )
	begin
		if rising_edge( Low_Clk ) then							--��ʱ��
			if( Check_Counter = 0 ) then							--Check_Counterʱ��������
				if( Check_t = '0' ) then							--�Ƿ�����״̬
					if( Check_Index = 0 ) then
						Check_Counter <= 80 ;						--�ֽڼ�϶
					else
						Check_Counter <= 10 ;						--λ��϶
					end if ;
					
					Check_t <= '1' ;
				else														--��״̬
					if( LED_Data( Check_Index ) = '0' ) then	--�Ƿ��Ƕ�
						Check_Counter <= 5 ;							--0������
					else
						Check_Counter <= 50 ;						--1������
					end if ;
				
					Check_t <= '0' ;
					
					if( Check_Index = 7 ) then
						Check_Index <= 0 ;
					else
						Check_Index <= Check_Index + 1 ;
					end if ;
					
				end if ;

			else
				Check_Counter <= Check_Counter - 1 ;
		
			end if ;
		end if ;
	end process ;

END RTL;