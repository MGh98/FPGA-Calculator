----------------------------------------------------------------------------------
-- Company: EISE3 POLYTECH SORBONNE
-- Engineer: TENDERO EMELINE
-- 
-- Create Date: 02.12.2021 18:27:04
-- Design Name: Decod_7_seg.vhd
-- Module Name: Decod_7_seg - Behavioral
-- Project Name: Calculatrice
-- Target Devices: 
-- Tool Versions: 2014
-- Description: 
-- Dependencies: 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
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

entity Decod_7_seg is
    Port ( Out_4aff : in STD_LOGIC_VECTOR (3 downto 0);
           Out_7 : out STD_LOGIC_VECTOR (6 downto 0));
end Decod_7_seg;
architecture Behavioral of Decod_7_seg is
begin
With Out_4aff select
     Out_7 <= "1000000" when "0000", --0
          "1001111" when "0001", --1 v
          "0100100" when "0010", --2 v
          "0110000" when "0011", --3 v
          "0011001" when "0100", --4 v
          "0010010" when "0101", --5 v
          "0000010" when "0110", --6 v
          "1111000" when "0111", --7 v
          "0000000" when "1000", --8 v
          "0010000" when "1001", --9 v
          "0001000" when "1010", --A v
          "0000011" when "1011", --B v
          "1000110" when "1100", --C v
          "0100001" when "1101", --D v
          "0000110" when "1110", --E v
          "0001110" when "1111", --F
          "1111111" when others;
end Behavioral;
