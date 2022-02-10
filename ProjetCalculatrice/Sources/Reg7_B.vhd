----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.01.2021 13:59:40
-- Design Name: 
-- Module Name: Reg7_B - Behavioral
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

entity Reg7_B is
Port ( clk : in STD_LOGIC;
       B : in STD_LOGIC_VECTOR (6 downto 0);
       B_out : out STD_LOGIC_VECTOR (6 downto 0));
end Reg7_B;

architecture Behavioral of Reg7_B is

Signal registre : STD_LOGIC_VECTOR (6 downto 0):= (others => '0');

begin
B_out <= registre;

    process(clk,B)
        begin
            if clk='1' and clk'EVENT then
            registre <= B;
            else
            registre <= registre;
            end if;
   end process;
end Behavioral;
