----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.01.2021 16:40:18
-- Design Name: 
-- Module Name: Demux_1_2testbench - Behavioral
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

entity Demux_1_2testbench is
--  Port ( );
end Demux_1_2testbench;

architecture Behavioral of Demux_1_2testbench is
Signal Out_4 : STD_LOGIC_VECTOR (3 downto 0);
Signal Sel_1 : STD_LOGIC;
Signal op : STD_LOGIC_VECTOR (3 downto 0);
Signal chiffre : STD_LOGIC_VECTOR (3 downto 0);

begin
test_bench: entity work.Demux_1_2
port map (Out_4, Sel_1, op, chiffre); 



signal_gen:process is
begin
    Out_4 <= "1111";
    Sel_1 <= '0';      
    wait for 1 ms;       
    Sel_1 <= '1';         
    wait for 1 ms;
    Out_4 <= "0101";
    Sel_1 <= '0';
    wait for 1 ms;
         
end process;

end Behavioral;
