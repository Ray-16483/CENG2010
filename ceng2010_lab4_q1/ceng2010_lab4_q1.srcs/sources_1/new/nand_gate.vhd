----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.10.2022 16:34:34
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
  Port ( 
    sw : in std_logic_vector (0 downto 0);
    btnC : in std_logic;
    btnD : in std_logic;
    led : out std_logic_vector (7 downto 0)
  );
end nand_gate;

architecture Behavioral of nand_gate is
 type state_type is (S0, S1, S2);
 signal state, next_state: state_type;

begin

SYNC_PROC : process (state, btnC, btnD)
begin

 if (btnD = '1') then
    state <= S0;
 elsif rising_edge(btnC) then
    state <= next_state;
    
 end if;
end process;

 NEXT_STATE_DECODE : process (state, sw)
begin
 case (state) is
   when S0 =>
     if sw(0) = '1' then
       next_state <= S1;
     else
       next_state <= S0;
     end if;
   when S1 =>
     if sw(0) = '0' then
       next_state <= S2;
     else
       next_state <= S1;
     end if;
   when S2 =>
     if sw(0) = '1' then
       next_state <= S1;
     else
       next_state <= S2;
     end if;
  end case;
 end process;

output_decode: process(state, btnC, btnD, sw)
begin

    if btnD = '1' then
      led(0) <= '0';
      led(5) <= '1';
      led(6) <= '0';
      led(7) <= '0';
    else 
    if btnC = '1' then
       case state is
         when S0 =>
           led(5) <= '1';
           led(6) <= '0';
           led(7) <= '0';
           if sw(0) = '0' then
               led(0) <= '0';
           else
               led(0) <= '1';                        
           end if;
         when S1 =>
           led(5) <= '0';
           led(6) <= '1';
           led(7) <= '0';
           if sw(0) = '0' then
                led(0) <= '0';
           else
                led(0) <= '1';                        
           end if;
          when S2 =>             
            led(5) <= '0';
            led(6) <= '0';
            led(7) <= '1';      
            if sw(0) = '0' then
                 led(0) <= '0';
            else
                 led(0) <= '1';                        
            end if;                        
           end case;
          end if;
        end if;
    end process;


end Behavioral;
