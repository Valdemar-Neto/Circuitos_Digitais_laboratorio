LIBRARY ieee;
use ieee.std_logic_1164.all;

entity Matriz_led is
    port(
    SW : in std_logic_vector (3 downto 0);
    KEY : in std_logic_vector (2 downto 0);
    LEDR : out std_logic_vector (7 downto 0);
    LEDG : out std_logic_vector (7 downto 0)
    );
END ENTITY;

ARCHITECTURE main of Matriz_led  is
    
    COMPONENT botoes IS
    port(
        BNT : IN std_logic_vector (2 downto 0);
        LED_VERDE : OUT std_logic_vector ( 7 downto 0)
    );
    END COMPONENT botoes;

    COMPONENT coluna_02 IS 
    PORT(
         sw_02: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
         Col02: OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
         );
    END COMPONENT coluna_02;

    component coluna_03 IS 
    PORT(
         sw_03: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
         Col03: OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
         );
    END COMPONENT coluna_03;

    COMPONENT coluna_04 IS 
    PORT(
         sw_04: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
         Col04: OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
         );
    END COMPONENT coluna_04;
    
    COMPONENT coluna_05 IS 
    PORT(
         sw_05: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
         Col05: OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
         );
    END COMPONENT coluna_05;

    COMPONENT coluna_06 IS 
    PORT(
         sw_06: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
         Col06: OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
         );
    END COMPONENT coluna_06;


    SIGNAL coluna, C_0,C_1,C_2,C_3,C_4,C_5,C_6,C_7 :  STD_LOGIC_VECTOR (7 DOWNTO 0);
    SIGNAL saida_2,saida_3,saida_4,saida_5,saida_6:  STD_LOGIC_VECTOR (7 DOWNTO 0);



    BEGIN

    BOTAO: botoes port map (KEY,coluna);
    LEDG <= coluna;

    --C_0 <=(coluna(0),coluna(0),coluna(0),coluna(0),coluna(0),coluna(0),coluna(0),coluna(0));
    --C_1 <=(coluna(1),coluna(1),coluna(1),coluna(1),coluna(1),coluna(1),coluna(1),coluna(1));
	C_2 <=(coluna(2),coluna(2),coluna(2),coluna(2),coluna(2),coluna(2),coluna(2),coluna(2));
    C_3 <=(coluna(3),coluna(3),coluna(3),coluna(3),coluna(3),coluna(3),coluna(3),coluna(3));
    C_4 <=(coluna(4),coluna(4),coluna(4),coluna(4),coluna(4),coluna(4),coluna(4),coluna(4));
    C_5 <=(coluna(5),coluna(5),coluna(5),coluna(5),coluna(5),coluna(5),coluna(5),coluna(5));
    C_6 <=(coluna(6),coluna(6),coluna(6),coluna(6),coluna(6),coluna(6),coluna(6),coluna(6));
    --C_7 <=(coluna(7),coluna(7),coluna(7),coluna(7),coluna(7),coluna(7),coluna(7),coluna(7));
    
		U_2 : coluna_02 port map (SW,saida_2);
        U_3 : coluna_03 port map (SW,saida_3);
        U_4 : coluna_04 port map (SW,saida_4);
        U_5 : coluna_05 port map (SW,saida_5);
        U_6 : coluna_06 port map (SW,saida_6);
        
        LEDR <= (saida_2 and C_2) or 
		(saida_3 and C_3) or
                (saida_4 and C_4) or 
                (saida_5 and C_5) or
                (saida_6 and C_6);
                
    
 END ARCHITECTURE;
