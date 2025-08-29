library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity AES is
        port(
            clk	     : in  std_logic;
            start      : in  std_logic;
            port_in    : in  std_logic_vector(7 downto 0);
            port_out   : out std_logic_vector(7 downto 0);
            done       : out std_logic
            );
end AES;

architecture Behavioral of AES is

	COMPONENT reg_SDE IS
	GENERIC ( size: POSITIVE := 128);
	PORT ( clk  : IN  STD_LOGIC;
			 D0   : IN  STD_LOGIC_VECTOR ((size-1) DOWNTO 0);
			 D1   : IN  STD_LOGIC_VECTOR ((size-1) DOWNTO 0);
			 sel  : IN  STD_LOGIC;
			 Q    : OUT STD_LOGIC_VECTOR ((size-1) DOWNTO 0));
	END COMPONENT;

	COMPONENT SubBytes is
	Port ( input  : in  STD_LOGIC_VECTOR (127 downto 0);
			 output : out STD_LOGIC_VECTOR (127 downto 0));
	end COMPONENT;	

	COMPONENT ShiftRows is
	Port ( input  : in  STD_LOGIC_VECTOR (127 downto 0);
			 output : out STD_LOGIC_VECTOR (127 downto 0));
	end COMPONENT;	

	COMPONENT MixColumns is
	Port ( input  : in  STD_LOGIC_VECTOR (127 downto 0);
			 output : out STD_LOGIC_VECTOR (127 downto 0));
	end COMPONENT;	

	COMPONENT KeyExpansion is
	Port ( input  : in  STD_LOGIC_VECTOR (127 downto 0);
			 Rcon   : in  STD_LOGIC_VECTOR (7 downto 0);
			 output : out STD_LOGIC_VECTOR (127 downto 0));			  
	end COMPONENT;
			
	COMPONENT counter IS
	GENERIC ( size: POSITIVE);
	PORT ( clk     : IN  STD_LOGIC;
			 en   	: IN  STD_LOGIC;
			 reset	: IN  STD_LOGIC;
			 q 		: OUT STD_LOGIC_VECTOR ((size-1) DOWNTO 0));
	END COMPONENT;
	
	-------------------------
	
	signal RoundInput					: STD_LoGIC_VECTOR(127 downto 0);
	signal SubBytesInput				: STD_LoGIC_VECTOR(127 downto 0);
	signal ShiftRowsInput			: STD_LoGIC_VECTOR(127 downto 0);
	signal MixColumnsInput			: STD_LoGIC_VECTOR(127 downto 0);
	signal MixColumnsOutput			: STD_LoGIC_VECTOR(127 downto 0);
	signal RoundOutput				: STD_LoGIC_VECTOR(127 downto 0);
	
	signal RoundKey					: STD_LoGIC_VECTOR(127 downto 0);
	signal KeyExpansionOutput		: STD_LoGIC_VECTOR(127 downto 0);

	signal LastRound					: STD_LOGIC;
	signal RoundCounter      		: STD_LoGIC_VECTOR(3 downto 0);
	signal Rcon							: STD_LoGIC_VECTOR(7 downto 0);

	signal state_shifted				: STD_LoGIC_VECTOR(127 downto 0);
	signal key_shifted				: STD_LoGIC_VECTOR(127 downto 0);
	signal notdone                : STD_LOGIC;
	signal start_done             : STD_LOGIC;
		
begin
	
	start_done    <= start or (not notdone);
	
	state_shifted <= RoundInput(119 downto 0) & Port_in;

	RoundReg: reg_SDE
	GENERIC MAP (size => 128)
	PORT MAP (
		clk	=> clk,
		D0		=> RoundOutput,
		D1		=> state_shifted,
		sel	=> start_done,
		Q		=> RoundInput);
	
	SubBytesInput <= RoundInput XOR RoundKey;
	
	SubBytesIns: SubBytes
	PORT MAP (
		input		=> SubBytesInput,
		output	=> ShiftRowsInput);
	
	ShiftRowsIns: ShiftRows
	PORT MAP (
		input		=> ShiftRowsInput,
		output	=> MixColumnsInput);

	MixColumnsIns: MixColumns
	PORT MAP (
		input		=> MixColumnsInput,
		output	=> MixColumnsOutput);

	RoundOutput <= MixColumnsInput WHEN LastRound = '1' ELSE MixColumnsOutput;
	
	Port_out		<= SubBytesInput(127 downto 120);
	
	-------------------------------------------------
		
	key_shifted <=	RoundKey(119 downto 0) & RoundInput(127 downto 120);
		
	KeyReg: reg_SDE
	GENERIC MAP (size => 128)
	PORT MAP (
		clk	=> clk,
		D0		=> KeyExpansionOutput,
		D1		=> key_shifted,
		sel	=> start_done,
		Q		=> RoundKey);

	KeyExpansionIns: KeyExpansion
	PORT MAP (
		input		=> RoundKey,
		Rcon		=> Rcon,
		output	=> KeyExpansionOutput);
	
	-------------------------------------------------

	RoundCounterIns: counter
	GENERIC MAP ( size => 4)
	PORT MAP ( 
		clk   => clk,
		en    => notdone,
		reset	=> start,
		q 		=> RoundCounter);
		
	LastRound  <= '1' WHEN RoundCounter = x"9" ELSE '0';
	notdone    <= '0' WHEN RoundCounter = x"A" ELSE '1';
	done       <= not notdone;			
	
	WITH RoundCounter SELECT
		Rcon <= 	x"01" WHEN x"0",
					x"02" WHEN x"1",
					x"04" WHEN x"2",
					x"08" WHEN x"3",
					x"10" WHEN x"4",
					x"20" WHEN x"5",
					x"40" WHEN x"6",
					x"80" WHEN x"7",
					x"1B" WHEN x"8",
					x"36" WHEN x"9",
					x"00" WHEN OTHERS;
		
end Behavioral;

