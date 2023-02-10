----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2022/09/27 23:30:05
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
 Port (sw:in STD_LOGIC_VECTOR (1 downto 0);
       led:inout STD_LOGIC_VECTOR (1 downto 0));
end nand_gate;

architecture Behavioral of nand_gate is

begin


led(0) <= '1' when (sw(0) = '0' and sw(1) = '0') or (sw(0) = '0' and sw(1) = '1') else 
          '0' when sw(0) = '1' and sw(1) = '0' else 
          led(0);
led(1) <= '1' when (sw(0) = '0' and sw(1) = '0') or (sw(0) = '1' and sw(1) = '0') else 
          '0' when sw(0) = '0' and sw(1) = '1' else
          led(1);
          
          


end Behavioral;
