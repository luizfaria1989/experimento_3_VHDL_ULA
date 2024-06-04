library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity ULA_experimento_3_tb is
--  Port ( );
end ULA_experimento_3_tb;

architecture Behavioral of ULA_experimento_3_tb is

    component ULA_experimento_3
        Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
               B : in  STD_LOGIC_VECTOR (3 downto 0);
               S : in  STD_LOGIC_VECTOR (1 downto 0);
               F : out  STD_LOGIC_VECTOR (3 downto 0);
               over : out  STD_LOGIC;
               c_out : out  STD_LOGIC);
    end component;

    signal SA, SB: STD_LOGIC_VECTOR (3 downto 0) := "0000";
    signal SS : STD_LOGIC_VECTOR (1 downto 0) := "00";
    signal SF: STD_LOGIC_VECTOR (3 downto 0) := "0000";
    signal Sover, Sc_out: STD_LOGIC := '0';

begin

    uut: ULA_experimento_3 port map(
        A => SA,
        B => SB,
        S => SS,
        F => SF,
        over => Sover,
        c_out => Sc_out);
        
    stimulus: process
    begin
    
        -- Soma de A com B = 0
        
        SA <= "0000"; SB <= "0000"; SS <= "00"; wait for 10 ns; -- (Soma A,B) A = 0 / B = 0
        SA <= "0001"; SB <= "0000"; SS <= "00"; wait for 10 ns; -- (Soma A,B) A = 1 / B = 0
        SA <= "0010"; SB <= "0000"; SS <= "00"; wait for 10 ns; -- (Soma A,B) A = 2 / B = 0
        SA <= "0011"; SB <= "0000"; SS <= "00"; wait for 10 ns; -- (Soma A,B) A = 3 / B = 0
        SA <= "0100"; SB <= "0000"; SS <= "00"; wait for 10 ns; -- (Soma A,B) A = 4 / B = 0
        SA <= "0101"; SB <= "0000"; SS <= "00"; wait for 10 ns; -- (Soma A,B) A = 5 / B = 0
        SA <= "0110"; SB <= "0000"; SS <= "00"; wait for 10 ns; -- (Soma A,B) A = 6 / B = 0
        SA <= "0111"; SB <= "0000"; SS <= "00"; wait for 10 ns; -- (Soma A,B) A = 7 / B = 0
        SA <= "1000"; SB <= "0000"; SS <= "00"; wait for 10 ns; -- (Soma A,B) A = 8 / B = 0
        SA <= "1001"; SB <= "0000"; SS <= "00"; wait for 10 ns; -- (Soma A,B) A = 9 / B = 0
        SA <= "1010"; SB <= "0000"; SS <= "00"; wait for 10 ns; -- (Soma A,B) A = 10 / B = 0
        SA <= "1011"; SB <= "0000"; SS <= "00"; wait for 10 ns; -- (Soma A,B) A = 11 / B = 0
        SA <= "1100"; SB <= "0000"; SS <= "00"; wait for 10 ns; -- (Soma A,B) A = 12 / B = 0
        SA <= "1101"; SB <= "0000"; SS <= "00"; wait for 10 ns; -- (Soma A,B) A = 13 / B = 0
        SA <= "1110"; SB <= "0000"; SS <= "00"; wait for 10 ns; -- (Soma A,B) A = 14 / B = 0
        SA <= "1111"; SB <= "0000"; SS <= "00"; wait for 10 ns; -- (Soma A,B) A = 15 / B = 0
        
        -- Soma de B com A = 0
        
        SA <= "0000"; SB <= "0000"; SS <= "00"; wait for 10 ns; -- (Soma A,B) A = 0 / B = 0
        SA <= "0000"; SB <= "0001"; SS <= "00"; wait for 10 ns; -- (Soma A,B) A = 0 / B = 1
        SA <= "0000"; SB <= "0010"; SS <= "00"; wait for 10 ns; -- (Soma A,B) A = 0 / B = 2
        SA <= "0000"; SB <= "0011"; SS <= "00"; wait for 10 ns; -- (Soma A,B) A = 0 / B = 3
        SA <= "0000"; SB <= "0100"; SS <= "00"; wait for 10 ns; -- (Soma A,B) A = 0 / B = 4
        SA <= "0000"; SB <= "0101"; SS <= "00"; wait for 10 ns; -- (Soma A,B) A = 0 / B = 5
        SA <= "0000"; SB <= "0110"; SS <= "00"; wait for 10 ns; -- (Soma A,B) A = 0 / B = 6
        SA <= "0000"; SB <= "0111"; SS <= "00"; wait for 10 ns; -- (Soma A,B) A = 0 / B = 7
        SA <= "0000"; SB <= "1000"; SS <= "00"; wait for 10 ns; -- (Soma A,B) A = 0 / B = 8
        SA <= "0000"; SB <= "1001"; SS <= "00"; wait for 10 ns; -- (Soma A,B) A = 0 / B = 9
        SA <= "0000"; SB <= "1010"; SS <= "00"; wait for 10 ns; -- (Soma A,B) A = 0 / B = 10
        SA <= "0000"; SB <= "1011"; SS <= "00"; wait for 10 ns; -- (Soma A,B) A = 0 / B = 11
        SA <= "0000"; SB <= "1100"; SS <= "00"; wait for 10 ns; -- (Soma A,B) A = 0 / B = 12
        SA <= "0000"; SB <= "1101"; SS <= "00"; wait for 10 ns; -- (Soma A,B) A = 0 / B = 13
        SA <= "0000"; SB <= "1110"; SS <= "00"; wait for 10 ns; -- (Soma A,B) A = 0 / B = 14
        SA <= "0000"; SB <= "1111"; SS <= "00"; wait for 10 ns; -- (Soma A,B) A = 0 / B = 15
        
        -- Soma de A com B, ambos aumentando de 1 em 1
        
        SA <= "0000"; SB <= "0000"; SS <= "00"; wait for 10 ns; -- A = 0 / B = 0
        SA <= "0001"; SB <= "0001"; SS <= "00"; wait for 10 ns; -- A = 1 / B = 1
        SA <= "0010"; SB <= "0010"; SS <= "00"; wait for 10 ns; -- A = 2 / B = 2
        SA <= "0011"; SB <= "0011"; SS <= "00"; wait for 10 ns; -- A = 3 / B = 3
        SA <= "0100"; SB <= "0100"; SS <= "00"; wait for 10 ns; -- A = 4 / B = 4
        SA <= "0101"; SB <= "0101"; SS <= "00"; wait for 10 ns; -- A = 5 / B = 5
        SA <= "0110"; SB <= "0110"; SS <= "00"; wait for 10 ns; -- A = 6 / B = 6
        SA <= "0111"; SB <= "0111"; SS <= "00"; wait for 10 ns; -- A = 7 / B = 7
        SA <= "1000"; SB <= "1000"; SS <= "00"; wait for 10 ns; -- A = 8 / B = 8
        SA <= "1001"; SB <= "1001"; SS <= "00"; wait for 10 ns; -- A = 9 / B = 9
        SA <= "1010"; SB <= "1010"; SS <= "00"; wait for 10 ns; -- A = 10 / B = 10
        SA <= "1011"; SB <= "1011"; SS <= "00"; wait for 10 ns; -- A = 11 / B = 11
        SA <= "1100"; SB <= "1100"; SS <= "00"; wait for 10 ns; -- A = 12 / B = 12
        SA <= "1101"; SB <= "1101"; SS <= "00"; wait for 10 ns; -- A = 13 / B = 13
        SA <= "1110"; SB <= "1110"; SS <= "00"; wait for 10 ns; -- A = 14 / B = 14
        SA <= "1111"; SB <= "1111"; SS <= "00"; wait for 10 ns; -- A = 15 / B = 15
        
        -- Subtracao de A com B = 0
        
        SA <= "0000"; SB <= "0000"; SS <= "01"; wait for 10 ns;
        SA <= "0001"; SB <= "0000"; SS <= "01"; wait for 10 ns;
        SA <= "0010"; SB <= "0000"; SS <= "01"; wait for 10 ns;
        SA <= "0011"; SB <= "0000"; SS <= "01"; wait for 10 ns;
        SA <= "0100"; SB <= "0000"; SS <= "01"; wait for 10 ns;
        SA <= "0101"; SB <= "0000"; SS <= "01"; wait for 10 ns;
        SA <= "0110"; SB <= "0000"; SS <= "01"; wait for 10 ns;
        SA <= "0111"; SB <= "0000"; SS <= "01"; wait for 10 ns;
        SA <= "1000"; SB <= "0000"; SS <= "01"; wait for 10 ns;
        SA <= "1001"; SB <= "0000"; SS <= "01"; wait for 10 ns;
        SA <= "1010"; SB <= "0000"; SS <= "01"; wait for 10 ns;
        SA <= "1011"; SB <= "0000"; SS <= "01"; wait for 10 ns;
        SA <= "1100"; SB <= "0000"; SS <= "01"; wait for 10 ns; 
        SA <= "1101"; SB <= "0000"; SS <= "01"; wait for 10 ns; 
        SA <= "1110"; SB <= "0000"; SS <= "01"; wait for 10 ns;
        SA <= "1111"; SB <= "0000"; SS <= "01"; wait for 10 ns;
        
        -- Subtracao A = 0 com B
        
        SA <= "0000"; SB <= "0000"; SS <= "01"; wait for 10 ns;
        SA <= "0000"; SB <= "0001"; SS <= "01"; wait for 10 ns;
        SA <= "0000"; SB <= "0010"; SS <= "01"; wait for 10 ns;
        SA <= "0000"; SB <= "0011"; SS <= "01"; wait for 10 ns;
        SA <= "0000"; SB <= "0100"; SS <= "01"; wait for 10 ns;
        SA <= "0000"; SB <= "0101"; SS <= "01"; wait for 10 ns;
        SA <= "0000"; SB <= "0110"; SS <= "01"; wait for 10 ns;
        SA <= "0000"; SB <= "0111"; SS <= "01"; wait for 10 ns;
        SA <= "0000"; SB <= "1000"; SS <= "01"; wait for 10 ns;
        SA <= "0000"; SB <= "1001"; SS <= "01"; wait for 10 ns;
        SA <= "0000"; SB <= "1010"; SS <= "01"; wait for 10 ns;
        SA <= "0000"; SB <= "1011"; SS <= "01"; wait for 10 ns;
        SA <= "0000"; SB <= "1100"; SS <= "01"; wait for 10 ns;
        SA <= "0000"; SB <= "1101"; SS <= "01"; wait for 10 ns;
        SA <= "0000"; SB <= "1110"; SS <= "01"; wait for 10 ns;
        SA <= "0000"; SB <= "1111"; SS <= "01"; wait for 10 ns;
        
        -- Subtracao A com B   
    
        SA <= "0000"; SB <= "0000"; SS <= "01"; wait for 10 ns;
        SA <= "0001"; SB <= "0001"; SS <= "01"; wait for 10 ns;
        SA <= "0010"; SB <= "0010"; SS <= "01"; wait for 10 ns;
        SA <= "0011"; SB <= "0011"; SS <= "01"; wait for 10 ns;
        SA <= "0100"; SB <= "0100"; SS <= "01"; wait for 10 ns;
        SA <= "0101"; SB <= "0101"; SS <= "01"; wait for 10 ns;
        SA <= "0110"; SB <= "0110"; SS <= "01"; wait for 10 ns;
        SA <= "0111"; SB <= "0111"; SS <= "01"; wait for 10 ns;
        SA <= "1000"; SB <= "1000"; SS <= "01"; wait for 10 ns;
        SA <= "1001"; SB <= "1001"; SS <= "01"; wait for 10 ns;
        SA <= "1010"; SB <= "1010"; SS <= "01"; wait for 10 ns;
        SA <= "1011"; SB <= "1011"; SS <= "01"; wait for 10 ns;
        SA <= "1100"; SB <= "1100"; SS <= "01"; wait for 10 ns;
        SA <= "1101"; SB <= "1101"; SS <= "01"; wait for 10 ns;
        SA <= "1110"; SB <= "1110"; SS <= "01"; wait for 10 ns;
        SA <= "1111"; SB <= "1111"; SS <= "01"; wait for 10 ns;
        
        -- AND A B = 0
        
        SA <= "0000"; SB <= "0000"; SS <= "10"; wait for 10 ns;
        SA <= "0001"; SB <= "0000"; SS <= "10"; wait for 10 ns;
        SA <= "0010"; SB <= "0000"; SS <= "10"; wait for 10 ns;
        SA <= "0011"; SB <= "0000"; SS <= "10"; wait for 10 ns;
        SA <= "0100"; SB <= "0000"; SS <= "10"; wait for 10 ns;
        SA <= "0101"; SB <= "0000"; SS <= "10"; wait for 10 ns;
        SA <= "0110"; SB <= "0000"; SS <= "10"; wait for 10 ns;
        SA <= "0111"; SB <= "0000"; SS <= "10"; wait for 10 ns;
        SA <= "1000"; SB <= "0000"; SS <= "10"; wait for 10 ns;
        SA <= "1001"; SB <= "0000"; SS <= "10"; wait for 10 ns;
        SA <= "1010"; SB <= "0000"; SS <= "10"; wait for 10 ns;
        SA <= "1011"; SB <= "0000"; SS <= "10"; wait for 10 ns;
        SA <= "1100"; SB <= "0000"; SS <= "10"; wait for 10 ns; 
        SA <= "1101"; SB <= "0000"; SS <= "10"; wait for 10 ns; 
        SA <= "1110"; SB <= "0000"; SS <= "10"; wait for 10 ns;
        SA <= "1111"; SB <= "0000"; SS <= "10"; wait for 10 ns;
        
        -- AND A = 0 B
        
        SA <= "0000"; SB <= "0000"; SS <= "10"; wait for 10 ns;
        SA <= "0000"; SB <= "0001"; SS <= "10"; wait for 10 ns;
        SA <= "0000"; SB <= "0010"; SS <= "10"; wait for 10 ns;
        SA <= "0000"; SB <= "0011"; SS <= "10"; wait for 10 ns;
        SA <= "0000"; SB <= "0100"; SS <= "10"; wait for 10 ns;
        SA <= "0000"; SB <= "0101"; SS <= "10"; wait for 10 ns;
        SA <= "0000"; SB <= "0110"; SS <= "10"; wait for 10 ns;
        SA <= "0000"; SB <= "0111"; SS <= "10"; wait for 10 ns;
        SA <= "0000"; SB <= "1000"; SS <= "10"; wait for 10 ns;
        SA <= "0000"; SB <= "1001"; SS <= "10"; wait for 10 ns;
        SA <= "0000"; SB <= "1010"; SS <= "10"; wait for 10 ns;
        SA <= "0000"; SB <= "1011"; SS <= "10"; wait for 10 ns;
        SA <= "0000"; SB <= "1100"; SS <= "10"; wait for 10 ns;
        SA <= "0000"; SB <= "1101"; SS <= "10"; wait for 10 ns;
        SA <= "0000"; SB <= "1110"; SS <= "10"; wait for 10 ns;
        SA <= "0000"; SB <= "1111"; SS <= "10"; wait for 10 ns;
        
        -- AND A B
        
        SA <= "0000"; SB <= "0000"; SS <= "10"; wait for 10 ns;
        SA <= "0001"; SB <= "0001"; SS <= "10"; wait for 10 ns;
        SA <= "0010"; SB <= "0010"; SS <= "10"; wait for 10 ns;
        SA <= "0011"; SB <= "0011"; SS <= "10"; wait for 10 ns;
        SA <= "0100"; SB <= "0100"; SS <= "10"; wait for 10 ns;
        SA <= "0101"; SB <= "0101"; SS <= "10"; wait for 10 ns;
        SA <= "0110"; SB <= "0110"; SS <= "10"; wait for 10 ns;
        SA <= "0111"; SB <= "0111"; SS <= "10"; wait for 10 ns;
        SA <= "1000"; SB <= "1000"; SS <= "10"; wait for 10 ns;
        SA <= "1001"; SB <= "1001"; SS <= "10"; wait for 10 ns;
        SA <= "1010"; SB <= "1010"; SS <= "10"; wait for 10 ns;
        SA <= "1011"; SB <= "1011"; SS <= "10"; wait for 10 ns;
        SA <= "1100"; SB <= "1100"; SS <= "10"; wait for 10 ns;
        SA <= "1101"; SB <= "1101"; SS <= "10"; wait for 10 ns;
        SA <= "1110"; SB <= "1110"; SS <= "10"; wait for 10 ns;
        SA <= "1111"; SB <= "1111"; SS <= "10"; wait for 10 ns;
        
        -- OR A B = 0
        
        SA <= "0000"; SB <= "0000"; SS <= "11"; wait for 10 ns;
        SA <= "0001"; SB <= "0000"; SS <= "11"; wait for 10 ns;
        SA <= "0010"; SB <= "0000"; SS <= "11"; wait for 10 ns;
        SA <= "0011"; SB <= "0000"; SS <= "11"; wait for 10 ns;
        SA <= "0100"; SB <= "0000"; SS <= "11"; wait for 10 ns;
        SA <= "0101"; SB <= "0000"; SS <= "11"; wait for 10 ns;
        SA <= "0110"; SB <= "0000"; SS <= "11"; wait for 10 ns;
        SA <= "0111"; SB <= "0000"; SS <= "11"; wait for 10 ns;
        SA <= "1000"; SB <= "0000"; SS <= "11"; wait for 10 ns;
        SA <= "1001"; SB <= "0000"; SS <= "11"; wait for 10 ns;
        SA <= "1010"; SB <= "0000"; SS <= "11"; wait for 10 ns;
        SA <= "1011"; SB <= "0000"; SS <= "11"; wait for 10 ns;
        SA <= "1100"; SB <= "0000"; SS <= "11"; wait for 10 ns; 
        SA <= "1101"; SB <= "0000"; SS <= "11"; wait for 10 ns; 
        SA <= "1110"; SB <= "0000"; SS <= "11"; wait for 10 ns;
        SA <= "1111"; SB <= "0000"; SS <= "11"; wait for 10 ns;
        
        -- OR A = 0 B
        
        SA <= "0000"; SB <= "0000"; SS <= "11"; wait for 10 ns;
        SA <= "0000"; SB <= "0001"; SS <= "11"; wait for 10 ns;
        SA <= "0000"; SB <= "0010"; SS <= "11"; wait for 10 ns;
        SA <= "0000"; SB <= "0011"; SS <= "11"; wait for 10 ns;
        SA <= "0000"; SB <= "0100"; SS <= "11"; wait for 10 ns;
        SA <= "0000"; SB <= "0101"; SS <= "11"; wait for 10 ns;
        SA <= "0000"; SB <= "0110"; SS <= "11"; wait for 10 ns;
        SA <= "0000"; SB <= "0111"; SS <= "11"; wait for 10 ns;
        SA <= "0000"; SB <= "1000"; SS <= "11"; wait for 10 ns;
        SA <= "0000"; SB <= "1001"; SS <= "11"; wait for 10 ns;
        SA <= "0000"; SB <= "1010"; SS <= "11"; wait for 10 ns;
        SA <= "0000"; SB <= "1011"; SS <= "11"; wait for 10 ns;
        SA <= "0000"; SB <= "1100"; SS <= "11"; wait for 10 ns;
        SA <= "0000"; SB <= "1101"; SS <= "11"; wait for 10 ns;
        SA <= "0000"; SB <= "1110"; SS <= "11"; wait for 10 ns;
        SA <= "0000"; SB <= "1111"; SS <= "11"; wait for 10 ns;
        
        -- OR A B
        
        SA <= "0000"; SB <= "0000"; SS <= "11"; wait for 10 ns;
        SA <= "0001"; SB <= "0001"; SS <= "11"; wait for 10 ns;
        SA <= "0010"; SB <= "0010"; SS <= "11"; wait for 10 ns;
        SA <= "0011"; SB <= "0011"; SS <= "11"; wait for 10 ns;
        SA <= "0100"; SB <= "0100"; SS <= "11"; wait for 10 ns;
        SA <= "0101"; SB <= "0101"; SS <= "11"; wait for 10 ns;
        SA <= "0110"; SB <= "0110"; SS <= "11"; wait for 10 ns;
        SA <= "0111"; SB <= "0111"; SS <= "11"; wait for 10 ns;
        SA <= "1000"; SB <= "1000"; SS <= "11"; wait for 10 ns;
        SA <= "1001"; SB <= "1001"; SS <= "11"; wait for 10 ns;
        SA <= "1010"; SB <= "1010"; SS <= "11"; wait for 10 ns;
        SA <= "1011"; SB <= "1011"; SS <= "11"; wait for 10 ns;
        SA <= "1100"; SB <= "1100"; SS <= "11"; wait for 10 ns;
        SA <= "1101"; SB <= "1101"; SS <= "11"; wait for 10 ns;
        SA <= "1110"; SB <= "1110"; SS <= "11"; wait for 10 ns;
        SA <= "1111"; SB <= "1111"; SS <= "11"; wait for 10 ns;
    
    end process;


end Behavioral;
