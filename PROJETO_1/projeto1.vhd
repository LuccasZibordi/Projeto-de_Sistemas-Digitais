library ieee;
use ieee.std_logic_1164.all;
use work.pacotao.all;

entity projeto1 is
port( sw: in std_logic_vector (10 downto 0);
		LEDR: out std_logic_vector (5 downto 0);
		HEX0: out std_logic_vector (0 to 6);
		HEX2: out std_logic_vector (0 to 6);
		HEX4: out std_logic_vector (0 to 6);
		HEX6: out std_logic_vector (0 to 6)
	  );
end projeto1;

architecture ALU of projeto1 is
signal ALUoperation: std_logic_vector (2 downto 0); -- Comandos de entrada para selecionar a operação a ser realizada --

-- COUT'S-------------------------------------------
signal cout_sub: std_logic; -- cout da subtração --
signal cout_invb: std_logic; -- cout da inversao e soma (1) do B --
signal cout_add: std_logic; -- cout da soma dos 4 das entradas A e B--
signal cout_mul: std_logic; -- cout da multiplicação --
signal coutfinal: std_logic; -- cout do sistema --

--RESULTADOS------------------------------------------------------------------
signal resultsub: std_logic_vector (3 downto 0);  -- resultado da subtração --
signal resultadd: std_logic_vector (3 downto 0);  -- resultado da adição--
signal resultmul: std_logic_vector (3 downto 0);  -- resultado da multiplicação --
signal resultand: std_logic_vector (3 downto 0);  -- resultado da operação AND --
signal resultnot: std_logic_vector (3 downto 0);  -- resultado da operação NOT --
signal resultor: std_logic_vector (3 downto 0);  -- resultado da operação OR --
signal Result: std_logic_vector ( 3 downto 0); -- Resultado que sera mostrado na placa --
signal eq, gt, lt: std_logic;  -- resultados possíveis da comparação --
signal nop: std_logic; -- no operation, quando o código fornecido para a ALUoperation não tem nenhuma operação associada --

-- OVERFLOWS -------------------------------------------------------------------------
signal overflowsistema: std_logic; -- sinal para guardar o overflow mostrado na placa --
signal overflowsub: std_logic; -- verifica se ocorre overflow na subtração --
signal overflowadd: std_logic; -- verifica se ocorre overflow na adição --

--ZERO FLAGS------------------------------------------------------
signal zero: std_logic; -- verifica zeros da operação efetuada --



signal a,b: std_logic_vector ( 3 downto 0 );
signal binv: std_logic_vector( 3 downto 0 );

begin

-- subtração ( realizada em complemento de 2, A+(B'(barra) +1))--
a<= SW (10 DOWNTO 7);
b<= SW (6  DOWNTO 3);



 sub: somador4 port map( a, not b, '1', resultsub, cout_sub);
 
	overflowsub <= (a(3) AND binv(3) AND NOT resultsub(3)) OR (NOT a(3) AND  b(3) AND resultsub(3));
-- fim da subtração--
-- soma de 2 números de 4 bits--

somando: somador4 port map(sw(10 downto 7), sw(6 downto 3), '0', resultadd, cout_add);
overflowadd <= (a(3) AND b(3) AND NOT resultadd(3)) OR (NOT a(3) AND  binv(3) AND resultadd(3));
--fim da soma--


-- multiplicação--

multiplicando: mult port map (sw(8 downto 7), sw(4 downto 3), resultmul);
cout_mul <= resultmul(3);
--fim da multiplicação--

-- comparação--

comparando: comparador port map (sw(10 downto 7), sw(6 downto 3), lt, eq, gt);
--fim da comparação--


-- AND NOT OR--
resultand(0) <= sw(10) and sw(6);
resultand(1) <= sw(9) and sw(5);
resultand(2) <= sw(8) and sw(4);
resultand(3) <= sw(7) and sw(3);

resultnot(0) <= not sw(3);
resultnot(1) <= not sw(4);
resultnot(2) <= not sw(5);
resultnot(3) <= not sw(6);

resultor(0) <= sw(10) or sw(6);
resultor(1) <= sw(9) or sw(5);
resultor(2) <= sw(8) or sw(4);
resultor(3) <= sw(7) or sw(3);

-- definindo de onde vem os códigos da ALU operation --
ALUoperation <= sw(2 downto 0);


-- sistema de seleção do 'Result' que será exibido na placa --
with ALUoperation select
	Result <= resultand when "001",
				 resultor when "010",
				 resultnot when "011",
				 resultadd when "100",
				 resultsub when "101",
				 resultmul when "110",
				 "0000" when others;

-- sistema de seleção de overflow com base na operação realizada --
with ALUoperation select
	overflowsistema <= overflowadd when "100",
				          overflowsub when "101",
				          '0' when others;
							 
with ALUoperation select
		nop <= '0' when "000",
				 '1' when others;
							 
							 
							 
zero<= (not (result(0) OR result(1) OR result(2) OR result(3))) AND nop;
					 
-- Sistema de seleção do 111 = comparador na placa --
					 
with ALUoperation select
	LEDR(3) <= eq  when "111",
				  '0' when others;
	
with ALUoperation select
	LEDR(4) <= gt  when "111",
				  '0' when others;
	
with ALUoperation select
	LEDR(5) <= lt  when "111",
				  '0' when others;

				  
				  
-- hex da placa --
with ALUoperation select
	HEX0 <=  "0000001" when "000",
				"1001111" when "001",
				"0010010" when "010",
				"0000110" when "011",
				"1001100" when "100",
				"0100100" when "101",
				"0100000" when "110",
				"0001111" when "111",
				"1111111" when others;

with b select
	HEX2 <=  "0000001" when "0000",
				"1001111" when "0001",
				"0010010" when "0010",
				"0000110" when "0011",
				"1001100" when "0100",
				"0100100" when "0101",
				"0100000" when "0110",
				"0001111" when "0111",
				"0000000" when "1000",
				"0001100" when "1001",
				"0001000" when "1010",
				"1100000" when "1011",
				"0110001" when "1100",
				"1000010" when "1101",
				"0110000" when "1110",
				"0111000" when "1111",
				"1111111" when others;
				
with a select
	HEX4 <=  "0000001" when "0000",
				"1001111" when "0001",
				"0010010" when "0010",
				"0000110" when "0011",
				"1001100" when "0100",
				"0100100" when "0101",
				"0100000" when "0110",
				"0001111" when "0111",
				"0000000" when "1000",
				"0001100" when "1001",
				"0001000" when "1010",
				"1100000" when "1011",
				"0110001" when "1100",
				"1000010" when "1101",
				"0110000" when "1110",
				"0111000" when "1111",
				"1111111" when others;

with Result select
	HEX6 <=  "0000001" when "0000",
				"1001111" when "0001",
				"0010010" when "0010",
				"0000110" when "0011",
				"1001100" when "0100",
				"0100100" when "0101",
				"0100000" when "0110",
				"0001111" when "0111",
				"0000000" when "1000",
				"0001100" when "1001",
				"0001000" when "1010",
				"1100000" when "1011",
				"0110001" when "1100",
				"1000010" when "1101",
				"0110000" when "1110",
				"0111000" when "1111",
				"1111111" when others;

LEDR(0) <= coutfinal;
LEDR(1) <= zero;
LEDR(2) <= overflowsistema;
end ALU;
