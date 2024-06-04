library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity soma1_experimento_3 is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           cin : in STD_LOGIC;
           s : out STD_LOGIC;
           cout : out STD_LOGIC);
end soma1_experimento_3;

architecture Behavioral of soma1_experimento_3 is

begin

    s <= a xor b xor cin;
    cout <= (a and b) or (a and cin) or (b and cin);

end Behavioral;
