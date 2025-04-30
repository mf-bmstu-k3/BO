----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:51:17 12/21/2008 
-- Design Name: 
-- Module Name:    kc1 - Behavioral 
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

entity kc1 is
generic (n:integer);     -- n параметр, задает разрядность операндов
    Port ( a : in  STD_LOGIC_VECTOR (n-1 downto 0); -- первый операнд
           y : in  STD_LOGIC_VECTOR (1 downto 0);-- управляющие сигналы
           d : out  STD_LOGIC_VECTOR (2*n-1 downto 0));-- выход кс1
end kc1;

architecture Behavioral of kc1 is

begin
with y select
	d(2*n-1 downto n)<=(others=>a(n-1)) when "10",-- передаем на суммирование +А если y4=1
		(others=>not a(n-1)) when "01",--передаем на суммирование -А, если y5=1
		(others=>'0') when others; -- ноль в остальных случаях
with y select		
	d(n-1 downto 0)<=a when "10",-- передаем на суммирование +А если y4=1
		not a when "01",--передаем на суммирование -А, если y5=1
		(others=>'0') when others; -- ноль в остальных случаях
		

end Behavioral;

