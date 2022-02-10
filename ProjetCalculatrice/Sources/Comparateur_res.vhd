----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.01.2021 15:59:35
-- Design Name: 
-- Module Name: Comparateur_res - Behavioral
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

entity Comparateur_res is
    Port(   Res_out14: in STD_LOGIC_VECTOR (13 downto 0);
            Over_99 : out STD_LOGIC;
            Res_B: out STD_LOGIC_VECTOR (6 downto 0));
end Comparateur_res;

architecture Behavioral of Comparateur_res is

begin

process (Res_out14)
    begin
    
        Res_B(0) <= Res_out14(0);
        Res_B(1) <= Res_out14(1);
        Res_B(2) <= Res_out14(2);
        Res_B(3) <= Res_out14(3);
        Res_B(4) <= Res_out14(4);
        Res_B(5) <= Res_out14(5);
        Res_B(6) <= Res_out14(6);
        
        if Res_out14 > "00000001100011" then
            Over_99 <= '1';
        else
            Over_99 <= '0';
        end if;
        
end process;

end Behavioral;
