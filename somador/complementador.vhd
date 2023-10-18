----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    07:34:14 10/17/2023 
-- Design Name: 
-- Module Name:    complementador - Behavioral 
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

entity complementador is
	Port(
		zs: out std_logic;
		x: in std_logic_vector (3 downto 0);
		z: out std_logic_vector (3 downto 0)
	);
end complementador;

architecture hardware of complementador is

	component somador4
		port(
			x,y: in std_logic_vector (3 downto 0);
			ze : in  std_logic;
			zs : out  std_logic;
			s : out std_logic_vector (3 downto 0)
		);
	end component;

	signal z_i : std_logic_vector (3 downto 0);
	constant cc : std_logic :='1';

begin

	looop:
	for i in 0 to 3 generate
		z_i(i) <= x(i) XOR cc;
	end generate looop;
	adder : somador4 PORT MAP (z_i, "0000", '1', zs, z); 

end hardware;

