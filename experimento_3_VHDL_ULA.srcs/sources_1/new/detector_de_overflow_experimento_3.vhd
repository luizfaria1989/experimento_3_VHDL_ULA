library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity detector_de_overflow_experimento_3 is
    Port ( x : in STD_LOGIC;
           y : in STD_LOGIC;
           z : in STD_LOGIC;
           over : out STD_LOGIC);
end detector_de_overflow_experimento_3;

architecture Behavioral of detector_de_overflow_experimento_3 is

begin

    over <= '1' when (x=y) and (x = not z) else
            '0';

end Behavioral;
