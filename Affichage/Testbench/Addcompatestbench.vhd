----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.01.2021 20:20:34
-- Design Name: 
-- Module Name: Addcompatestbench - Behavioral
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

entity Addcompatestbench is
--  Port ( );
end Addcompatestbench;

architecture Behavioral of Addcompatestbench is
Signal Out_4 : STD_LOGIC_VECTOR (3 downto 0);
Signal Signaltest: STD_LOGIC;
Signal Siignal : STD_LOGIC_VECTOR (1 downto 0);

begin
test_bench: entity work.AddCompa
port map (Out_4, Signaltest,Siignal); 



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
