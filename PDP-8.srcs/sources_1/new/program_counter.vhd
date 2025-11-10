----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.11.2025 18:01:48
-- Design Name: 
-- Module Name: program_counter - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity program_counter is
    Port ( clk : in STD_LOGIC;
           jump: in STD_LOGIC_VECTOR(11 downto 0);
           pc_out : out STD_LOGIC_VECTOR(11 downto 0)
           );
end program_counter;

architecture Behavioral of program_counter is
    signal count : unsigned(11 downto 0) := (others => '0');
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if (jump /= "000000000000") then
                count <= unsigned(jump);
            else
                count <= count + 1;
            end if;
        end if;
    end process; 

    pc_out <= std_logic_vector(count);

end Behavioral;
