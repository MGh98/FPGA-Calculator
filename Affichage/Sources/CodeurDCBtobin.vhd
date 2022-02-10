----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.01.2021 17:07:27
-- Design Name: 
-- Module Name: CodeurDCBtobin - Behavioral
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity CodeurDCBtobin is
    Port ( U : in STD_LOGIC_VECTOR (3 downto 0);
           D : in STD_LOGIC_VECTOR (3 downto 0);
           A : out STD_LOGIC_VECTOR (6 downto 0));
end CodeurDCBtobin;

architecture Behavioral of CodeurDCBtobin is
Signal Unite: STD_LOGIC_VECTOR (6 downto 0):= (others => '0');
Signal Dizaine: STD_LOGIC_VECTOR (6 downto 0):= (others => '0');

begin
With D select 
Dizaine <= "0000000" when "0000",
           "0001010" when "0001",
           "0010100" when "0010",
           "0011110" when "0011",
           "0101000" when "0100",
           "0110010" when "0101",
           "0111100" when "0110",  
           "1000110" when "0111",  
           "1010000" when "1000",  
           "1011010" when "1001", 
           "0000000" when others;

With U select 
Unite  <= "0000000" when "0000",
           "0000001" when "0001",
           "0000010" when "0010",
           "0000011" when "0011",
           "0000100" when "0100",
           "0000101" when "0101",
           "0000110" when "0110",  
           "0000111" when "0111",  
           "0001000" when "1000",  
           "0001001" when "1001", 
           "0000000" when others;

A <= Unite + Dizaine;


end Behavioral;
