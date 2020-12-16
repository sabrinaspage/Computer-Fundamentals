----------------------------------------------------------------------------------
-- Company: CCNY
-- Engineer: Sabrina Reyes
-- 
-- Create Date:    03:01:19 12/10/2020 
-- Design Name: 
-- Module Name:    RippleCounter4b - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library UNISIM;
use UNISIM.VComponents.all;

entity RippleCounter4b is
    Port ( CLK : in  STD_LOGIC;
           Q0 : out  STD_LOGIC;
           Q1 : out  STD_LOGIC;
           Q2 : out  STD_LOGIC;
           Q3 : out  STD_LOGIC);
end RippleCounter4b;

architecture Behavioral of RippleCounter4b is
	signal QN_0, QN_1, QN_2, QN_3: STD_LOGIC;
	component t_ff port (
		CLK : IN  std_logic;
      Q : OUT  std_logic;
      QN : OUT  std_logic
	); end component;
begin
	FLIP1: t_ff port map (
		CLK => CLK,
		Q => Q0,
		QN => QN_0
	);
	FLIP2: t_ff port map (
		CLK => QN_0,
		Q => Q1,
		QN => QN_1
	);
	FLIP3: t_ff port map (
		CLK => QN_1,
		Q => Q2,
		QN => QN_2
	);
	FLIP4: t_ff port map (
		CLK => QN_2,
		Q => Q3,
		QN => QN_3
	);


end Behavioral;

