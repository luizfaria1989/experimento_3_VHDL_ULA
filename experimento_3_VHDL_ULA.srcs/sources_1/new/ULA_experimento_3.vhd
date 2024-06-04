library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ULA_experimento_3 is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           S : in  STD_LOGIC_VECTOR (1 downto 0);
           F : out  STD_LOGIC_VECTOR (3 downto 0);
           over : out  STD_LOGIC;
           c_out : out  STD_LOGIC);
end ULA_experimento_3;

architecture Behavioral of ULA_experimento_3 is

    component somador_subtrator_4bits_experimento_3
        Port ( a : in  STD_LOGIC_VECTOR (3 downto 0);
               b : in  STD_LOGIC_VECTOR (3 downto 0);
               sel : in STD_LOGIC;
               r : out  STD_LOGIC_VECTOR (3 downto 0);
               Cout : out  STD_LOGIC;
               over : out  STD_LOGIC);
    end component;

    component AND_ULA_experimento_3
        Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
               B : in  STD_LOGIC_VECTOR (3 downto 0);
               F : out  STD_LOGIC_VECTOR (3 downto 0));
    end component;

    component OR_ULA_experimento_3
        Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
               B : in  STD_LOGIC_VECTOR (3 downto 0);
               F : out  STD_LOGIC_VECTOR (3 downto 0));
    end component;

    signal F_soma, F_sub, F_and, F_or: STD_LOGIC_VECTOR(3 downto 0);
    signal over_soma, over_sub: STD_LOGIC;
    signal c_out_soma, c_out_sub: STD_LOGIC;
begin
    
    ULA_soma_inst: somador_subtrator_4bits_experimento_3 
    Port map (a => A, b => B, sel => '0', r => F_soma, Cout => c_out_soma, over => over_soma);
    
    ULA_sub_inst: somador_subtrator_4bits_experimento_3 
    Port map (a => A, b => B, sel => '1', r => F_sub, Cout => c_out_sub, over => over_sub);
    
    ULA_and_inst: AND_ULA_experimento_3 
    Port map (A => A, B => B, F => F_and);
    
    ULA_or_inst: OR_ULA_experimento_3 
    Port map (A => A, B => B, F => F_or);

process(A, B, S, F_soma, F_sub, F_and, F_or, over_soma, over_sub, c_out_soma, c_out_sub)
    begin
        case S is
            when "00" =>
                F <= F_soma;
                over <= over_soma;
                c_out <= c_out_soma;
            when "01" =>
                F <= F_sub;
                over <= over_sub;
                c_out <= c_out_sub;
            when "10" =>
                F <= F_and;
                over <= 'X';
                c_out <= 'X';
            when "11" =>
                F <= F_or;
                over <= 'X';
                c_out <= 'X';
            when others =>
                F <= (others => '0');
                over <= '0';
                c_out <= '0';
        end case;
    end process;
end Behavioral;
