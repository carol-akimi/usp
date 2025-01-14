LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;

ENTITY display7seg IS 
	PORT(
		num : IN STD_LOGIC_VECTOR (3 downto 0); --0-15 
		seg: OUT STD_LOGIC_VECTOR (13 downto 0));
END display7seg;

ARCHITECTURE D OF display7seg IS
BEGIN 
	PROCESS (num)
	BEGIN 
		CASE num IS 
			WHEN "0000" =>  -- 0
				 seg <= "00000010000001";  
			WHEN "0001" =>  -- 1
				 seg <= "00000011001111";  
			WHEN "0010" =>  -- 2
				 seg <= "00000010010010";  
			WHEN "0011" =>  -- 3
				 seg <= "00000010000110";  
			WHEN "0100" =>  -- 4
				 seg <= "00000011001100";  
			WHEN "0101" =>  -- 5
				 seg <= "00000010100100";  
			WHEN "0110" =>  -- 6
				 seg <= "00000010100000";  
			WHEN "0111" =>  -- 7
				 seg <= "00000010001111";  
			WHEN "1000" =>  -- 8
				 seg <= "00000010000000";  
			WHEN "1001" =>  -- 9
				 seg <= "00000010000100";  
			WHEN "1010" =>  -- 10
				 seg <= "10011110000001";  
			WHEN "1011" =>  -- 11
				 seg <= "10011111001111";  
			WHEN "1100" =>  -- 12
				 seg <= "10011110010010";  
			WHEN "1101" =>  -- 13
				 seg <= "10011110000110";  
			WHEN "1110" =>  -- 14
				 seg <= "10011111001100";  
			WHEN "1111" =>  -- 15
				 seg <= "10011110100100";  
			WHEN OTHERS =>  -- Caso de erro
				 seg <= "11111111111111";  
			END CASE;
		END PROCESS; 
END D; 
			
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;

ENTITY elevador IS 
	PORT (clk, reset : IN STD_LOGIC;
			--novo: IN INTEGER range 0 to 15;
			novo: IN STD_LOGIC_VECTOR (3 downto 0); 
			atual: IN STD_LOGIC_VECTOR (3 downto 0); -- esta como IN para funcionar no display 
			movimento: OUT STD_LOGIC_VECTOR (1 downto 0); --00 parado, 01 subindo, 10 descendo
			display_atual: OUT STD_LOGIC_VECTOR (13 downto 0); --display do andar atual
			display_novo: OUT STD_LOGIC_VECTOR (13 downto 0)); --display do andar novo 
END elevador; 

ARCHITECTURE a OF elevador IS
	TYPE estado IS (parado, subindo, descendo); --definição dos 3 estados
	SIGNAL estado_atual, estado_novo: estado; -- Cria o sinal estado cujo tipo é ESTADO_TIPO
	SIGNAL andar : STD_LOGIC_VECTOR (3 downto 0); 
	SIGNAL seg_atual, seg_novo : STD_LOGIC_VECTOR (13 downto 0);
BEGIN 
	PROCESS(clk, reset)
	BEGIN 
		IF reset = '1' THEN 
			estado_atual <= parado;
			estado_novo <= parado; 
			andar <= "0000"; 
			movimento <= "00"; 
		ELSIF rising_edge(clk) THEN --borda de subida do clock 
			estado_atual <= estado_novo; 
			CASE estado_atual IS 
				WHEN parado => 
					IF andar = novo THEN 
						estado_novo <= parado; 
						movimento <= "00";
					ELSIF to_integer(unsigned(andar)) > to_integer(unsigned(novo)) THEN
						estado_novo <= descendo; 
						movimento <= "10";
					ELSIF to_integer(unsigned(andar)) < to_integer(unsigned(novo)) THEN
						estado_novo <= subindo; 
						movimento <= "01";
					END IF; 
				WHEN subindo => 
					andar <= std_logic_vector(unsigned(andar) + 1);
					IF andar = novo THEN 
						estado_novo <= parado; 
						movimento <= "00"; 
					ELSIF to_integer(unsigned(andar)) > to_integer(unsigned(novo)) THEN
						estado_novo <= descendo; 
						movimento <= "10";
					ELSIF to_integer(unsigned(andar)) < to_integer(unsigned(novo)) THEN
						estado_novo <= subindo; 
						movimento <= "01";
					END IF; 
				WHEN descendo => 
					andar <= std_logic_vector(unsigned(andar) - 1);
					IF andar = novo THEN 
						estado_novo <= parado; 
						movimento <= "00"; 
					ELSIF to_integer(unsigned(andar)) > to_integer(unsigned(novo)) THEN
						estado_novo <= descendo; 
						movimento <= "10";
					ELSIF to_integer(unsigned(andar)) < to_integer(unsigned(novo)) THEN
						estado_novo <= subindo; 
						movimento <= "01";
					END IF; 
			END CASE; 
		END IF; 
	END PROCESS; 	
	

	display_atual_inst : ENTITY WORK.display7seg
	  PORT MAP (
			num => andar,
			seg => display_atual
	  );
	display_novo_inst : ENTITY WORK.display7seg
	  PORT MAP (
			num => novo,
			seg => display_novo
	  );

	END a; 
	
	

			
					