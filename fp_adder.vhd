library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.ALL;
use work.perceptron.all;

entity fp_adder is
	port( A, B : in std_logic_vector(31 downto 0); --32 bit input floating point
			clk : in std_logic;
			reset : in std_logic;
			start  : in std_logic;
			done  : out std_logic;
			sum : OUT std_logic_vector(31 downto 0)); --32 bit output floating point
end fp_adder;

architecture behavioral of fp_adder is

	--fsm approach
	type state_type is (init, align, addition, normalize, output); --five finite state
	signal state: state_type := init; -- a signal which dtermines the state
	
	--intermediate signal for A & B & ouput_sum
	signal A_mantissa, B_mantissa, sum_mantissa : std_logic_vector(24 downto 0); --the left most bits is"01" to factor in downshift and carry over of addition
	signal A_exp, B_exp, sum_exp : std_logic_vector(8 downto 0); --factoring in carry over during addition
	signal A_sign, B_sign, sum_sign : std_logic;
	
	begin
	process(clk, reset) is
	
	variable diff : signed(8 downto 0);
	
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
					A_mantissa <= "01" &  A(22 downto 0);
					
					B_sign <= B(31);
					B_exp <= '0' & B(30 downto 23);
					B_mantissa <= "01" & B(22 downto 0);
			
					state <= align;
				else
					state <= init;
				end if;
			
			--alignment of the numbers
			when align =>
				if unsigned(A_exp) > unsigned(B_exp) then
					diff := signed(A_exp) - signed(B_exp);
					if diff > 23 then
						--in case the diff is greater then during alignment the smaller number can be neglected
						sum_mantissa <= A_mantissa;
						sum_exp <= A_exp;
						sum_sign <= A_sign;
						state <= output;
					else
						--downshift of B
						sum_exp <= A_exp;
						B_mantissa(24 downto (25 - to_integer(diff))) <= (others => '0');
						B_mantissa((24 - to_integer(diff)) downto 0) <= B_mantissa(24 downto to_integer(diff));
						state <=addition;
					end if;
				elsif unsigned(A_exp) < unsigned(B_exp) then
					diff := signed(B_exp) - signed(A_exp);
					if diff > 23 then
						sum_mantissa <= B_mantissa;
						sum_exp <= B_exp;
						sum_sign <= B_sign;
						state <= output;
					else
						--downshift of A
						sum_exp <= B_exp;
						A_mantissa(24 downto (25 - to_integer(diff))) <= (others => '0');
						A_mantissa((24 - to_integer(diff)) downto 0) <= A_mantissa(24 downto to_integer(diff));
						state <=addition;
					end if;
				else
					sum_exp <= A_exp;
					state <= addition;
				end if;
			
			--summation of the two numbers
			when addition =>
				state <= normalize;
				if(A_sign xor B_sign) = '0' then --both are of same sign
					sum_mantissa <= std_logic_vector(unsigned(A_mantissa) + unsigned(B_mantissa));
					sum_sign <= A_sign;
				elsif unsigned(A_mantissa) >= unsigned(B_mantissa) then
					sum_mantissa <= std_logic_vector(unsigned(A_mantissa) - unsigned(B_mantissa));
					sum_sign <= A_sign;
				else
					sum_mantissa <= std_logic_vector(unsigned(B_mantissa) - unsigned(A_mantissa));
					sum_sign <= B_sign;
				end if;
			
			--normalization of the summation
			when normalize =>
				if sum_mantissa(24) = '1' then --presence of acrry over, hence downshift
					sum_mantissa <= '0' & sum_mantissa(24 downto 1);
					sum_exp <= std_logic_vector(unsigned(sum_exp) + 1);
					state <= output;
				elsif sum_mantissa(23) = '0' then --downshift, cause one present at before decimal
					sum_mantissa <= sum_mantissa(23 downto 0) & '0';
					sum_exp <= std_logic_vector(unsigned(sum_exp) -1);
					state <= output;
				else
					state <= output;
				end if;
			
			--output formatting
			when output =>
				sum(22 downto 0) <= sum_mantissa(22 downto 0);
				sum(30 downto 23) <= sum_exp(7 downto 0);
				sum(31) <= sum_sign;
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
