----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.09.2022 17:51:46
-- Design Name: 
-- Module Name: Lab02_q2 - Behavioral
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

entity Lab02_q2 is
Port (an:out STD_LOGIC_VECTOR (3 downto 0);
    seg:out STD_LOGIC_VECTOR (6 downto 0);
    sw:in STD_LOGIC_VECTOR (3 downto 0));
end Lab02_q2;

architecture Behavioral of Lab02_q2 is

begin

an(0) <= '0';
an(1) <= '1';
an(2) <= '1';
an(3) <= '1';
seg(0) <= '0' when sw(3)='0' and sw(2)='0' and sw(1)='0' and sw(0)='0' else
          '1' when sw(3)='0' and sw(2)='0' and sw(1)='0' and sw(0)='1' else
          '0' when sw(3)='0' and sw(2)='0' and sw(1)='1' and sw(0)='0' else
          '0' when sw(3)='0' and sw(2)='0' and sw(1)='1' and sw(0)='1' else
          '1' when sw(3)='0' and sw(2)='1' and sw(1)='0' and sw(0)='0' else
          '0' when sw(3)='0' and sw(2)='1' and sw(1)='0' and sw(0)='1' else
          '0' when sw(3)='0' and sw(2)='1' and sw(1)='1' and sw(0)='0' else
          '0' when sw(3)='0' and sw(2)='1' and sw(1)='1' and sw(0)='1' else
          '0' when sw(3)='1' and sw(2)='0' and sw(1)='0' and sw(0)='0' else
          '0' when sw(3)='1' and sw(2)='0' and sw(1)='0' and sw(0)='1' else
          '0';
seg(1) <= '0' when sw(3)='0' and sw(2)='0' and sw(1)='0' and sw(0)='0' else
          '0' when sw(3)='0' and sw(2)='0' and sw(1)='0' and sw(0)='1' else
          '0' when sw(3)='0' and sw(2)='0' and sw(1)='1' and sw(0)='0' else
          '0' when sw(3)='0' and sw(2)='0' and sw(1)='1' and sw(0)='1' else
          '0' when sw(3)='0' and sw(2)='1' and sw(1)='0' and sw(0)='0' else
          '1' when sw(3)='0' and sw(2)='1' and sw(1)='0' and sw(0)='1' else
          '1' when sw(3)='0' and sw(2)='1' and sw(1)='1' and sw(0)='0' else
          '0' when sw(3)='0' and sw(2)='1' and sw(1)='1' and sw(0)='1' else
          '0' when sw(3)='1' and sw(2)='0' and sw(1)='0' and sw(0)='0' else
          '0' when sw(3)='1' and sw(2)='0' and sw(1)='0' and sw(0)='1' else
          '1';
seg(2) <= '0' when sw(3)='0' and sw(2)='0' and sw(1)='0' and sw(0)='0' else
          '0' when sw(3)='0' and sw(2)='0' and sw(1)='0' and sw(0)='1' else
          '1' when sw(3)='0' and sw(2)='0' and sw(1)='1' and sw(0)='0' else
          '0' when sw(3)='0' and sw(2)='0' and sw(1)='1' and sw(0)='1' else
          '0' when sw(3)='0' and sw(2)='1' and sw(1)='0' and sw(0)='0' else
          '0' when sw(3)='0' and sw(2)='1' and sw(1)='0' and sw(0)='1' else
          '0' when sw(3)='0' and sw(2)='1' and sw(1)='1' and sw(0)='0' else
          '0' when sw(3)='0' and sw(2)='1' and sw(1)='1' and sw(0)='1' else
          '0' when sw(3)='1' and sw(2)='0' and sw(1)='0' and sw(0)='0' else
          '0' when sw(3)='1' and sw(2)='0' and sw(1)='0' and sw(0)='1' else
          '1';
