-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Mon Nov 10 20:03:40 2025
-- Host        : Tengu running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               f:/UNI_STUFF/FPGA/PDP-8/PDP-8.gen/sources_1/bd/design_1/ip/design_1_program_counter_0_1/design_1_program_counter_0_1_sim_netlist.vhdl
-- Design      : design_1_program_counter_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_program_counter_0_1_program_counter is
  port (
    pc_out : out STD_LOGIC_VECTOR ( 11 downto 0 );
    jump : in STD_LOGIC_VECTOR ( 11 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_program_counter_0_1_program_counter : entity is "program_counter";
end design_1_program_counter_0_1_program_counter;

architecture STRUCTURE of design_1_program_counter_0_1_program_counter is
  signal \count[11]_i_2_n_0\ : STD_LOGIC;
  signal \count[11]_i_3_n_0\ : STD_LOGIC;
  signal \count[11]_i_4_n_0\ : STD_LOGIC;
  signal \count[11]_i_5_n_0\ : STD_LOGIC;
  signal \count[11]_i_6_n_0\ : STD_LOGIC;
  signal \count[11]_i_7_n_0\ : STD_LOGIC;
  signal \count[3]_i_2_n_0\ : STD_LOGIC;
  signal \count[3]_i_3_n_0\ : STD_LOGIC;
  signal \count[3]_i_4_n_0\ : STD_LOGIC;
  signal \count[3]_i_5_n_0\ : STD_LOGIC;
  signal \count[3]_i_6_n_0\ : STD_LOGIC;
  signal \count[7]_i_2_n_0\ : STD_LOGIC;
  signal \count[7]_i_3_n_0\ : STD_LOGIC;
  signal \count[7]_i_4_n_0\ : STD_LOGIC;
  signal \count[7]_i_5_n_0\ : STD_LOGIC;
  signal \count_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[11]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[11]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[11]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[11]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \^pc_out\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \NLW_count_reg[11]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \count_reg[11]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg[3]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg[7]_i_1\ : label is 11;
begin
  pc_out(11 downto 0) <= \^pc_out\(11 downto 0);
\count[11]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => jump(11),
      I1 => \count[11]_i_6_n_0\,
      I2 => \count[11]_i_7_n_0\,
      I3 => \^pc_out\(11),
      O => \count[11]_i_2_n_0\
    );
\count[11]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => jump(10),
      I1 => \count[11]_i_6_n_0\,
      I2 => \count[11]_i_7_n_0\,
      I3 => \^pc_out\(10),
      O => \count[11]_i_3_n_0\
    );
\count[11]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => jump(9),
      I1 => \count[11]_i_6_n_0\,
      I2 => \count[11]_i_7_n_0\,
      I3 => \^pc_out\(9),
      O => \count[11]_i_4_n_0\
    );
\count[11]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => jump(8),
      I1 => \count[11]_i_6_n_0\,
      I2 => \count[11]_i_7_n_0\,
      I3 => \^pc_out\(8),
      O => \count[11]_i_5_n_0\
    );
\count[11]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => jump(5),
      I1 => jump(3),
      I2 => jump(4),
      I3 => jump(0),
      I4 => jump(1),
      I5 => jump(2),
      O => \count[11]_i_6_n_0\
    );
\count[11]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => jump(10),
      I1 => jump(9),
      I2 => jump(11),
      I3 => jump(6),
      I4 => jump(7),
      I5 => jump(8),
      O => \count[11]_i_7_n_0\
    );
\count[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => jump(0),
      I1 => \count[11]_i_6_n_0\,
      I2 => \count[11]_i_7_n_0\,
      I3 => \^pc_out\(0),
      O => \count[3]_i_2_n_0\
    );
\count[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => jump(3),
      I1 => \count[11]_i_6_n_0\,
      I2 => \count[11]_i_7_n_0\,
      I3 => \^pc_out\(3),
      O => \count[3]_i_3_n_0\
    );
\count[3]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => jump(2),
      I1 => \count[11]_i_6_n_0\,
      I2 => \count[11]_i_7_n_0\,
      I3 => \^pc_out\(2),
      O => \count[3]_i_4_n_0\
    );
\count[3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => jump(1),
      I1 => \count[11]_i_6_n_0\,
      I2 => \count[11]_i_7_n_0\,
      I3 => \^pc_out\(1),
      O => \count[3]_i_5_n_0\
    );
\count[3]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5CCC"
    )
        port map (
      I0 => \^pc_out\(0),
      I1 => jump(0),
      I2 => \count[11]_i_7_n_0\,
      I3 => \count[11]_i_6_n_0\,
      O => \count[3]_i_6_n_0\
    );
\count[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => jump(7),
      I1 => \count[11]_i_6_n_0\,
      I2 => \count[11]_i_7_n_0\,
      I3 => \^pc_out\(7),
      O => \count[7]_i_2_n_0\
    );
