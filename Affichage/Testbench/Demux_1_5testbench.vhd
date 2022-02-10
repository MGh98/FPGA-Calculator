----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.01.2021 21:52:14
-- Design Name: 
-- Module Name: Demux_1_5testbench - Behavioral
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

entity Demux_1_5testbench is
--  Port ( );
end Demux_1_5testbench;

architecture Behavioral of Demux_1_5testbench is
Signal chiffre : STD_LOGIC_VECTOR (3 downto 0);
Signal Siignal : STD_LOGIC_VECTOR (1 downto 0);
Signal U : STD_LOGIC_VECTOR (3 downto 0);
Signal D : STD_LOGIC_VECTOR (3 downto 0);
Signal C : STD_LOGIC_VECTOR (3 downto 0);
Signal M : STD_LOGIC_VECTOR (3 downto 0);
begin
test_bench: entity work.Demux_1_5
port map (chiffre, Siignal, U, D, C, M); 



signal_gen:process is
begin
    chiffre <= "0011";
    Siignal <= "01";      
    wait for 1 ms;       
    Siignal <= "11";         
    wait for 1 ms;
    chiffre <= "0101";
    Siignal <= "01";
    wait for 1 ms;
end process;


end Behavioral;
