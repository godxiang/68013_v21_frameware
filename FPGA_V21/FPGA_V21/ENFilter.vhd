LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;

ENTITY Encode_Filter IS
PORT
(
	clk : in std_logic;									--in  ʱ�� 
	D : 	in std_logic;									--in  �����ź�
	Q :   out std_logic									--out ����ź�
);
END Encode_Filter;

ARCHITECTURE RTL OF Encode_Filter IS

signal dfilter5: std_logic_vector( 6 downto 0 ) ;
signal Q_t: std_logic ;

begin
	
	Q  <= Q_t ;
	
	process ( clk )
	begin
		dfilter5 <= dfilter5( 5 downto 0 ) &  D  ;	--����Ĵ�������+����
	
		case dfilter5 is
			when "0000000" =>	
				Q_t <= '0' ;
			when "1111111" =>	
				Q_t <= '1' ;
			when others =>
				Q_t <= Q_t ;
		end case;

	end process;

END RTL;