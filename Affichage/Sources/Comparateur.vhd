----------------------------------------------------------------------------------
-- Company: Polytech Sorbonne - EISE3
-- Engineer: Maï Ghalioun
-- 
-- Create Date: 01.01.2021 22:06:07
-- Design Name: Comparateur
-- Module Name: Comparateur - Behavioral
-- Project Name: Projet Calculatrice
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

entity Comparateur is
    Port ( Out_4 : in STD_LOGIC_VECTOR (3 downto 0);
           Sel_1 : out STD_LOGIC);
end Comparateur;

architecture Behavioral of Comparateur is

begin
process(Out_4) is
begin
if (Out_4 < "1010") then
Sel_1 <= '0';
elsif (Out_4 > "1001") then
Sel_1 <= '1';
end if;
end process;


end Behavioral;
