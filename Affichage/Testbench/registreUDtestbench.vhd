----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.01.2021 20:10:57
-- Design Name: 
-- Module Name: registreUDtestbench - Behavioral
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

entity registreUDtestbench is
--  Port ( );
end registreUDtestbench;

architecture Behavioral of registreUDtestbench is
Signal Signaltest :  STD_LOGIC;
Signal Reg_4 :  STD_LOGIC_VECTOR (3 downto 0);
Signal Out_4: STD_LOGIC_VECTOR;

begin
test_bench: entity work.RegistreUD
port map (Signaltest,Reg_4,Out_4); 


clock:process is
begin  
    Signaltest <= '1';
    wait for 0.5 ms;       
    Signaltest <= '0';       
    wait for 0.5 ms;
end process;

sortie:process is
begin
    Out_4<="0011";
    wait for 15ns;
    Out_4<="0101";
    wait for 15ns;
end process;
end Behavioral;


