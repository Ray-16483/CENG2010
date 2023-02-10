----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2022/10/21 20:30:15
-- Design Name: 
-- Module Name: sim_2 - Behavioral
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
entity sim_2 is
end sim_2;

architecture Behavioral of sim_2 is
    component q1
        Port(
            sw : in std_logic_vector (0 downto 0);
            btnC: in std_logic;
            led: out std_logic_vector (1 downto 0)
        );
    end component;
    
    signal ext_input : std_logic;
    signal ext_output : std_logic;
    signal clock_period : std_logic;
begin
    a: q1 port map(
        led(1) => ext_output,
        sw(0) => ext_input,
        btnC => clock_period
    );

end Behavioral;