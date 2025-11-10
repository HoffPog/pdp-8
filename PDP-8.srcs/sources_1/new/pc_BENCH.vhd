library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_program_counter is
end tb_program_counter;

architecture sim of tb_program_counter is

    -- Component under test (DUT)
    component program_counter
        Port (
            clk    : in  STD_LOGIC;
            jump   : in  STD_LOGIC_VECTOR(11 downto 0);
            pc_out : out STD_LOGIC_VECTOR(11 downto 0)
        );
    end component;

    -- Testbench signals
    signal clk    : STD_LOGIC := '0';
    signal jump   : STD_LOGIC_VECTOR(11 downto 0) := (others => '0');
    signal pc_out : STD_LOGIC_VECTOR(11 downto 0);

begin

    -- Instantiate DUT
    uut: program_counter
        port map (
            clk    => clk,
            jump   => jump,
            pc_out => pc_out
        );

    -- Clock generation (20 ns period)
    clk_process : process
    begin
        while true loop
            clk <= '0';
            wait for 10 ns;
            clk <= '1';
            wait for 10 ns;
        end loop;
    end process;

    -- Stimulus process
    stim_proc : process
    begin
        -- Let the PC run normally for a few cycles
        wait for 200 ns;

        -- Jump to address 0x005
        jump <= std_logic_vector(to_unsigned(5, 12));
        wait for 20 ns;

        -- Back to normal counting
        jump <= (others => '0');
        wait for 400 ns;

        -- Jump to address 0x00A
        jump <= std_logic_vector(to_unsigned(10, 12));
        wait for 20 ns;

        -- Back to normal again
        jump <= (others => '0');
        wait for 400 ns;

        -- End simulation
        wait;
    end process;

end sim;

