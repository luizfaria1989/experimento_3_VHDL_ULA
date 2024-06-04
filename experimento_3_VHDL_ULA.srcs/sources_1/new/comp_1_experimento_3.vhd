library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity comp_1_experimento_3 is
    Port ( x : in STD_LOGIC_VECTOR (3 downto 0);
           sel : in STD_LOGIC;
           s : out STD_LOGIC_VECTOR (3 downto 0));
end comp_1_experimento_3;

architecture Behavioral of comp_1_experimento_3 is

begin

     s <= x when sel='0' else
         not x;
         
end Behavioral;