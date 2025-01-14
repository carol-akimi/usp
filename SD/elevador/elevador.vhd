LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY elevador IS 
	PORT (clk, reset : IN STD_LOGIC;
			novo: IN INTEGER range 0 to 15;
			--atual: OUT INTEGER range 0 to 15;		
			movimento: OUT STD_LOGIC_VECTOR (1 downto 0)); --00 parado, 01 subindo, 10 descendo
END elevador; 

ARCHITECTURE a OF elevador IS
	-- Definição de novo tipo enumerado
	TYPE estado_tipo IS (parado, subindo, descendo); --definição do 3 estados
	SIGNAL estado_atual, estado_novo: estado_tipo; -- Cria o sinal estado cujo tipo é ESTADO_TIPO
	SIGNAL andar : INTEGER range 0 to 15 := 0;
BEGIN 
	PROCESS(clk, reset)
	BEGIN 
		IF reset = '1' THEN 
			estado_atual <= parado;
			estado_novo <= parado; 
			andar <= 0; 
			movimento <= "00"; 
		ELSIF rising_edge(clk) THEN --borda de subida do clock 
			estado_atual <= estado_novo; 
			CASE estado_atual IS 
				WHEN parado => 
					IF andar = novo THEN 
						estado_novo <= parado; 
						movimento <= "00";
					ELSIF andar > novo THEN 
						estado_novo <= descendo; 
						movimento <= "10";
					ELSIF andar < novo THEN 
						estado_novo <= subindo; 
						movimento <= "01";
					END IF; 
				WHEN subindo => 
					andar <= andar + 1; 
					IF andar = novo THEN 
						estado_novo <= parado; 
						movimento <= "00"; 
					ELSE 
						estado_novo <= subindo; 
					END IF; 
				WHEN descendo => 
					andar <= andar - 1; 
					IF andar = novo THEN 
						estado_novo <= parado; 
						movimento <= "00"; 
					ELSE 
						estado_novo <= descendo; 
					END IF; 
			END CASE; 
		END IF; 
	END PROCESS; 	
	END a; 
					