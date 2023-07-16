library ieee;
use ieee.std_logic_1164.all;
use IEEE. numeric_std.all;
use work.Perceptron.all;

entity matrix_addition is
	port(input: in two_d_array;
	input2 : in two_d_array;
	output : out output_array);
end matrix_addition;

architecture rtl of matrix_addition is

	signal i, j: integer :=0;
	
begin
	process(input, input2)
	begin
	for i in 0 to 1 loop
		for j in 0 to 1 loop
		output(i,j) <= unsigned(input(i)(j)) + unsigned(input2(i)(j));
		end loop;
	end loop;
	end process;
end architecture;