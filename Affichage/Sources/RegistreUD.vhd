----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.01.2021 10:48:13
-- Design Name: 
-- Module Name: RegistreUD - Behavioral
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

entity RegistreUD is
    Port ( Signaltest : in STD_LOGIC;
           Reg_4 : out STD_LOGIC_VECTOR (3 downto 0);
           Out_4: in STD_LOGIC_VECTOR);
end RegistreUD;

architecture Behavioral of RegistreUD is

begin
process(Signaltest)
    begin
        if Signaltest'event and Signaltest = '0' then
        Reg_4 <= Out_4;
        
        end if;
    end process;

end Behavioral;
