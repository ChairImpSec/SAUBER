--Template for state register with two shifting directions
-- MixColumns is included and requires 4 clock cycles, 1 for each column
--         I        II      III       IV
--         ^        ^        ^        ^
--       +---+    +---+    +---+    +---+
-- Out <-|S00|<-+-|S01|<---|S02|<---|S03|<- C
--       +---+    +---+    +---+    +---+
--         ^        ^        ^        +-----> outSB
--       +---+    +---+    +---+    +---+
--   C <-|S10|<---|S11|<---|S12|<---|S13|<- B
--       +---+    +---+    +---+    +---+
--         ^        ^        ^        ^
--       +---+    +---+    +---+    +---+
--   B <-|S20|<---|S21|<---|S22|<---|S23|<- A
--       +---+    +---+    +---+    +---+
--         ^        ^        ^        ^
--       +---+    +---+    +---+    +---+
--   A <-|S30|<---|S31|<---|S32|<---|S33|<- input
--       +---+    +---+    +---+    +---+
--         ^        ^        ^        ^
--       I +        II      III       IV
--    inSB +
--  inRCon +
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity KeyState is
	port(
		clk	: in std_logic;
		en    : in std_logic;
		selXOR: in std_logic;
		selMC: in std_logic;
		inputSer : in std_logic_vector(7 downto 0);
		nReset   : in std_logic;
		input: in std_logic_vector(7 downto 0);
		inSB: in std_logic_vector(7 downto 0);
		inRCon: in std_logic_vector(7 downto 0);
		outSB: out std_logic_vector(7 downto 0);
		roundKey: out std_logic_vector(7 downto 0)
		);

end entity KeyState;


architecture dfl of KeyState is

	signal inS00ser, inS01ser, inS02ser, inS03ser 	: std_logic_vector(7 downto 0);
	signal inS00par, inS01par, inS02par, inS03par 	: std_logic_vector(7 downto 0);
	signal inS10ser, inS11ser, inS12ser, inS13ser 	: std_logic_vector(7 downto 0);
	signal inS10par, inS11par, inS12par, inS13par 	: std_logic_vector(7 downto 0);
	signal inS20ser, inS21ser, inS22ser, inS23ser 	: std_logic_vector(7 downto 0);
	signal inS20par, inS21par, inS22par, inS23par 	: std_logic_vector(7 downto 0);
	signal inS30ser, inS31ser, inS32ser, inS33ser 	: std_logic_vector(7 downto 0);
	signal inS30par, inS31par, inS32par, inS33par 	: std_logic_vector(7 downto 0);
	
	signal outS00ser, outS01ser, outS02ser, outS03ser 	: std_logic_vector(7 downto 0);
	signal outS00par, outS01par, outS02par, outS03par 	: std_logic_vector(7 downto 0);
	signal outS10ser, outS11ser, outS12ser, outS13ser 	: std_logic_vector(7 downto 0);
	signal outS10par, outS11par, outS12par, outS13par 	: std_logic_vector(7 downto 0);
	signal outS20ser, outS21ser, outS22ser, outS23ser 	: std_logic_vector(7 downto 0);
	signal outS20par, outS21par, outS22par, outS23par 	: std_logic_vector(7 downto 0);
	signal outS30ser, outS31ser, outS32ser, outS33ser 	: std_logic_vector(7 downto 0);
	signal outS30par, outS31par, outS32par, outS33par 	: std_logic_vector(7 downto 0);

	signal outS01ser_XOR_00, outS01ser_p 	: std_logic_vector(7 downto 0);

component reg_en is
	generic (NBITS_D0: integer;
		 NBITS_D1: integer);
	port(
		clk	: in std_logic;
		en    : in std_logic;
		sel	: in std_logic;
		D0	: in std_logic_vector(NBITS_D0 - 1 downto 0);
		D1	: in std_logic_vector(NBITS_D1 - 1 downto 0);
		Q0	: out std_logic_vector(NBITS_D0 -1 downto 0);
		Q1	: out std_logic_vector(NBITS_D1 -1 downto 0)
		);
