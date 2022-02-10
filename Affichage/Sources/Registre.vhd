----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.01.2021 16:49:46
-- Design Name: 
-- Module Name: Registre - Behavioral
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

entity Registre is
    Port ( Signal0 : in STD_LOGIC;
           U : in STD_LOGIC_VECTOR (3 downto 0);
           U_out : out STD_LOGIC_VECTOR (3 downto 0));
end Registre;

architecture Behavioral of Registre is
Signal registre : STD_LOGIC_VECTOR (3 downto 0):= (others => '0');

begin

process(Signal0,U)
    begin
        if Signal0='1' and Signal0'event then
        U_out <= U;
        end if;
    end process;



end Behavioral;
