----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.01.2021 18:06:04
-- Design Name: 
-- Module Name: Mux_2_1 - Behavioral
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

entity Mux_2_1 is
Port ( B_out : in STD_LOGIC_VECTOR (6 downto 0);
       Res_B : in STD_LOGIC_VECTOR (6 downto 0); --résultat précédent
       compt : in STD_LOGIC;
       New_B : out STD_LOGIC_VECTOR (6 downto 0));
end Mux_2_1;

architecture Behavioral of Mux_2_1 is

begin

process (B_out, Res_B, compt)
    begin
        if compt = '1' then
            New_B <= Res_B;
        else
            New_B <= B_out;
        end if;
end process;



end Behavioral;
