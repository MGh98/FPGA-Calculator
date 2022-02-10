----------------------------------------------------------------------------------
-- Company: Polytech Sorbonne - EISE3
-- Engineer: Maï Ghalioun 
-- 
-- Create Date: 03.01.2021 23:26:54
-- Design Name: Comparateur affichage
-- Module Name: ComparateurAff - Behavioral
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

entity ComparateurAff is
    Port ( op : in STD_LOGIC_VECTOR (3 downto 0);
           sortie : out STD_LOGIC);
end ComparateurAff;

architecture Behavioral of ComparateurAff is
--signal B: STD_LOGIC_VECTOR (3 downto 0):= "1011";
begin

process(op) is
begin
if (op = "1011") then
sortie <= '1';
else
sortie <= '0';
end if;
end process;
end Behavioral;
