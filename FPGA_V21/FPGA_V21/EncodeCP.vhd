LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;

ENTITY Encode_CP IS
PORT
(
	CLK : in std_logic;										--in  时钟 
	INT : in std_logic;										--in  启动脉冲
	Word : in std_logic_vector( 7 downto 0 );			--in  移位次数=word数
	CP : out std_logic ;								   	--out Laser CP信号
	STR : out std_logic ;									--out Laser 数据锁存信号
	RD : out std_logic										--out FIFO读信号
	
);
END Encode_CP;

ARCHITECTURE RTL OF Encode_CP IS


signal rWord : std_logic_vector( 7 downto 0 ) ; 	--自检位指针
signal Delay : integer range 0 to 255 ; 

begin

	process ( CLK , INT )
	begin
		if ( INT = '1' ) then
			rWord <= Word ;					--设定输出字个数=输出次数
			Delay <= 0 ;						--设定延时计数器
			STR   <= '1' ;						--Laser 数据锁存 
		else
			if( rWord /= 0 )	then			--是否要输出?
				if( Delay = 0 ) then				
					STR <= '0' ;				--Laser 数据锁存
				end if ;				
				
				if( Delay = 1 ) then				
					CP <= '1' ;					--发Laser CP信号+
				end if ;
				
				if( Delay = 3 ) then 			
					CP <= '0' ;					--发Laser CP信号-
					RD <= '1' ;					--FIFO RD 信号+ 
				end if ;
				
				if( Delay = 4 ) then 		--发Laser CP信号- 延时
					RD <= '0' ;					--FIFO RD 信号-
				end if ;
				
				if( Delay /= 6 ) then		--是否延时计数结束?
					Delay <= Delay + 1 ;
				else
					rWord <= rWord - 1 ;		--输出字节个数-1
					Delay <= 0 ;
				end if ;
			end if ;	
		end if ;


	end process ;

END RTL;