----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.01.2021 21:46:58
-- Design Name: 
-- Module Name: Demux_1_5 - Behavioral
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

entity Demux_1_5 is
    Port ( chiffre : in STD_LOGIC_VECTOR (3 downto 0);
           Siignal : in STD_LOGIC_VECTOR (1 downto 0);
           U : out STD_LOGIC_VECTOR (3 downto 0);
           D : out STD_LOGIC_VECTOR (3 downto 0);
           C : out STD_LOGIC_VECTOR (3 downto 0);
           M : out STD_LOGIC_VECTOR (3 downto 0));
end Demux_1_5;

architecture Behavioral of Demux_1_5 is
signal c0: STD_LOGIC_VECTOR(3 downto 0):= "0000";
signal m0: STD_LOGIC_VECTOR(3 downto 0):= "0000";
begin

process(Siignal,chiffre) is
begin
if (Siignal = "01") then
U <= chiffre;
elsif (Siignal = "11") then
D <= chiffre;
 end if;
 
end process;
C <= c0;
M <= m0;

end Behavioral;
