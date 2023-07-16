library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.ALL;
use work.perceptron.all;

entity multiplication_fp_general is
	port( A, B : in std_logic_vector(31 downto 0); --32 bit input floating point
			multi : OUT std_logic_vector(31 downto 0)); --32 bit output floating point
end multiplication_fp_general;

architecture behavioral of multiplication_fp_general is

begin
	process(A,B)
		
		variable A_mantissa : std_logic_vector(22 downto 0); 
		variable A_exp : std_logic_vector(8 downto 0); --extra bit for overflow during addition
		variable A_sign : std_logic;
		
		variable B_mantissa : std_logic_vector(22 downto 0);
		variable B_exp : std_logic_vector(8 downto 0);
		variable B_sign : std_logic;
		
		variable multi_mantissa : std_logic_vector(22 downto 0);
		variable multi_exp : std_logic_vector(8 downto 0);
		variable multi_sign : std_logic;
		
		variable temp : std_logic_vector(45 downto 0);
		variable loop_count : integer range 0 to 10000 := 0;
	
	begin
		
		A_mantissa(22 downto 0) := A(22 downto 0);
		A_exp(7 downto 0) := A(30 downto 23);
		A_exp(8) := '0';
		A_sign := A(31);
		
		B_mantissa(22 downto 0) := B(22 downto 0);
		B_exp(7 downto 0) := B(30 downto 23);
		B_exp(8) := '0';
		B_sign := B(31);
		
		if (unsigned(A_exp) = 255 or unsigned(B_exp) = 255) then
			--Overflow condition, if either exp is 255, then the output goes to infinity
			multi_exp := "111111111"; --condition for NaN
			multi_mantissa := (others => '0');
			multi_sign := (A_sign xor B_sign);
		end if;
		
		if (unsigned(A_mantissa) = 0 or unsigned(B_mantissa) = 0) then --condition to check zero
			multi_mantissa := (others => '0');
			multi_exp := std_logic_vector(unsigned(A_exp) + unsigned(B_exp));
			multi_Sign := (A_sign xor B_sign);
		
		else
			multi_sign := (A_sign xor B_sign);
			multi_exp := std_logic_vector(unsigned(A_exp) + unsigned(B_exp) - 127);
			temp := std_logic_vector(unsigned(A_mantissa) * unsigned(B_mantissa));
				
			--check underflow by keeping msb of mantissa as non zero - done by rigth shift and subtracting 1 from exp
			for i in 1 to 46 loop
				if (temp(45) = '0' and unsigned(multi_exp) > 0) then
					temp(45 downto 0) := temp(44 downto 0) & '0';
					multi_exp := std_logic_vector(unsigned(multi_exp) - 1);
				end if;
			end loop;
				
--			while (temp(45) = '0' and unsigned(multi_exp) > 0 and loop_count < 10000) loop
--				temp(45 downto 0) := temp(44 downto 0) & '0';
--				multi_exp := std_logic_vector(unsigned(multi_exp) - 1); 
--				loop_count := loop_count + 1;
--			end loop;
		
			--checking overflow in exp of multi
			if (unsigned(multi_exp) = 255 or multi_exp(8) = '1') then 
				multi_exp := "111111111";
				multi_mantissa := (others => '0');
				multi_sign := (A_sign xor B_sign);
			end if;
		
		end if;
		--rounding off condition : currently just truncating the right most digits
		multi(31) <= multi_sign;
		multi(30 downto 23) <= multi_exp(7 downto 0);
		multi(22 downto 0) <= temp(45 downto 23);	
		
		end process;	
			
	
end architecture;
