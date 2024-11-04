LIBRARY ieee;
use ieee.std_logic_1164.all;

entity botoes IS
port(
    BNT : in std_logic_vector (2 downto 0);
    LED_VERDE : out std_logic_vector (7 downto 0)
);
END entity;

ARCHITECTURE main of botoes is 
    begin
        LED_VERDE(0)<= BNT(2) and BNT(1) and BNT(0);
        LED_VERDE(1)<= BNT(2) and BNT(1) and not(BNT(0));
        LED_VERDE(2)<= BNT(2) and not(BNT(1)) and BNT(0);
        LED_VERDE(3)<= BNT(2) and not(BNT(1)) and not(BNT(0));
        LED_VERDE(4)<= not(BNT(2)) and BNT(1) and BNT(0);
        LED_VERDE(5)<= not(BNT(2)) and BNT(1) and not(BNT(0));
        LED_VERDE(6)<= not(BNT(2)) and not(BNT(1)) and BNT(0);
        LED_VERDE(7)<= not(BNT(2)) and not(BNT(1)) and not(BNT(0));

END ARCHITECTURE;


