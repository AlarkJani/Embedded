library IEEE;													-- Arithmetic Library
use IEEE.STD_LOGIC_1164.all;								-- Logic library

entity Shift_Register is										-- entity declaration
port(Sw:in std_logic_vector (7 downto 0);          -- input switches[8]
	  LEDR:Out Std_logic_vector (3 downto 0); 		-- output LEDs[4]
	  CLK:in std_logic);										-- input Clock Signal
end Shift_Register;

architecture RTL of Shift_Register  is					-- Architecture
	signal R: Std_logic_vector (6 downto 3);			-- Assignation of Register
	signal s: Std_logic_vector (1 downto 0);			-- for function selector
	
begin
	S <= SW(1 downto 0);										-- [2] Switches for selection Lines
	LEDR <= R;													
process (CLK) is
  begin
     if(CLK ='0') then										-- usage of if and case statement
       case S is
			when "00" => NULL;								-- 00 for NULL
			when "01" => R <= (R(5 downto 3) & SW(2));-- 01 for Left Shift
			when "10" => R <= (SW(7) & R(6 downto 4));-- 10 for Right Shift
			when "11" => R <= SW(6 downto 3);			-- 11 for LOAD
			when others=> NULL;								-- Default if other inputs
			end case;
		end if;
	end process;
end RTL;
