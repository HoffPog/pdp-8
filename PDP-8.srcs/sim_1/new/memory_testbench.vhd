library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity memory_tb is
end memory_tb;

architecture Behavioral of memory_tb is
    -- Component declaration
    component memory
        Port ( clk : in STD_LOGIC;
               rw : in STD_LOGIC;
               data : in STD_LOGIC_VECTOR (7 downto 0);
               control : in STD_LOGIC;
               addr : in STD_LOGIC_VECTOR (15 downto 0);
               data_out : out STD_LOGIC_VECTOR (7 downto 0)
        );
    end component;
    
    -- Test signals - initialize to known values
    signal clk : STD_LOGIC := '0';
    signal rw : STD_LOGIC := '1';  -- Start in read mode
    signal data : STD_LOGIC_VECTOR(7 downto 0) := x"00";
    signal control : STD_LOGIC := '0';  -- Start disabled
    signal addr : STD_LOGIC_VECTOR(15 downto 0) := x"0000";
    signal data_out : STD_LOGIC_VECTOR(7 downto 0);
    
    -- Clock period
    constant clk_period : time := 10 ns;
    
    -- Test control
    signal sim_done : boolean := false;

begin
    -- Instantiate the Unit Under Test (UUT)
    uut: memory
        port map (
            clk => clk,
            rw => rw,
            data => data,
            control => control,
            addr => addr,
            data_out => data_out
        );
    
    -- Clock process
    clk_process: process
    begin
        while not sim_done loop
            clk <= '0';
            wait for clk_period/2;
            clk <= '1';
            wait for clk_period/2;
        end loop;
        wait;
    end process;
    
    -- Stimulus process
    stim_proc: process
    begin
        -- Wait for initialization - let clock start running
        wait for clk_period * 5;
        
        report "=== Starting Memory Tests ===";
        
        -- Test 1: Write to address 0x0000
        report "Test 1: Write 0xAA to address 0x0000";
        control <= '1';
        rw <= '0';  -- write mode
        addr <= x"0000";
        data <= x"AA";
        wait for clk_period;
        
        -- Test 2: Read from address 0x0000
        report "Test 2: Read from address 0x0000 (expect 0xAA)";
        rw <= '1';  -- read mode
        addr <= x"0000";
        wait for clk_period;
        wait for clk_period;  -- Extra cycle to see output
        assert data_out = x"AA" report "Read test failed at 0x0000!" severity error;
        
        -- Test 3: Write multiple addresses
        report "Test 3: Write to multiple addresses";
        rw <= '0';
        addr <= x"0001";
        data <= x"55";
        wait for clk_period;
        
        addr <= x"0100";
        data <= x"F0";
        wait for clk_period;
        
        addr <= x"7FFF";  -- Last valid address (32767)
        data <= x"DE";
        wait for clk_period;
        
        -- Test 4: Read back multiple addresses
        report "Test 4: Read back multiple addresses";
        rw <= '1';
        
        addr <= x"0001";
        wait for clk_period;
        wait for clk_period;
        assert data_out = x"55" report "Read test failed at 0x0001!" severity error;
        
        addr <= x"0100";
        wait for clk_period;
        wait for clk_period;
        assert data_out = x"F0" report "Read test failed at 0x0100!" severity error;
        
        addr <= x"7FFF";
        wait for clk_period;
        wait for clk_period;
        assert data_out = x"DE" report "Read test failed at 0x7FFF!" severity error;
        
        -- Test 5: Control signal disable
        report "Test 5: Control disable (no operation)";
        control <= '0';
        rw <= '0';
        addr <= x"0002";
        data <= x"FF";
        wait for clk_period;
        
        -- Try to read - should get previous value
        rw <= '1';
        control <= '1';
        addr <= x"0002";
        wait for clk_period;
        wait for clk_period;
        assert data_out = x"00" report "Control disable test failed!" severity error;
        
        -- Test 6: Rapid read/write
        report "Test 6: Rapid read/write operations";
        control <= '1';
        for i in 0 to 15 loop
            rw <= '0';
            addr <= std_logic_vector(to_unsigned(i, 16));
            data <= std_logic_vector(to_unsigned(i * 16, 8));
            wait for clk_period;
        end loop;
        
        -- Read back
        for i in 0 to 15 loop
            rw <= '1';
            addr <= std_logic_vector(to_unsigned(i, 16));
            wait for clk_period;
            wait for clk_period;
            assert data_out = std_logic_vector(to_unsigned(i * 16, 8)) 
                report "Rapid test failed at address " & integer'image(i) severity error;
        end loop;
        
        report "=== All Tests Complete ===";
        
        sim_done <= true;
        wait;
    end process;

end Behavioral;



