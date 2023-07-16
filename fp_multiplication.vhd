library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.ALL;
use work.perceptron.all;

entity fp_multiplication is
	port( A, B : in std_logic_vector(31 downto 0); --32 bit input floating point
			clk : in std_logic;
			reset : in std_logic; --reset when signal is high
			start  : in std_logic;
			done  : out std_logic;
			multi : OUT std_logic_vector(31 downto 0)); --32 bit output floating point
end fp_multiplication;

architecture behavioral of fp_multiplication is

	--fsm approach
	type state_type is (init, multiplication, output); --four finite state
	signal state: state_type := init; -- a signal which determines the state
	
	--intermediate signal for A & B & ouput_sum
	signal A_mantissa, B_mantissa : std_logic_vector(22 downto 0); 
	signal A_exp, B_exp : std_logic_vector(8 downto 0); --factoring in overflow due to addition
	signal A_sign, B_sign : std_logic;
	
	signal multi_mantissa : std_logic_vector(45 downto 0); --multiplication of two 23 bit number
	signal multi_exp : std_logic_vector(8 downto 0);
	signal multi_sign : std_logic;

	begin
	process(clk, reset) is
	
	variable temp : std_logic_vector(45 downto 0);
	
	begin
		if(reset = '1') then
			state <= init;
			done <= '0';
		elsif rising_edge(clk) then
			case state is
				when init =>
				if (start = '1') then
					A_sign <= A(31);
					A_exp <= '0' &  A(30 downto 23);
					A_mantissa <= A(22 downto 0);
					
					B_sign <= B(31);
					B_exp <= '0' & B(30 downto 23);
					B_mantissa <= B(22 downto 0);
			
					state <= multiplication;
				else
					state <= init;
				end if;					
					
			--multiplication of the two numbers
			when multiplication =>
								
				--overflow condition
				if A_exp = "11111111" or B_exp = "11111111" then
					multi_exp <= "11111111";
					multi_mantissa <= (others => '0');
					multi_sign <= A_sign xor B_sign;
				end if;
				
--				--underflow condition
--				if A_mantissa <= (others => '0') or B_mantissa
--				
--				while A_mantissa(22) = '0' loop
--					A_mantissa <= A_mantissa(21 downto 0) & '0';
--					A_exp <= std_logic_vector(unsigned(A_exp) - 1);	
--				end loop;
--					
--				if B_mantissa(22) = '0' then
--					B_mantissa <= B_mantissa(21 downto 0) & '0';
--					B_exp <= std_logic_vector(unsigned(B_exp) - 1);
--				end if;
													
				
				multi_sign <= (A_sign xor B_sign);
				multi_exp <= std_logic_vector(unsigned(A_exp) + unsigned(B_exp));
				temp := std_logic_vector(unsigned(A_mantissa) * unsigned(B_mantissa));
				multi_mantissa <= temp(45 downto 0);
				
				--underflow
				while multi_mantissa(45) = '0' loop
					multi_mantissa <= multi_mantissa(44 downto 0) & '0';
					multi_exp <= std_logic_vector(unsigned(multi_exp) - 1);	
				end loop;				
								
				state <= output;
						
			--output formatting
			when output =>
				multi(22 downto 0) <= multi_mantissa(22 downto 0);
				multi(30 downto 23) <= multi_exp(7 downto 0);
				multi(31) <= multi_sign;
				done <= '1';
				if (start = '0') then
					done <= '0';
					state <= init;
				end if;
				
			--final exception case
			when others =>
				state <= init;
			end case;
		end if;
	end process;			
	
end architecture;
