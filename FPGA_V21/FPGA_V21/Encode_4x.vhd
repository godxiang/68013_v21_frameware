LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;

ENTITY Encode_4x IS
PORT
(
	clk : 		in std_logic;									--in  ����ʱ�� 
	En_A : 		in std_logic;									--in  ����A��
	En_B : 		in std_logic;									--in  ����B��
	Clr : 		in std_logic;									--in  �ߵ�ƽ����
	Counter :	out std_logic_vector( 23 downto 0 );	--����ֵ
	Div :			in std_logic_vector( 7 downto 0 );		--��դ��Ƶֵ 0~255,0:����Ƶ
	cInt:			out std_logic	;								--���ͬ������,��խ
	CN_Min :		in std_logic_vector( 23 downto 0 );  	--�����ΧСֵ
	CN_Max :		in std_logic_vector( 23 downto 0 );  	--�����Χ��ֵ
	Out_En :		out std_logic									--�����Χʹ�ܣ�ָʾ
);
END Encode_4x;

ARCHITECTURE RTL OF Encode_4x IS



signal Counter_t : std_logic_vector( 23 downto 0 ) := "000000110000110101000000" ;	--������ ��λֵ=200000="000000110000110101000000"
signal Div_Counter : std_logic_vector( 7 downto 0 ) := "00000000" ;				--��Ƶ������
signal En_A_Delay : std_logic_vector( 2 downto 0 ) ;			--A��3λ�Ĵ�����2λ����ͬ��ɼ���ϡ��±���
signal En_B_Delay : std_logic_vector( 2 downto 0 ) ;			--B��3λ�Ĵ�����2λ����ͬ��ɼ���ϡ��±���
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
			Counter_t <= "000000110000110101000000" ;	--��դ��������λ ��λֵ=200000="00000110000110101000000"
			Div_Counter <= "00000000" ;								--��Ƶ��������λ 
		else
			if( En_Count_En = '1' ) then					--�Ƿ����?
				if( En_Count_Dir = '1' ) then				--����?
					if( Div_Counter = Div ) then			--��Ƶ������?
						Div_Counter <= "00000000" ;					--Div_Counter����
						Counter_t <= Counter_t + 1 ;		--��դ������+1

						if( ( Counter_t >= CN_Min ) and ( Counter_t <= CN_Max ) ) then
							cInt_t <= '1' ;							--���������������
						end if ;
					else
						Div_Counter <= Div_Counter + 1 ;	--��Ƶ������+1
					end if ;
				else												--���򣬼�������
					if( Div_Counter = 0 )	then
						Div_Counter <= Div ;
						Counter_t <= Counter_t - 1 ;		--��դ������-1

						if( ( Counter_t >= CN_Min ) and ( Counter_t <= CN_Max ) ) then
							cInt_t <= '1' ;							--���������������					
						end if ;
					else
						Div_Counter <= Div_Counter - 1 ;	--��Ƶ������+1				
					end if ;
				end if ;
			end if ;
		end if ;

		if( cInt_t = '1' ) then	--������帴λ 
			cInt_t <= '0' ;
		end if ;		
		
	
		if( ( Counter_t >= CN_Min ) and ( Counter_t <= CN_Max ) ) then	--��դ���������־
			Out_En <= '1' ;		--�������
		else
			Out_En <= '0' ;		--��ֹ���
		end if ;	
	

	end process;

END RTL;