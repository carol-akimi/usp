LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;

ENTITY elevador IS 
	PORT (clk, reset : IN STD_LOGIC;
			--novo: IN INTEGER range 0 to 15;
			novo: IN STD_LOGIC_VECTOR (3 downto 0); 
			atual: OUT STD_LOGIC_VECTOR (3 downto 0); 
			movimento: OUT STD_LOGIC_VECTOR (1 downto 0)); --00 parado, 01 subindo, 10 descendo
END elevador; 

ARCHITECTURE a OF elevador IS
	TYPE estado IS (parado, subindo, descendo); --definição dos 3 estados
	SIGNAL estado_atual, estado_novo: estado; -- Cria o sinal estado cujo tipo é ESTADO_TIPO
	SIGNAL andar : STD_LOGIC_VECTOR (3 downto 0); 
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
	atual <= andar; 
	END a; 
					