library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity SDRAM_Controller is
port
(
	RESETn : in std_logic;												--复位		
	CLOCK : in std_logic;												--系统时钟	
	WR : in std_logic_vector(1 downto 0);							--in WR=01：读USBfifo写sdram， WR=10：读sdram写EXTfifo
	USBFIFOFull : in std_logic;
	EXTFIFOEmpty : in std_logic;										--in  EXTFIFO空
	ReadUSBFIFO : out std_logic;										--out	USBFIFO读信号
	WriteEXTFIFO : out std_logic;										--out EXTFIFO写信号
	ReadUSBFIFOData : in std_logic_vector(15 downto 0);		--in  模块数据输入口
	WriteEXTFIFOData : out std_logic_vector(15 downto 0);		--out 模块数据输出口
	Full : out std_logic;
	Empty : out std_logic;
	CSn : out std_logic;	
	CLK : out std_logic;													--out SDRAM CLK
	CKE : out std_logic;
	RASn : out std_logic;
	CASn : out std_logic;
	WEn : out std_logic;
	UDQM : out std_logic;
	LDQM : out std_logic;
	BA : out std_logic_vector(1 downto 0);
	A : out std_logic_vector(12 downto 0);							--out 
	DQ : inout std_logic_vector(15 downto 0)						--inout SDRAM 数据接口
);
end SDRAM_Controller;

architecture RTL of SDRAM_Controller is

type state is ( 	INIT,						--初始化 
						PRECHARGE, 				--预充电
						PRECHARGE_TRP,			--预充电有效周期 
						AUTOREFRESH, 			--自动刷新
						AUTOREFRESH_TRC,		-- 
						LOADMODE, 				--模式装入
						LOADMODE_TRMD,			--
						IDLE,						-- 
						ACTIVEROW,				--行操作
						ACTIVEROW_TRCD,		-- 
						WRITEDATA,				-- 
						WRITEDATA_TWR,			--
						READDATA,				-- 
						CAS, 						--
						COMMANDDONE );			--
signal present_state : state := INIT;

signal count_init : integer range 0 to 11999 := 0;
signal init_precharge : std_logic := '0';
signal count_trp : integer range 0 to 3 := 0;
signal count_trc : integer range 0 to 7 := 0;
signal count_trc_init : integer range 0 to 1 := 0;
signal count_tmrd : integer range 0 to 2 := 0;
signal autorefresh_en : std_logic := '0';
signal refreshsdram : std_logic := '0';
signal count_autorefresh : integer range 0 to 199 := 0;
signal count_trcd : integer range 0 to 3 :=0;
signal count_twr : integer range 0 to 3 := 0;
signal count_done : integer range 0 to 3 := 0;
signal bank : std_logic_vector(1 downto 0) := ( others => '0' );
signal row : std_logic_vector(12 downto 0) := ( others => '0' );
signal col : std_logic_vector(9 downto 0) := ( others => '0' );
signal writesdram_en : std_logic := '0';
signal readsdram_en : std_logic := '0';
signal readcamerafifo_t : std_logic := '0';
signal writemcufifo_t : std_logic := '0';

