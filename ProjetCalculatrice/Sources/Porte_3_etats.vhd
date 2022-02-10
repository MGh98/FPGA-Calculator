----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.01.2021 18:18:54
-- Design Name: 
-- Module Name: Porte_3_etats - Behavioral
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

entity Porte_3_etats is
Port ( Res_out14 : in STD_LOGIC_VECTOR (13 downto 0);
       Demux_equal : in STD_LOGIC;
       Demux_reset : in STD_LOGIC;
       Res_out_final : out STD_LOGIC_VECTOR (13 downto 0));
end Porte_3_etats;

architecture Behavioral of Porte_3_etats is

begin

process (Res_out14, Demux_equal,Demux_reset)
    begin
        if Demux_equal = '1' then
            Res_out_final <= Res_out14;
        elsif Demux_reset = '1' then
            Res_out_final <= "00000000000000";
        else
            Res_out_final <= "ZZZZZZZZZZZZZZ";
        end if;
end process;

end Behavioral;
