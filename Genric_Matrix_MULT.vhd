library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.ALL;
use work.perceptron.all;

entity Genric_Matrix_MULT is
	--when we use this in a test bench, you could alter the generic
	generic(
		A_row : integer := 2;
		A_column : integer := 2;
		B_row : integer := 2;
		B_column :integer := 2;		
		i_bits : integer := 2);
	port( A : in unsigned((A_row*A_column*i_bits)-1 downto 0); 
			B : in unsigned((B_row*B_column*i_bits)-1 downto 0);
			c : OUT unsigned((A_column*B_row*(i_bits * 2))-1 downto 0)); --multiplication is A x B
end Genric_Matrix_MULT;

architecture behavioral of Genric_Matrix_MULT is

	--intermediate matrix format
	type A_matrixType is array(0 to A_row-1, 0 to A_column-1) of unsigned(i_bits-1 downto 0);
	signal matA : A_matrixType;
	type B_matrixType is array(0 to B_row-1, 0 to B_column-1) of unsigned(i_bits-1 downto 0);
	signal matB : B_matrixType;
	signal i, j, k: integer :=0;
	type outType is array(0 to A_column-1, 0 to B_row-1) of unsigned((i_bits*2)-1 downto 0);
	signal matC : outType ;
	
	begin
	process (A, B, matA, matB, matC)
	variable mult_temp : unsigned((i_bits*2)-1 downto 0) := (others => '0');
	variable checker : unsigned((i_bits*2)-1 downto 0);
	begin

		for i in 0 to A_row-1 loop
			for j in 0 to A_column-1 loop
				matA(i,j) <= A(((i*A_row+j+1)*i_bits)-1 downto (i*A_row+j)*i_bits);
			end loop;
		end loop;
		
		for i in 0 to B_row-1 loop
			for j in 0 to B_column-1 loop
				matB(i,j) <= B(((i*B_row+j+1)*i_bits)-1 downto (i*B_row+j)*i_bits);
			end loop;
		end loop;
						
		--multiplication of 2D matrix
		for i in 0 to A_column-1 loop --matC_row
			for j in 0 to B_row-1 loop --matC_column
				for k in 0 to B_row-1 loop --either B_row ==A_column
				mult_temp := mult_temp + (matA(i,k) * matB(k,j));
				end loop;
				matC(i,j) <= mult_temp;
			end loop;
		end loop;
		
		--return in 1D matrix
		for i in 0 to B_column-1 loop --matC_row
			for j in 0 to A_row-1 loop --matC_column
				checker := matC(i,j);
				C(((i*B_column+j+1)*(i_bits*2)-1) downto (i*B_column+j)*(i_bits*2)) <= checker;
			end loop;
		end loop;
					
	end process;
	
end architecture;
