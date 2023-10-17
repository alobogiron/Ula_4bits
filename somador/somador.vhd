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
			x,y: in std_logic_vector (3 downto 0);
			ze : in  std_logic;
         zs : out  std_logic;
			s : out std_logic_vector (3 downto 0)
			);
end somador4;

architecture hardware of somador4 is

	component somador1
	port(a,b,ve : in std_logic;
		  s, vs	: out std_logic);
	end component;
	
	signal v : std_logic_vector(3 downto 1);

begin
	x0: somador1 PORT MAP(x(0), y(0), ze, s(0), v(1));
	x1: somador1 PORT MAP(x(1), y(1), v(1), s(1), v(2));
	x2: somador1 PORT MAP(x(2), y(2), v(2), s(2), v(3));
	x3: somador1 PORT MAP(x(3), y(3), v(3), s(3), zs);
	
end hardware;

