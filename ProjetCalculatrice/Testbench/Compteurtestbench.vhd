----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.01.2021 23:10:07
-- Design Name: 
-- Module Name: Compteurtestbench - Behavioral
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

entity Compteurtestbench is
--  Port ( );
end Compteurtestbench;

architecture Behavioral of Compteurtestbench is
Signal Out_4 : STD_LOGIC_VECTOR (3 downto 0);
Signal Siignal : STD_LOGIC_VECTOR (1 downto 0);


begin
test_bench: entity work.Compteur
port map (Out_4, Siignal); 



signal_gen:process is
begin
    Out_4 <= "1111";     
    wait for 1 ms;       
    Out_4 <= "0000";        
    wait for 1 ms;
    Out_4 <= "0101";
    wait for 1 ms;
    Out_4 <= "1010";
    wait for 1 ms;
end process;


end Behavioral;
