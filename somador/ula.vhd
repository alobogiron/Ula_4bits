----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:21:45 10/26/2023 
-- Design Name: 
-- Module Name:    ula - Behavioral 
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

entity ula is port(
	A,B: in std_logic_vector (2 downto 0);
	Z: out std_logic_vector (2 downto 0);
	selection: in std_logic_vector (2 downto 0);
	flag: out std_logic_vector (3 downto 0) := "0000" -- array de flags
);

end ula;

architecture Behavioral of ula is

	component somador3
		port(
			x,y: in std_logic_vector (2 downto 0);
			ze : in  std_logic;
			zs : out  std_logic;
			s : out std_logic_vector (2 downto 0)
		);
	end component;
	
	component subtrator3
		port(
			x,y: in std_logic_vector (2 downto 0);
			zs : out  std_logic;
			s : out std_logic_vector (2 downto 0)
		);
	end component;
	
	component incrementador3
	port(
		a: in std_logic_vector (2 downto 0);--Vetor de b
		b: out std_logic_vector (2 downto 0); --Vetor b+1
		cs: out std_logic -- possível carry out
	);
	end component;
	
	component complementador
		port(
			zs: out std_logic;
			x: in std_logic_vector (2 downto 0);
			z: out std_logic_vector (2 downto 0)
		);
	end component;
	
	component shift3
		port(
			x: in std_logic_vector (2 downto 0); -- vetor que armazena bits que serão shiftados
			z: out std_logic_vector (2 downto 0) -- vetor de saída com os 'bits' já shiftados a esquerda
		);
	end component;
	
	component dobrador3
		port(
			x: in std_logic_vector (2 downto 0);
			z: out std_logic_vector (2 downto 0);
			zs: out std_logic
		);
	end component;
	
	component comparador3
		port(
			x,y: in std_logic_vector (2 downto 0);-- vetores que armazenam os bits de entrada
			z: out std_logic_vector (2 downto 0) --saidas
		);
	end component;
	
	signal res_soma, res_sub, res_incre, res_complem, res_shift, res_dobrar, res_comparar: std_logic_vector (2 downto 0);
	signal out_soma, out_sub, out_incre, out_complem, out_dobrar: std_logic;

begin
	soma : somador3 PORT MAP (A, B, '0', out_soma, res_soma);
	subtrai: subtrator3 PORT MAP (A, B, out_sub, res_sub);
	incrementa: incrementador3 PORT MAP (B, res_incre, out_incre);
	complementa: complementador PORT MAP (out_complem, B, res_complem);
	shifta: shift3 PORT MAP (B, res_shift);
	dobra: dobrador3 PORT MAP (B, res_dobrar, out_dobrar);
	compara: comparador3 PORT MAP (A, B, res_comparar);
	
	process(A,B,selection) is
	begin
		case selection is
			when "000" => --soma
				Z <= res_soma;
				flag(2) <= out_soma;
				if A(2) = B(2) and A(2) /= out_soma then
					flag(3) <= '1';
				else
					flag(3) <= '0';
				end if;
				if res_soma(2) = '0' then
					flag(0) <= '1';
				end if;
			when others =>
				Z <= "000";
		end case;
	end process;
	
end Behavioral;

