library ieee;
use ieee.std_logic_1164.all;

entity botoes is
	port(
		btn: in std_logic_vector(7 downto 0);
		led_g: out std_logic_vector(7 downto 0);
	);
end entity;

architecture log of botoes is
	begin
		led_g(0) <= btn(2) and btn(1) and btn(0);
		led_g(1) <= btn(2) and btn(1) and not(btn(0));
		led_g(2) <= btn(2) and not(btn(1)) and btn(0);
		led_g(3) <= btn(2) and not (btn(1)) and not (btn(0));
		led_g(4) <= not (btn(2)) and btn(1) and btn(0);
		led_g(5) <= not (btn(2)) and btn(1) and not(btn(0));
		led_g(6) <= not (btn(2)) and not(btn(1)) and btn(0);
		led_g(7) <= not (btn(2)) and not(btn(1)) and not(btn(0));
end architecture;