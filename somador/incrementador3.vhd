----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:13:34 10/20/2023 
-- Design Name: 
-- Module Name:    incrementador3 - Behavioral 
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

--(B+1) Operation

entity incrementador3 is
	port(
		a: in std_logic_vector (2 downto 0);--Vetor de b
		b: out std_logic_vector (2 downto 0); --Vetor b+1
		cs: out std_logic -- possível carry out
	);
end incrementador3;

architecture hardware of incrementador3 is
	
	component somador3 --Declarando componente somador4
	port(
		x,y: in std_logic_vector (2 downto 0);
		ze : in std_logic;
		zs : out std_logic;
		s : out std_logic_vector (2 downto 0)
	);
	end component;
	
begin
	adder: somador3 PORT MAP (a, "000", '1', cs, b);

end hardware;

