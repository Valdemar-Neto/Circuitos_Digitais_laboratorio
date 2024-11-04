library ieee;
use ieee.std_logic_1164.all;

entity circuito_8x8 is:
	port(
		sw: in std_logic_vector(3 downto 0);
		key: in std_logic_vector (2 downto 0);
		led_r, led_g: in std_logic_vector(7 downto 0)
	);
end entity;

architecture log of circuito_8x8 is

	component botoes is:
		port(
			btn: in std_logic_vector(2 downto 0);
			led_g: out std_logic_vector(7 downto 0)
		);

	component col_2 is:
		port(
			sw_2: in std_logic_vector(3 downto 0);
			coluna_2: out std_logic_vector(7 downto 0)
		);
	component col_3 is:
		port(
			sw_3: in std_logic_vector(3 downto 0);
			coluna_3: out std_logic_vector(7 downto 0)
		);
	component col_4 is:
		port(
			sw_4: in std_logic_vector(3 downto 0);
			coluna_4: out std_logic_vector(7 downto 0)
		);
	component col_5 is:
		port(
			sw_5: in std_logic_vector(3 downto 0);
			coluna_5: out std_logic_vector(7 downto 0)
		);
	component col_6 is:
		port(
			sw_6: in std_logic_vector(3 downto 0);
			coluna_6: out std_logic_vector(7 downto 0)
		);
end architecture;