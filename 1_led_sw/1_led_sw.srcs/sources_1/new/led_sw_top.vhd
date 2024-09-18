----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2024/09/17 21:18:04
-- Design Name: 
-- Module Name: led_sw_top - Behavioral
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

entity led_sw_top is
    Port ( sw : in STD_LOGIC_VECTOR(3 downto 0);
           led : out  STD_LOGIC_VECTOR(3 downto 0)
          );
end led_sw_top;

architecture Behavioral of led_sw_top is

begin
    led <= sw;
end Behavioral;
