----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.12.2020 19:33:11
-- Design Name: 
-- Module Name: simMux_2 - Behavioral
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

entity simMux_2 is
--  Port ( );
end simMux_2;

architecture Behavioral of simMux_2 is
signal Sel : STD_LOGIC_VECTOR (1 downto 0);
signal An_out : STD_LOGIC_VECTOR (3 downto 0);

begin
test_bench: entity work.Mux_2
port map (Sel,An_out); 
signal_gen:process is
begin
    
    Sel <= "00"; -- doit donner M
    wait for 1 ms;      
    Sel <= "01";   -- doit donner C       
    wait for 1 ms; 
    Sel <= "10";     -- doit donner D
    wait for 1 ms;
    Sel <= "11"; -- doit donner U
    wait for 1 ms;     
end process;


end Behavioral;
