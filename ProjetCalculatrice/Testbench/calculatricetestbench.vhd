----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.01.2021 20:50:09
-- Design Name: 
-- Module Name: calculatricetestbench - Behavioral
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

entity calculatricetestbench is
--  Port ( );
end calculatricetestbench;

architecture Behavioral of calculatricetestbench is
Signal Row : STD_LOGIC_VECTOR (3 downto 0);
Signal Col : STD_LOGIC_VECTOR (3 downto 0);
Signal Clk :  STD_LOGIC;
Signal Sept_seg : STD_LOGIC_VECTOR (6 downto 0);
Signal Anodex : STD_LOGIC_VECTOR (3 downto 0);
Constant Clk_Period: time := 20ns;


begin
test_bench: entity work.Calculatrice 
port map (Row, Col,Clk, Sept_seg, Anodex); 
clock:process is
begin  
    Clk <= '0';
    wait for CLk_Period/2;       
    Clk <= '1';       
    wait for Clk_Period/2;
end process;

signal_gen:process is
begin
    Row <= "0111";      
    wait for 1 ms;       
    Row <= "1011";         
    wait for 1 ms; 
    Row <= "1101";     
    wait for 1 ms;
    Row <= "1110";        
end process;
    

end Behavioral;
