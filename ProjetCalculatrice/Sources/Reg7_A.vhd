----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.01.2021 21:56:17
-- Design Name: 
-- Module Name: Reg7_A - Behavioral
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

entity Reg7_A is
Port ( clk : in STD_LOGIC;
       A : in STD_LOGIC_VECTOR (6 downto 0);
       A_out : out STD_LOGIC_VECTOR (6 downto 0));
end Reg7_A;

architecture Behavioral of Reg7_A is

signal registre : STD_LOGIC_VECTOR (6 downto 0):= (others => '0');

begin

A_out <= registre;

    process(clk,A)
        begin
            if clk='1' and clk'EVENT then
            registre <= A;
            else
            registre <= registre;
            end if;
   end process;

end Behavioral;
