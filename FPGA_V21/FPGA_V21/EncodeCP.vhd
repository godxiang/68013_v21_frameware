LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;

ENTITY Encode_CP IS
PORT
(
	CLK : in std_logic;										--in  ʱ�� 
	INT : in std_logic;										--in  ��������
	Word : in std_logic_vector( 7 downto 0 );			--in  ��λ����=word��
	CP : out std_logic ;								   	--out Laser CP�ź�
	STR : out std_logic ;									--out Laser ���������ź�
	RD : out std_logic										--out FIFO���ź�
	
);
END Encode_CP;

ARCHITECTURE RTL OF Encode_CP IS


signal rWord : std_logic_vector( 7 downto 0 ) ; 	--�Լ�λָ��
signal Delay : integer range 0 to 255 ; 

begin

	process ( CLK , INT )
	begin
		if ( INT = '1' ) then
			rWord <= Word ;					--�趨����ָ���=�������
			Delay <= 0 ;						--�趨��ʱ������
			STR   <= '1' ;						--Laser �������� 
		else
			if( rWord /= 0 )	then			--�Ƿ�Ҫ���?
				if( Delay = 0 ) then				
					STR <= '0' ;				--Laser ��������
				end if ;				
				
				if( Delay = 1 ) then				
					CP <= '1' ;					--��Laser CP�ź�+
				end if ;
				
				if( Delay = 3 ) then 			
					CP <= '0' ;					--��Laser CP�ź�-
					RD <= '1' ;					--FIFO RD �ź�+ 
				end if ;
				
				if( Delay = 4 ) then 		--��Laser CP�ź�- ��ʱ
					RD <= '0' ;					--FIFO RD �ź�-
				end if ;
				
				if( Delay /= 6 ) then		--�Ƿ���ʱ��������?
					Delay <= Delay + 1 ;
				else
					rWord <= rWord - 1 ;		--����ֽڸ���-1
					Delay <= 0 ;
				end if ;
			end if ;	
		end if ;


	end process ;

END RTL;