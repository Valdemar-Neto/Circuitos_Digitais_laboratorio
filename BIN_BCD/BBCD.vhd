library ieee;
use ieee.std_logic_1164.all;
entity bbcd is
	port(SW: in std_logic_vector (7 downto 0);
		  HEX0,HEX1,HEX2: out std_logic_vector (6 downto 0));
end bbcd;

architecture ckt of bbcd is

component seg7 is
	port(X: in std_logic_vector (3 downto 0);
		  H: out std_logic_vector (6 downto 0));
end component;

component binbcd is
	port(sw: in std_logic_vector (7 downto 0);
		  bcd: out std_logic_vector (11 downto 0));
end component;

signal Q: std_logic_vector(11 downto 0);

begin
U1: seg7 port map(Q(3 downto 0),HEX0);
U2: seg7 port map(Q(7 downto 4),HEX1);
U3: seg7 port map(Q(11 downto 8),HEX2);
U4: binbcd port map(SW,Q);

end ckt;