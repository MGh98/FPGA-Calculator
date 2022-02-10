----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.01.2021 14:13:27
-- Design Name: 
-- Module Name: testbenchmux_res - Behavioral
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

entity testbenchmux_res is
--  Port ( );
end testbenchmux_res;

architecture Behavioral of testbenchmux_res is
component Mux_res is
Port ( Res_out_add : in STD_LOGIC_VECTOR (13 downto 0);
       Res_out_sub : in STD_LOGIC_VECTOR (13 downto 0);
       Res_out_Mul : in STD_LOGIC_VECTOR (13 downto 0);
       Op : in STD_LOGIC_VECTOR (3 downto 0);
       Res_out14 : out STD_LOGIC_VECTOR (13 downto 0));
end component;

signal Res_add: STD_LOGIC_VECTOR (13 downto 0);
signal Res_sub: STD_LOGIC_VECTOR (13 downto 0);
signal Res_mul: STD_LOGIC_VECTOR (13 downto 0);
signal Op: STD_LOGIC_VECTOR (3 downto 0);
signal Res: STD_LOGIC_VECTOR (13 downto 0);

begin

test_bench: Mux_res port map(Res_add,Res_sub,Res_mul,Op,Res);

signal_gen:process is
      begin        
      Res_add <= "00101111010011";
      Res_sub <= "01111111111111";
      Res_mul <= "01011000101110";
      
      Op <= "1010";
      wait for 100 ns;
      Op <= "1100";
      wait for 100 ns;
      Op <= "1101";
      wait for 100 ns;
      
    end process;

end Behavioral;