seg(3) <= '0' when sw(3)='0' and sw(2)='0' and sw(1)='0' and sw(0)='0' else
          '1' when sw(3)='0' and sw(2)='0' and sw(1)='0' and sw(0)='1' else
          '0' when sw(3)='0' and sw(2)='0' and sw(1)='1' and sw(0)='0' else
          '0' when sw(3)='0' and sw(2)='0' and sw(1)='1' and sw(0)='1' else
          '1' when sw(3)='0' and sw(2)='1' and sw(1)='0' and sw(0)='0' else
          '0' when sw(3)='0' and sw(2)='1' and sw(1)='0' and sw(0)='1' else
          '0' when sw(3)='0' and sw(2)='1' and sw(1)='1' and sw(0)='0' else
          '1' when sw(3)='0' and sw(2)='1' and sw(1)='1' and sw(0)='1' else
          '0' when sw(3)='1' and sw(2)='0' and sw(1)='0' and sw(0)='0' else
          '0' when sw(3)='1' and sw(2)='0' and sw(1)='0' and sw(0)='1' else
          '0';
seg(4) <= '0' when sw(3)='0' and sw(2)='0' and sw(1)='0' and sw(0)='0' else
          '1' when sw(3)='0' and sw(2)='0' and sw(1)='0' and sw(0)='1' else
          '0' when sw(3)='0' and sw(2)='0' and sw(1)='1' and sw(0)='0' else
          '1' when sw(3)='0' and sw(2)='0' and sw(1)='1' and sw(0)='1' else
          '1' when sw(3)='0' and sw(2)='1' and sw(1)='0' and sw(0)='0' else
          '1' when sw(3)='0' and sw(2)='1' and sw(1)='0' and sw(0)='1' else
          '0' when sw(3)='0' and sw(2)='1' and sw(1)='1' and sw(0)='0' else
          '1' when sw(3)='0' and sw(2)='1' and sw(1)='1' and sw(0)='1' else
          '0' when sw(3)='1' and sw(2)='0' and sw(1)='0' and sw(0)='0' else
          '1' when sw(3)='1' and sw(2)='0' and sw(1)='0' and sw(0)='1' else
          '0';
seg(5) <= '0' when sw(3)='0' and sw(2)='0' and sw(1)='0' and sw(0)='0' else
          '1' when sw(3)='0' and sw(2)='0' and sw(1)='0' and sw(0)='1' else
          '1' when sw(3)='0' and sw(2)='0' and sw(1)='1' and sw(0)='0' else
          '1' when sw(3)='0' and sw(2)='0' and sw(1)='1' and sw(0)='1' else
          '0' when sw(3)='0' and sw(2)='1' and sw(1)='0' and sw(0)='0' else
          '0' when sw(3)='0' and sw(2)='1' and sw(1)='0' and sw(0)='1' else
          '0' when sw(3)='0' and sw(2)='1' and sw(1)='1' and sw(0)='0' else
          '1' when sw(3)='0' and sw(2)='1' and sw(1)='1' and sw(0)='1' else
          '0' when sw(3)='1' and sw(2)='0' and sw(1)='0' and sw(0)='0' else
          '0' when sw(3)='1' and sw(2)='0' and sw(1)='0' and sw(0)='1' else
          '0';
seg(6) <= '1' when sw(3)='0' and sw(2)='0' and sw(1)='0' and sw(0)='0' else
          '1' when sw(3)='0' and sw(2)='0' and sw(1)='0' and sw(0)='1' else
          '0' when sw(3)='0' and sw(2)='0' and sw(1)='1' and sw(0)='0' else
          '0' when sw(3)='0' and sw(2)='0' and sw(1)='1' and sw(0)='1' else
          '0' when sw(3)='0' and sw(2)='1' and sw(1)='0' and sw(0)='0' else
          '0' when sw(3)='0' and sw(2)='1' and sw(1)='0' and sw(0)='1' else
          '0' when sw(3)='0' and sw(2)='1' and sw(1)='1' and sw(0)='0' else
          '1' when sw(3)='0' and sw(2)='1' and sw(1)='1' and sw(0)='1' else
          '0' when sw(3)='1' and sw(2)='0' and sw(1)='0' and sw(0)='0' else
          '0' when sw(3)='1' and sw(2)='0' and sw(1)='0' and sw(0)='1' else
          '0';
    

          
          
         


end Behavioral;
