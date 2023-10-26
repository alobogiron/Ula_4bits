----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:09:50 10/25/2023 
-- Design Name: 
-- Module Name:    contador - Behavioral 
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
use IEEE.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity contador is
	generic(t_max : integer := 40000000); -- tempo de espera de 2s
	port(
		clk: in std_logic; -- clock
		reset: in std_logic; -- reset
		q: out unsigned (5 downto 0) := "000000" -- saida
	);
end contador;

architecture Behavioral of contador is
	signal q_var: unsigned (5 downto 0) := "000000"; -- Para fazer o +1

begin

	contador_process : process(clk, reset) -- processo detecção
		variable t : integer range t_max downto 0 := 0; -- variavel que conta cada clock (50ns)
		begin
			if(reset = '1') then
				q_var <= "000000"; --zero o contador
			elsif rising_edge(clk) then
				if (t <= t_max) then
					t := t + 1;-- incremento o temporizador
				else -- se passaram 2 segundos
					q_var <= q_var + 1; -- incremento o contador
					t := 0; -- zero o temporizador
				end if;
			end if;
	end process;
	q <= q_var; -- var saida

end Behavioral;

