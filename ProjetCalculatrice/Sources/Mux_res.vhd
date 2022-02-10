----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 31.12.2020 14:23:23
-- Design Name: 
-- Module Name: Mux_res - Behavioral
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

entity Mux_res is
Port ( Res_out_add : in STD_LOGIC_VECTOR (13 downto 0);
       Res_out_sub : in STD_LOGIC_VECTOR (13 downto 0);
       Res_out_Mul : in STD_LOGIC_VECTOR (13 downto 0);
       Op : in STD_LOGIC_VECTOR (3 downto 0);
       Res_out14 : out STD_LOGIC_VECTOR (13 downto 0));
end Mux_res;

architecture Behavioral of Mux_res is

begin

process (Res_out_add, Res_out_sub, Res_out_Mul, Op)
    begin
        if Op = "1010" then
            Res_out14 <= Res_out_add;
        elsif Op = "1100" then
            Res_out14 <= Res_out_sub;
        elsif Op = "1101" then
            Res_out14 <= Res_out_Mul;
        end if;
end process;

end Behavioral;
