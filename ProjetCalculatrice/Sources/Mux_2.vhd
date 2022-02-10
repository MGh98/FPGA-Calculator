----------------------------------------------------------------------------------
-- Company: EISE3 POLYTECH SORBONNE
-- Engineer: TENDERO EMELINE
-- 
-- Create Date: 02.12.2021 18:27:04
-- Design Name: Mux_2.vhd
-- Module Name: Mux_2 - Behavioral
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

entity Mux_2 is
    Port ( DA : in STD_LOGIC_VECTOR (3 downto 0);
           D : in STD_LOGIC_VECTOR (3 downto 0);
           D4 : out STD_LOGIC_VECTOR (3 downto 0);
           exiit : in STD_LOGIC);
end Mux_2;

architecture Behavioral of Mux_2 is

begin
    with exiit select
       D4 <= D when '0',
             DA when '1';

end Behavioral;
