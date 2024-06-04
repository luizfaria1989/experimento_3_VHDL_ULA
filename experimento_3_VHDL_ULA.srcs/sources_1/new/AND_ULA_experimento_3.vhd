library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity AND_ULA_experimento_3 is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           F : out  STD_LOGIC_VECTOR (3 downto 0));
end AND_ULA_experimento_3;

architecture Behavioral of AND_ULA_experimento_3 is

component AND_1bit_experimento_3
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           s : out STD_LOGIC);
end component AND_1bit_experimento_3;

begin
    
    AND1: AND_1bit_experimento_3 port map (a => A(0), b => B(0), s => F(0));
    AND2: AND_1bit_experimento_3 port map (a => A(1), b => B(1), s => F(1));
    AND3: AND_1bit_experimento_3 port map (a => A(2), b => B(2), s => F(2));
    AND4: AND_1bit_experimento_3 port map (a => A(3), b => B(3), s => F(3));
        
end Behavioral;
