----------------------------------------------------------------------------------
-- Company: UFRJ
-- Engineer: André Giron
-- 
-- Create Date:    13:36:44 09/26/2023 
-- Design Name: 	Teste
-- Module Name:    somador4 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity somador4 is
    Port(
			A, B, Cin : in  std_logic;
         Cout, S : out  std_logic
			  );
end somador4;

architecture dataflow of somador4 is

begin
	S <= (A xor B) xor Cin;
	Cout <= ((A xor B) and Cin) or (A and B);
	
end dataflow;

