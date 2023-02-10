----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.09.2022 17:08:54
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

entity Lab02_q1 is
    Port ( sw:in STD_LOGIC_VECTOR (5 downto 0);
    led:out STD_LOGIC_VECTOR (0 downto 0));
end Lab02_q1;

architecture Behavioral of Lab02_q1 is

begin
led(0) <= sw(0) when sw(5)='0' and sw(4)='0' else
     sw(1) when sw(5)='0' and sw(4)='1' else
     sw(2) when sw(5)='1' and sw(4)='0' else
     sw(3);

end Behavioral;
