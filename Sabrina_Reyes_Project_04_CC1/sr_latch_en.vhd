----------------------------------------------------------------------------------
-- Company: City College of New York
-- Engineer: Sabrina Reyes
-- 
-- Create Date:    20:48:17 12/02/2020 
-- Design Name: 
-- Module Name:    sr_latch_en - Behavioral 
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

entity sr_latch_en is
    Port ( S : in  STD_LOGIC;
           R : in  STD_LOGIC;
           C : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           QN : out  STD_LOGIC);
end sr_latch_en;

architecture Behavioral of sr_latch_en is
	signal S_NAND_C, R_NAND_C, QN_BACK, Q_BACK: STD_LOGIC;
	component NAND2 port (I0, I1: In STD_LOGIC; O: out STD_LOGIC); end component;
begin
	U1: NAND2 port map(S, C, S_NAND_C);
	U2: NAND2 port map(S_NAND_C, QN_BACK, Q);
	U3: NAND2 port map(S_NAND_C, QN_BACK, Q_BACK);
	U4: NAND2 port map(R, C, R_NAND_C);
	U5: NAND2 port map(R_NAND_C, Q_BACK, QN);
	U6: NAND2 port map(R_NAND_C, Q_BACK, QN_BACK);

end Behavioral;

