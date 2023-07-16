library ieee;
use ieee.std_logic_1164.all;
use IEEE. numeric_std.all;
use work.Perceptron.all;

entity MATRIX_MULT is
	port( A, B : in unsigned(11 downto 0); -- 2x2 matrix, each with 3bit input (1D array)
			c : OUT unsigned(23 downto 0); --2x2 matrix, each with 6 bit input (1D array)
			clock : in std_logic;
			reset : in std_logic; --high when reset
			start : in std_logic; --high when multiplication is taking place
			done : out std_logic); -- high to indicate multiplication is done
end MATRIX_MULT;

architecture RTL of MATRIX_MULT is

	--intermediate matrix format
	type matrixType is array(0 to 1, 0 to 1) of unsigned(2 downto 0);
	signal matA, matB : matrixType := (others => (others => "000"));
	type state_type is (init, multi, output); --three finite state machines
	signal state: state_type := init; -- a signal which dtermines the state
	signal i, j, k: integer :=0;
	type outType is array(0 to 1, 0 to 1) of unsigned(5 downto 0);
	signal matC : outType := (others => (others => "000000"));
	

	
begin
	
	process(clock, reset)
	variable mult_temp : unsigned(5 downto 0) := (others => '0');
	variable checker : unsigned(5 downto 0);
	begin
		if(reset = '1') then
			state <= init;
			matA <= (others => (others => "000"));
			matB <= (others => (others => "000"));
			matC <= (others => (others => "000000"));
			done <= '0';
			i <= 0;
			j <= 0;
			k <= 0;
		elsif rising_edge(clock) then
			case state is
			
				when init => 
					if(start='1')then --convert 1d array into 2d matrix_type
						for i in 0 to 1 loop --row
							for j in 0 to 1 loop --column
								matA(i,j) <= A(((i*2+j+1)*3)-1 downto (i*2+j)*3);
								matB(i,j) <= B(((i*2+j+1)*3)-1 downto (i*2+j)*3);
							end loop;
						end loop;
						state <= multi;
					end if;
					
				when multi =>
				--gonna multiply the two matrix and stor it in 2D format
				--**question : which is better fSm or for loop?
				--**is the variables in intal value or the last present value
					for i in 0 to 1 loop
						for j in 0 to 1 loop
							--**loop was not working but for bigger arrays we need to debug this
							--for k in 0 to 1 loop 
								--mult_temp := matA(i, k)* matB(k,j);
								--matC(i,j) <= matC(i,j) + mult_temp;
							--end loop;
							matC(i,j) <= ((matA(i,0)* matB(0,j)) + (matA(i,1) * matB(1,j)));
						end loop;
					end loop;
					state <= output;
					
				when output =>
				--converting a 2D array into 1D array output
					for i in 0 to 1 loop
						for j in 0 to 1 loop
							checker := matC(i,j);
							C(((i*2+j+1)*6)-1 downto (i*2+j)*6) <= checker;
						end loop;
					end loop;
					done <= '1';
					state <= init;
			end case;
		end if;
	end process;
			

end architecture;

