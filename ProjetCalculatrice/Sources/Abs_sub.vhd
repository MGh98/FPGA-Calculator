----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.01.2021 13:18:13
-- Design Name: 
-- Module Name: Abs_sub - Behavioral
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

entity Abs_sub is
  Port( Res_out_sub : in STD_LOGIC_VECTOR (13 downto 0);
        X_abs : out STD_LOGIC_VECTOR (13 downto 0));
end Abs_sub;

architecture Behavioral of Abs_sub is

begin
X_abs(13) <= (Res_out_sub(13) xor Res_out_sub(13));
X_abs(12) <= (Res_out_sub(13) xor Res_out_sub(12));
X_abs(11) <= (Res_out_sub(13) xor Res_out_sub(11));
X_abs(10) <= (Res_out_sub(13) xor Res_out_sub(10));
X_abs(9) <= (Res_out_sub(13) xor Res_out_sub(9));
X_abs(8) <= (Res_out_sub(13) xor Res_out_sub(8));
X_abs(7) <= (Res_out_sub(13) xor Res_out_sub(7));
X_abs(6) <= (Res_out_sub(13) xor Res_out_sub(6));
X_abs(5) <= (Res_out_sub(13) xor Res_out_sub(5));
X_abs(4) <= (Res_out_sub(13) xor Res_out_sub(4));
X_abs(3) <= (Res_out_sub(13) xor Res_out_sub(3));
X_abs(2) <= (Res_out_sub(13) xor Res_out_sub(2));
X_abs(1) <= (Res_out_sub(13) xor Res_out_sub(1));
X_abs(0) <= (Res_out_sub(13) xor Res_out_sub(0));

--Il y a un chiffre d'écart. À améliorer.

end Behavioral;
