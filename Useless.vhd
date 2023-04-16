library IEEE;
use IEEE.std_logic_1164.all;

entity Useless is

	port(A : in std_logic;
		  B : in std_logic;
		  Y : out std_logic);
		  
		 end Useless;
		 
		 architecture andlogic of Useless is
		 
begin
		Y <= A and B;
end andlogic;
