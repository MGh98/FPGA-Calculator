----------------------------------------------------------------------------------
-- Company: Polytech Sorbonne - EISE3 
-- Engineer: Maï Ghalioun
-- 
-- Create Date: 03.01.2021 21:39:52
-- Design Name: Calculatrice
-- Module Name: Calculatrice - Behavioral
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

entity Calculatrice is
    Port ( Row : in STD_LOGIC_VECTOR (3 downto 0);
           Col : out STD_LOGIC_VECTOR (3 downto 0);
           Clk : in STD_LOGIC;
           Sept_seg : out STD_LOGIC_VECTOR (6 downto 0);
           Anodex : out STD_LOGIC_VECTOR (3 downto 0));
end Calculatrice;

architecture Behavioral of Calculatrice is
Signal Out_4: STD_LOGIC_VECTOR (3 downto 0);
Signal Sel_1: STD_LOGIC;
Signal Siignal: STD_LOGIC_VECTOR (1 downto 0);
Signal op: STD_LOGIC_VECTOR (3 downto 0);
Signal chiffre: STD_LOGIC_VECTOR (3 downto 0);
Signal U: STD_LOGIC_VECTOR (3 downto 0);
Signal D: STD_LOGIC_VECTOR (3 downto 0);
Signal C: STD_LOGIC_VECTOR (3 downto 0);
Signal M: STD_LOGIC_VECTOR (3 downto 0);
Signal A: STD_LOGIC_VECTOR (6 downto 0);
Signal B: STD_LOGIC_VECTOR (6 downto 0);
Signal UA: STD_LOGIC_VECTOR (3 downto 0);
Signal DA: STD_LOGIC_VECTOR (3 downto 0);
Signal CA: STD_LOGIC_VECTOR (3 downto 0);
Signal MA: STD_LOGIC_VECTOR (3 downto 0);
Signal UF: STD_LOGIC_VECTOR (3 downto 0);
Signal DF: STD_LOGIC_VECTOR (3 downto 0);
Signal CF: STD_LOGIC_VECTOR (3 downto 0);
Signal MF: STD_LOGIC_VECTOR (3 downto 0);
Signal sel: STD_LOGIC_VECTOR (1 downto 0);
Signal Sel_out: STD_LOGIC_VECTOR (3 downto 0);
Signal Out_7: STD_LOGIC_VECTOR (6 downto 0);
Signal An_out: STD_LOGIC_VECTOR (3 downto 0);
Signal Septsignal: STD_LOGIC_VECTOR (6 downto 0);
Signal UDCM: STD_LOGIC_VECTOR (3 downto 0);
signal A_out : STD_LOGIC_VECTOR (6 downto 0); --ok
signal B_out : STD_LOGIC_VECTOR (6 downto 0); --ok
signal Demux_equal : STD_LOGIC; --ok
signal Demux_reset : STD_LOGIC; --ok
signal Res_out14 : STD_LOGIC_VECTOR (13 downto 0); --ok
signal Res_out_add : STD_LOGIC_VECTOR (13 downto 0); --ok
signal Res_out_sub : STD_LOGIC_VECTOR (13 downto 0); --ok
signal Res_out_mul : STD_LOGIC_VECTOR (13 downto 0); --ok
signal Over_99_out : STD_LOGIC; --ok
signal compt : STD_LOGIC; --ok
signal X_abs : STD_LOGIC_VECTOR (13 downto 0); --ok
signal Res_out_final : STD_LOGIC_VECTOR (13 downto 0);--ok
signal Res_B: STD_LOGIC_VECTOR (6 downto 0);--ok
signal New_B : STD_LOGIC_VECTOR (6 downto 0); --ok
Signal sortie: STD_LOGIC;
Signal D_out: STD_LOGIC_VECTOR (3 downto 0);
Signal Signaltest: STD_LOGIC;