\count[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => jump(6),
      I1 => \count[11]_i_6_n_0\,
      I2 => \count[11]_i_7_n_0\,
      I3 => \^pc_out\(6),
      O => \count[7]_i_3_n_0\
    );
\count[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => jump(5),
      I1 => \count[11]_i_6_n_0\,
      I2 => \count[11]_i_7_n_0\,
      I3 => \^pc_out\(5),
      O => \count[7]_i_4_n_0\
    );
\count[7]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => jump(4),
      I1 => \count[11]_i_6_n_0\,
      I2 => \count[11]_i_7_n_0\,
      I3 => \^pc_out\(4),
      O => \count[7]_i_5_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count_reg[3]_i_1_n_7\,
      Q => \^pc_out\(0),
      R => '0'
    );
\count_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count_reg[11]_i_1_n_5\,
      Q => \^pc_out\(10),
      R => '0'
    );
\count_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count_reg[11]_i_1_n_4\,
      Q => \^pc_out\(11),
      R => '0'
    );
\count_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[7]_i_1_n_0\,
      CO(3) => \NLW_count_reg[11]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \count_reg[11]_i_1_n_1\,
      CO(1) => \count_reg[11]_i_1_n_2\,
      CO(0) => \count_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[11]_i_1_n_4\,
      O(2) => \count_reg[11]_i_1_n_5\,
      O(1) => \count_reg[11]_i_1_n_6\,
      O(0) => \count_reg[11]_i_1_n_7\,
      S(3) => \count[11]_i_2_n_0\,
      S(2) => \count[11]_i_3_n_0\,
      S(1) => \count[11]_i_4_n_0\,
      S(0) => \count[11]_i_5_n_0\
    );
\count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count_reg[3]_i_1_n_6\,
      Q => \^pc_out\(1),
      R => '0'
    );
\count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count_reg[3]_i_1_n_5\,
      Q => \^pc_out\(2),
      R => '0'
    );
\count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count_reg[3]_i_1_n_4\,
      Q => \^pc_out\(3),
      R => '0'
    );
\count_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_reg[3]_i_1_n_0\,
      CO(2) => \count_reg[3]_i_1_n_1\,
      CO(1) => \count_reg[3]_i_1_n_2\,
      CO(0) => \count_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \count[3]_i_2_n_0\,
      O(3) => \count_reg[3]_i_1_n_4\,
      O(2) => \count_reg[3]_i_1_n_5\,
      O(1) => \count_reg[3]_i_1_n_6\,
      O(0) => \count_reg[3]_i_1_n_7\,
      S(3) => \count[3]_i_3_n_0\,
      S(2) => \count[3]_i_4_n_0\,
      S(1) => \count[3]_i_5_n_0\,
      S(0) => \count[3]_i_6_n_0\
    );
\count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count_reg[7]_i_1_n_7\,
      Q => \^pc_out\(4),
      R => '0'
    );
\count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count_reg[7]_i_1_n_6\,
      Q => \^pc_out\(5),
      R => '0'
    );
\count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count_reg[7]_i_1_n_5\,
      Q => \^pc_out\(6),
      R => '0'
    );
\count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count_reg[7]_i_1_n_4\,
      Q => \^pc_out\(7),
      R => '0'
    );
\count_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[3]_i_1_n_0\,
      CO(3) => \count_reg[7]_i_1_n_0\,
      CO(2) => \count_reg[7]_i_1_n_1\,
      CO(1) => \count_reg[7]_i_1_n_2\,
      CO(0) => \count_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[7]_i_1_n_4\,
      O(2) => \count_reg[7]_i_1_n_5\,
      O(1) => \count_reg[7]_i_1_n_6\,
      O(0) => \count_reg[7]_i_1_n_7\,
      S(3) => \count[7]_i_2_n_0\,
      S(2) => \count[7]_i_3_n_0\,
      S(1) => \count[7]_i_4_n_0\,
      S(0) => \count[7]_i_5_n_0\
    );
\count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count_reg[11]_i_1_n_7\,
      Q => \^pc_out\(8),
      R => '0'
    );
\count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count_reg[11]_i_1_n_6\,
      Q => \^pc_out\(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_program_counter_0_1 is
  port (
    clk : in STD_LOGIC;
    jump : in STD_LOGIC_VECTOR ( 11 downto 0 );
    pc_out : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_program_counter_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_program_counter_0_1 : entity is "design_1_program_counter_0_1,program_counter,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_program_counter_0_1 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_program_counter_0_1 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_program_counter_0_1 : entity is "program_counter,Vivado 2025.1";
end design_1_program_counter_0_1;

architecture STRUCTURE of design_1_program_counter_0_1 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
begin
inst: entity work.design_1_program_counter_0_1_program_counter
     port map (
      clk => clk,
      jump(11 downto 0) => jump(11 downto 0),
      pc_out(11 downto 0) => pc_out(11 downto 0)
    );
end STRUCTURE;