end component;

	signal nReset_selXOR : std_logic;

begin

-----------------------------------------------
--Row 0 
-----------------------------------------------
S00reg: reg_en
	generic map(NBITS_D0=>8,
				NBITS_D1=>8)
	port map(
		clk => clk,
		en  => en,
		sel => selMC,
      	D0 => inS00ser,
  		D1 => inS00par,
      	Q0 => outS00ser,
      	Q1 => outS00par
		);
S01reg: reg_en
	generic map(NBITS_D0=>8,
				NBITS_D1=>8)
	port map(
		clk => clk,
		en  => en,
		sel => selMC,
      	D0 => inS01ser,
  		D1 => inS01par,
      	Q0 => outS01ser,
      	Q1 => outS01par
		);
S02reg: reg_en
	generic map(NBITS_D0=>8,
				NBITS_D1=>8)
	port map(
		clk => clk,
		en  => en,
		sel => selMC,
      	D0 => inS02ser,
  		D1 => inS02par,
      	Q0 => outS02ser,
      	Q1 => outS02par
		);
S03reg: reg_en
	generic map(NBITS_D0=>8,
				NBITS_D1=>8)
	port map(
		clk => clk,
		en  => en,
		sel => selMC,
      	D0 => inS03ser,
  		D1 => inS03par,
      	Q0 => outS03ser,
      	Q1 => outS03par
		);
-----------------------------------------------
--Row 1
-----------------------------------------------
S10reg: reg_en
	generic map(NBITS_D0=>8,
				NBITS_D1=>8)
	port map(
		clk => clk,
		en  => en,
		sel => selMC,
      	D0 => inS10ser,
  		D1 => inS10par,
      	Q0 => outS10ser,
      	Q1 => outS10par
		);
S11reg: reg_en
	generic map(NBITS_D0=>8,
				NBITS_D1=>8)
	port map(
		clk => clk,
		en  => en,
		sel => selMC,
      	D0 => inS11ser,
  		D1 => inS11par,
      	Q0 => outS11ser,
      	Q1 => outS11par
		);
S12reg: reg_en
	generic map(NBITS_D0=>8,
				NBITS_D1=>8)
	port map(
		clk => clk,
		en  => en,
		sel => selMC,
      	D0 => inS12ser,
  		D1 => inS12par,
      	Q0 => outS12ser,
      	Q1 => outS12par
		);
S13reg: reg_en
	generic map(NBITS_D0=>8,
				NBITS_D1=>8)
	port map(
		clk => clk,
		en  => en,
		sel => selMC,
      	D0 => inS13ser,
  		D1 => inS13par,
      	Q0 => outS13ser,
      	Q1 => outS13par
		);
-----------------------------------------------
--Row 2
-----------------------------------------------
S20reg: reg_en
	generic map(NBITS_D0=>8,
				NBITS_D1=>8)
	port map(
		clk => clk,
		en  => en,
		sel => selMC,
      	D0 => inS20ser,
  		D1 => inS20par,
      	Q0 => outS20ser,
      	Q1 => outS20par
		);
S21reg: reg_en
	generic map(NBITS_D0=>8,
				NBITS_D1=>8)
	port map(
		clk => clk,
		en  => en,
		sel => selMC,
      	D0 => inS21ser,
  		D1 => inS21par,
      	Q0 => outS21ser,
      	Q1 => outS21par
		);
S22reg: reg_en
	generic map(NBITS_D0=>8,
				NBITS_D1=>8)
	port map(
		clk => clk,
		en  => en,
		sel => selMC,
      	D0 => inS22ser,
  		D1 => inS22par,
      	Q0 => outS22ser,
      	Q1 => outS22par
		);
