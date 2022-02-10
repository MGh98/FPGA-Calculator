----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.01.2021 10:48:13
-- Design Name: 
-- Module Name: AddCompa - Behavioral
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

entity AddCompa is
    Port ( Out_4 : in STD_LOGIC_VECTOR (3 downto 0);
           Signaltest: in STD_LOGIC;
           Siignal : out STD_LOGIC_VECTOR (1 downto 0));
end AddCompa;

architecture Behavioral of AddCompa is

begin

process(Out_4)
begin
if Out_4 < "1010" then
Siignal <= "01";

elsif Out_4 > "1001" then
Siignal <= "11";

end if;
end process;

end Behavioral;
