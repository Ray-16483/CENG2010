----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2022/10/21 19:31:08
-- Design Name: 
-- Module Name: sim_1 - Behavioral
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

entity sim_1 is

end sim_1;

architecture Behavioral of sim_1 is
    component q2
        Port(
            input : in std_logic;
            output : out std_logic_vector(0 downto 0)
        );
    end component;
    signal ext_input : std_logic := '1';
    signal ext_output : std_logic;
    signal clock_period : time := 100ns;
begin
    a : q2
    port map(
        input => ext_input,
        output(0) => ext_output
    );
    

            
    clock_process :process
    begin
        ext_input <= '0'; 
        wait for clock_period/2; 
        ext_input <= '1'; 
        wait for clock_period/2; 
    end process;
    
    stimuli : process
    begin
 
      wait for 100ns;
      wait for clock_period * 10;
      wait;
      end process;   
end Behavioral;