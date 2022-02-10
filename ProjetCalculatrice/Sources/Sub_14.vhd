----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.11.2020 11:09:01
-- Design Name: 
-- Module Name: Sub_14 - Behavioral
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

entity Sub_14 is
    Port ( A_out : in STD_LOGIC_VECTOR (6 downto 0);
           New_B : in STD_LOGIC_VECTOR (6 downto 0);
           Res_out_sub : out STD_LOGIC_VECTOR (13 downto 0));
end Sub_14;

architecture Behavioral of Sub_14 is
signal c: std_logic_vector (14 downto 0);
begin

c(0) <= '0';

instance : for i in 0 to 6 generate
      sub1bit : entity work.sub1bit(flot)
      port map (A_out(i),New_B(i),c(i),c(i+1),Res_out_sub(i));  
end generate instance;

Res_out_sub(7) <= c(7);

process (c)
 begin
   if (c(7) = '0') then
     Res_out_sub(8) <= '0';
     Res_out_sub(9) <= '0';
     Res_out_sub(10) <= '0';
     Res_out_sub(11) <= '0';
     Res_out_sub(12) <= '0';
     Res_out_sub(13) <= '0';
   else
     Res_out_sub(8) <= '1';
     Res_out_sub(9) <= '1';
     Res_out_sub(10) <= '1';
     Res_out_sub(11) <= '1';
     Res_out_sub(12) <= '1';
     Res_out_sub(13) <= '1';
   end if;
end process;

end Behavioral;