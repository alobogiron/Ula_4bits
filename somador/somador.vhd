----------------------------------------------------------------------------------
-- Company: UFRJ
-- Engineer: André Giron
-- 
-- Create Date:    13:36:44 09/26/2023 
-- Module Name:    somador4 - hardware
-- Project Name: ULA_4BITS_8OPS
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
			x,y: in std_logic_vector (3 downto 0);-- vetores para os operandos
			ze : in  std_logic; -- carry in inicial c(0)
         zs : out  std_logic; -- carry out final (overflow)
			s : out std_logic_vector (3 downto 0) -- valor da soma
			);
end somador4;

architecture hardware of somador4 is

	component somador1 -- Declara o componente para ser usado
	port(a,b,ve : in std_logic; -- operandos do somador1
		  s, vs	: out std_logic); -- soma e overflow do somador1
	end component;
	
	signal v : std_logic_vector(3 downto 1); --sinal para representar os 'vai um'

begin

	x0: somador1 PORT MAP(x(0), y(0), ze, s(0), v(1)); -- soma x(0) com y(0) e c(0) e preenche s(0) com a soma e v(1) com o 'vai um' caso seja necessário
	x1: somador1 PORT MAP(x(1), y(1), v(1), s(1), v(2)); --soma x(1) com y(1) e v(1) e preenche s(1) com a soma e v(2) com o 'vai um' caso seja necessário
	x2: somador1 PORT MAP(x(2), y(2), v(2), s(2), v(3)); --soma x(2) com y(2) e v(2) e preenche s(2) com a soma e v(3) com o 'vai um' caso seja necessário
	x3: somador1 PORT MAP(x(3), y(3), v(3), s(3), zs); --soma x(3) com y(3) e v(3) e preenche s(3) com a soma e zs com o 'vai um' caso seja necessário (overflow)
	
end hardware;