S23reg: reg_en
	generic map(NBITS_D0=>8,
				NBITS_D1=>8)
	port map(
		clk => clk,
		en  => en,
		sel => selMC,
      	D0 => inS23ser,
  		D1 => inS23par,
      	Q0 => outS23ser,
      	Q1 => outS23par
		);
-----------------------------------------------
--Row 3
-----------------------------------------------
S30reg: reg_en
	generic map(NBITS_D0=>8,
				NBITS_D1=>8)
	port map(
		clk => clk,
		en  => en,
		sel => selMC,
      	D0 => inS30ser,
  		D1 => inS30par,
      	Q0 => outS30ser,
      	Q1 => outS30par
		);
S31reg: reg_en
	generic map(NBITS_D0=>8,
				NBITS_D1=>8)
	port map(
		clk => clk,
		en  => en,
		sel => selMC,
      	D0 => inS31ser,
  		D1 => inS31par,
      	Q0 => outS31ser,
      	Q1 => outS31par
		);
S32reg: reg_en
	generic map(NBITS_D0=>8,
				NBITS_D1=>8)
	port map(
		clk => clk,
		en  => en,
		sel => selMC,
      	D0 => inS32ser,
  		D1 => inS32par,
      	Q0 => outS32ser,
      	Q1 => outS32par
		);
S33reg: reg_en
	generic map(NBITS_D0=>8,
				NBITS_D1=>8)
	port map(
		clk => clk,
		en  => en,
		sel => selMC,
      	D0 => inS33ser,
  		D1 => inS33par,
      	Q0 => outS33ser,
      	Q1 => outS33par
		);

-----------------------------------------------
--8-bit horizontal Wiring, leftshift
-----------------------------------------------
--Row 0
-- Feedback XOR 
-----------------------------------------------

nReset_selXOR	<= nReset and selXOR;

outS01ser_XOR_00 <= outS01ser XOR outS00ser;
MUX_inS00ser: ENTITY work.MUX Generic Map (size => 8) Port Map (S => nReset_selXOR, D0 => outS01ser, D1 => outS01ser_XOR_00, Q => inS00ser);
inS01ser <= outS02ser;
inS02ser <= outS03ser;
inS03ser <= outS10ser;

-----------------------------------------------
--Row 1
-----------------------------------------------

inS10ser <= outS11ser;
inS11ser <= outS12ser;
inS12ser <= outS13ser;
inS13ser <= outS20ser;

-----------------------------------------------
--Row 2
-----------------------------------------------

inS20ser <= outS21ser;
inS21ser <= outS22ser;
inS22ser <= outS23ser;
inS23ser <= outS30ser;

-----------------------------------------------
--Row 3
-----------------------------------------------

inS30ser <= outS31ser;
inS31ser <= outS32ser;
inS32ser <= outS33ser;
MUX_inS33ser: ENTITY work.MUX Generic Map (size => 8) Port Map (S => nReset, D0 => inputSer, D1 => input, Q => inS33ser);

-----------------------------------------------
--8-bit vertical Wiring, rotation upwards
-----------------------------------------------
--Row 0
-----------------------------------------------
inS00par <= outS10par;
inS01par <= outS11par;
inS02par <= outS12par;
inS03par <= outS13par;
-----------------------------------------------
--Row 1 
-----------------------------------------------
inS10par <= outS20par;
inS11par <= outS21par;
inS12par <= outS22par;
inS13par <= outS23par;
-----------------------------------------------
--Row 2 
-----------------------------------------------
inS20par <= outS30par;
inS21par <= outS31par;
inS22par <= outS32par;
inS23par <= outS33par;
-----------------------------------------------
--Row 3, Sbox and RCon input are XORed in Col 1 
-----------------------------------------------
inS30par <= outS00par XOR inRCon XOR inSB;
inS31par <= outS01par;
inS32par <= outS02par;
inS33par <= outS03par;

-----------------------------------------------
--output Wiring 
-----------------------------------------------

roundKey <= outS00ser;
outSB <= outS13ser;
end architecture;
