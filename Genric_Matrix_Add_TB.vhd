library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.ALL;
use work.perceptron.all;

entity Genric_Matrix_Add_TB is
	port( A, B : in unsigned((3*3*2)-1 downto 0); 
			c : OUT unsigned((3*3*3)-1 downto 0));
end Genric_Matrix_Add_TB;

architecture Genric_Matrix_Add_TB of Genric_Matrix_Add_TB is
	component Genric_Matrix_Add
	generic(
		i_rows : integer := 2;
		i_column : integer := 2;
		i_bits : integer := 2);
	port( A, B : in unsigned((i_rows*i_column*i_bits)-1 downto 0); 
			c : OUT unsigned((i_rows*i_column*(i_bits + 1))-1 downto 0));
	end component;

	begin
	N0: Genric_Matrix_Add
	generic map(i_rows => 3,
					i_column =>3,
					i_bits => 2)
	port map(A => A,
				B => B,
				C => C);

	
end Genric_Matrix_Add_TB;
