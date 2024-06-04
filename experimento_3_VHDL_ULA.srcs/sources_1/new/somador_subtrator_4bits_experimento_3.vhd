library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity somador_subtrator_4bits_experimento_3 is
    Port ( a : in STD_LOGIC_VECTOR (3 downto 0);
           b : in STD_LOGIC_VECTOR (3 downto 0);
           sel : in STD_LOGIC;
           r : out STD_LOGIC_VECTOR (3 downto 0);
           Cout : out STD_LOGIC;
           over : out STD_LOGIC);
end somador_subtrator_4bits_experimento_3;

architecture Behavioral of somador_subtrator_4bits_experimento_3 is

    component comp_1_experimento_3
        Port ( x : in STD_LOGIC_VECTOR (3 downto 0);
               sel : in STD_LOGIC;
               s : out STD_LOGIC_VECTOR (3 downto 0));
    end component;
    
    component detector_de_overflow_experimento_3
        Port ( x : in STD_LOGIC;
               y : in STD_LOGIC;
               z : in STD_LOGIC;
               over : out STD_LOGIC);
    end component;
    
    component soma4
        Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
               B : in STD_LOGIC_VECTOR (3 downto 0);
               Cin : in STD_LOGIC;
               S : out STD_LOGIC_VECTOR (3 downto 0);
               Cout : out STD_LOGIC);
    end component;
    
    signal sig1, sig2: STD_LOGIC_VECTOR (3 downto 0);

begin
    
    
    c1: comp_1_experimento_3 port map (x=>b, sel=>sel, s=>sig1);
    
    c2: detector_de_overflow_experimento_3 port map (x=>a(3), y=>b(3), z=>sig2(3),over=>over);
    
    c3: soma4 port map (A=>a, B=>sig1, Cin=>sel,S=>sig2, Cout=>Cout);
    r <= sig2;

end Behavioral;















