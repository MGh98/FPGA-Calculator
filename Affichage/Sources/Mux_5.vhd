----------------------------------------------------------------------------------
-- Company: EISE3 POLYTECH SORBONNE
-- Engineer: TENDERO EMELINE
-- 
-- Create Date: 02.12.2021 18:27:04
-- Design Name: Mux_5.vhd
-- Module Name: Mux_5 - Behavioral
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

entity Mux_5 is
    Port ( sel : STD_LOGIC_VECTOR (1 downto 0);
           An_out : out STD_LOGIC_VECTOR (3 downto 0));
end Mux_5;

architecture Behavioral of Mux_5 is
signal An_0 : STD_LOGIC_VECTOR (3 downto 0):= "1110";
signal An_1 : STD_LOGIC_VECTOR (3 downto 0):= "1101";
signal An_2 : STD_LOGIC_VECTOR (3 downto 0):= "1011";
signal An_3 : STD_LOGIC_VECTOR (3 downto 0):= "0111";
begin
with sel select
An_out <= An_0 when "00",
        An_1 when "01",
        An_2 when "10",
        An_3 when "11";
end Behavioral;
