library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity testbenchA is
end testbenchA;
ARCHITECTURE behavioral OF testbenchA IS
	COMPONENT ParteA
	PORT(	SW1 : in std_logic;
			SW2 : in std_logic;
			LED : out std_logic);
end component;
		
		signal SW1 : std_logic := '0';
		signal SW2 : std_logic := '0';
		signal LED : std_logic;
		
BEGIN

	uut: ParteA PORT MAP (
		SW1	=> SW1,
		SW2	=> SW2,
		LED	=> LED
		);
		
		stim_proc: process
		begin 
				SW1 <= '0'; SW2 <= '0'; wait for 10ns;
				SW1 <= '0'; SW2 <= '1'; wait for 10ns;
				SW1 <= '1'; SW2 <= '0'; wait for 10ns;
				SW1 <= '1'; SW2 <= '1'; wait for 10ns;
				
				wait;
		end process;
END;
			