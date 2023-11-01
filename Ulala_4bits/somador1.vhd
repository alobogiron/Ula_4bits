----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:23:54 10/16/2023 
-- Design Name: 
-- Module Name:    somador1 - hardware 
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

entity somador1 is
port(
	a, b, ve: in std_logic;
	s, vs: out std_logic
);
end somador1;

architecture hardware of somador1 is
begin

s <= a XOR b XOR ve;
vs <= (a AND b) or (a AND ve) OR (b AND ve);

end hardware;

