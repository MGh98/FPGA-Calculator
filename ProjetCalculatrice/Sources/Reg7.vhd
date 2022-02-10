----------------------------------------------------------------------------------
-- Company: EISE3 POLYTECH SORBONNE
-- Engineer: TENDERO EMELINE
-- 
-- Create Date: 02.12.2021 18:27:04
-- Design Name: Reg7.vhd
-- Module Name: Reg7 - Behavioral
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

entity Reg7 is
    Port ( Out_7 : in STD_LOGIC_VECTOR (6 downto 0);
           clk : in STD_LOGIC;
           Sept_seg : out STD_LOGIC_VECTOR (6 downto 0));
end Reg7;
architecture Behavioral of Reg7 is
begin
    process(clk,Out_7)
    begin
        if clk='1' and clk'event then
        Sept_seg <= Out_7;
        end if;
    end process;
end Behavioral;
