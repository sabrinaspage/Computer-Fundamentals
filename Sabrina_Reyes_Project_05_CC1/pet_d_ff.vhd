----------------------------------------------------------------------------------
-- Company: City College of New York
-- Engineer: Sabrina Reyes
-- 
-- Create Date:    22:28:35 12/07/2020 
-- Design Name: 
-- Module Name:    pet_d_ff - Behavioral 
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

entity pet_d_ff is
    Port ( CLK : in  STD_LOGIC;
           D : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           QN : out  STD_LOGIC);
end pet_d_ff;

architecture Behavioral of pet_d_ff is
	signal CLK_L, Q1, Q2: STD_LOGIC;
	component INV port (I: in STD_LOGIC; O: out STD_LOGIC); end component;
	component LD
		generic (INIT : bit := '0');
		port ( D : in	std_logic;
				 G : in	std_logic;
				 Q : out std_logic);
	end component;
begin
	U1: INV port map (CLK, CLK_L);
	D_Latch_1: LD port map (D=>D, G=>CLK_L, Q=>Q1);
	D_Latch_2: LD port map (D=>Q1, G=>CLK, Q=>Q2);
	U3: INV port map (Q2, QN);
	U5: Q <= Q2;

end Behavioral;

