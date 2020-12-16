----------------------------------------------------------------------------------
-- Company: CCNY 
-- Engineer: Sabrina Reyes
-- 
-- Create Date:    00:31:12 12/10/2020 
-- Design Name: 
-- Module Name:    t_ff - Behavioral 
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

library UNISIM;
use UNISIM.VComponents.all;

entity t_ff is
    Port ( CLK : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           QN : out  STD_LOGIC);
end t_ff;

architecture Behavioral of t_ff is
	signal QN_D, QN_D_L: STD_LOGIC;
	component INV port (I: in STD_LOGIC; O: out STD_LOGIC); end component;
	component pet_d_ff
		port (
			  CLK : in  STD_LOGIC;
           D : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           QN : out  STD_LOGIC);
	end component;
begin
	U1: QN <= QN_D_L;
	U2: QN_D <= QN_D_L;
	FLIP1: pet_d_ff port map (
		CLK => CLK,
		D => QN_D,
		Q => Q,
		QN => QN_D_L
	);

end Behavioral;