component Codeur port (
        clk : in  STD_LOGIC;
        Row : in  STD_LOGIC_VECTOR (3 downto 0);
	    Col : out  STD_LOGIC_VECTOR (3 downto 0);
        Out_4 : out  STD_LOGIC_VECTOR (3 downto 0);
        Signaltest: out STD_LOGIC);
end component;

component Comparateur port (
        Out_4 : in STD_LOGIC_VECTOR (3 downto 0);
        Sel_1 : out STD_LOGIC);
end component;

component Compteur port (
        Signaltest : in STD_LOGIC;
        Siignal : out STD_LOGIC_VECTOR (1 downto 0);
        clk: in STD_LOGIC);
end component;

component Demux_1_2 port (
           Out_4 : in STD_LOGIC_VECTOR (3 downto 0);
           Sel_1 : in STD_LOGIC;
           op : out STD_LOGIC_VECTOR (3 downto 0);
           chiffre : out STD_LOGIC_VECTOR (3 downto 0));
end component;

component Demux_1_5 port (
           chiffre : in STD_LOGIC_VECTOR (3 downto 0);
           Siignal : in STD_LOGIC_VECTOR (1 downto 0);
           U : out STD_LOGIC_VECTOR (3 downto 0);
           D : out STD_LOGIC_VECTOR (3 downto 0);
           C : out STD_LOGIC_VECTOR (3 downto 0);
           M : out STD_LOGIC_VECTOR (3 downto 0));
end component;

component Reg_7bits port (
          clk : in STD_LOGIC;
          Siignal: in STD_LOGIC_VECTOR (1 downto 0);
          A : in STD_LOGIC_VECTOR (6 downto 0);
          B : out STD_LOGIC_VECTOR (6 downto 0));
end component;

component ComparateurAff port (
          op : in STD_LOGIC_VECTOR(3 downto 0);
          sortie : out STD_LOGIC);
end component;

component Mux_1 port(
           UA : in STD_LOGIC_VECTOR (3 downto 0);
           U : in STD_LOGIC_VECTOR (3 downto 0);
           U4 : out STD_LOGIC_VECTOR (3 downto 0);
           exiit : in STD_LOGIC);
end component;

component Mux_2 port(
           DA : in STD_LOGIC_VECTOR (3 downto 0);
           D : in STD_LOGIC_VECTOR (3 downto 0);
           D4 : out STD_LOGIC_VECTOR (3 downto 0);
           exiit : in STD_LOGIC);
end component;

component Mux_3 port(
           CA : in STD_LOGIC_VECTOR (3 downto 0);
           C : in STD_LOGIC_VECTOR (3 downto 0);
           C4 : out STD_LOGIC_VECTOR (3 downto 0);
           exiit : in STD_LOGIC);
end component;

component Mux_4 port(
           MA : in STD_LOGIC_VECTOR (3 downto 0);
           M : in STD_LOGIC_VECTOR (3 downto 0);
           M4 : out STD_LOGIC_VECTOR (3 downto 0);
           exiit : in STD_LOGIC);
end component;

component Mux_6 port(
           U4 : in STD_LOGIC_VECTOR (3 downto 0);
           D4 : in STD_LOGIC_VECTOR (3 downto 0);
           C4 : in STD_LOGIC_VECTOR (3 downto 0);
           M4 : in STD_LOGIC_VECTOR (3 downto 0);
           sel : in STD_LOGIC_VECTOR (1 downto 0);
           Out_4 : out STD_LOGIC_VECTOR (3 downto 0));
end component;

component Decod_7_seg port(
           Out_4 : in STD_LOGIC_VECTOR (3 downto 0);
           Out_7 : out STD_LOGIC_VECTOR (6 downto 0));
end component;

component Mux_5 port(
           sel : STD_LOGIC_VECTOR (1 downto 0);
           An_out : out STD_LOGIC_VECTOR (3 downto 0));
end component;

component Reg4 port(
           An_out : in STD_LOGIC_VECTOR (3 downto 0);
           clk : in STD_LOGIC;
           Anodex : out STD_LOGIC_VECTOR (3 downto 0));
