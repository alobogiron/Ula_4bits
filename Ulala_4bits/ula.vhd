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
	selection: in std_logic_vector (2 downto 0);
	Z: out std_logic_vector (2 downto 0);
	flag: out std_logic_vector (3 downto 0) -- array de flags
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
		flag <= "0000";
		case selection is
			when "000" => --soma
				Z <= res_soma; -- pega resultado
				flag(2) <= out_soma; -- flag carry out
				if A(2) = B(2) and A(2) /= out_soma then -- verifica overflow
					flag(3) <= '1';
				else
					flag(3) <= '0';
				end if;
				if res_soma = "000" then -- verifica 0
					flag(0) <= '1';
				end if;
			when "001" => --subtração
				Z <= res_sub;
				flag(2) <= out_sub;
				if A(2) = B(2) and A(2) /= out_sub then
					flag(3) <= '1';
				else
					flag(3) <= '0';
				end if;
				if res_sub = "000" then
					flag(0) <= '1';
				end if;
			when "010" => --complemento a 2
				Z <= res_complem;
				flag(2) <= out_complem;
				if A(2) = B(2) and A(2) /= out_complem then
					flag(3) <= '1';
				else
					flag(3) <= '0';
				end if;
				if res_complem = "000" then
					flag(0) <= '1';
				end if;
				flag(1) <= '1';
			when "011" => --Incremento
				Z <= res_incre;
				flag(2) <= out_incre;
				if A(2) = B(2) and A(2) /= out_incre then
					flag(3) <= '1';
				else
					flag(3) <= '0';
				end if;
				if res_incre = "000" then
					flag(0) <= '1';
				end if;
			when "100" => --Troca de sinal
				Z <= B;
				flag(1) <= '1';
			if B = "000" then
				flag(0) <= '1';
			end if;
			when "101" => --Shif
			Z <= res_shift;
			if res_incre = "000" then
				flag(0) <= '1';
			end if;
			when "110" => -- Dobrar
				Z <= res_dobrar;
				flag(2)  <= out_dobrar;
				if A(2) = B(2) and A(2) /= out_dobrar then
					flag(3) <= '1';
				else
					flag(3) <= '0';
				end if;
				if res_dobrar = "000" then
					flag(0) <= '1';
				end if;
			when "111" => --Comparar
				Z <= res_comparar;
			when others =>
				Z <= "000";
		end case;
		
	end process;
	
end Behavioral;

