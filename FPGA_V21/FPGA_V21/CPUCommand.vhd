LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;

ENTITY CPU_Command IS
PORT
(
	CLK : in std_logic;											--in  时钟 
	CPU_WR : in std_logic;										--输入: CPU写脉冲,负脉冲上升沿写入
	CPU_RD : in std_logic;										--输入: CPU读脉冲,负脉冲上升沿读取
	CPU_Set：in std_logic; 										--输入: CPU指令设置脉冲,上升沿设置
	CPU_Data_In : in std_logic_vector( 7 downto 0 );	--输入: CPU指令数据
	CPU_Data_Out : out std_logic vector( 7 downto 0 );	--out Led输出信号
	CPU_WR_1	: out std_logic vector( 7 downto 0 );		--out CPU指令数据
	
	
	
	
);
END CPU_Command;

ARCHITECTURE RTL OF CPU_Command IS

begin

	process ( Low_Clk )
	begin

	
	
	
	
	
	end process ;

END RTL;