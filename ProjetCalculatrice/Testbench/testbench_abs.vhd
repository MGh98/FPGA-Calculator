----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.01.2021 13:40:04
-- Design Name: 
-- Module Name: testbench_abs - Behavioral
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

entity testbench_abs is
--  Port ( );
end testbench_abs;

architecture Behavioral of testbench_abs is

component Abs_sub is
      Port( Res_out_sub : in STD_LOGIC_VECTOR (13 downto 0);
            X_abs : out STD_LOGIC_VECTOR (13 downto 0));
end component;

signal X: STD_LOGIC_VECTOR (13 downto 0);
signal X_abs: STD_LOGIC_VECTOR (13 downto 0);

begin

test_bench: Abs_sub port map(X,X_abs);

signal_gen:process is
      begin        
      X <= "00101111010011";
      wait for 100 ns;
      X <= "01111111111111";
      wait for 100 ns;
      X <= "11010100101010";
      wait for 100 ns;
      X <= "11111111111111";
      wait for 100 ns;
      
    end process;

end Behavioral;