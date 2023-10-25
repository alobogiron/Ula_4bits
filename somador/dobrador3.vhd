----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:50:03 10/21/2023 
-- Design Name: 
-- Module Name:    dobrador3 - hardware 
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

entity dobrador3 is
	port(
	x: in std_logic_vector (2 downto 0);
	z: out std_logic_vector (2 downto 0);
	zs: out std_logic
	);
end dobrador3;

architecture hardware of dobrador3 is

begin

	z(0) <= '0';
	z(1) <= x(0);
	z(2) <= x(1);
	zs <= x(2);
	
end hardware;

