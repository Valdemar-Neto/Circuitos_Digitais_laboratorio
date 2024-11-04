LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY coluna_05 IS 
    PORT(
         sw_05: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
         Col05: OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
         );
END coluna_05;

architecture main of coluna_05 IS
 begin
    Col05(7) <= '0';
    
    Col05(6) <= (not(sw_05(3)) and not(sw_05(0))) or 
    (not(sw_05(3)) and sw_05(1)) or 
    (not(sw_05(3)) and sw_05(2)) or 
    (sw_05(2) and sw_05(1) and sw_05(0)) or 
    (sw_05(3) and not(sw_05(2)) and not(sw_05(1)));
    
    Col05(5) <= not(sw_05(3)) and sw_05(2) and not(sw_05(1)) and not(sw_05(0));
    
    Col05(4) <= (not(sw_05(3)) and not(sw_05(1)) and not(sw_05(0))) or 
    (not(sw_05(3)) and sw_05(2) and sw_05(0)) or 
    (sw_05(3) and not(sw_05(2)) and sw_05(1) and sw_05(0)) or 
    (sw_05(3) and sw_05(2) and not(sw_05(0)));

    Col05(3) <= (not(sw_05(3)) and not(sw_05(2)) and sw_05(1)) or 
    (not(sw_05(3)) and sw_05(2) and not(sw_05(0))) or 
    (sw_05(3) and not(sw_05(2)) and not(sw_05(1))) or 
    (sw_05(3) and not(sw_05(2)) and not(sw_05(0))) or 
    (sw_05(3) and sw_05(2) and sw_05(0));
    
    Col05(2) <= (not(sw_05(3)) and sw_05(2) and not(sw_05(1)) and not(sw_05(0))) or 
    (sw_05(3) and sw_05(1) and not(sw_05(0)));
    
    Col05(1) <= (not(sw_05(3)) and sw_05(2) and not(sw_05(1)) and not(sw_05(0))) or 
    (sw_05(3) and not(sw_05(2)) and not(sw_05(1)) and sw_05(0)) or 
    (sw_05(3) and not(sw_05(2)) and sw_05(1) and not(sw_05(0)));
   
    Col05(0) <= (not(sw_05(3)) and not(sw_05(2))) or not(sw_05(0)) or 
    (not(sw_05(2)) and sw_05(1)) or (sw_05(2) and not(sw_05(1)));

END ARCHITECTURE;