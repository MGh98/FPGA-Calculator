----------------------------------------------------------------------------------
-- Company: EISE3 POLYTECH SORBONNE
-- Engineer: TENDERO EMELINE
-- 
-- Create Date: 02.12.2021 18:27:04
-- Design Name: Mux_1.vhd
-- Module Name: Mux_1 - Behavioral
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

entity Mux_1 is
    Port ( UA : in STD_LOGIC_VECTOR (3 downto 0);
           U : in STD_LOGIC_VECTOR (3 downto 0);
           U4 : out STD_LOGIC_VECTOR (3 downto 0);
           exiit : in STD_LOGIC);
end Mux_1;

architecture Behavioral of Mux_1 is

begin
    with exiit select
       U4 <= U when '0',
             UA when '1';

end Behavioral;
