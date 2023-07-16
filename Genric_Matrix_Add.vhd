library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.ALL;
use work.perceptron.all;

entity Genric_Matrix_Add is
	--when we use this in a test bench, you could alter the generic
	generic(
		i_rows : integer := 2;
		i_column : integer := 2;
		i_bits : integer := 2);
	port( A, B : in unsigned((i_rows*i_column*i_bits)-1 downto 0); 
			c : OUT unsigned((i_rows*i_column*(i_bits + 1))-1 downto 0));
end Genric_Matrix_Add;

architecture behavioral of Genric_Matrix_Add is

	--intermediate matrix format
	type matrixType is array(0 to i_rows-1, 0 to i_column-1) of unsigned(i_bits-1 downto 0);
	signal matA, matB : matrixType;
	type outType is array(0 to i_rows-1, 0 to i_column-1) of unsigned(i_bits downto 0);
	signal matC : outType;
	signal i, j: integer :=0;

	
	begin
	process (A, B, matA, matB, matC)
	variable add_temp : unsigned(i_bits downto 0);
	variable checker  : unsigned(i_bits downto 0);
	begin

		for i in 0 to i_rows-1 loop
			for j in 0 to i_column-1 loop
			--check if the below expression satisfiy a non sqaure matrix			
				matA(i,j) <= A(((i*i_rows+j+1)*i_bits)-1 downto (i*i_rows+j)*i_bits);
				matB(i,j) <= B(((i*i_rows+j+1)*i_bits)-1 downto (i*i_rows+j)*i_bits);
			end loop;
		end loop;
		
		--addition of 2D matrix
		for i in 0 to i_rows-1 loop
			for j in 0 to i_column-1 loop
				add_temp := ('0' & matA(i,j))+ ('0' & matB(i,j));
				matC(i,j) <= add_temp;
			end loop;
		end loop;
		
		--return in 1D matrix
		for i in 0 to i_rows-1 loop
			for j in 0 to i_column-1 loop
				checker := matC(i,j);
				C(((i*i_rows+j+1)*(i_bits+1))-1 downto (i*i_rows+j)*(i_bits+1)) <= checker;
			end loop;
		end loop;
	end process;
	
end architecture;
