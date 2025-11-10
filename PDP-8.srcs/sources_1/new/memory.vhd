----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.11.2025 21:21:13
-- Design Name: 
-- Module Name: memory - Behavioral
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

entity memory is
    Port ( clk : in STD_LOGIC;
           rw : in STD_LOGIC;
           data : in STD_LOGIC_VECTOR (7 downto 0);
           control : in STD_LOGIC;
           addr : in STD_LOGIC_VECTOR (15 downto 0);
           data_out : out STD_LOGIC_VECTOR (7 downto 0)
           );
end memory;

architecture Behavioral of memory is
    --32KB of 8-bit memory
    type ram_type is array(0 to 32767) of std_logic_vector(7 downto 0); 
    signal wram : ram_type := (others => (others => '0'));
    signal word : STD_LOGIC_VECTOR (7 downto 0) := (others => '0');
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if control = '1' then
                if rw = '1' then
                    --read
                    word <= wram(to_integer(unsigned(addr)));
                else
                    --write
                    wram(to_integer(unsigned(addr))) <= data;
                    word <= data;
                end if;
            end if;
        end if;
    end process;
    
    data_out <= word;

end Behavioral;
