LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;

ENTITY Encode_4x IS
PORT
(
	clk : 		in std_logic;									--in  输入时钟 
	En_A : 		in std_logic;									--in  输入A相
	En_B : 		in std_logic;									--in  输入B相
	Clr : 		in std_logic;									--in  高电平清零
	Counter :	out std_logic_vector( 23 downto 0 );	--计数值
	Div :			in std_logic_vector( 7 downto 0 );		--光栅分频值 0~255,0:不分频
	cInt:			out std_logic	;								--输出同步脉冲,较窄
	CN_Min :		in std_logic_vector( 23 downto 0 );  	--输出范围小值
	CN_Max :		in std_logic_vector( 23 downto 0 );  	--输出范围大值
	Out_En :		out std_logic									--输出范围使能，指示
);
END Encode_4x;

ARCHITECTURE RTL OF Encode_4x IS



signal Counter_t : std_logic_vector( 23 downto 0 ) := "000000110000110101000000" ;	--计数器 复位值=200000="000000110000110101000000"
signal Div_Counter : std_logic_vector( 7 downto 0 ) := "00000000" ;				--分频计数器
signal En_A_Delay : std_logic_vector( 2 downto 0 ) ;			--A相3位寄存器，2位不相同则可检出上、下边沿
signal En_B_Delay : std_logic_vector( 2 downto 0 ) ;			--B相3位寄存器，2位不相同则可检出上、下边沿
signal En_Count_En :	std_logic ;
signal En_Count_Dir : std_logic ;	
signal cInt_t	: std_logic ;
	
begin
	En_Count_En  <= En_A_Delay(1) xor En_A_Delay(2) xor En_B_Delay(1) xor En_B_Delay(2) ;
	En_Count_Dir <= En_A_Delay(1) xor En_B_Delay(2) ;
	cInt <= cInt_t ;

	
	process ( clk )
	begin
		En_A_Delay <= En_A_Delay( 1 downto 0 ) & En_A ;
		En_B_Delay <= En_B_Delay( 1 downto 0 ) & En_B ;
	end process;
	
	process ( Clr, clk )
	begin
		if( Clr = '1' )	then
			Counter_t <= "000000110000110101000000" ;	--光栅计数器复位 复位值=200000="00000110000110101000000"
			Div_Counter <= "00000000" ;								--分频计数器复位 
		else
			if( En_Count_En = '1' ) then					--是否计数?
				if( En_Count_Dir = '1' ) then				--正向?
					if( Div_Counter = Div ) then			--分频计数满?
						Div_Counter <= "00000000" ;					--Div_Counter清零
						Counter_t <= Counter_t + 1 ;		--光栅计数器+1

						if( ( Counter_t >= CN_Min ) and ( Counter_t <= CN_Max ) ) then
							cInt_t <= '1' ;							--产生正向输出脉冲
						end if ;
					else
						Div_Counter <= Div_Counter + 1 ;	--分频计数器+1
					end if ;
				else												--反向，计数器减
					if( Div_Counter = 0 )	then
						Div_Counter <= Div ;
						Counter_t <= Counter_t - 1 ;		--光栅计数器-1

						if( ( Counter_t >= CN_Min ) and ( Counter_t <= CN_Max ) ) then
							cInt_t <= '1' ;							--产生反向输出脉冲					
						end if ;
					else
						Div_Counter <= Div_Counter - 1 ;	--分频计数器+1				
					end if ;
				end if ;
			end if ;
		end if ;

		if( cInt_t = '1' ) then	--输出脉冲复位 
			cInt_t <= '0' ;
		end if ;		
		
	
		if( ( Counter_t >= CN_Min ) and ( Counter_t <= CN_Max ) ) then	--光栅允许输出标志
			Out_En <= '1' ;		--允许输出
		else
			Out_En <= '0' ;		--禁止输出
		end if ;	
	

	end process;

END RTL;