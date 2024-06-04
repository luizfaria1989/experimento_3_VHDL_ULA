library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity OR_ULA_experimento_3 is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           F : out  STD_LOGIC_VECTOR (3 downto 0));
end OR_ULA_experimento_3;

architecture Behavioral of OR_ULA_experimento_3 is

component OR_1bit_experimento_3
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           s : out STD_LOGIC);
end component OR_1bit_experimento_3;

begin

    OR1: OR_1bit_experimento_3 port map (a => A(0), b => B(0), s => F(0));
    OR2: OR_1bit_experimento_3 port map (a => A(1), b => B(1), s => F(1));
    OR3: OR_1bit_experimento_3 port map (a => A(2), b => B(2), s => F(2));
    OR4: OR_1bit_experimento_3 port map (a => A(3), b => B(3), s => F(3));
    
end Behavioral;
