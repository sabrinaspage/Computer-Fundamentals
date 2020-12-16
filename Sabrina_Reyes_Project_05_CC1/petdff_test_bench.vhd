--------------------------------------------------------------------------------
-- Company: CCNY
-- Engineer: Sabrina Reyes
--
-- Create Date:   23:01:24 12/07/2020
-- Design Name:   
-- Module Name:   /home/student/Desktop/Sabrina_Reyes_Project_05_CC1/petdff_test_bench.vhd
-- Project Name:  Sabrina_Reyes_Project_05_CC1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: pet_d_ff
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY petdff_test_bench IS
END petdff_test_bench;
 
ARCHITECTURE behavior OF petdff_test_bench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT pet_d_ff
    PORT(
         CLK : IN  std_logic;
         D : IN  std_logic;
         Q : OUT  std_logic;
         QN : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal D : std_logic := '0';

 	--Outputs
   signal Q : std_logic;
   signal QN : std_logic;
	
	constant Clk_period : time := 10 ns;
 
BEGIN
	-- Instantiate the Unit Under Test (UUT)
   uut: pet_d_ff PORT MAP (
          CLK => CLK,
          D => D,
          Q => Q,
          QN => QN
        );
	CLK_process: process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_PERIOD/2;
	end process;
-- *** Test Bench - User Defined Section ***1
	tb: PROCESS
   BEGIN		
     wait for 20 ns;
	  d <= '0';
	  wait for CLK_period*2;
	  d <= '1';
	  wait for CLK_period*2;
	  d <= '0';
	  wait for CLK_period*2;
	  d <= '1';
	  wait for CLK_period*2;
	  WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***1

END;
