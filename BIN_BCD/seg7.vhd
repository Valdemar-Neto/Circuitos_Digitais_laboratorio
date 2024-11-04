library ieee;
use ieee.std_logic_1164.all;

entity seg7 is
	port(X: in std_logic_vector (3 downto 0);
		  H: out std_logic_vector (6 downto 0));
end seg7;

architecture ckt of seg7 is

signal a, b, c, d: std_logic;

begin

a<=X(3);
b<=X(2);
c<=X(1);
d<=X(0);

-- a + (b'c) + (cd') + (bc')
H(6) <= (not(a) and not(b) not(c)) or (not(a) and b and c and d); 

-- a + (c'd') + (bc') + (bd')
H(5) <= not(a or (not(c) and not(d)) or (b and not(c)) or (b and not(d))); 

-- (b'd') + (cd')
H(4) <= (not(a) and not(b) and d) or (not(a) and not(b) and c) or (not(a) and c and d); 

-- a + (b'd') + (b'c) + (cd') + (bc'd)
H(3) <= (not(a) and not(b) and not(c) and d) or (not(a) and b and not(c) and not(d)) or (not(a) and b and c and d);

-- c' + d + b 
H(2) <= not(b) and c and not(d); 

-- b' + (c'd') + (cd)
H(1) <= (b and not(c) and d) or (b and c and not(d));

-- c + a + (b'd') + (bd)
H(0) <= (not(a) and not(b) and not(c) and d) or (not(a) and b and not(c) and not(d));

end ckt;