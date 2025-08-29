
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
 
ENTITY tb_AES IS
END tb_AES;
 
ARCHITECTURE behavior OF tb_AES IS 
 

   --Inputs
   signal clk : std_logic := '0';
   signal start : std_logic := '0';
   signal plaintext : std_logic_vector(127 downto 0) := (others => '0');
   signal key : std_logic_vector(127 downto 0) := (others => '0');

 	--Outputs
   signal ciphertext : std_logic_vector(127 downto 0);
   signal done : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN

   uut: entity work.AES PORT MAP (
          clk => clk,
          start => start,
          plaintext => plaintext,
          key => key,
          ciphertext => ciphertext,
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
   begin		
	  
	  start	      <= '1';
	  plaintext 	<= x"3243f6a8885a308d313198a2e0370734";
	  key 			<= x"2b7e151628aed2a6abf7158809cf4f3c";
     wait for clk_period;

	  start	<= '0';	
     wait for clk_period;

	  wait until rising_edge(clk) and (done = '1'); 
		
	  if (ciphertext = x"3925841d02dc09fbdc118597196a0b32") then
		report "---------- Passed ----------";
	  else
		report "---------- Failed ----------";
	  end if;	
		
	  wait until falling_edge(clk);
	  wait for clk_period*10;
	  
	  start	      <= '1';
	  plaintext 	<= (others => '0');
	  key 		   <= (others => '0');
     wait for clk_period;

	  start	<= '0';
     wait for clk_period;
		
	  wait until rising_edge(clk) and (done = '1'); 
		
	  if (ciphertext = x"66e94bd4ef8a2c3b884cfa59ca342b2e") then
		report "---------- Passed ----------";
	  else
		report "---------- Failed ----------";
	  end if;	
      wait;
   end process;

END;
