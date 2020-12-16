----------------------------------------------------------------------------------
-- Company: City College of New York
-- Student: Sabrina Reyes
-- 
-- Create Date:    01:51:03 12/02/2020 
-- Design Name: 
-- Module Name:    slrl_latch - Behavioral 
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

entity slrl_latch is
    Port ( R_L : in  STD_LOGIC;
           S_L : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           QN : out  STD_LOGIC);
end slrl_latch;

architecture Behavioral of slrl_latch is
	signal SL_AND_QNB, RL_AND_QB, QN_BACK, Q_BACK: STD_LOGIC;
	component AND2 port (I0, I1: in STD_LOGIC; O: out STD_LOGIC); end component;
	component INV port (I: in STD_LOGIC; O: out STD_LOGIC); end component;
begin
	U1: AND2 port map (S_L, QN_BACK, SL_AND_QNB);
	U2: INV port map (SL_AND_QNB, Q);
	U3: INV port map (SL_AND_QNB, Q_BACK);
	U4: AND2 port map (R_L, Q_BACK, RL_AND_QB);
	U5: INV port map (RL_AND_QB, QN);
	U6: INV port map (RL_AND_QB, QN_BACK);

end Behavioral;

