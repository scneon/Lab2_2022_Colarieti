library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ParteA is
	Port ( SW1 : in STD_LOGIC;
				SW2 : in STD_LOGIC;
				LED : out STD_LOGIC);
end ParteA;

architecture Behavioral of ParteA is

begin
	LED <= not (SW1 and SW2);

end Behavioral;