----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.01.2021 23:56:54
-- Design Name: 
-- Module Name: testbench_mux2_1 - Behavioral
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

entity testbench_mux2_1 is
--  Port ( );
end testbench_mux2_1;

architecture Behavioral of testbench_mux2_1 is
component Mux_2_1 is
Port ( B_out : in STD_LOGIC_VECTOR (6 downto 0);
       Res_B : in STD_LOGIC_VECTOR (6 downto 0); --résultat précédent
       compt : in STD_LOGIC;
       New_B : out STD_LOGIC_VECTOR (6 downto 0));
end component;

signal B : STD_LOGIC_VECTOR (6 downto 0);
signal Res : STD_LOGIC_VECTOR (6 downto 0);
signal compt : STD_LOGIC;
signal New_B : STD_LOGIC_VECTOR (6 downto 0);

begin

test_bench: Mux_2_1 port map(B,Res,compt,New_B);

signal_gen:process is
begin
    
    B <= "0000011";
    Res <= "0010110";
    
    Compt <= '1';
    wait for 100 ns;
    Compt <= '0';
    wait for 100 ns;
    
    
end process;

end Behavioral;
