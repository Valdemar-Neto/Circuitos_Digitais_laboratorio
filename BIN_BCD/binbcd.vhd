library ieee;
use ieee.std_logic_1164.all;

entity binbcd is
	port(sw: in std_logic_vector (7 downto 0);
		  bcd: out std_logic_vector (11 downto 0));
end binbcd;

architecture ckt of binbcd is

component addc is
	port(A: in std_logic_vector (3 downto 0);
		  S: out std_logic_vector (3 downto 0));
end component;

signal Z1, Z2, Z3, Z4, Z5, Z6, Z7: std_logic_vector(3 downto 0);
signal W1, W2, W3, W4, W5, W6, W7: std_logic_vector(3 downto 0);

begin

W1 <= '0' & SW(7 downto 5);
W2 <= Z1(2 downto 0) & SW(4);
W3 <= Z2(2 downto 0) & SW(3);
W4 <= '0' & Z1(3) & Z2(3) & Z3(3);
W5 <= Z3(2 downto 0) & SW(2);
W6 <= Z4(2 downto 0) & Z5(3);
W7 <= Z2(2 downto 0) & SW(1);

U1: addc port map (W1,Z1);
U2: addc port map (W2,Z2);
U3: addc port map (W3,Z3);
U4: addc port map (W4,Z4);
U5: addc port map (W5,Z5);
U6: addc port map (W6,Z6);
U7: addc port map (W7,Z7);

bcd(11) <= '0';
bcd(10) <= '0';

bcd(9) <= Z4(3);
bcd(8) <= Z6(3);
bcd(7) <= Z6(2);
bcd(6) <= Z6(1);
bcd(5) <= Z6(0);
bcd(4) <= Z7(3);
bcd(3) <= Z7(2);
bcd(2) <= Z7(1);
bcd(1) <= Z7(0);
bcd(0) <= SW(0);




end ckt;