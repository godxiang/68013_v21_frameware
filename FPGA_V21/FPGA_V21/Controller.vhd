LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;

ENTITY Controller IS
PORT
(
	RESETn : in std_logic;									--in 	复位 		
	CLK108M : in std_logic;									--in 
	CLK36M : in std_logic;									--in 
	SDRAMFULL : in std_logic_vector(1 downto 0);		--in 	SDRAM满，逻辑矢量2位，各代表一片SDRAM
	SDRAMEMPTY : in std_logic_vector(1 downto 0);	--in 	SDRAM空，逻辑矢量2位，各代表一片SDRAM
	WR : out std_logic_vector(3 downto 0);				--out	4位 读、写、等待控制。
	FLAGC : in std_logic;									--in 
	SLRD : out std_logic;									--out
	FULL : in std_logic										--in 
);
END Controller;

ARCHITECTURE RTL OF Controller IS

type state is ( S0, S1, S2, S3, S4, S5 );				--枚举数据类型，常用于有限状态机的状态定义，数据自动按顺序依次编码。
																	--S0=0100：sdram0写	sdram1等待
																	--S1=1001：sdram0读	sdram1写
																	--S2=1000：sdram0读	sdram1等待
																	--S3=0001：sdram0等待	sdram1写
																	--S4=0110：sdram0写	sdram1读
																	--S5=0010：sdram0等待	sdram1读
signal present_state : state := S0;

signal ef_t : std_logic_vector(1 downto 0);
signal fe_t : std_logic_vector(1 downto 0);
signal wr_t : std_logic_vector(3 downto 0);

begin
	
	ef_t <= ( SDRAMEMPTY(1) & SDRAMFULL(0) );			--00：ram0不空ram1不满，01：ram0不空ram1满，10：ram0空ram1不满，11：ram0空ram1满，
	fe_t <= ( SDRAMFULL(1) & SDRAMEMPTY(0) );			--00：ram0不满ram1不空，01：ram0不满ram1空，10：ram0满ram1不空，11：ram0满ram1空，
	WR <= wr_t;
	
	process ( RESETn, CLK108M )
	begin
		if ( RESETn = '0' ) then									--0复位
			wr_t <= "0100";											--状态S0，wr_t = 0100：写入sdram0 ，sdram1等待
			present_state <= S0;										
		elsif ( CLK108M'event and CLK108M = '1' ) then		--CLK108M上升沿
			case present_state is
				when S0 =>--0100--									--状态S0时
					if ( SDRAMFULL(1) = '1' ) then				--是否ram0满
						wr_t <= "1001";								--读ram0,写ram1
						present_state <= S1;							--进入 状态S1，wr_t = 1001
					else
						wr_t <= "0100";								--否则 维持状态S0，wr_t = 0100
						present_state <= S0;
					end if;
				when S1 =>--1001--									--状态S1时， sdram0读	sdram1写
					case ef_t is
						when "01" =>									--01：ram0不空ram1满									
							wr_t <= "1000";							--S2=1000：sdram0读	sdram1等待
							present_state <= S2;
						when "10" =>									--10：ram0空ram1不满
							wr_t <= "0001";							--S3=0001：sdram0等待	sdram1写
							present_state <= S3;							
						when "11" =>									--11：ram0空ram1满
							wr_t <= "0110";							--S4=0110：sdram0写	sdram1读
							present_state <= S4;
						when others => 
							wr_t <= wr_t;
							present_state <= S1;
					end case;
				when S2 =>--1000--									--状态S2时 sdram0读	sdram1等待
					if ( SDRAMEMPTY(1) = '1' ) then
						wr_t <= "0110";--"1001";
						present_state <= S4;--S1;
					else
						wr_t <= "1000";
						present_state <= S2;
					end if;
				when S3 =>--0001--									--状态S3时 sdram0等待	sdram1写
					if ( SDRAMFULL(0) = '1' ) then
						wr_t <= "0110";
						present_state <= S4;
					else
						wr_t <= "0001";
						present_state <= S3;
					end if;
				when S4 =>--0110--									--状态S4时 sdram0写	sdram1读
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
				when S5 =>--0010--									--状态S5时 sdram0等待	sdram1读
					if ( SDRAMEMPTY(0) = '1' ) then
						wr_t <= "1001";
						present_state <= S1;
					else
						wr_t <= "0010";
						present_state <= S5;
					end if;
					when others =>										--其它=复位
					wr_t <= "0100";
					present_state <= S0;
			end case;
		end if;
	end process;
	
	process( RESETn, CLK36M )
	begin
		if ( RESETn = '0' ) then
			SLRD <= '1';
		elsif ( CLK36M'event and CLK36M = '0' ) then			--下降沿
			if ( FLAGC = '0' or FULL = '1' ) then
				SLRD <= '1';
			else
				SLRD <= '0';
			end if;
		end if;
	end process;

END RTL;