end component;

component Reg7 port (
           Out_7 : in STD_LOGIC_VECTOR (6 downto 0);
           clk : in STD_LOGIC;
           Sept_seg : out STD_LOGIC_VECTOR (6 downto 0));
end component;

component Compt_2 port(
           IN_100 : in STD_LOGIC;
           Sel : out STD_LOGIC_VECTOR (1 downto 0));
end component;

component CodeurDCBtobin port(
           U : in STD_LOGIC_VECTOR (3 downto 0);
           D : in STD_LOGIC_VECTOR (3 downto 0);
           A : out STD_LOGIC_VECTOR (6 downto 0));
end component;

component Registre port(
           Signal0 : in STD_LOGIC;
           U : in STD_LOGIC_VECTOR (3 downto 0);
           U_out : out STD_LOGIC_VECTOR (3 downto 0));
end component;

component Reg7_A is --ok
Port ( clk : in STD_LOGIC;
       A : in STD_LOGIC_VECTOR (6 downto 0);
       A_out : out STD_LOGIC_VECTOR (6 downto 0));
end component;

------------------------------------------------------------------------

component Reg7_B is --ok
Port ( clk : in STD_LOGIC;
       B : in STD_LOGIC_VECTOR (6 downto 0);
       B_out : out STD_LOGIC_VECTOR (6 downto 0));
end component;

------------------------------------------------------------------------
       
component Mux_2_1 is --ok
Port( B_out : in STD_LOGIC_VECTOR (6 downto 0);
      Res_B : in STD_LOGIC_VECTOR (6 downto 0);
      compt : in STD_LOGIC;
      New_B : out STD_LOGIC_VECTOR (6 downto 0));
end component;
      
------------------------------------------------------------------------      

component Comparateur_equal is --ok
Port ( Op : in STD_LOGIC_VECTOR (3 downto 0);
       Demux_equal : out STD_LOGIC;
       Demux_reset : out STD_LOGIC);
end component;

------------------------------------------------------------------------ 
       
component Add_14 is --ok
Port ( A_out : in STD_LOGIC_VECTOR (6 downto 0);
       New_B : in STD_LOGIC_VECTOR (6 downto 0);
       Res_out_add : out STD_LOGIC_VECTOR (13 downto 0));
end component;

------------------------------------------------------------------------ 

component Sub_14 is --ok
Port ( A_out : in STD_LOGIC_VECTOR (6 downto 0);
       New_B : in STD_LOGIC_VECTOR (6 downto 0);
       Res_out_sub : out STD_LOGIC_VECTOR (13 downto 0));
end component;

------------------------------------------------------------------------ 

component Mult_14 is --ok
Port ( A_out , New_B : in std_logic_vector(6 downto 0);
       Res_out_mul: out std_logic_vector(13 downto 0));
end component;

------------------------------------------------------------------------ 

component Abs_sub is --ok
      Port( Res_out_sub : in STD_LOGIC_VECTOR (13 downto 0);
            X_abs : out STD_LOGIC_VECTOR (13 downto 0));
end component;

------------------------------------------------------------------------ 

component Mux_res is --ok
      Port( Res_out_add : in STD_LOGIC_VECTOR (13 downto 0);
            Res_out_sub : in STD_LOGIC_VECTOR (13 downto 0);
            Res_out_Mul : in STD_LOGIC_VECTOR (13 downto 0);
            Op : in STD_LOGIC_VECTOR (3 downto 0);
            Res_out14 : out STD_LOGIC_VECTOR (13 downto 0));
end component;

------------------------------------------------------------------------ 

component Porte_3_etats is --ok
Port ( Res_out14 : in STD_LOGIC_VECTOR (13 downto 0);
       Demux_equal : in STD_LOGIC;
       Demux_reset : in STD_LOGIC;
       Res_out_final : out STD_LOGIC_VECTOR (13 downto 0));
end component;

------------------------------------------------------------------------ 

