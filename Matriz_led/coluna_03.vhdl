LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY coluna_03 IS 
    PORT(
         sw_03: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
         Col03: OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
         );
END coluna_03;

architecture main of coluna_03 IS
 begin
    COL03(7) <= '0';
    
    COL03(6) <= (not(sw_03(3)) and not(sw_03(2)) and not(sw_03(0))) or 
    (not(sw_03(3)) and not(sw_03(2)) and sw_03(1)) or 
    (not(sw_03(3)) and sw_03(2) and sw_03(0)) or 
    (sw_03(3) and not(sw_03(2)) and not(sw_03(1)));

    COL03(5) <=  ( not(sw_03(3)) and not(sw_03(2)) and not(sw_03(1)) and sw_03(0) ) or 
    ( not(sw_03(3)) and sw_03(2) and sw_03(1) and not(sw_03(0)) );
    
    COL03(4) <= (sw_03(2) and not(sw_03(1))) or 
    (sw_03(3) and sw_03(1) and not(sw_03(0)));
    
    COL03(3) <= (not(sw_03(2)) and sw_03(1) and sw_03(0)) or 
    (not(sw_03(3)) and sw_03(2) and sw_03(1) and not(sw_03(0))) or 
    (sw_03(3) and not(sw_03(2)) and not(sw_03(1))) or 
    (sw_03(3) and sw_03(1) and sw_03(0));
   
    COL03(2) <= (not(sw_03(3)) and not(sw_03(2)) and not(sw_03(0))) or 
    (not(sw_03(3)) and not(sw_03(1)) and not(sw_03(0))) or 
    (not(sw_03(3)) and sw_03(2) and sw_03(1) and sw_03(0)) or 
    (sw_03(3) and sw_03(1) and not(sw_03(0)));
    
    COL03(1) <= (not(sw_03(3)) and sw_03(2) and sw_03(1) and sw_03(0));
    
    COL03(0) <= not(sw_03(2)) or (not(sw_03(3)) and sw_03(0)) or 
    (not(sw_03(3)) and sw_03(1)) or 
    (sw_03(3) and not(sw_03(1))) or 
    (sw_03(3) and not(sw_03(0)));
    
END ARCHITECTURE;