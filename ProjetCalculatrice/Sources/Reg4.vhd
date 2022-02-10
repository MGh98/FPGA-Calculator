----------------------------------------------------------------------------------
-- Company: EISE3 POLYTECH SORBONNE
-- Engineer: TENDERO EMELINE
-- 
-- Create Date: 02.12.2021 18:27:04
-- Design Name: Reg4.vhd 
-- Module Name: Reg4 - Behavioral
-- Project Name: Calculatrice
-- Target Devices: 
-- Tool Versions: 2014
-- Description: 
-- Dependencies: 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
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

entity Reg4 is
    Port ( An_out : in STD_LOGIC_VECTOR (3 downto 0);
           clk : in STD_LOGIC;
           Anodex : out STD_LOGIC_VECTOR (3 downto 0));
end Reg4;
architecture Behavioral of Reg4 is
begin
    process(clk,An_out)
    begin
        if clk='1' and clk'event then
        Anodex <= An_out;
        end if;
    end process;
end Behavioral;
