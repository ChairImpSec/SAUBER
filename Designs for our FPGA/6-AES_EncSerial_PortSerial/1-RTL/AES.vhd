library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity AES is
        port(
            clk	     : in std_logic;
            start      : in std_logic;
            port_in    : in std_logic_vector(7 downto 0);
            port_out   : out std_logic_vector(7 downto 0);
            done       : out std_logic
            );

end entity AES;

architecture dfl of AES is

---------------------------------------------------------------------------
-- Component declaration
---------------------------------------------------------------------------
component State is
	port(
		clk	: in std_logic;
		selSR: in std_logic;
		selMC: in std_logic;
		inputSer : in std_logic_vector(7 downto 0);
		nReset   : in std_logic;
		input: in std_logic_vector(7 downto 0);
		inMC: in std_logic_vector(31 downto 0);
		output: out std_logic_vector(7 downto 0);
		outMC: out std_logic_vector(31 downto 0)
		);
end component State;

component KeyState is
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
end component KeyState;

COMPONENT Sbox
PORT(
	x : IN std_logic_vector(7 downto 0);
	y : OUT std_logic_vector(7 downto 0)
	);
END COMPONENT Sbox;

component MC is
        port(
                input       : in std_logic_vector(31 downto 0);
                output      : out std_logic_vector(31 downto 0)
                );
end component MC;

component RCon is
        port(
                clk       : in std_logic;
                nReset    : in std_logic;
                en        : in std_logic;
                enOut     : in std_logic;
					 notFirst  : out std_logic;
                final     : out std_logic;
                rconst    : out std_logic_vector(7 downto 0)
                );
end component RCon;

component controler is
        port(
                clk       : in  std_logic;
                done      : out std_logic;
                nReset    : in  std_logic;
                selMC     : out std_logic;
                selSR     : out std_logic;
                selXOR    : out std_logic;
                enRCon    : out std_logic;
					 finalStep : out std_logic;
					 Final     : in  std_logic
                );

end component controler;

---------------------------------------------------------------------------
-- Signal declaration
---------------------------------------------------------------------------
        signal StateInMC, MCin, MCout : std_logic_vector(31 downto 0);
        signal StateIn, StateOut, SboxIn, SboxOut : std_logic_vector(7 downto 0);
        signal keyStateIn, keySBIn, roundConstant : std_logic_vector(7 downto 0);
        signal inSBdata, inSBkey : std_logic_vector(7 downto 0);
        signal roundKey, StateOutXORroundKey : std_logic_vector(7 downto 0);
        signal selSR, selMC, selXOR, enRCon : std_logic;
        signal nReset, enKS, intFinal, finalStep, notFirst, intselXOR, ActiveRcon : std_logic;
		  
begin

	---------------------------------------------------------------------------
	
	nReset <= not start;

	---------------------------------------------------------------------------
	-- Controler
	---------------------------------------------------------------------------
	ctrl: controler
     port map(
             clk => clk,
				 done => done,
				 nReset => nReset,
				 selMC => selMC,
				 selSR => selSR,
				 selXOR => selXOR,
				 enRCon => enRCon,
				 finalStep => finalStep,
				 Final => intFinal
				 );

	---------------------------------------------------------------------------
	-- State array
	---------------------------------------------------------------------------


	MUX_StateIn:  ENTITY work.MUX Generic Map (size => 8) Port Map (S => intFinal, D0 => SboxOut, D1 => StateOutXORroundKey, Q => StateIn);

	stateArray: State
	port map(
		clk	=> clk,
		selSR => selSR,
		selMC => selMC,
		inputSer => Port_in,
		nReset   => nReset,
		input => StateIn,
		inMC => StateInMC,
		output => StateOut,
		outMC => MCin
		);

	Port_out <= StateOut;

	-- MUX for final round /wo MC

	MUX_StateInMC:  ENTITY work.MUX Generic Map (size => 32) Port Map (S => intFinal, D0 => MCout, D1 => MCin, Q => StateInMC);

	---------------------------------------------------------------------------
	-- Key array
	---------------------------------------------------------------------------
	keyStateIn <= inSBkey;

	intselXOR <= selXOR AND notFirst;

	KeyArray: keyState
	port map(
		clk	=> clk,
		en    => enKS,
		selXOR => intselXOR,
		selMC => selMC,
		inputSer => StateOut,
		nReset   => nReset,
		input => keyStateIn,
		inSB => SboxOut,
		inRCon => roundConstant,
		outSB => keySBin,
		roundkey => roundkey
		);

	enKS <= (not selSR) or start;

	---------------------------------------------------------------------------
	-- MixColumns
	---------------------------------------------------------------------------
	MixColumns: MC
	port map(
		input => MCin,
		output => MCout
		);

	---------------------------------------------------------------------------
	-- RCon calculation
	---------------------------------------------------------------------------

	ActiveRcon <= selSR;

	calcRCon: RCon
	port map(
        clk => clk,
        nReset => nReset,
        en => ActiveRcon,
        enOut => enRCon,
		  notFirst => notFirst,
        final => intFinal,
        rconst => roundConstant
        );
        
	---------------------------------------------------------------------------
	inSBdata <= StateOut;
	inSBkey <= roundkey;
	---------------------------------------------------------------------------

	-- Key Add
	---------------------------------------------------------------------------
	StateOutXORroundKey <= inSBdata XOR inSBkey;

	---------------------------------------------------------------------------
	-- Sbox input MUX, KS and datapath share Sbox
	---------------------------------------------------------------------------

	MUX_SboxIn:  ENTITY work.MUX Generic Map (size => 8) Port Map (S => selMC, D0 => StateOutXORroundKey, D1 => keySBin, Q => SboxIn);

	Inst_bSbox: Sbox 
	PORT MAP(
		x => SboxIn,
		y => SboxOut
		);

end architecture dfl;