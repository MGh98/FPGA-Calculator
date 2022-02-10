----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.12.2020 10:40:19
-- Design Name: 
-- Module Name: Compt_2 - Behavioral
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Compt_2 is
    Port ( IN_100 : in STD_LOGIC;
           Sel : out STD_LOGIC_VECTOR (1 downto 0));
end Compt_2;


architecture Behavioral of Compt_2 is
signal compt: STD_LOGIC_VECTOR(18 downto 0):= (others => '0');

begin
    process(IN_100)
        begin
            if IN_100'event and IN_100 = '1' then          
                if compt = "1100001101010000000" then -- 400 000
                   compt <="0000000000000000000";
                elsif compt = "0000000000000000000" then
                    Sel <= "00";
                    compt <= compt+1;
                elsif compt = "0011000011010100000" then --100000
                    Sel <= "01";
                    compt <= compt+1;
                elsif compt = "0110000110101000000" then -- 200 000
                    Sel <= "10";
                    compt <= compt+1;
                elsif compt = "1001001001111100000" then -- 300 000
                    Sel <= "11";
                    compt <= compt+1;
                else
                    compt <= compt +1;
                end if;
            end if;
       end process;
end Behavioral;
