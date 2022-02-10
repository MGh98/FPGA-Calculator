----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.01.2021 13:45:31
-- Design Name: 
-- Module Name: Comparateur_equal - Behavioral
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

entity Comparateur_equal is
    Port ( Op : in STD_LOGIC_VECTOR (3 downto 0);
           Demux_equal : out STD_LOGIC;
           Demux_reset : out STD_LOGIC);
end Comparateur_equal;

architecture Behavioral of Comparateur_equal is

begin

process (Op)
    begin
        if Op = "1011" then
            Demux_equal <= '1';
            Demux_reset <= '0';
        elsif Op = "1110" then --touche 'E' reset
            Demux_equal <= '0';
            Demux_reset <= '1';
        else
            Demux_equal <= '0';
            Demux_reset <= '0';
        end if;
end process;

end Behavioral;
