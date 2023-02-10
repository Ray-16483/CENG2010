----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2022/09/19 22:55:15
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
    Port ( sw0 : in STD_LOGIC;
           sw1 : in STD_LOGIC;
           sw2 : in STD_LOGIC;
           sw3 : in STD_LOGIC;
           sw4 : in STD_LOGIC;
           sw5 : in STD_LOGIC;
           sw6 : in STD_LOGIC;
           sw7 : in STD_LOGIC;
           an1 : out STD_LOGIC;
           an2 : out STD_LOGIC;
           an3 : out STD_LOGIC;
           seg0 : out STD_LOGIC;
           seg1 : out STD_LOGIC;
           seg2 : out STD_LOGIC;
           seg3 : out STD_LOGIC;
           seg4 : out STD_LOGIC;
           seg5 : out STD_LOGIC;
           seg6 : out STD_LOGIC;
           dp : out STD_LOGIC);
           
end nand_gate;

architecture Behavioral of nand_gate is
begin

seg0 <= sw0;
seg1 <= sw1;
seg2 <= sw2;
seg3 <= sw3;
seg4 <= sw4;
seg5 <= sw5;
seg6 <= sw6;
dp <= sw7;
end Behavioral;
