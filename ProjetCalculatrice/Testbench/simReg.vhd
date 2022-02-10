----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.12.2020 15:20:04
-- Design Name: 
-- Module Name: simReg - Behavioral
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

entity simReg is
--  Port ( );
end simReg;

architecture Behavioral of simReg is
signal An_out : STD_LOGIC_VECTOR (3 downto 0);
signal IN_100 : STD_LOGIC;
signal Anodex :  STD_LOGIC_VECTOR (3 downto 0);
Constant Clockperiod: time := 10ns;

begin
test_bench: entity work.Reg4
port map (An_out,IN_100,Anodex); 


clock:process is
begin  
    IN_100 <= '1';
    wait for Clockperiod/2;       
    IN_100 <= '0';       
    wait for Clockperiod/2;
end process;

sortie:process is
begin
    An_out<="1111";
    wait for 15ns;
    An_out<="0101";
    wait for 15ns;
end process;
end Behavioral;
