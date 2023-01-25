library IEEE;
use IEEE.std_logic_1164.all;

entity AjaniLab1 is

	port(A : in std_logic;
		  B : in std_logic;
		  Y : out std_logic);
		  
		 end AjaniLab1;
		 
		 architecture andlogic of AjaniLab1 is
		 
begin
		Y <= A and B;
end andlogic;