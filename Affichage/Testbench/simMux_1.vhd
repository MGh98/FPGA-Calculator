----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.12.2020 18:48:20
-- Design Name: 
-- Module Name: simMux_1 - Behavioral
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

entity simMux_1 is
--  Port ( );
end simMux_1;

architecture Behavioral of simMux_1 is
signal U : STD_LOGIC_VECTOR (3 downto 0);
signal D : STD_LOGIC_VECTOR (3 downto 0);
signal C : STD_LOGIC_VECTOR (3 downto 0);
signal M : STD_LOGIC_VECTOR (3 downto 0);
signal Sel : STD_LOGIC_VECTOR (1 downto 0);
signal Out_4 : STD_LOGIC_VECTOR (3 downto 0);
begin

test_bench: entity work.Mux_1 
port map (U,D,C,M,Sel,Out_4); 

U <= "1001"; -- 9
D <= "0001"; -- 1
C <= "0101"; --5
M <= "0100"; --4
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