component Decodeur_4 is --ok
    Port ( Res_out_final : in STD_LOGIC_VECTOR (13 downto 0);
           UA : out STD_LOGIC_VECTOR (3 downto 0);
           DA : out STD_LOGIC_VECTOR (3 downto 0);
           CA : out STD_LOGIC_VECTOR (3 downto 0);
           MA : out STD_LOGIC_VECTOR (3 downto 0));
end component;

------------------------------------------------------------------------ 

component Comparateur_res is
    Port(   Res_out14: in STD_LOGIC_VECTOR (13 downto 0);
            Over_99: out STD_LOGIC;
            Res_B: out STD_LOGIC_VECTOR (6 downto 0));
end component;

------------------------------------------------------------------------ 

component CompteurCal is
    Port(   Over_99 : in STD_LOGIC;
            Demux_equal : in STD_LOGIC;
            Demux_reset : in STD_LOGIC;
            compt : out STD_LOGIC);
end component;

begin
-- Sélection 
C0: Codeur port map (clk => Clk,Row => Row,Col => Col, Out_4 => Out_4,Signaltest => Signaltest);
C1: Comparateur port map (Out_4 => Out_4, Sel_1 => Sel_1);
C2: Compteur port map (Signaltest => Signaltest, Siignal => Siignal,clk => Clk);
C3: Demux_1_2 port map (Out_4 => Out_4, Sel_1 => Sel_1, op => op, chiffre => chiffre);
C4: Demux_1_5 port map (chiffre => chiffre, Siignal => Siignal, U => U, D => D, C => C, M => M);
C6: Reg_7bits port map (clk => Clk, Siignal => Siignal, A => A, B => B);
C5: CodeurDCBtobin port map (U => U, D => D_out, A => A);
C18: Registre port map(Signal0 => Siignal(1),U=> U, U_out => D_out);

C7: ComparateurAff port map(op => op, sortie => sortie); -- Affichage
C8: Mux_1 port map(UA => UA, U => U, U4 => UF, exiit => sortie);
C9: Mux_2 port map(DA => DA, D => D, D4 => DF, exiit => sortie);
C10: Mux_3 port map(CA => CA, C => C, C4 => CF, exiit => sortie);
C11: Mux_4 port map(MA => MA, M => M, M4 => MF, exiit => sortie);
C12: Mux_6 port map(U4 => UF, D4 => DF, C4 => CF, M4 => MF, sel => sel, Out_4 => Sel_out);
C13: Decod_7_seg port map(Out_4 => Sel_out, Out_7 => Out_7);
C14: Mux_5 port map(sel => sel, An_out => An_out);
C15: Reg4 port map(An_out => An_out, clk => Clk, Anodex => Anodex);
C16: Reg7 port map(Out_7 => Out_7,clk => Clk,Sept_seg => Sept_seg );
C17: Compt_2 port map(IN_100 => Clk, Sel => sel);

C19: Reg7_A port map (clk, A, A_out); --ok
C20: Reg7_B port map (clk, B, B_out); --ok
C21: Mux_2_1 port map (B_out, Res_B, compt, New_B); --ok
C22: Comparateur_equal port map (op,Demux_equal,Demux_reset); --ok
C23: Add_14 port map (A_out, New_B, Res_out_add); --ok
C24: Sub_14 port map (A_out, New_B, Res_out_sub); --ok
C25: Mult_14 port map (A_out, New_B, Res_out_mul); --ok
C26: Abs_sub port map (Res_out_sub, X_abs); --ok
C27: Mux_res port map (Res_out_add, X_abs, Res_out_Mul, Op, Res_out14); --ok
C28: Porte_3_etats port map (Res_out14,Demux_equal,Demux_reset,Res_out_final); --ok-
C29: Decodeur_4 port map (Res_out_final, CA, MA , UA , DA); --ok
C30: Comparateur_res port map (Res_out14, Over_99_out, Res_B);
C31: CompteurCal port map (Over_99_out, Demux_equal,Demux_reset, compt);
end Behavioral;
