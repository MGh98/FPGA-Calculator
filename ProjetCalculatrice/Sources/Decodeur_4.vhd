----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.01.2021 20:31:04
-- Design Name: 
-- Module Name: Decodeur_4 - Behavioral
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
--Ce code est issu de la page 'Double dabble'
--de Wikipédia https://en.wikipedia.org/wiki/Double_dabble
--avec quelques modifications
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Decodeur_4 is
    Port ( Res_out_final : in STD_LOGIC_VECTOR (13 downto 0);
           UA : out STD_LOGIC_VECTOR (3 downto 0);
           DA : out STD_LOGIC_VECTOR (3 downto 0);
           CA : out STD_LOGIC_VECTOR (3 downto 0);
           MA : out STD_LOGIC_VECTOR (3 downto 0));
end Decodeur_4;

architecture Behavioral of Decodeur_4 is

begin

process(Res_out_final)

  variable temp : STD_LOGIC_VECTOR (13 downto 0);
  variable bcd : UNSIGNED (15 downto 0) := (others => '0');
  
  begin
    bcd := (others => '0');
    temp(13 downto 0) := Res_out_final;
    
    for i in 0 to 13 loop
    
      if bcd(3 downto 0) > "0100" then 
        bcd(3 downto 0) := bcd(3 downto 0) + 3;
      end if;
      
      if bcd(7 downto 4) > "0100" then 
        bcd(7 downto 4) := bcd(7 downto 4) + 3;
      end if;
    
      if bcd(11 downto 8) > "0100" then  
        bcd(11 downto 8) := bcd(11 downto 8) + 3;
      end if;
      
      if bcd(15 downto 12) > "0100" then  
        bcd(15 downto 12) := bcd(11 downto 12) + 3;
      end if;
      
      bcd := bcd(14 downto 0) & temp(13);
      temp := temp(12 downto 0) & '0';
    
    end loop;
 
    UA <= STD_LOGIC_VECTOR(bcd(3 downto 0));
    DA <= STD_LOGIC_VECTOR(bcd(7 downto 4));
    CA <= STD_LOGIC_VECTOR(bcd(11 downto 8));
    MA <= STD_LOGIC_VECTOR(bcd(15 downto 12));
  
  end process;            


end Behavioral;
