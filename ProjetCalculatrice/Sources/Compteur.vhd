----------------------------------------------------------------------------------
-- Company: Polytech Sorbonne - EISE3
-- Engineer: Maï Ghalioun
-- 
-- Create Date: 01.01.2021 22:19:13
-- Design Name: Compteur
-- Module Name: Compteur - Behavioral
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Compteur is
    Port ( Signaltest : in STD_LOGIC;
           Siignal : out STD_LOGIC_VECTOR (1 downto 0);
           clk: in STD_LOGIC);
end Compteur;

architecture Behavioral of Compteur is

signal compt: STD_LOGIC_VECTOR(1 downto 0):= "01";

begin
process(Signaltest,clk)
begin
       if Signaltest = '1' then 
        if clk'event and clk = '1' then
       compt <= compt +1;         
                if compt = "01" then 
                Siignal <="01";
                compt <= compt+1;
               elsif compt = "10" then
                 Siignal <= "11";
                 compt <= "01";
               end if;
         end if;
        end if;
     end process;
     



end Behavioral;
