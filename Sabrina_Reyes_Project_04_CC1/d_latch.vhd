----------------------------------------------------------------------------------
-- Company: City College of New York
-- Engineer: Sabrina Reyes
-- 
-- Create Date:    01:50:31 12/03/2020 
-- Design Name: 
-- Module Name:    d_latch - Behavioral 
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

entity d_latch is
    Port ( C : in  STD_LOGIC;
           D : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           QN : out  STD_LOGIC);
end d_latch;

architecture Behavioral of d_latch is
	signal D_L, C_NAND_D, C_NAND_DL, Q_BACK, QN_BACK: STD_LOGIC;
	component INV port (I: in STD_LOGIC; O: out STD_LOGIC); end component;
	component NAND2 port (I0, I1: in STD_LOGIC; O: out STD_LOGIC); end component;
begin
	U1: INV port map (D, D_L);
	U2: NAND2 port map (C, D, C_NAND_D);
	U3: NAND2 port map (C, D_L, C_NAND_DL);
	
	U4: NAND2 port map (C_NAND_D, QN_BACK, Q);
	U5: NAND2 port map (C_NAND_D, QN_BACK, Q_BACK);
	
	U6: NAND2 port map (C_NAND_DL, Q_BACK, QN);
	U7: NAND2 port map (C_NAND_DL, Q_BACK, QN_BACK);

end Behavioral;

