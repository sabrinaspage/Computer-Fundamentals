--------------------------------------------------------------------------------
-- Company: City College of New York
-- Engineer: Sabrina Reyes
--
-- Create Date:   02:52:45 12/02/2020
-- Design Name:   
-- Module Name:   /home/student/Desktop/Sabrina_Reyes_Project_04_CC1/slrl_testbench.vhd
-- Project Name:  Sabrina_Reyes_Project_04_CC1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: slrl_latch
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
USE ieee.numeric_std.ALL;
 
ENTITY slrl_testbench IS
END slrl_testbench;
 
ARCHITECTURE behavior OF slrl_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT slrl_latch
    PORT(
         R_L : IN  std_logic;
         S_L : IN  std_logic;
         Q : OUT  std_logic;
         QN : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal R_L : std_logic := '0';
   signal S_L : std_logic := '0';

 	--Outputs
   signal Q : std_logic;
   signal QN : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: slrl_latch PORT MAP (
          R_L => R_L,
          S_L => S_L,
          Q => Q,
          QN => QN
        );

   -- Stimulus process
   stim_proc: process
   begin
		S_L <= '0'; R_L <= '0';
		wait for 50 ns;
      S_L <= '0'; R_L <= '1';
		wait for 50 ns;
		S_L <= '1'; R_L <= '1';
		wait for 50 ns;
		S_L <= '1'; R_L <= '0';
		wait for 50 ns;
		S_L <= '1'; R_L <= '1';
		wait for 50 ns;
		S_L <= '0'; R_L <= '0';
		wait for 50 ns;
   end process;

END;
