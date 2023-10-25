----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:54:58 10/21/2023 
-- Design Name: 
-- Module Name:    comparador3 - Behavioral 
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

entity comparador3 is
	port(
		x,y: in std_logic_vector (2 downto 0);-- vetores que armazenam os bits de entrada
		z: out std_logic_vector (2 downto 0)
	);
end comparador3;

architecture Behavioral of comparador3 is --Behavioral pois estou abrindo um processo

begin
	process (x, y)
		begin
			if x > y then
				z <= "001"; --MUX
			elsif x < y then
				z <= "010"; --MUX
			else
				z <= "100"; --MUX
			end if;
		end process;

end Behavioral;

