----------------------------------------------------------------------------------
-- College: 		 City College of New York, CUNY
-- Student: 		 Sabrina Reyes
-- 
-- Create Date:    00:08:53 11/17/2020 
-- Design Name:	 v3to8dec - source code
-- Module Name:    v3to8dec - v3to8dec_arch 
-- Project Name:   Project 03
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

entity v3to8dec is
    Port ( A : in  STD_LOGIC_VECTOR (2 downto 0);
           EN : in  STD_LOGIC;
           O : out  STD_LOGIC_VECTOR (7 downto 0));
end v3to8dec;

architecture v3to8dec_arch of v3to8dec is
	signal EN_A0, EN_A1, EN_A2: STD_LOGIC;
	signal EN_A2_L: STD_LOGIC;
	component AND2 port (I0, I1: In STD_LOGIC; O: out STD_LOGIC); end component;
	component INV port (I: in STD_LOGIC; O: out STD_LOGIC); end component;
	component v2to4dec
		port(
				EN : in  std_logic;
				I0 : in  std_logic;
				I1 : in  std_logic;
				Y0 : out  std_logic;
				Y1 : out  std_logic;
				Y2 : out  std_logic;
				Y3 : out  std_logic
		);
	end component;

begin
	U1: AND2 port map (EN, A(0), EN_A0);
	U2: AND2 port map (EN, A(1), EN_A1);
	U3: AND2 port map (EN, A(2), EN_A2);
	U4: INV port map (EN_A2, EN_A2_L);
	DEC1 : v2to4dec
		port map (
			EN => EN_A2,
			I0 => EN_A0,
			I1 => EN_A1,
			Y0 => O(0),
			Y1 => O(1),
			Y2 => O(2),
			Y3 => O(3)
		);
	
	DEC2 : v2to4dec
		port map (
			EN => EN_A2_L,
			I0 => EN_A0,
			I1 => EN_A1,
			Y0 => O(4),
			Y1 => O(5),
			Y2 => O(6),
			Y3 => O(7)
		);

end v3to8dec_arch;

