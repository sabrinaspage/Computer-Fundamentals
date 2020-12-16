--------------------------------------------------------------------------------
-- Company: CCNY
-- Engineer: Sabrina Reyes
--
-- Create Date:   01:02:10 12/10/2020
-- Design Name:   
-- Module Name:   /home/student/Desktop/Sabrina_Reyes_Project_05_CC1/t_ff_tb.vhd
-- Project Name:  Sabrina_Reyes_Project_05_CC1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: t_ff
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
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
 
ENTITY t_ff_tb IS
END t_ff_tb;
 
ARCHITECTURE behavior OF t_ff_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT t_ff
    PORT(
         CLK : IN  std_logic;
         Q : OUT  std_logic;
         QN : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';

 	--Outputs
   signal Q : std_logic;
   signal QN : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: t_ff PORT MAP (
          CLK => CLK,
          Q => Q,
          QN => QN
        );

   -- Clock process definitions
   CLK_process : process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;

END;
