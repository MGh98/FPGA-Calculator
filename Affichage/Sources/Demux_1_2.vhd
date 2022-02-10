----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.01.2021 14:44:34
-- Design Name: 
-- Module Name: Demux_1_2 - Behavioral
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

entity Demux_1_2 is
    Port ( Out_4 : in STD_LOGIC_VECTOR (3 downto 0);
           Sel_1 : in STD_LOGIC;
           op : out STD_LOGIC_VECTOR (3 downto 0);
           chiffre : out STD_LOGIC_VECTOR (3 downto 0));
end Demux_1_2;

architecture Behavioral of Demux_1_2 is
begin
process(Sel_1) is
begin
if (Sel_1 ='0') then
chiffre <= Out_4;
elsif (Sel_1 ='1') then
op <= Out_4;
--op <= "0000";
--chiffre <= "0000";
 end if;
end process;




end Behavioral;
