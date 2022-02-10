----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.12.2020 15:13:37
-- Design Name: 
-- Module Name: Registre7 - Behavioral
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

entity Registre7 is
    Port ( IN_100 : in STD_LOGIC;
           Out_7 : in STD_LOGIC_VECTOR (6 downto 0);
           Sept_seg : out STD_LOGIC_VECTOR (6 downto 0));
end Registre7;

architecture Behavioral of Registre7 is

begin
    process(IN_100,Out_7)
      begin
        if IN_100='1' and IN_100'EVENT then
          Sept_seg <= Out_7;
        end if;
 end process;

end Behavioral;
