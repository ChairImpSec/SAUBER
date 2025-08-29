
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

USE IEEE.NUMERIC_STD.ALL;

ENTITY counter IS
	GENERIC ( size: POSITIVE);
	PORT ( clk     : IN  STD_LOGIC;
			 en  	   : IN  STD_LOGIC;
			 reset	: IN  STD_LOGIC;
			 q 		: OUT STD_LOGIC_VECTOR ((size-1) DOWNTO 0));
END counter;

ARCHITECTURE behavioral OF counter IS
	
	SIGNAL count : unsigned ((size-1) DOWNTO 0);
	
BEGIN

	PROCESS(clk, reset, en)
	BEGIN
		IF RISING_EDGE(clk) THEN
			IF (reset = '1') THEN
				count <= (others => '0');
			ELSIF (en = '1') THEN
				count <= count + 1;
			END IF;
		END IF;
	END PROCESS;

	q <= STD_LOGIC_VECTOR (count);
	
END behavioral;

