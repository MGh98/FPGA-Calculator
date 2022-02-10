----------------------------------------------------------------------------------
-- Company: Digilent Inc 2011
-- Engineer: Michelle Yu  
-- Create Date:      17:18:24 08/23/2011 
--
-- Module Name:    Decoder - Behavioral 
-- Project Name:  PmodKYPD
-- Target Devices: Nexys3
-- Tool versions: Xilinx ISE 13.2
-- Description: 
--	This file defines a component Decoder for the demo project PmodKYPD. 
-- The Decoder scans each column by asserting a low to the pin corresponding to the column 
-- at 1KHz. After a column is asserted low, each row pin is checked. 
-- When a row pin is detected to be low, the key that was pressed could be determined.
--
-- Revision: 
-- Revision 0.01 - File Created
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Codeur is
    Port (
			  clk : in  STD_LOGIC;
          Row : in  STD_LOGIC_VECTOR (3 downto 0);
			 Col : out  STD_LOGIC_VECTOR (3 downto 0);
          Out_4 : out  STD_LOGIC_VECTOR (3 downto 0);
          Signaltest: out STD_LOGIC);
          
end Codeur;

architecture Behavioral of Codeur is

signal sclk :STD_LOGIC_VECTOR(19 downto 0) := (others => '0');
begin
	process(clk)
		begin 
		if clk'event and clk = '1' then
			-- 1ms
			if sclk = "00011000011010100000" then 
				--C1
				Col<= "0111";
				sclk <= sclk+1;
			-- check row pins
			elsif sclk = "00011000011010101000" then	
				--R1
				if Row = "0111" then
					Out_4 <= "0001";	--1
					Signaltest <= '1';
				--R2
				elsif Row = "1011" then
					Out_4 <= "0100"; --4
					Signaltest <= '1';
				--R3
				elsif Row = "1101" then
					Out_4 <= "0111"; --7
					Signaltest <= '1';
				--R4
				elsif Row = "1110" then
					Out_4 <= "0000"; --0
					Signaltest <= '1';
				end if;
				sclk <= sclk+1;
			-- 2ms
			elsif sclk = "00110000110101000000" then	
				--C2
				Col<= "1011";
				sclk <= sclk+1;
			-- check row pins
			elsif sclk = "00110000110101001000" then	
				--R1
				if Row = "0111" then		
					Out_4 <= "0010"; --2
					Signaltest <= '1';
				--R2
				elsif Row = "1011" then
					Out_4 <= "0101"; --5
					Signaltest <= '1';
				--R3
				elsif Row = "1101" then
					Out_4 <= "1000"; --8
					Signaltest <= '1';
				--R4
				elsif Row = "1110" then
					Out_4 <= "1111"; --F
					Signaltest <= '0';
				end if;
				sclk <= sclk+1;	
			--3ms
			elsif sclk = "01001001001111100000" then 
				--C3
				Col<= "1101";
				sclk <= sclk+1;
			-- check row pins
			elsif sclk = "01001001001111101000" then 
				--R1
				if Row = "0111" then
					Out_4 <= "0011"; --3
					Signaltest <= '1';	
				--R2
				elsif Row = "1011" then
					Out_4 <= "0110"; --6
					Signaltest <= '1';
				--R3
				elsif Row = "1101" then
					Out_4 <= "1001"; --9
					Signaltest <= '1';
				--R4
				elsif Row = "1110" then
				    Out_4 <= "1110"; --E reset
				    Signaltest <= '0';
				end if;
				sclk <= sclk+1;
			--4ms
			elsif sclk = "01100001101010000000" then 			
				--C4
				Col<= "1110";
				
				sclk <= sclk+1;
			-- check row pins
			elsif sclk = "01100001101010001000" then 
				--R1
				if Row = "0111" then
					Out_4 <= "1010"; -- +
					Signaltest <= '0';
				--R2
				elsif Row = "1011" then
					Out_4 <= "1011"; -- =
					Signaltest <= '0';
				--R3
				elsif Row = "1101" then
					Out_4 <= "1100"; -- -
					Signaltest <= '0'; 
				--R4
				elsif Row = "1110" then
					Out_4 <= "1101"; -- *
					Signaltest <= '0';
				end if;
				sclk <= "00000000000000000000";	
			else
				sclk <= sclk+1;	
			end if;
		end if;
	end process;
		
		
						 
end Behavioral;
