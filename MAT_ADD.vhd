library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.ALL;
use work.perceptron.all;

entity MAT_ADD is
	port( A, B : in unsigned(11 downto 0); -- 2x2 matrix, each with 3bit input (1D array)
			c : OUT unsigned(15 downto 0)); --2x2 matrix, each with 4 bit input (1D array)
end MAT_ADD;

architecture behavioral of MAT_ADD is

	--intermediate matrix format
	type matrixType is array(0 to 1, 0 to 1) of unsigned(2 downto 0);
	signal matA, matB : matrixType := (others => (others => "000"));
	type outType is array(0 to 1, 0 to 1) of unsigned(3 downto 0);
	signal matC : outType := (others => (others => "0000"));
	signal i, j: integer :=0;

	
	begin
	process (A, B, matA, matB, matC)
	variable add_temp : unsigned(3 downto 0);
	variable checker : unsigned(3 downto 0);
	begin

		for i in 0 to 1 loop
			for j in 0 to 1 loop
				matA(i,j) <= A(((i*2+j+1)*3)-1 downto (i*2+j)*3);
				matB(i,j) <= B(((i*2+j+1)*3)-1 downto (i*2+j)*3);
			end loop;
		end loop;
		
		--addition of 2D matrix
		for i in 0 to 1 loop
			for j in 0 to 1 loop
				add_temp := ('0' & matA(i,j))+ ('0' & matB(i,j));
				matC(i,j) <= add_temp;
			end loop;
		end loop;
		
		--return in 1D matrix
		for i in 0 to 1 loop
			for j in 0 to 1 loop
				checker := matC(i,j);
				C(((i*2+j+1)*4)-1 downto (i*2+j)*4) <= checker;
			end loop;
		end loop;
	end process;
	
end architecture;
