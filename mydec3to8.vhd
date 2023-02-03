---------------------------------------------------------------------------
-- This VHDL file was developed by Daniel Llamocca (2013).  It may be
-- freely copied and/or distributed at no cost.  Any persons using this
-- file for any purpose do so at their own risk, and are responsible for
-- the results of such use.  Daniel Llamocca does not guarantee that
-- this file is complete, correct, or fit for any particular purpose.
-- NO WARRANTY OF ANY KIND IS EXPRESSED OR IMPLIED.  This notice must
-- accompany any copy of this file.
--------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mydec3to8 is
	port ( w: in std_logic_vector (2 downto 0);
	       E: in std_logic;
		   y: out std_logic_vector (7 downto 0));
end mydec3to8;

architecture struct of mydec3to8 is
    
    signal Ew: std_logic_vector (3 downto 0);
    
begin
	Ew <= E&w;
	
	with Ew select
        y <= "00000001" when "1000",
             "00000010" when "1001",
             "00000100" when "1010",
             "00001000" when "1011",
             "00010000" when "1100",
             "00100000" when "1101",
             "01000000" when "1110",
             "10000000" when "1111",
             "00000000" when others;
        
end struct;