library ieee;
use ieee.std_logic_1164.all;

entity sign_extender_6bit is port(
	data_in: in std_logic_vector(0 to 5); 
	data_out: out std_logic_vector(0 to 15)
);
end entity sign_extender_6bit;

architecture extend of sign_extender_6bit is
begin
	data_out(0 to 5) <= data_in;
	data_out(6) <= data_in(5);
	data_out(7) <= data_in(5);
	data_out(8) <= data_in(5);
	data_out(9) <= data_in(5);
	data_out(10) <= data_in(5);
	data_out(11) <= data_in(5);
	data_out(12) <= data_in(5);
	data_out(13) <= data_in(5);
	data_out(14) <= data_in(5);
	data_out(15) <= data_in(5);
end architecture extend;