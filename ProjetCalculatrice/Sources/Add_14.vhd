----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.11.2020 11:09:01
-- Design Name: 
-- Module Name: Add_14 - Behavioral
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

entity Add_14 is
    Port ( A_out : in STD_LOGIC_VECTOR (6 downto 0);
           New_B : in STD_LOGIC_VECTOR (6 downto 0);
           Res_out_add : out STD_LOGIC_VECTOR (13 downto 0));
end Add_14;

architecture Behavioral of Add_14 is
signal c: std_logic_vector (14 downto 0);

begin
c(0) <= '0';

instance : for i in 0 to 6 generate
    add1bit : entity work.add1bit(flot)
    port map (A_out(i),New_B(i),c(i),c(i+1),Res_out_add(i));  
end generate instance;

Res_out_add(7) <= c(7);

convert : for i in 8 to 13 generate
    Res_out_add(i) <= '0';
end generate convert;


end Behavioral;


