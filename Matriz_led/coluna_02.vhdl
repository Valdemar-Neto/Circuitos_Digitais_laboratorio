LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY coluna_02 IS 
    PORT(
         sw_02: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
         Col02: OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
         );
END coluna_02;

architecture main of coluna_02 IS

begin 
    Col02(7)<='0';

    Col02(6)<= ( not(sw_02(3)) and sw_02(2) and sw_02(0) ) or 
    ( sw_02(3) and not(sw_02(2)) and sw_02(1) and sw_02(0) ); 
    
    Col02(5)<= ( not(sw_02(3)) and not(sw_02(2)) and not(sw_02(0)) ) or 
    ( not(sw_02(2)) and sw_02(1) and sw_02(0) ) or 
    ( not(sw_02(3)) and sw_02(2) and not(sw_02(1)) and sw_02(0) ) or 
    ( sw_02(3) and not(sw_02(2)) and not(sw_02(1) )) ;

    Col02(4)<= ( not(sw_02(2)) and not(sw_02(1)) and not(sw_02(0)) ) or 
    ( not(sw_02(3)) and sw_02(2) and not(sw_02(1)) and sw_02(0) ) or 
    ( not(sw_02(3)) and sw_02(2) and sw_02(1) and not(sw_02(0)) ) or 
    ( sw_02(3) and not(sw_02(2)) and sw_02(0) );

    Col02(3)<= ( not(sw_02(3)) and not(sw_02(1)) and not(sw_02(0)) ) or 
    ( sw_02(2) and not(sw_02(0)) ) or 
    ( sw_02(3) and not(sw_02(2)) and sw_02(1) and sw_02(0) ) or 
    ( sw_02(3) and sw_02(2) and not(sw_02(1)) );

    Col02(2)<= ( not(sw_02(1)) and not(sw_02(0)) ) or 
    ( sw_02(2) and not(sw_02(0)) ) or 
    ( sw_02(3) and not(sw_02(2)) and sw_02(1) and sw_02(0) ) or 
    ( sw_02(3) and sw_02(2) and not(sw_02(1)) );

    Col02(1)<= ( not(sw_02(2)) and not(sw_02(0)) ) or 
    ( not(sw_02(2)) and sw_02(1) ) or 
    ( sw_02(1) and not(sw_02(0)) ) or 
    (sw_02(2) and not(sw_02(1)) and sw_02(0)) or 
    (sw_02(3) and not(sw_02(0)));

    Col02(0)<= (not(sw_02(3)) and not(sw_02(2)) and sw_02(1) and not(sw_02(0))) or
     (sw_02(3) and not(sw_02(2)) and sw_02(1) and sw_02(0));

end ARCHITECTURE;





