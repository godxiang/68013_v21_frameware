LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;

ENTITY LED_Check IS
PORT
(
	CLK : in std_logic ;										--in  时钟 
	LED_Data : in std_logic_vector( 7 downto 0 );	--in Led值
	LED_Out : out std_logic 							   --out Led输出信号
);
END LED_Check;

ARCHITECTURE RTL OF LED_Check IS

signal Low_Clk_Counter : std_logic_vector( 19 downto 0 ) := "00000000000000000000" ;	--慢时钟计数器
signal Low_Clk : std_logic :='0' ;											--慢时钟wLow_Clk用于Check LED的间隔定时

signal Check_Index : integer range 0 to 7 ; 						--自检位指针
signal Check_Counter : integer range 0 to 255 ;					--LED Check 计数器
signal Check_t : std_logic ;											--LED 输出

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
		if rising_edge( Low_Clk ) then							--慢时钟
			if( Check_Counter = 0 ) then							--Check_Counter时长计数器
				if( Check_t = '0' ) then							--是否是灭状态
					if( Check_Index = 0 ) then
						Check_Counter <= 80 ;						--字节间隙
					else
						Check_Counter <= 10 ;						--位间隙
					end if ;
					
					Check_t <= '1' ;
				else														--亮状态
					if( LED_Data( Check_Index ) = '0' ) then	--是否是短
						Check_Counter <= 5 ;							--0：短闪
					else
						Check_Counter <= 50 ;						--1：长闪
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