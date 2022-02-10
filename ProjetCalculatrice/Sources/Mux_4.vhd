----------------------------------------------------------------------------------
-- Company: EISE3 POLYTECH SORBONNE
-- Engineer: TENDERO EMELINE
-- 
-- Create Date: 02.12.2021 18:27:04
-- Design Name: Mux_4.vhd
-- Module Name: Mux_4 - Behavioral
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

entity Mux_4 is
    Port ( MA : in STD_LOGIC_VECTOR (3 downto 0);
           M : in STD_LOGIC_VECTOR (3 downto 0);
           M4 : out STD_LOGIC_VECTOR (3 downto 0);
           exiit : in STD_LOGIC);
end Mux_4;

architecture Behavioral of Mux_4 is

begin
    with exiit select
       M4 <= M when '0',
             MA when '1';

end Behavioral;
