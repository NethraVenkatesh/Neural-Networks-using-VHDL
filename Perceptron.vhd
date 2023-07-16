library ieee;
use ieee.std_logic_1164.all;
use IEEE. numeric_std.all;

package  Perceptron is

component AND_2 is
	port(I0, I1 : in std_logic;
			O0 : out std_logic);
end component;

component OR_2 is
	port(I0, I1 : in std_logic;
			O0 : out std_logic);
end component;

component NOT_1 is
	port(I0 : in std_logic;
			O0 : out std_logic);
end component;

component XOR_2 is
	port(I0, I1 : in std_logic;
			O0 : out std_logic);
end component;

component HALF_ADDER is
	port(A, B : in std_logic;
			S, C : out std_logic);
end component;

component FULL_ADDER is
	port(A, B, CIN : in std_logic;
			S, COUT : out std_logic);
end component;

component FOUR_BIT_ADDER is
	port(A, B: in std_logic_vector(3 downto 0);
			cin : std_logic;
		  sUM : out std_logic_vector(4 downto 0));
end component;

component EIGHT_BIT_ADDER is
	port(A, B: in std_logic_vector(7 downto 0);
			cin : std_logic;
		  sUM : out std_logic_vector(8 downto 0));
end component;

component MULTIPIER is
	port( A : in std_logic_vector(3 downto 0); 
			B : in std_logic_vector(3 downto 0); 
			P : out std_logic_vector(7 downto 0)); 
end component;

component NINE_BIT_ADDER is
	port( A : in std_logic_vector(8 downto 0);
			B : in std_logic_vector(8 downto 0);
			CIN : in std_logic; 
			SUM : out std_logic_vector(9 downto 0));
end component;

component MATRIX_MULT is
	port( A, B : in unsigned(11 downto 0); -- 2x2 matrix, each with 3bit input (1D array)
			c : OUT unsigned(23 downto 0); --2x2 matrix, each with 6 bit input (1D array)
			clock : in std_logic;
			reset : in std_logic; --high when reset
			start : in std_logic; --high when multiplication is taking place
			done : out std_logic); -- high to indicate multiplication is done
end component;

component MATRIX_ADD is
	port( A, B : in unsigned(11 downto 0); -- 2x2 matrix, each with 3bit input (1D array)
			c : OUT unsigned(15 downto 0); --2x2 matrix, each with 4 bit input (1D array)
			clock : in std_logic;
			reset : in std_logic; --high when reset
			start : in std_logic; --high when addition is taking place
			done : out std_logic); -- high to indicate multiplication is done
end component;

component Genric_Matrix_Add is
	generic(
		i_rows : integer := 2;
		i_column : integer := 2;
		i_bits : integer := 2);
	port( A, B : in unsigned((i_rows*i_column*i_bits)-1 downto 0); 
			c : OUT unsigned((i_rows*i_column*(i_bits + 1))-1 downto 0));
end component;

component fp_adder is
	port( A, B : in std_logic_vector(31 downto 0); --32 bit input floating point
			clk : in std_logic;
			reset : in std_logic;
			start  : in std_logic;
			done  : out std_logic;
			sum : OUT std_logic_vector(31 downto 0)); --32 bit output floating point
end component;

component fp_multiplication is
	port( A, B : in std_logic_vector(31 downto 0); --32 bit input floating point
			clk : in std_logic;
			reset : in std_logic; --reset when signal is high
			start  : in std_logic;
			done  : out std_logic;
			multi : OUT std_logic_vector(31 downto 0)); --32 bit output floating point
end component;

component multiplication_fp_general is
	port( A, B : in std_logic_vector(31 downto 0); --32 bit input floating point
			multi : OUT std_logic_vector(31 downto 0)); --32 bit output floating point
end component;




end package;