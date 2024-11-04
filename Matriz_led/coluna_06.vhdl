LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY coluna_06 IS 
    PORT(
         sw_06: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
         Col06: OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
         );
END coluna_06;

architecture main of coluna_06 IS
 begin
    Col06(7) <= '0';
    
    Col06(6) <= (not(sw_06(3)) and sw_06(2) and sw_06(0)) or 
    (sw_06(2) and not(sw_06(1)) and sw_06(0));
    
    Col06(5) <= (not(sw_06(3)) and not(sw_06(2)) and not(sw_06(0))) or 
    (not(sw_06(3)) and sw_06(1) and sw_06(0)) or 
    (sw_06(3) and not(sw_06(2)) and not(sw_06(1))) or 
    (sw_06(3) and sw_06(2) and sw_06(0));
    
    Col06(4) <= (not(sw_06(2)) and not(sw_06(1)) and not(sw_06(0))) or 
    (not(sw_06(3)) and not(sw_06(2)) and sw_06(1)) or 
    (sw_06(3) and not(sw_06(1)) and sw_06(0));
    
    Col06(3) <= (not(sw_06(3)) and not(sw_06(2)) and not(sw_06(1)) and not(sw_06(0))) or 
    (sw_06(2) and not(sw_06(1)) and sw_06(0)) or 
    (sw_06(3) and not(sw_06(2)) and sw_06(0)) or 
    (sw_06(3) and sw_06(2) and sw_06(1) and not(sw_06(0)));
    
    Col06(2) <= (not(sw_06(2)) and not(sw_06(1)) and not(sw_06(0))) or 
    (not(sw_06(2)) and sw_06(1) and sw_06(0)) or 
    (not(sw_06(3)) and sw_06(2) and not(sw_06(1))) or
    (not(sw_06(3)) and sw_06(2) and not(sw_06(0))) or 
    (sw_06(3) and not(sw_06(1)) and sw_06(0));
   
    Col06(1) <= (not(sw_06(2)) and not(sw_06(1)) and not(sw_06(0))) or 
    (not(sw_06(2)) and sw_06(1) and sw_06(0)) or 
    (sw_06(2) and not(sw_06(1)) and sw_06(0)) or 
    (not(sw_06(3)) and sw_06(2) and sw_06(1) and not(sw_06(0))) or 
    (sw_06(3) and not(sw_06(1)) and not(sw_06(0)));
   
    Col06(0) <= (not(sw_06(2)) and sw_06(1) and not(sw_06(0))) or 
    (sw_06(3) and sw_06(2) and not(sw_06(1)) and sw_06(0));

    END ARCHITECTURE;