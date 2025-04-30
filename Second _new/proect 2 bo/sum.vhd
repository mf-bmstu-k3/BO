----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:45:33 01/04/2009 
-- Design Name: 
-- Module Name:    alu - Behavioral 
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

entity sum is
generic (n:integer);     -- n параметр, задает разрядность операндов
    Port ( a : in  STD_LOGIC_VECTOR (2*n-1 downto 0); -- первое слагаемое
           b : in  STD_LOGIC_VECTOR (2*n-1 downto 0); -- второе слагаемое

			
           s : out  STD_LOGIC_VECTOR (2*n-1 downto 0)); -- сумма
end sum;

architecture Behavioral of sum is
 
 begin
 
pr1: process(a,b)
variable sym:STD_LOGIC_VECTOR (2*n downto 0); 
begin
 
sym:=('0'&a)+('0'&b);
	if (sym(2*n)='1')then sym(2*n) :='0'; sym :=sym+1;
   end if;

s <=sym(2*n-1 downto 0);
end process pr1;


end Behavioral;

