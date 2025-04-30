----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:44:21 01/04/2009 
-- Design Name: 
-- Module Name:    ra - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ra is
generic (n:integer);     -- n параметр, задает разрядность операндов
    Port ( a : in  STD_LOGIC_VECTOR (n-1 downto 0);-- первый операнд 
           d : out  STD_LOGIC_VECTOR (n-1 downto 0);-- первый операнд после запоминания
           ce : in  STD_LOGIC;-- разрешение тактирования
           clk : in  STD_LOGIC);-- синхросигнал
end ra;

architecture Behavioral of ra is

begin
 process (clk)
	begin
		if clk'event and clk='1' then -- по положительному фронту clk
			if ce='1' then -- если есть разрешение
			d<=a; -- выполняется прием первого операнда
			end if;
		end if;
	end process;


end Behavioral;

