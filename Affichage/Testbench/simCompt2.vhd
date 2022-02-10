----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.12.2020 14:04:48
-- Design Name: 
-- Module Name: simCompt2 - Behavioral
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

entity simCompt2 is
--  Port ( );
end simCompt2;

architecture Behavioral of simCompt2 is
Signal IN_100: std_logic;
Signal Sel: std_logic_vector (1 downto 0);
Constant Clk_Period: time := 10ns;

begin
test_bench: entity work.Compt_2
port map (IN_100, Sel); 
clock:process is
begin  
    IN_100 <= '1';
    wait for CLk_Period/2;       
    IN_100 <= '0';       
    wait for Clk_Period/2;
end process;

end Behavioral;
