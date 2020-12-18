----------------------------------------------------------------------------------
-- College: City College of New York 
-- Student: Sabrina Reyes
-- 
-- Create Date:    20:58:20 11/15/2020 
-- Design Name:    v2to4dec
-- Module Name:    v2to4dec - v2to4dec_arch 
-- Project Name:   v2to4dec Project 03
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity v2to4dec is
    Port ( EN : in  STD_LOGIC;
           I0 : in  STD_LOGIC;
           I1 : in  STD_LOGIC;
           Y0 : out  STD_LOGIC;
           Y1 : out  STD_LOGIC;
           Y2 : out  STD_LOGIC;
           Y3 : out  STD_LOGIC);
end v2to4dec;

architecture v2to4dec_arch of v2to4dec is
	signal I1_L, I0_L: STD_LOGIC;
	component INV port (I: in STD_LOGIC; O: out STD_LOGIC); end component;
	component AND3 port (I0, I1, I2: In STD_LOGIC; O: out STD_LOGIC); end component;

begin
	U1: INV port map (I0, I0_L);
	U2: INV port map (I1, I1_L);
	U3: AND3 port map (EN, I1_L, I0_L, Y0);
	U4: AND3 port map (EN, I1_L, I0, Y1);
	U5: AND3 port map (EN, I1, I0_L, Y2);
	U6: AND3 port map (EN, I1, I0, Y3);

end v2to4dec_arch;

