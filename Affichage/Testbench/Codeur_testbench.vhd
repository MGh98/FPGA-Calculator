----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.11.2020 09:52:12
-- Design Name: 
-- Module Name: decoder_testbench - Behavioral
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

entity Codeur_testbench is
--  Port ( );       
end Codeur_testbench;

architecture Behavioral of Codeur_testbench is
Signal Row : std_logic_vector(3 downto 0);
Signal Clk: std_logic;
Signal Col: std_logic_vector(3 downto 0);
Signal Out_4: std_logic_vector(3 downto 0);
Signal Signaltest0: std_logic;
Constant Clk_Period: time := 20ns;


begin
test_bench: entity work.Codeur 
port map (clk, Row, Col, Out_4); 
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