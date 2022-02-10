----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 31.12.2020 15:24:29
-- Design Name: 
-- Module Name: testbenchsub8 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity testbenchadd14 is
--  Port ( );
end testbenchadd14;

architecture Behavioral of testbenchadd14 is

component Add_14 is
    Port ( A_out : in STD_LOGIC_VECTOR (6 downto 0);
       New_B : in STD_LOGIC_VECTOR (6 downto 0);
       Res_out_add : out STD_LOGIC_VECTOR (13 downto 0));
end component;

signal A,B: STD_LOGIC_VECTOR (6 downto 0);
signal S: STD_LOGIC_VECTOR (13 downto 0);

begin

test_bench: Add_14 port map(A,B,S);

signal_gen:process is
      begin        
      A <= "0000100";
      B <= "0000001";
      wait for 100 ns;
      A <= "1010100";
      B <= "0101101";
      wait for 100 ns;
      A <= "0010110";
      B <= "0000011";
      wait for 100 ns;
      A <= "1111111";
      B <= "1111111";
      wait for 100 ns;
      
    end process;



end Behavioral;
