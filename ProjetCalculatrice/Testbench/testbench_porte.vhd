----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.01.2021 18:24:29
-- Design Name: 
-- Module Name: testbench_porte - Behavioral
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

entity testbench_porte is
--  Port ( );
end testbench_porte;

architecture Behavioral of testbench_porte is

component Porte_3_etats is
Port ( Res_in : in STD_LOGIC_VECTOR (13 downto 0);
       Demux_equal : in STD_LOGIC;
       Res_out : out STD_LOGIC_VECTOR (13 downto 0));
end component;

signal Res_in : STD_LOGIC_VECTOR (13 downto 0);
signal Demux_equal : STD_LOGIC;
signal Res_out : STD_LOGIC_VECTOR (13 downto 0);

begin

test_bench: Porte_3_etats port map(Res_in,Demux_equal,Res_out);

signal_gen:process is
begin

    Res_in <= "00000000000011";

    wait for 100 ns;
    Demux_equal <= '1';
    wait for 100 ns;
    Demux_equal <= '0';
    Res_in <= "01010100011011";
    wait for 100 ns;
    
end process;

end Behavioral;
