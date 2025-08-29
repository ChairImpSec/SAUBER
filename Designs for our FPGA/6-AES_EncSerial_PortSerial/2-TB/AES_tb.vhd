
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
 
ENTITY tb_AES IS
END tb_AES;
 
ARCHITECTURE behavior OF tb_AES IS 
 

   --Inputs
   signal clk : std_logic := '0';
   signal start : std_logic := '0';
	signal Port_in  : std_logic_vector(7 downto 0) := (others => '0');
	signal Port_out : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal done : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN

   uut: entity work.AES PORT MAP (
          clk => clk,
          start => start,
          Port_in => Port_in,
          Port_out => Port_out,
          done => done
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
		variable plaintext  : std_logic_vector(127 downto 0);
		variable key        : std_logic_vector(127 downto 0);
		variable ciphertext : std_logic_vector(127 downto 0);
		variable received   : std_logic_vector(127 downto 0);
   begin		
	  
	  plaintext 	:= x"328831E0435A3137F6309807A88DA234";
	  key 			:= x"2B28AB097EAEF7CF15D2154F16A6883C";
	  ciphertext   := x"3902DC1925DC116A8409850B1DFB9732";

	  start	      <= '1';
	  for i in 0 to 15 loop
			Port_in <= key(127-i*8 downto 120-i*8);
			wait for clk_period*1;
     end loop;
	  
	  for i in 0 to 15 loop
			Port_in <= plaintext(127-i*8 downto 120-i*8);
			wait for clk_period*1;
     end loop;
	  
	  start	<= '0';	
     wait for clk_period;

	  wait until rising_edge(clk) and (done = '1'); 
	  
	  for i in 0 to 15 loop
			received(127-i*8 downto 120-i*8) := Port_out;
			wait for clk_period*1;
     end loop;
	  
	  if (ciphertext = received) then
		report "---------- Passed ----------";
	  else
		report "---------- Failed ----------";
	  end if;	
	  
	  ---------------------------------

	  wait until falling_edge(clk); 
     wait for clk_period*10;

	  plaintext 	:= (others => '0');
	  key 			:= (others => '0');
	  ciphertext   := x"66ef88cae98a4c344b2cfa2bd43b592e";

	  start	      <= '1';
	  for i in 0 to 15 loop
			Port_in <= key(127-i*8 downto 120-i*8);
			wait for clk_period*1;
     end loop;
	  
	  for i in 0 to 15 loop
			Port_in <= plaintext(127-i*8 downto 120-i*8);
			wait for clk_period*1;
     end loop;
	  
	  start	<= '0';	
     wait for clk_period;

	  wait until rising_edge(clk) and (done = '1'); 
	  
	  for i in 0 to 15 loop
			received(127-i*8 downto 120-i*8) := Port_out;
			wait for clk_period*1;
     end loop;
	  
	  if (ciphertext = received) then
		report "---------- Passed ----------";
	  else
		report "---------- Failed ----------";
	  end if;	

      wait;
   end process;

END;
