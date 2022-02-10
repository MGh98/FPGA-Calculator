----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.01.2021 21:38:39
-- Design Name: 
-- Module Name: Mult_14 - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

entity Mult_14 is
   port ( A_out, New_B: in std_logic_vector(6 downto 0);
          Res_out_mul: out std_logic_vector(13 downto 0));
end entity Mult_14;

architecture Behavioral of Mult_14 is
begin

   Res_out_mul <= std_logic_vector(unsigned(A_out)*unsigned(New_B));
   
end Behavioral;
