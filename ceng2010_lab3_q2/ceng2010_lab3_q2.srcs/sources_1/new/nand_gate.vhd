----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2022/10/04 19:36:58
-- Design Name: 
-- Module Name: nand_gate - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity nand_gate is
    Port ( sw: in STD_LOGIC_VECTOR (3 downto 0);
           btnC: in STD_LOGIC;
           led: out STD_LOGIC_VECTOR (1 downto 0));
end nand_gate;

architecture Behavioral of nand_gate is

signal A : STD_LOGIC;
signal B : STD_LOGIC;
signal At : STD_LOGIC;

begin
process ( sw, btnC )
 begin

if FALLING_EDGE(btnC) then
 if sw(0) = '0' and sw(1) = '0' and sw(2) = '1' and sw(3) = '1' then
  A <= A;
  B <= B;
 elsif sw(0) = '1' and sw(1) = '0' and sw(2) = '1' and sw(3) = '1' then
  A <= '1';
  B <= '0';
 elsif sw(0) = '0' and sw(1) = '1' and sw(2) = '1' and sw(3) = '1' then
  A <= '0';
  B <= '1';
 elsif sw(0) = '1' and sw(1) = '1' and sw(2) = '1' and sw(3) = '1' then
  At <= A;
  A <= B;
  B <= At;
 end if;
end if;

if btnC ='1' then
  A <= A;
  B <= B;
end if;

 if sw(2) = '1' and sw(3) = '0' then
  A <= '0';
  B <= '1';
 elsif sw(2) = '0' and sw(3) = '1' then
  A <= '1';
  B <= '0';
 elsif sw(2) = '0' and sw(3) = '0' then
  A <= '1';
  B <= '1';
 --end if;
 end if;

end process; 

led(0) <= A;
led(1) <= B;

end Behavioral;
