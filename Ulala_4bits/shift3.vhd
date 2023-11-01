----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:39:42 10/21/2023 
-- Design Name: 
-- Module Name:    shift3 - hardware 
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

entity shift3 is
	port(
		x: in std_logic_vector (2 downto 0); -- vetor que armazena bits que serão shiftados
		z: out std_logic_vector (2 downto 0) -- vetor de saída com os 'bits' já shiftados a esquerda
	);
end shift3;

architecture hardware of shift3 is

begin
	z(2) <= '0';
	z(1) <= x(2);
	z(0) <= x(1);
end hardware;

