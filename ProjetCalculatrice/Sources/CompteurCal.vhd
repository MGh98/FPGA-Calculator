----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.01.2021 23:02:16
-- Design Name: 
-- Module Name: Compteur - Behavioral
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity CompteurCal is
    Port(   Over_99 : in STD_LOGIC;
            Demux_equal : in STD_LOGIC;
            Demux_reset : in STD_LOGIC;
            compt : out STD_LOGIC);
end CompteurCal;

architecture Behavioral of CompteurCal is

begin
process (Over_99,Demux_equal,Demux_reset)
    begin
           if Over_99 = '1' then
                compt <= '0';
           elsif Demux_equal = '1' then
               compt <= '0';
           elsif Demux_reset = '1' then
                compt <= '0';
           else
                compt <= '1';            
        end if;
        
end process;

end Behavioral;