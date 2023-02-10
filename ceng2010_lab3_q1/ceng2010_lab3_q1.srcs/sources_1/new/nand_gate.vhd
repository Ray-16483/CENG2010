----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.10.2022 17:02:57
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
    Port ( sw : in STD_LOGIC_VECTOR (6 downto 0);
           btnC : in STD_LOGIC;
           seg : out STD_LOGIC_VECTOR (6 downto 0);
           an : out STD_LOGIC_VECTOR (3 downto 0));
end nand_gate;

architecture Behavioral of nand_gate is

signal A : STD_LOGIC := '1';

begin

process ( btnC )

begin

if RISING_EDGE (btnC) then

if ( A = '1' ) THEN

 A <= '0';

else

 A <= '1';

end if;

end if;

if (A = '1') then

 an(0) <= '1';
 an(1) <= '1';
 an(2) <= '0';
 an(3) <= '0';

else

 an(0) <= '0';
 an(1) <= '0';
 an(2) <= '1';
 an(3) <= '1';

end if;

end process;

seg(0) <= sw(0);
seg(1) <= sw(1);
seg(2) <= sw(2);
seg(3) <= sw(3);
seg(4) <= sw(4);
seg(5) <= sw(5);
seg(6) <= sw(6);
end Behavioral;
