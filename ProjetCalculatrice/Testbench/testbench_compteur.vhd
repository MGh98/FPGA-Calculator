----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.01.2021 23:37:22
-- Design Name: 
-- Module Name: testbench_compteur - Behavioral
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

entity testbench_compteurCal is
--  Port ( );
end testbench_compteurCal;

architecture Behavioral of testbench_compteurCal is

component CompteurCal is
    Port(   Over_99 : in STD_LOGIC;
            Demux_equal : in STD_LOGIC;
            Demux_reset : in STD_LOGIC;
            compt : out STD_LOGIC);
end component;

signal Over_99 : STD_LOGIC;
signal Demux_equal : STD_LOGIC;
signal Demux_reset : STD_LOGIC;
signal compt : STD_LOGIC;

begin
test_bench: CompteurCal port map(Over_99,Demux_equal,Demux_reset,compt);

signal_gen:process is
begin
    
    Demux_equal <= '1';
    wait for 100 ns;
    Demux_equal <= '0';
    Over_99 <= '1';
    wait for 100 ns;
    Demux_reset <= '1';
    Over_99 <= '0';
    wait for 100 ns;
    Demux_reset <= '0';
    wait for 100 ns;
    
end process;

end Behavioral;