begin

	CSn <= '0';
	CLK <= CLOCK;
	CKE <= '1';
		
	WriteEXTFIFOData <= DQ;															--输出数据 = SDRAM数据
	DQ <= ReadUSBFIFOData when WR = "01" else ( others => 'Z' );		--WR=01时：SDRAM写入, SDRAM数据 = FIFO数据,否则高阻
	
	process ( RESETn, CLOCK )
	begin
		if ( RESETn = '0' ) then
			count_init     <= 0;					
			init_precharge <= '0';
			count_trp      <= 0;		
			count_trc      <= 0;
			count_trc_init <= 0;	
			count_tmrd     <= 0;
			autorefresh_en <= '0';					
			count_trcd     <= 0;				
			count_twr      <= 0;
			count_done     <= 0;
			Full           <= '0';			
			writesdram_en  <= '0';
			readsdram_en   <= '0';
			readcamerafifo_t <= '0';		
			bank <= ( others => '0' );
			row  <= ( others => '0' );
			col <= ( others => '0' );								
			RASn <= '1';
			CASn <= '1';
			WEn  <= '1';
			UDQM  <= '1';
			LDQM  <= '1';
			BA   <= ( others => '0' );											--bank地址清零
			A    <= ( others => '0' );											--复位地址清零				
			present_state <= INIT;
		elsif ( CLOCK'event and CLOCK = '1' ) then
			case present_state is 
				when INIT =>				
					--/CS /RAS /CAS /WE DQM ADDR DQS = NOP L H H H X X X--
					RASn <= '1';
					CASn <= '1';
					WEn  <= '1';
					UDQM  <= '0';
					LDQM  <= '0';
					BA   <= ( others => '0' );
					A    <= ( others => '0' );						
					count_trp      <= 0;		
					count_trc      <= 0;
					count_trc_init <= 0;		
					count_tmrd     <= 0;
					autorefresh_en <= '0';						
					count_trcd     <= 0;			
					count_twr      <= 0;
					count_done     <= 0;
					Full           <= '0';
					Empty          <= '0';
					writesdram_en  <= '0';
					readsdram_en   <= '0';
					readcamerafifo_t <= '0';			
					bank <= ( others => '0' );
					row <= ( others => '0' );
					col <= ( others => '0' );									
					if ( count_init = 11999 ) then
						count_init <= 0;
						init_precharge <= '1';
						present_state <= PRECHARGE;
					else
						count_init <= count_init + 1;
						init_precharge <= '0';
						present_state <= INIT;
					end if;
				when PRECHARGE =>
					--/CS /RAS /CAS /WE DQM ADDR DQS = PRECHARGE L L H L X CODE X--
					RASn <= '0';
					CASn <= '1';
					WEn  <= '0';
					UDQM  <= '0';
					LDQM  <= '0';
					BA   <= ( others => '0' );
					A    <= "0010000000000";					
					present_state <= PRECHARGE_TRP;
				when PRECHARGE_TRP =>					
					--/CS /RAS /CAS /WE DQM ADDR DQS = NOP L H H H X X X--
					RASn <= '1';
					CASn <= '1';
					WEn  <= '1';
					UDQM  <= '0';
					LDQM  <= '0';
					BA   <= ( others => '0' );
					A    <= ( others => '0' );									
					if ( count_trp = 2 ) then
						count_trp <= 0;
						if ( init_precharge = '1' ) then
							present_state <= AUTOREFRESH;
						elsif ( writesdram_en = '1' ) then
							if ( row = "1111111111111" ) then
								row <= ( others => '0' );
								if ( bank = "11" ) then
									bank <= ( others => '0' );
									Full <= '1';
								else
									bank <= bank + 1;
								end if;
								present_state <= COMMANDDONE;
							else
									row <= row + 1;
									present_state <= IDLE;
							end if;
						elsif  ( readsdram_en = '1' ) then
							if ( row = "1111111111111" ) then
								row <= ( others => '0' );
								if ( bank = "11" ) then
									bank <= ( others => '0' );
									Empty <= '1';
								else
									bank <= bank + 1;
								end if;
								present_state <= COMMANDDONE;
							else
								row <= row + 1;
								present_state <= IDLE;
							end if;
						else
							present_state <= IDLE;
						end if;
					else
						count_trp <= count_trp + 1;
						present_state <= PRECHARGE_TRP;
					end if;
				when AUTOREFRESH =>					
					--/CS /RAS /CAS /WE DQM ADDR DQS = AUTOREFRESH L L L H X X X--
					RASn <= '0';
					CASn <= '0';
					WEn  <= '1';
					UDQM  <= '0';
					LDQM  <= '0';
					BA   <= ( others => '0' );
					A    <= ( others => '0' );					
					present_state <= AUTOREFRESH_TRC;
				when AUTOREFRESH_TRC =>
					--/CS /RAS /CAS /WE DQM ADDR DQS = NOP L H H H X X X--					
					RASn <= '1';
					CASn <= '1';
					WEn  <= '1';
					UDQM  <= '0';
					LDQM  <= '0';
					BA   <= ( others => '0' );
					A    <= ( others => '0' );					
					if ( count_trc = 7 ) then
						count_trc <= 0;
						if ( init_precharge = '1' ) then
							if ( count_trc_init = 1 ) then
								count_trc_init <= 0;
								init_precharge <= '0';
								present_state <= LOADMODE;
							else
								count_trc_init <= count_trc_init + 1;
								present_state <= AUTOREFRESH;
							end if;
						elsif ( refreshsdram = '1' ) then
							autorefresh_en <= '0';
							present_state <= IDLE;
						else
							present_state <= IDLE;
						end if;
					else
						count_trc <= count_trc + 1;
						present_state <= AUTOREFRESH_TRC;
					end if;
				when LOADMODE =>					
					--/CS /RAS /CAS /WE DQM ADDR DQS = LOADMODE L L L L X OPCODE X--
					RASn <= '0';
					CASn <= '0';
					WEn  <= '0';
					UDQM  <= '0';
					LDQM  <= '0';
					BA   <= ( others => '0' );
					A    <= "0001000100000";					
					present_state <= LOADMODE_TRMD;
				when LOADMODE_TRMD =>
					--/CS /RAS /CAS /WE DQM ADDR DQS = NOP L H H H X X X--
					RASn <= '1';
					CASn <= '1';
					WEn  <= '1';
					UDQM  <= '0';
					LDQM  <= '0';
					BA   <= ( others => '0' );
					A    <= ( others => '0' );
					if ( count_tmrd = 2 ) then
						count_tmrd <= 0;
						present_state <= IDLE;
					else
						count_tmrd <= count_tmrd + 1;
						present_state <= LOADMODE_TRMD;
					end if;
				when IDLE =>
					Full              <= '0';
					Empty             <= '0';
					writesdram_en     <= '0';
					readsdram_en      <= '0';
					readcamerafifo_t  <= '0';
					autorefresh_en    <= '1';
					--/CS /RAS /CAS /WE DQM ADDR DQS = NOP L H H H X X X--	
					
					count_init     <= 0;					
					init_precharge <= '0';
					count_trp      <= 0;		
					count_trc      <= 0;
					count_trc_init <= 0;			
					count_tmrd     <= 0;					
					count_trcd     <= 0;		
					count_twr      <= 0;
					count_done     <= 0;
													
					RASn <= '1';
					CASn <= '1';
					WEn  <= '1';
					UDQM  <= '0';
					LDQM  <= '0';
					BA   <= ( others => '0' );
					A    <= ( others => '0' );					
					if ( refreshsdram = '1' ) then
						present_state <= AUTOREFRESH;
					elsif ( WR = "01" ) then		--read data form adcfifo and write data to sdram--
						if ( USBFIFOFull = '1' ) then
							writesdram_en <= '1';						
							present_state <= ACTIVEROW;
						else
							writesdram_en <= '0';						
							present_state <= IDLE;
						end if;
					elsif ( WR = "10" ) then		--read data from sdram and write data to mcufifo--
						if ( EXTFIFOEmpty = '0' ) then
							readsdram_en <= '1';
							present_state <= ACTIVEROW;
						else
							readsdram_en <= '0';
							present_state <= IDLE;
						end if;
					else
						present_state <= IDLE;
					end if;
				when ACTIVEROW =>					
					--/CS /RAS /CAS /WE DQM ADDR DQS = ACTIVE L L H H X X X--
					RASn <= '0';
					CASn <= '1';
					WEn  <= '1';
					UDQM  <= '0';
					LDQM  <= '0';
					if (( writesdram_en = '1' ) or ( readsdram_en = '1' )) then
						BA <= bank;
						A  <= row;					
					else
						BA <= ( others => '0' );
						A  <= ( others => '0' );						
					end if;
					present_state <= ACTIVEROW_TRCD;
				when ACTIVEROW_TRCD =>
					--/CS /RAS /CAS /WE DQM ADDR DQS = NOP L H H H X X X--
					RASn <= '1';
					CASn <= '1';
					WEn  <= '1';
					UDQM  <= '0';
					LDQM  <= '0';
					BA   <= ( others => '0' );
					A    <= ( others => '0' );					
					if ( count_trcd = 2 ) then
						count_trcd <= 0;
						if ( writesdram_en = '1' ) then
							readcamerafifo_t <= '1';		--enable read sdramfifo--
							present_state <= WRITEDATA;
						elsif ( readsdram_en = '1' ) then
							present_state <= READDATA;					
						else
							present_state <= PRECHARGE;		--must be precharge after being actived--
						end if;
					else
						count_trcd <= count_trcd + 1;
						present_state <= ACTIVEROW_TRCD;
					end if;
				when READDATA =>
					--/CS /RAS /CAS /WE DQM ADDR DQS = READ L H L H X X X--
					RASn <= '1';
					CASn <= '0';
					WEn  <= '1';
					UDQM  <= '0';
					LDQM  <= '0';
					if ( readsdram_en = '1' ) then
						BA <= bank;
						A  <= ( "0000" & col(8 downto 0) );						
						if ( col = "0111111111" ) then
							col <= col + 1;
							present_state <= CAS;
						else
							col <= col + 1;
							present_state <= READDATA;
						end if;
					end if;
				when CAS =>
					--/CS /RAS /CAS /WE DQM ADDR DQS = NOP L H H H X X X--
					RASn <= '1';
					CASn <= '1';
					WEn  <= '1';
					UDQM  <= '0';
					LDQM  <= '0';
					BA   <= ( others => '0' );
					A    <= ( others => '0' );					
					if ( col = "1000000001" ) then
						col <= ( others => '0' );
						present_state <= PRECHARGE;
					else
						col <= col + 1;
						present_state <= CAS;
					end if;
				when WRITEDATA =>
					--/CS /RAS /CAS /WE DQM ADDR DQS = WRITE L H L L L COL VALID--
					RASn <= '1';
					CASn <= '0';
					WEn  <= '0';
					UDQM  <= '0';
					LDQM  <= '0';
					BA   <= bank;
					A    <= ( "0000" & col(8 downto 0) );					
					if ( col = "0111111111" ) then
						col <= ( others => '0' );
						readcamerafifo_t <= '0';
						present_state <= WRITEDATA_TWR;
					else
						col <= col + 1;
						readcamerafifo_t <= '1';
						present_state <= WRITEDATA;
					end if;	
				when WRITEDATA_TWR =>
					readcamerafifo_t <= '0';
					--/CS /RAS /CAS /WE DQM ADDR DQS = NOP L H H H X X X--
					RASn <= '1';
					CASn <= '1';
					WEn  <= '1';
					UDQM  <= '0';
					LDQM  <= '0';
					BA   <= ( others => '0' );
					A    <= ( others => '0' );				
					if ( count_twr = 2 ) then
						count_trcd <= 0;
						present_state <= PRECHARGE;
					else
						count_twr <= count_twr + 1;
						present_state <= WRITEDATA_TWR;
					end if;
				when COMMANDDONE =>
					Full <= '0';
					Empty <= '0';
					if ( count_done = 3 ) then
						count_done <= 0;
						present_state <= IDLE;
					else
						count_done <= count_done + 1;
						present_state <= COMMANDDONE;
					end if;
				when others =>
					Full              <= '0';		--command state--
					Empty             <= '0';
					writesdram_en     <= '0';		--MCU write data to SDRAM, convert data direction MCU to SDRAM--
					readsdram_en      <= '0';		--MCU read data from SDRAM, convert data direction SDRAM to MCU--
					autorefresh_en    <= '1';		--enable autorefresh counter--
					--/CS /RAS /CAS /WE DQM ADDR DQS = NOP L H H H X X X--	
					RASn <= '1';
					CASn <= '1';
					WEn  <= '1';
					UDQM  <= '0';
					LDQM  <= '0';
					BA   <= ( others => '0' );
					A    <= ( others => '0' );					
					present_state <= IDLE;
			end case;
		end if;
	end process;
	
	process ( RESETn, CLOCK )
	begin
		if ( RESETn = '0' ) then
			count_autorefresh <= 0;
			refreshsdram <= '0';		
		elsif ( CLOCK'event and CLOCK = '1' ) then
			if ( autorefresh_en = '0' ) then
				count_autorefresh <= 0;
				refreshsdram <= '0';
			--7.8125us--counter = 199 = 1.86us, read/write row about 5.56us, total 7.42us--
			elsif ( count_autorefresh = 199 ) then
				refreshsdram <= '1';
			else
				count_autorefresh <= count_autorefresh + 1;
			end if;
		end if;
	end process;
	
	process ( RESETn, CLOCK )
	begin
		if ( RESETn = '0' ) then
			writemcufifo_t <= '0';
		elsif ( CLOCK'event and CLOCK = '1' ) then
			if ( readsdram_en = '1' and col >= "0000000010" and col <= "1000000001" ) then
				writemcufifo_t <= '1';
			else
				writemcufifo_t <= '0';
			end if;
		end if;
	end process;
	
	WriteEXTFIFO <= writemcufifo_t;
	
	process ( RESETn, CLOCK )
	begin
		if ( RESETn = '0' ) then
			ReadUSBFIFO <= '0';
		elsif ( CLOCK'event and CLOCK = '0' ) then
			ReadUSBFIFO <= readcamerafifo_t;
		end if;
	end process;
				
end RTL;