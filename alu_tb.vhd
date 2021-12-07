library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity alu_tb is
end;

architecture bench of alu_tb is

  component alu
      Port ( A : in STD_LOGIC_VECTOR (15 downto 0);
             B : in STD_LOGIC_VECTOR (15 downto 0);
             R : inout STD_LOGIC_VECTOR (15 downto 0);
             sel : in STD_LOGIC_VECTOR (1 downto 0);
             z : out STD_LOGIC;
             c : out STD_LOGIC);
  end component;

  signal A: STD_LOGIC_VECTOR (15 downto 0);
  signal B: STD_LOGIC_VECTOR (15 downto 0);
  signal R: STD_LOGIC_VECTOR (15 downto 0);
  signal sel: STD_LOGIC_VECTOR (1 downto 0);
  signal z: STD_LOGIC;
  signal c: STD_LOGIC;

begin

  uut: alu port map ( A   => A,
                      B   => B,
                      R   => R,
                      sel => sel,
                      z   => z,
                      c   => c );

  stimulus: process
  begin
  
    -- Put initialisation code here
    A <= "0000000000000000";
    B <= "0000000000000000";
    sel <= "00";
    wait for 5 ns;
    
    A <= "0000000000000000";
    B <= "0000000000000000";
    sel <= "01";
    wait for 5 ns;
    
    A <= "0000000000000000";
    B <= "0000000000000000";
    sel <= "10";
    wait for 5 ns;
    
    A <= "0000000000000000";
    B <= "0000000000000000";
    sel <= "11";
    wait for 5 ns;
    
    
    A <= "1111111111111111";
    B <= "0000000000000000";
    sel <= "00";
    wait for 5 ns;
    
    A <= "1111111111111111";
    B <= "0000000000000000";
    sel <= "01";
    wait for 5 ns;
    
    A <= "1111111111111111";
    B <= "0000000000000000";
    sel <= "10";
    wait for 5 ns;
    
    A <= "1111111111111111";
    B <= "0000000000000000";
    sel <= "11";
    wait for 5 ns;


    A <= "0000000000000000";
    B <= "1111111111111111";
    sel <= "00";
    wait for 5 ns;
    
    A <= "0000000000000000";
    B <= "1111111111111111";
    sel <= "01";
    wait for 5 ns;
    
    A <= "0000000000000000";
    B <= "1111111111111111";
    sel <= "10";
    wait for 5 ns;
    
    A <= "0000000000000000";
    B <= "1111111111111111";
    sel <= "11";
    wait for 5 ns;
    
    
    A <= "1111111111111111";    
    B <= "1111111111111111";
    sel <= "00";
    wait for 5 ns;
    
    A <= "1111111111111111";    
    B <= "1111111111111111";
    sel <= "01";
    wait for 5 ns;
    
    A <= "1111111111111111";    
    B <= "1111111111111111";
    sel <= "10";
    wait for 5 ns;
    
    A <= "1111111111111111";    
    B <= "1111111111111111";
    sel <= "11";
    wait for 5 ns;
    
    A <= "0110100101010011";
    B <= "1000100010000100";
    sel <= "00";
    wait for 5 ns;
    
    A <= "0110100101010011";
    B <= "1000100010000100";
    sel <= "01";
    wait for 5 ns;
    
    A <= "0110100101010011";
    B <= "1000100010000100";
    sel <= "10";
    wait for 5 ns;
    
    A <= "0110100101010011";
    B <= "1000100010000100";
    sel <= "11";
    wait for 5 ns;
    
    A<="0010001011111010";
	B<="0010001011111010";
	sel <= "00";
    wait for 5 ns;
    
    A<="0010001011111010";
	B<="0010001011111010";
    sel <= "01";
    wait for 5 ns;
    
    A<="0010001011111010";
	B<="0010001011111010";
    sel <= "10";
    wait for 5 ns;
    
    A<="0010001011111010";
	B<="0010001011111010";
    sel <= "11";
    wait for 5 ns;
    
    A<="0101010101010101";
    B<="0101010101010101";
    sel <= "00";
    wait for 5 ns;
    
    A<="0101010101010101";
    B<="0101010101010101";
    sel <= "01";
    wait for 5 ns;
    
    A<="0101010101010101";
    B<="0101010101010101";
    sel <= "10";
    wait for 5 ns;
    
    A<="0101010101010101";
    B<="0101010101010101";
    sel <= "11";
    wait for 5 ns;
    
    A<="0101010101010101";
    B<="1010101010101010";
    sel <= "00";
    wait for 5 ns;
    
    A<="0101010101010101";
    B<="1010101010101010";
    sel <= "01";
    wait for 5 ns;
    
    A<="0101010101010101";
    B<="1010101010101010";
    sel <= "10";
    wait for 5 ns;
    
    A<="0101010101010101";
    B<="1010101010101010";
    sel <= "11";
    wait for 5 ns;
  end process;


end;