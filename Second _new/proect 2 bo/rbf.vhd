----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:38:08 01/04/2009 
-- Design Name: 
-- Module Name:    rb - Behavioral 
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

entity rbf is
generic (n:integer);     -- n параметр, задает разрядность операндов
    Port ( b : in  STD_LOGIC_VECTOR (n-1 downto 0); -- второй операнд
           q : out  STD_LOGIC_VECTOR (n-1 downto 0);-- второй операнд после запоминания
           l : in  STD_LOGIC; -- разрешение загрузки
           ce : in  STD_LOGIC; -- разрешение тактирования
			  f1 : out STD_LOGIC;-- знак множителя
			  f2 : out STD_LOGIC;-- анализируемый разряд множителя
           clk : in  STD_LOGIC); -- синхросигнал
end rbf;

architecture Behavioral of rbf is
signal state :STD_LOGIC_VECTOR (n-1 downto 0);
begin
process (clk)
	begin
		if clk'event and clk='1' then -- по положительному фронту 
		 if ce='1' then -- если есть разрешение тактирования
			if l='1' then state<=b;-- если разрешена загрузка, то прием второго операнда
			 else state<=state(n-1)&state(n-3 downto 0)&'0'; -- иначе сдвиг влево с сохранением знака
			end if;
		 end if;
		end if;
end process;
q<=state;-- передача на выход
f1<= state(n-1); --знак множителя
f2<= state(n-2);	--	анализируемый разряд множителя	

end Behavioral;

