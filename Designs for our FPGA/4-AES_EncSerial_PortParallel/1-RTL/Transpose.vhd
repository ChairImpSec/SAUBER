
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Transpose is
    Port ( X  : in  STD_LOGIC_VECTOR (127 downto 0);
           Y : out STD_LOGIC_VECTOR (127 downto 0));
end Transpose;

architecture Behavioral of Transpose is

	type BYTE_ARRAY  is array (integer range <>) of std_logic_vector(7 downto 0);

	signal InArray:  BYTE_ARRAY(0 to 15);
	signal OutArray: BYTE_ARRAY(0 to 15);

begin
	
	Gen1: FOR i in 0 to 15 GENERATE
		InArray(i) <= X(i*8+7 downto i*8);
	end GENERATE;

   OutArray( 0) <= InArray(0);
   OutArray( 1) <= InArray(4);
   OutArray( 2) <= InArray(8);
   OutArray( 3) <= InArray(12);
   OutArray( 4) <= InArray(1);
   OutArray( 5) <= InArray(5);
   OutArray( 6) <= InArray(9);
   OutArray( 7) <= InArray(13);
   OutArray( 8) <= InArray(2);
   OutArray( 9) <= InArray(6);
   OutArray(10) <= InArray(10);
   OutArray(11) <= InArray(14);
   OutArray(12) <= InArray(3);
   OutArray(13) <= InArray(7);
   OutArray(14) <= InArray(11);
   OutArray(15) <= InArray(15);

	Gen2: FOR i in 0 to 15 GENERATE
		Y(i*8+7 downto i*8) <= OutArray(i);
	end GENERATE;

end Behavioral;

