----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:42:38 10/26/2023 
-- Design Name: 
-- Module Name:    main - hardware 
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

entity main is --entidade que junta tudo para funcionar na placa
	port(
		op: in std_logic_vector (2 downto 0); --teste
		clk: in std_logic; -- teste denvo
		reset: in std_logic;
		Q: out std_logic_vector (2 downto 0);
		flag: out std_logic_vector (3 downto 0)
	);
	
end main;

architecture hardware of main is
		component ula
		port(
			A,B: in std_logic_vector (2 downto 0);
			selection: in std_logic_vector (2 downto 0);
			Z: out std_logic_vector (2 downto 0);
			flag: out std_logic_vector (3 downto 0) := "0000" -- array de flags
		);
	end component;
	
	component contador
		port(
			clk: in std_logic; -- clock
			reset: in std_logic; -- reset
			q: out unsigned (5 downto 0) := "000000" -- saida
		);
	end component;

	signal A,B: std_logic_vector (2 downto 0);
	signal AB: unsigned (5 downto 0);
	
begin
	ulala: ula PORT MAP (A, B, op, Q, flag);
	conta: contador PORT MAP(clk, reset, AB);
	
	A <= std_logic_vector(AB(2 downto 0));
	B <= std_logic_vector(AB(5 downto 3));
	

end hardware;

