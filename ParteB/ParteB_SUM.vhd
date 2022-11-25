library ieee;
use ieee. std_logic_1164.all;

entity ParteB_SUM is
	Port (
		in_a : in std_logic;
		in_b : in std_logic;
		in_cin : in std_logic;
		clk : in std_logic;
		o_f : out std_logic;
		o_cout : out std_logic);
end ParteB_SUM;

architecture behavioral of ParteB_SUM is


component ParteB_FFD
PORT (D, CLOCK: in std_logic;
		Q: out std_logic);
end component;

signal a,b,cin,cout,f: std_logic;

begin
	f <= a xor b xor cin;
	cout <= (a and b) or (cin and (a xor b));
	
	D1: ParteB_FFD port map (in_a,clk,a);
	D2: ParteB_FFD port map (in_b,clk,b);
	D3: ParteB_FFD port map (in_cin,clk,cin);
	D4: ParteB_FFD port map (cout,clk,o_cout);
	D5: ParteB_FFD port map (f,clk,o_f);	
end behavioral;