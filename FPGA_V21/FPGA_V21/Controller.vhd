LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;

ENTITY Controller IS
PORT
(
	RESETn : in std_logic;									--in 	��λ 		
	CLK108M : in std_logic;									--in 
	CLK36M : in std_logic;									--in 
	SDRAMFULL : in std_logic_vector(1 downto 0);		--in 	SDRAM�����߼�ʸ��2λ��������һƬSDRAM
	SDRAMEMPTY : in std_logic_vector(1 downto 0);	--in 	SDRAM�գ��߼�ʸ��2λ��������һƬSDRAM
	WR : out std_logic_vector(3 downto 0);				--out	4λ ����д���ȴ����ơ�
	FLAGC : in std_logic;									--in 
	SLRD : out std_logic;									--out
	FULL : in std_logic										--in 
);
END Controller;

ARCHITECTURE RTL OF Controller IS

type state is ( S0, S1, S2, S3, S4, S5 );				--ö���������ͣ�����������״̬����״̬���壬�����Զ���˳�����α��롣
																	--S0=0100��sdram0д	sdram1�ȴ�
																	--S1=1001��sdram0��	sdram1д
																	--S2=1000��sdram0��	sdram1�ȴ�
																	--S3=0001��sdram0�ȴ�	sdram1д
																	--S4=0110��sdram0д	sdram1��
																	--S5=0010��sdram0�ȴ�	sdram1��
signal present_state : state := S0;

signal ef_t : std_logic_vector(1 downto 0);
signal fe_t : std_logic_vector(1 downto 0);
signal wr_t : std_logic_vector(3 downto 0);

begin
	
	ef_t <= ( SDRAMEMPTY(1) & SDRAMFULL(0) );			--00��ram0����ram1������01��ram0����ram1����10��ram0��ram1������11��ram0��ram1����
	fe_t <= ( SDRAMFULL(1) & SDRAMEMPTY(0) );			--00��ram0����ram1���գ�01��ram0����ram1�գ�10��ram0��ram1���գ�11��ram0��ram1�գ�
	WR <= wr_t;
	
	process ( RESETn, CLK108M )
	begin
		if ( RESETn = '0' ) then									--0��λ
			wr_t <= "0100";											--״̬S0��wr_t = 0100��д��sdram0 ��sdram1�ȴ�
			present_state <= S0;										
		elsif ( CLK108M'event and CLK108M = '1' ) then		--CLK108M������
			case present_state is
				when S0 =>--0100--									--״̬S0ʱ
					if ( SDRAMFULL(1) = '1' ) then				--�Ƿ�ram0��
						wr_t <= "1001";								--��ram0,дram1
						present_state <= S1;							--���� ״̬S1��wr_t = 1001
					else
						wr_t <= "0100";								--���� ά��״̬S0��wr_t = 0100
						present_state <= S0;
					end if;
				when S1 =>--1001--									--״̬S1ʱ�� sdram0��	sdram1д
					case ef_t is
						when "01" =>									--01��ram0����ram1��									
							wr_t <= "1000";							--S2=1000��sdram0��	sdram1�ȴ�
							present_state <= S2;
						when "10" =>									--10��ram0��ram1����
							wr_t <= "0001";							--S3=0001��sdram0�ȴ�	sdram1д
							present_state <= S3;							
						when "11" =>									--11��ram0��ram1��
							wr_t <= "0110";							--S4=0110��sdram0д	sdram1��
							present_state <= S4;
						when others => 
							wr_t <= wr_t;
							present_state <= S1;
					end case;
				when S2 =>--1000--									--״̬S2ʱ sdram0��	sdram1�ȴ�
					if ( SDRAMEMPTY(1) = '1' ) then
						wr_t <= "0110";--"1001";
						present_state <= S4;--S1;
					else
						wr_t <= "1000";
						present_state <= S2;
					end if;
				when S3 =>--0001--									--״̬S3ʱ sdram0�ȴ�	sdram1д
					if ( SDRAMFULL(0) = '1' ) then
						wr_t <= "0110";
						present_state <= S4;
					else
						wr_t <= "0001";
						present_state <= S3;
					end if;
				when S4 =>--0110--									--״̬S4ʱ sdram0д	sdram1��
					case fe_t is
						when "01" =>
							wr_t <= "0100";
							present_state <= S0;
						when "10" =>
							wr_t <= "0010";
							present_state <= S5;
						when "11" =>
							wr_t <= "1001";
							present_state <= S1;
						when others =>
							wr_t <= "0110";
							present_state <= S4;
					end case;
				when S5 =>--0010--									--״̬S5ʱ sdram0�ȴ�	sdram1��
					if ( SDRAMEMPTY(0) = '1' ) then
						wr_t <= "1001";
						present_state <= S1;
					else
						wr_t <= "0010";
						present_state <= S5;
					end if;
					when others =>										--����=��λ
					wr_t <= "0100";
					present_state <= S0;
			end case;
		end if;
	end process;
	
	process( RESETn, CLK36M )
	begin
		if ( RESETn = '0' ) then
			SLRD <= '1';
		elsif ( CLK36M'event and CLK36M = '0' ) then			--�½���
			if ( FLAGC = '0' or FULL = '1' ) then
				SLRD <= '1';
			else
				SLRD <= '0';
			end if;
		end if;
	end process;

END RTL;