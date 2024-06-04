library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity OR_1bit_experimento_3 is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           s : out STD_LOGIC);
end OR_1bit_experimento_3;

architecture Behavioral of OR_1bit_experimento_3 is

begin

    s <= a or b;

end Behavioral;
