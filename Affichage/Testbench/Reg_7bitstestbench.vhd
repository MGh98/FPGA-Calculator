----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.01.2021 15:57:45
-- Design Name: 
-- Module Name: Reg_7bitstestbench - Behavioral
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

entity Reg_7bitstestbench is
--  Port ( );
end Reg_7bitstestbench;

architecture Behavioral of Reg_7bitstestbench is
Signal entree : STD_LOGIC;
Signal A : STD_LOGIC_VECTOR (6 downto 0);
Signal B : STD_LOGIC_VECTOR (6 downto 0);

begin
test_bench: entity work.Reg_7bits
port map (entree, A, B);

process
begin
A <= "1111110";
entree <= '1';
wait for 1 ms;
entree <= '0';
wait for 1 ms;
A <= "1010100";
entree <= '0';
wait for 1 ms;
entree <= '1';
wait for 1 ms;
end process;

end Behavioral;
