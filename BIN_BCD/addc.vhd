library ieee;
use ieee.std_logic_1164.all;

entity addc is
	port(A: in std_logic_vector (3 downto 0);
		  S: out std_logic_vector (3 downto 0));
end addc;

architecture ckt of addc is

begin

S(3)<= A(3) or (A(2) and A(0)) or (A(2) and A(1)); -- A3 + A2A0 + A2A1
S(2)<= (A(3) and A(0)) or (A(2) and not(A(1)) and not(A(0))); -- A3A0 + A2A1'A0'
S(1)<= (not(A(2)) and A(1)) or (A(1) and A(0)) or (A(3) and not(A(0))); -- A2'A1 + A1A0 + A3A0'
S(0)<= (A(3) and not(A(0))) or (not(A(3)) and not(A(2)) and A(0)) or (A(2) and A(1) and not(A(0))); -- A3A0' + A3A2'A0' + A2A1A0'

end ckt;