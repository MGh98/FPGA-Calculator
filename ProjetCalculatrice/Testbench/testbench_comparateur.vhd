----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.01.2021 17:14:51
-- Design Name: 
-- Module Name: testbench_comparateur - Behavioral
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

entity testbench_comparateur is
--  Port ( );
end testbench_comparateur;

architecture Behavioral of testbench_comparateur is

component Comparateur_res is
    Port(   Res_out14: in STD_LOGIC_VECTOR (13 downto 0);
            Over_99: out STD_LOGIC;
            Res_B: out STD_LOGIC_VECTOR (6 downto 0));
end component;

signal Res: STD_LOGIC_VECTOR (13 downto 0);
signal Over_99: STD_LOGIC;
signal Res_B: STD_LOGIC_VECTOR (6 downto 0);

begin

test_bench: Comparateur_res port map(Res,Over_99,Res_B);

signal_gen:process is
    begin
        Res <= "00000000000011";
        wait for 100 ns;
        Res <= "00000100010011";
        wait for 100 ns;
        Res <= "00000001100011";
        wait for 100 ns;
        Res <= "00000000010011";
        wait for 100 ns;
    

end process;

end Behavioral;
