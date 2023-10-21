----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    05:43:14 10/17/2023 
-- Design Name: 
-- Module Name:    subtrator4 - hardware 
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

entity subtrator3 is
	port(
		x,y: in std_logic_vector (2 downto 0);
      zs : out  std_logic;
		s : out std_logic_vector (2 downto 0)
	);
end subtrator3;

architecture hardware of subtrator3 is

	component complementador
		port(
			--cc: in std_logic; -- carry para complemento a 2
			x : in std_logic_vector (2 downto 0); -- vetor que armazena os bits iniciais
			z : out std_logic_vector (2 downto 0) -- vetor que armazena os bits pós complemento_2
		);
	end component;
	
	component somador3
		port(
			x,y: in std_logic_vector (2 downto 0);
			ze : in  std_logic;
			zs : out  std_logic;
			s : out std_logic_vector (2 downto 0)
		);
	end component;
	
	constant cc : std_logic :='1';
	signal y_i : std_logic_vector (2 downto 0);
	
begin

	op_1 : complementador PORT MAP (y, y_i);
	adder : somador3 PORT MAP (x, y_i, '0', zs, s);
	


end hardware;

