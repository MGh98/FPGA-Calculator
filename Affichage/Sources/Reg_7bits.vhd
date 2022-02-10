----------------------------------------------------------------------------------
-- Company: Polytech Sorbonne - EISE3
-- Engineer: Maï Ghalioun
-- 
-- Create Date: 01.01.2021 23:45:13
-- Design Name: Registre 7 bits
-- Module Name: Reg_7bits - Behavioral
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

entity Reg_7bits is
    Port ( clk : in STD_LOGIC;
           Siignal: in STD_LOGIC_VECTOR (1 downto 0);
           A : in STD_LOGIC_VECTOR (6 downto 0);
           B : out STD_LOGIC_VECTOR (6 downto 0));
end Reg_7bits;

architecture Behavioral of Reg_7bits is
Signal registre : STD_LOGIC_VECTOR (6 downto 0):= (others => '0');
signal entree: STD_LOGIC;

begin
entree <= (clk and Siignal(0));
B <= registre;

    process(entree,A)
        begin
            if entree='1' and entree'EVENT then
            registre <= A;
            else
            registre <= registre;
            end if;
   end process;

end Behavioral;
