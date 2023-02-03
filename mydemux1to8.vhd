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

entity mydemux1to8 is
	port ( s: in std_logic_vector (2 downto 0);
	       x: in std_logic;
		   y: out std_logic_vector (7 downto 0));
end mydemux1to8;

architecture struct of mydemux1to8 is

begin

	with s select
		y <= "0000000"&x    when "000",
		     "000000"&x&"0" when "001",
		     "00000"&x&"00" when "010",
		     "0000"&x&"000" when "011",
			 "000"&x&"0000" when "100",
			 "00"&x&"00000" when "101",
			 "0"&x&"000000" when "110",
			 x&"0000000"    when others;	
end struct;

