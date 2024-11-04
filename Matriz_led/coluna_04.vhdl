LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY coluna_04 IS 
    PORT(
         sw_04: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
         Col04: OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
         );
END coluna_04;

architecture main of coluna_04 IS

    begin
        Col04(7)<='0';
        
        Col04(6)<= (not(sw_04(2)) and not(sw_04(1))) or 
        (not(sw_04(3)) and sw_04(0) ) or 
        (not(sw_04(3)) and sw_04(1));

        Col04(5)<= (not(sw_04(3)) and not(sw_04(2)) and not(sw_04(1)) and sw_04(0)) or 
        (not(sw_04(3)) and sw_04(2) and not(sw_04(1)) and not(sw_04(0))) or 
        (sw_04(3) and sw_04(2) and sw_04(1) and sw_04(0));
        
        Col04(4)<= (not(sw_04(3)) and not(sw_04(1)) and sw_04(0)) or 
        (sw_04(3) and sw_04(1)) or 
        (sw_04(3) and sw_04(2));


        Col04(3)<= (not(sw_04(2)) and not(sw_04(1))) or 
        (not(sw_04(3)) and sw_04(1)) or 
        (sw_04(2) and sw_04(1) and sw_04(0));

        Col04(2)<= (not(sw_04(3)) and not(sw_04(2)) and not(sw_04(1)) and sw_04(0)) or 
        (not(sw_04(3)) and sw_04(2) and not(sw_04(1)) and not(sw_04(0))) or 
        (sw_04(3) and sw_04(1) and not(sw_04(0))) or 
        (sw_04(3) and sw_04(2) and sw_04(1));

        Col04(1)<= (not(sw_04(3)) and not(sw_04(2)) and not(sw_04(1)) and sw_04(0)) or 
        (sw_04(3) and sw_04(2) and sw_04(1) and sw_04(0));

        Col04(0)<= not(sw_04(2)) or 
        (not(sw_04(1)) and sw_04(0)) or 
        (sw_04(1) and not(sw_04(0))) or 
        sw_04(3);
    end ARCHITECTURE;