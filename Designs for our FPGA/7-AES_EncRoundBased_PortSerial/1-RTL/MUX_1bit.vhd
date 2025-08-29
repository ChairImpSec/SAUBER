library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity XOR_forMUX is
	port(
		A	: in  std_logic;
		B	: in  std_logic;
		C	: out std_logic);

end entity XOR_forMUX;


architecture dfl of XOR_forMUX is
begin

	C <= A XOR B;

end architecture;

----------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity AND_forMUX is
	port(
		A	: in  std_logic;
		B	: in  std_logic;
		C	: out std_logic);

end entity AND_forMUX;


architecture dfl of AND_forMUX is
begin

	C <= A AND B;

end architecture;

----------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity MUX_1bit is
	port(
		S	: in  std_logic;
		D0	: in  std_logic;
		D1	: in  std_logic;
		Q	: out std_logic);

end entity MUX_1bit;


architecture dfl of MUX_1bit is

component XOR_forMUX is
	port(
		A	: in  std_logic;
		B	: in  std_logic;
		C	: out std_logic);
end component;		

component AND_forMUX is
	port(
		A	: in  std_logic;
		B	: in  std_logic;
		C	: out std_logic);
end component;		

signal X, Y : std_logic;

begin

    XOR1: XOR_forMUX port map (D0, D1, X);
    AND1: AND_forMUX port map (S,  X,  Y);
    XOR2: XOR_forMUX port map (Y, D0,  Q);

    -- Q <= D0 WHEN S = '0' ELSE D1;

end architecture;
