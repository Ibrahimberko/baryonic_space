-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Tue May  5 00:55:08 2026
-- Host        : DESKTOP-PNADBHN running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               x:/part4/vivado_part4_zynq/fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ip/system_fft_pl_ps_0_0/system_fft_pl_ps_0_0_sim_netlist.vhdl
-- Design      : system_fft_pl_ps_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_fft_pl_ps_0_0_dds_config_driver is
  port (
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_config_tvalid : out STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    dds_pinc_dbg : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    config_pending_reg_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_fft_pl_ps_0_0_dds_config_driver : entity is "dds_config_driver";
end system_fft_pl_ps_0_0_dds_config_driver;

architecture STRUCTURE of system_fft_pl_ps_0_0_dds_config_driver is
  signal config_pending_i_1_n_0 : STD_LOGIC;
  signal config_pending_reg_n_0 : STD_LOGIC;
  signal m_axis_config_tvalid_i_1_n_0 : STD_LOGIC;
  signal \^s_axis_config_tvalid\ : STD_LOGIC;
begin
  s_axis_config_tvalid <= \^s_axis_config_tvalid\;
config_pending_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^s_axis_config_tvalid\,
      I1 => config_pending_reg_n_0,
      I2 => E(0),
      O => config_pending_i_1_n_0
    );
config_pending_reg: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => config_pending_i_1_n_0,
      PRE => config_pending_reg_0,
      Q => config_pending_reg_n_0
    );
m_axis_config_tvalid_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => config_pending_reg_n_0,
      I1 => \^s_axis_config_tvalid\,
      O => m_axis_config_tvalid_i_1_n_0
    );
m_axis_config_tvalid_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => config_pending_reg_0,
      D => m_axis_config_tvalid_i_1_n_0,
      Q => \^s_axis_config_tvalid\
    );
\pinc_latched_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => E(0),
      D => dds_pinc_dbg(0),
      PRE => config_pending_reg_0,
      Q => Q(0)
    );
\pinc_latched_reg[10]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => E(0),
      D => dds_pinc_dbg(10),
      PRE => config_pending_reg_0,
      Q => Q(10)
    );
\pinc_latched_reg[11]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => E(0),
      D => dds_pinc_dbg(11),
      PRE => config_pending_reg_0,
      Q => Q(11)
    );
\pinc_latched_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => config_pending_reg_0,
      D => dds_pinc_dbg(12),
      Q => Q(12)
    );
\pinc_latched_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => config_pending_reg_0,
      D => dds_pinc_dbg(13),
      Q => Q(13)
    );
\pinc_latched_reg[14]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => E(0),
      D => dds_pinc_dbg(14),
      PRE => config_pending_reg_0,
      Q => Q(14)
    );
\pinc_latched_reg[15]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => E(0),
      D => dds_pinc_dbg(15),
      PRE => config_pending_reg_0,
      Q => Q(15)
    );
\pinc_latched_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => config_pending_reg_0,
      D => dds_pinc_dbg(16),
      Q => Q(16)
    );
\pinc_latched_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => config_pending_reg_0,
      D => dds_pinc_dbg(17),
      Q => Q(17)
    );
\pinc_latched_reg[18]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => E(0),
      D => dds_pinc_dbg(18),
      PRE => config_pending_reg_0,
      Q => Q(18)
    );
\pinc_latched_reg[19]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => E(0),
      D => dds_pinc_dbg(19),
      PRE => config_pending_reg_0,
      Q => Q(19)
    );
\pinc_latched_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => config_pending_reg_0,
      D => dds_pinc_dbg(1),
      Q => Q(1)
    );
\pinc_latched_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => config_pending_reg_0,
      D => dds_pinc_dbg(20),
      Q => Q(20)
    );
\pinc_latched_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => config_pending_reg_0,
      D => dds_pinc_dbg(21),
      Q => Q(21)
    );
\pinc_latched_reg[22]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => E(0),
      D => dds_pinc_dbg(22),
      PRE => config_pending_reg_0,
      Q => Q(22)
    );
\pinc_latched_reg[23]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => E(0),
      D => dds_pinc_dbg(23),
      PRE => config_pending_reg_0,
      Q => Q(23)
    );
\pinc_latched_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => config_pending_reg_0,
      D => dds_pinc_dbg(24),
      Q => Q(24)
    );
\pinc_latched_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => config_pending_reg_0,
      D => dds_pinc_dbg(25),
      Q => Q(25)
    );
\pinc_latched_reg[26]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => E(0),
      D => dds_pinc_dbg(26),
      PRE => config_pending_reg_0,
      Q => Q(26)
    );
\pinc_latched_reg[27]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => E(0),
      D => dds_pinc_dbg(27),
      PRE => config_pending_reg_0,
      Q => Q(27)
    );
\pinc_latched_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => config_pending_reg_0,
      D => dds_pinc_dbg(28),
      Q => Q(28)
    );
\pinc_latched_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => config_pending_reg_0,
      D => dds_pinc_dbg(29),
      Q => Q(29)
    );
\pinc_latched_reg[2]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => E(0),
      D => dds_pinc_dbg(2),
      PRE => config_pending_reg_0,
      Q => Q(2)
    );
\pinc_latched_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => config_pending_reg_0,
      D => dds_pinc_dbg(30),
      Q => Q(30)
    );
\pinc_latched_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => config_pending_reg_0,
      D => dds_pinc_dbg(31),
      Q => Q(31)
    );
\pinc_latched_reg[3]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => E(0),
      D => dds_pinc_dbg(3),
      PRE => config_pending_reg_0,
      Q => Q(3)
    );
\pinc_latched_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => config_pending_reg_0,
      D => dds_pinc_dbg(4),
      Q => Q(4)
    );
\pinc_latched_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => config_pending_reg_0,
      D => dds_pinc_dbg(5),
      Q => Q(5)
    );
\pinc_latched_reg[6]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => E(0),
      D => dds_pinc_dbg(6),
      PRE => config_pending_reg_0,
      Q => Q(6)
    );
\pinc_latched_reg[7]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => E(0),
      D => dds_pinc_dbg(7),
      PRE => config_pending_reg_0,
      Q => Q(7)
    );
\pinc_latched_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => config_pending_reg_0,
      D => dds_pinc_dbg(8),
      Q => Q(8)
    );
\pinc_latched_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => config_pending_reg_0,
      D => dds_pinc_dbg(9),
      Q => Q(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_fft_pl_ps_0_0_part4_axi_lite_regs is
  port (
    s_axi_bvalid_reg_0 : out STD_LOGIC;
    s_axi_rvalid_reg_0 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awready : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    dds_pinc_dbg : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    peak_valid_dbg : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    peak_index_dbg : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \s_axi_rdata_reg[24]_0\ : in STD_LOGIC_VECTOR ( 24 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_fft_pl_ps_0_0_part4_axi_lite_regs : entity is "part4_axi_lite_regs";
end system_fft_pl_ps_0_0_part4_axi_lite_regs;

architecture STRUCTURE of system_fft_pl_ps_0_0_part4_axi_lite_regs is
  signal accept_aw : STD_LOGIC;
  signal accept_w : STD_LOGIC;
  signal awaddr_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal awaddr_valid : STD_LOGIC;
  signal awaddr_valid_i_1_n_0 : STD_LOGIC;
  signal data1 : STD_LOGIC_VECTOR ( 8 to 8 );
  signal dds_pinc1 : STD_LOGIC;
  signal \dds_pinc[31]_i_2_n_0\ : STD_LOGIC;
  signal \^dds_pinc_dbg\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal dds_pinc_wr_pulse_i_1_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal peak_valid_sticky_i_1_n_0 : STD_LOGIC;
  signal peak_valid_sticky_i_2_n_0 : STD_LOGIC;
  signal s_axi_bvalid_i_2_n_0 : STD_LOGIC;
  signal \^s_axi_bvalid_reg_0\ : STD_LOGIC;
  signal \s_axi_rdata[31]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[8]_i_2_n_0\ : STD_LOGIC;
  signal s_axi_rdata_0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s_axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal \^s_axi_rvalid_reg_0\ : STD_LOGIC;
  signal \wdata_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \wdata_reg_reg_n_0_[10]\ : STD_LOGIC;
  signal \wdata_reg_reg_n_0_[11]\ : STD_LOGIC;
  signal \wdata_reg_reg_n_0_[12]\ : STD_LOGIC;
  signal \wdata_reg_reg_n_0_[13]\ : STD_LOGIC;
  signal \wdata_reg_reg_n_0_[14]\ : STD_LOGIC;
  signal \wdata_reg_reg_n_0_[15]\ : STD_LOGIC;
  signal \wdata_reg_reg_n_0_[16]\ : STD_LOGIC;
  signal \wdata_reg_reg_n_0_[17]\ : STD_LOGIC;
  signal \wdata_reg_reg_n_0_[18]\ : STD_LOGIC;
  signal \wdata_reg_reg_n_0_[19]\ : STD_LOGIC;
  signal \wdata_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \wdata_reg_reg_n_0_[20]\ : STD_LOGIC;
  signal \wdata_reg_reg_n_0_[21]\ : STD_LOGIC;
  signal \wdata_reg_reg_n_0_[22]\ : STD_LOGIC;
  signal \wdata_reg_reg_n_0_[23]\ : STD_LOGIC;
  signal \wdata_reg_reg_n_0_[24]\ : STD_LOGIC;
  signal \wdata_reg_reg_n_0_[25]\ : STD_LOGIC;
  signal \wdata_reg_reg_n_0_[26]\ : STD_LOGIC;
  signal \wdata_reg_reg_n_0_[27]\ : STD_LOGIC;
  signal \wdata_reg_reg_n_0_[28]\ : STD_LOGIC;
  signal \wdata_reg_reg_n_0_[29]\ : STD_LOGIC;
  signal \wdata_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \wdata_reg_reg_n_0_[30]\ : STD_LOGIC;
  signal \wdata_reg_reg_n_0_[31]\ : STD_LOGIC;
  signal \wdata_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \wdata_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \wdata_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \wdata_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \wdata_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal \wdata_reg_reg_n_0_[9]\ : STD_LOGIC;
  signal wdata_valid_i_1_n_0 : STD_LOGIC;
  signal wdata_valid_reg_n_0 : STD_LOGIC;
  signal \wstrb_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \wstrb_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \wstrb_reg_reg_n_0_[3]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of awaddr_valid_i_1 : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \dds_pinc[31]_i_2\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of s_axi_arready_INST_0 : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of s_axi_awready_INST_0 : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of s_axi_bvalid_i_2 : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \s_axi_rdata[25]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \s_axi_rdata[8]_i_2\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of s_axi_rvalid_i_1 : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of s_axi_wready_INST_0 : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of wdata_valid_i_1 : label is "soft_lutpair24";
begin
  dds_pinc_dbg(31 downto 0) <= \^dds_pinc_dbg\(31 downto 0);
  s_axi_bvalid_reg_0 <= \^s_axi_bvalid_reg_0\;
  s_axi_rvalid_reg_0 <= \^s_axi_rvalid_reg_0\;
\awaddr_reg[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^s_axi_bvalid_reg_0\,
      I1 => s_axi_awvalid,
      I2 => awaddr_valid,
      O => accept_aw
    );
\awaddr_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => accept_aw,
      D => s_axi_awaddr(0),
      Q => awaddr_reg(0),
      R => SR(0)
    );
\awaddr_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => accept_aw,
      D => s_axi_awaddr(1),
      Q => awaddr_reg(1),
      R => SR(0)
    );
\awaddr_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => accept_aw,
      D => s_axi_awaddr(2),
      Q => awaddr_reg(2),
      R => SR(0)
    );
\awaddr_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => accept_aw,
      D => s_axi_awaddr(3),
      Q => awaddr_reg(3),
      R => SR(0)
    );
awaddr_valid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CC0C0088"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => rst_n,
      I2 => wdata_valid_reg_n_0,
      I3 => \^s_axi_bvalid_reg_0\,
      I4 => awaddr_valid,
      O => awaddr_valid_i_1_n_0
    );
awaddr_valid_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => awaddr_valid_i_1_n_0,
      Q => awaddr_valid,
      R => '0'
    );
\dds_pinc[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => awaddr_reg(2),
      I1 => awaddr_reg(0),
      I2 => awaddr_reg(1),
      I3 => awaddr_reg(3),
      I4 => \dds_pinc[31]_i_2_n_0\,
      I5 => dds_pinc1,
      O => p_1_in(15)
    );
\dds_pinc[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => awaddr_reg(2),
      I1 => awaddr_reg(0),
      I2 => awaddr_reg(1),
      I3 => awaddr_reg(3),
      I4 => \dds_pinc[31]_i_2_n_0\,
      I5 => \wstrb_reg_reg_n_0_[2]\,
      O => p_1_in(23)
    );
\dds_pinc[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => awaddr_reg(2),
      I1 => awaddr_reg(0),
      I2 => awaddr_reg(1),
      I3 => awaddr_reg(3),
      I4 => \dds_pinc[31]_i_2_n_0\,
      I5 => \wstrb_reg_reg_n_0_[3]\,
      O => p_1_in(31)
    );
\dds_pinc[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => wdata_valid_reg_n_0,
      I1 => \^s_axi_bvalid_reg_0\,
      I2 => awaddr_valid,
      O => \dds_pinc[31]_i_2_n_0\
    );
\dds_pinc[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => awaddr_reg(2),
      I1 => awaddr_reg(0),
      I2 => awaddr_reg(1),
      I3 => awaddr_reg(3),
      I4 => \dds_pinc[31]_i_2_n_0\,
      I5 => \wstrb_reg_reg_n_0_[0]\,
      O => p_1_in(7)
    );
\dds_pinc_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => p_1_in(7),
      D => \wdata_reg_reg_n_0_[0]\,
      Q => \^dds_pinc_dbg\(0),
      S => SR(0)
    );
\dds_pinc_reg[10]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => p_1_in(15),
      D => \wdata_reg_reg_n_0_[10]\,
      Q => \^dds_pinc_dbg\(10),
      S => SR(0)
    );
\dds_pinc_reg[11]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => p_1_in(15),
      D => \wdata_reg_reg_n_0_[11]\,
      Q => \^dds_pinc_dbg\(11),
      S => SR(0)
    );
\dds_pinc_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_1_in(15),
      D => \wdata_reg_reg_n_0_[12]\,
      Q => \^dds_pinc_dbg\(12),
      R => SR(0)
    );
\dds_pinc_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_1_in(15),
      D => \wdata_reg_reg_n_0_[13]\,
      Q => \^dds_pinc_dbg\(13),
      R => SR(0)
    );
\dds_pinc_reg[14]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => p_1_in(15),
      D => \wdata_reg_reg_n_0_[14]\,
      Q => \^dds_pinc_dbg\(14),
      S => SR(0)
    );
\dds_pinc_reg[15]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => p_1_in(15),
      D => \wdata_reg_reg_n_0_[15]\,
      Q => \^dds_pinc_dbg\(15),
      S => SR(0)
    );
\dds_pinc_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_1_in(23),
      D => \wdata_reg_reg_n_0_[16]\,
      Q => \^dds_pinc_dbg\(16),
      R => SR(0)
    );
\dds_pinc_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_1_in(23),
      D => \wdata_reg_reg_n_0_[17]\,
      Q => \^dds_pinc_dbg\(17),
      R => SR(0)
    );
\dds_pinc_reg[18]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => p_1_in(23),
      D => \wdata_reg_reg_n_0_[18]\,
      Q => \^dds_pinc_dbg\(18),
      S => SR(0)
    );
\dds_pinc_reg[19]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => p_1_in(23),
      D => \wdata_reg_reg_n_0_[19]\,
      Q => \^dds_pinc_dbg\(19),
      S => SR(0)
    );
\dds_pinc_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_1_in(7),
      D => \wdata_reg_reg_n_0_[1]\,
      Q => \^dds_pinc_dbg\(1),
      R => SR(0)
    );
\dds_pinc_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_1_in(23),
      D => \wdata_reg_reg_n_0_[20]\,
      Q => \^dds_pinc_dbg\(20),
      R => SR(0)
    );
\dds_pinc_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_1_in(23),
      D => \wdata_reg_reg_n_0_[21]\,
      Q => \^dds_pinc_dbg\(21),
      R => SR(0)
    );
\dds_pinc_reg[22]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => p_1_in(23),
      D => \wdata_reg_reg_n_0_[22]\,
      Q => \^dds_pinc_dbg\(22),
      S => SR(0)
    );
\dds_pinc_reg[23]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => p_1_in(23),
      D => \wdata_reg_reg_n_0_[23]\,
      Q => \^dds_pinc_dbg\(23),
      S => SR(0)
    );
\dds_pinc_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_1_in(31),
      D => \wdata_reg_reg_n_0_[24]\,
      Q => \^dds_pinc_dbg\(24),
      R => SR(0)
    );
\dds_pinc_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_1_in(31),
      D => \wdata_reg_reg_n_0_[25]\,
      Q => \^dds_pinc_dbg\(25),
      R => SR(0)
    );
\dds_pinc_reg[26]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => p_1_in(31),
      D => \wdata_reg_reg_n_0_[26]\,
      Q => \^dds_pinc_dbg\(26),
      S => SR(0)
    );
\dds_pinc_reg[27]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => p_1_in(31),
      D => \wdata_reg_reg_n_0_[27]\,
      Q => \^dds_pinc_dbg\(27),
      S => SR(0)
    );
\dds_pinc_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_1_in(31),
      D => \wdata_reg_reg_n_0_[28]\,
      Q => \^dds_pinc_dbg\(28),
      R => SR(0)
    );
\dds_pinc_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_1_in(31),
      D => \wdata_reg_reg_n_0_[29]\,
      Q => \^dds_pinc_dbg\(29),
      R => SR(0)
    );
\dds_pinc_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => p_1_in(7),
      D => \wdata_reg_reg_n_0_[2]\,
      Q => \^dds_pinc_dbg\(2),
      S => SR(0)
    );
\dds_pinc_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_1_in(31),
      D => \wdata_reg_reg_n_0_[30]\,
      Q => \^dds_pinc_dbg\(30),
      R => SR(0)
    );
\dds_pinc_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_1_in(31),
      D => \wdata_reg_reg_n_0_[31]\,
      Q => \^dds_pinc_dbg\(31),
      R => SR(0)
    );
\dds_pinc_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => p_1_in(7),
      D => \wdata_reg_reg_n_0_[3]\,
      Q => \^dds_pinc_dbg\(3),
      S => SR(0)
    );
\dds_pinc_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_1_in(7),
      D => \wdata_reg_reg_n_0_[4]\,
      Q => \^dds_pinc_dbg\(4),
      R => SR(0)
    );
\dds_pinc_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_1_in(7),
      D => \wdata_reg_reg_n_0_[5]\,
      Q => \^dds_pinc_dbg\(5),
      R => SR(0)
    );
\dds_pinc_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => p_1_in(7),
      D => \wdata_reg_reg_n_0_[6]\,
      Q => \^dds_pinc_dbg\(6),
      S => SR(0)
    );
\dds_pinc_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => p_1_in(7),
      D => \wdata_reg_reg_n_0_[7]\,
      Q => \^dds_pinc_dbg\(7),
      S => SR(0)
    );
\dds_pinc_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_1_in(15),
      D => p_0_in,
      Q => \^dds_pinc_dbg\(8),
      R => SR(0)
    );
\dds_pinc_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_1_in(15),
      D => \wdata_reg_reg_n_0_[9]\,
      Q => \^dds_pinc_dbg\(9),
      R => SR(0)
    );
dds_pinc_wr_pulse_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => awaddr_reg(2),
      I1 => awaddr_reg(0),
      I2 => awaddr_reg(1),
      I3 => awaddr_reg(3),
      I4 => \dds_pinc[31]_i_2_n_0\,
      I5 => rst_n,
      O => dds_pinc_wr_pulse_i_1_n_0
    );
dds_pinc_wr_pulse_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => dds_pinc_wr_pulse_i_1_n_0,
      Q => E(0),
      R => '0'
    );
peak_valid_sticky_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFFF8AAA"
    )
        port map (
      I0 => peak_valid_dbg,
      I1 => peak_valid_sticky_i_2_n_0,
      I2 => p_0_in,
      I3 => awaddr_reg(2),
      I4 => data1(8),
      O => peak_valid_sticky_i_1_n_0
    );
peak_valid_sticky_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFFFFFFFFFF"
    )
        port map (
      I0 => awaddr_reg(0),
      I1 => awaddr_reg(1),
      I2 => awaddr_reg(3),
      I3 => awaddr_valid,
      I4 => \^s_axi_bvalid_reg_0\,
      I5 => wdata_valid_reg_n_0,
      O => peak_valid_sticky_i_2_n_0
    );
peak_valid_sticky_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => peak_valid_sticky_i_1_n_0,
      Q => data1(8),
      R => SR(0)
    );
s_axi_arready_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^s_axi_rvalid_reg_0\,
      O => s_axi_arready
    );
s_axi_awready_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => awaddr_valid,
      I1 => \^s_axi_bvalid_reg_0\,
      O => s_axi_awready
    );
s_axi_bvalid_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5C50"
    )
        port map (
      I0 => s_axi_bready,
      I1 => awaddr_valid,
      I2 => \^s_axi_bvalid_reg_0\,
      I3 => wdata_valid_reg_n_0,
      O => s_axi_bvalid_i_2_n_0
    );
s_axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s_axi_bvalid_i_2_n_0,
      Q => \^s_axi_bvalid_reg_0\,
      R => SR(0)
    );
\s_axi_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA88A0AA0088A0"
    )
        port map (
      I0 => \s_axi_rdata[8]_i_2_n_0\,
      I1 => peak_index_dbg(0),
      I2 => \^dds_pinc_dbg\(0),
      I3 => s_axi_araddr(2),
      I4 => s_axi_araddr(3),
      I5 => \s_axi_rdata_reg[24]_0\(0),
      O => s_axi_rdata_0(0)
    );
\s_axi_rdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000A0000000C"
    )
        port map (
      I0 => \s_axi_rdata_reg[24]_0\(10),
      I1 => \^dds_pinc_dbg\(10),
      I2 => s_axi_araddr(2),
      I3 => s_axi_araddr(0),
      I4 => s_axi_araddr(1),
      I5 => s_axi_araddr(3),
      O => s_axi_rdata_0(10)
    );
\s_axi_rdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000A0000000C"
    )
        port map (
      I0 => \s_axi_rdata_reg[24]_0\(11),
      I1 => \^dds_pinc_dbg\(11),
      I2 => s_axi_araddr(2),
      I3 => s_axi_araddr(0),
      I4 => s_axi_araddr(1),
      I5 => s_axi_araddr(3),
      O => s_axi_rdata_0(11)
    );
\s_axi_rdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000A0000000C"
    )
        port map (
      I0 => \s_axi_rdata_reg[24]_0\(12),
      I1 => \^dds_pinc_dbg\(12),
      I2 => s_axi_araddr(2),
      I3 => s_axi_araddr(0),
      I4 => s_axi_araddr(1),
      I5 => s_axi_araddr(3),
      O => s_axi_rdata_0(12)
    );
\s_axi_rdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000A0000000C"
    )
        port map (
      I0 => \s_axi_rdata_reg[24]_0\(13),
      I1 => \^dds_pinc_dbg\(13),
      I2 => s_axi_araddr(2),
      I3 => s_axi_araddr(0),
      I4 => s_axi_araddr(1),
      I5 => s_axi_araddr(3),
      O => s_axi_rdata_0(13)
    );
\s_axi_rdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000A0000000C"
    )
        port map (
      I0 => \s_axi_rdata_reg[24]_0\(14),
      I1 => \^dds_pinc_dbg\(14),
      I2 => s_axi_araddr(2),
      I3 => s_axi_araddr(0),
      I4 => s_axi_araddr(1),
      I5 => s_axi_araddr(3),
      O => s_axi_rdata_0(14)
    );
\s_axi_rdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000A0000000C"
    )
        port map (
      I0 => \s_axi_rdata_reg[24]_0\(15),
      I1 => \^dds_pinc_dbg\(15),
      I2 => s_axi_araddr(2),
      I3 => s_axi_araddr(0),
      I4 => s_axi_araddr(1),
      I5 => s_axi_araddr(3),
      O => s_axi_rdata_0(15)
    );
\s_axi_rdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000A0000000C"
    )
        port map (
      I0 => \s_axi_rdata_reg[24]_0\(16),
      I1 => \^dds_pinc_dbg\(16),
      I2 => s_axi_araddr(2),
      I3 => s_axi_araddr(0),
      I4 => s_axi_araddr(1),
      I5 => s_axi_araddr(3),
      O => s_axi_rdata_0(16)
    );
\s_axi_rdata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000A0000000C"
    )
        port map (
      I0 => \s_axi_rdata_reg[24]_0\(17),
      I1 => \^dds_pinc_dbg\(17),
      I2 => s_axi_araddr(2),
      I3 => s_axi_araddr(0),
      I4 => s_axi_araddr(1),
      I5 => s_axi_araddr(3),
      O => s_axi_rdata_0(17)
    );
\s_axi_rdata[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1101100111001000"
    )
        port map (
      I0 => s_axi_araddr(1),
      I1 => s_axi_araddr(0),
      I2 => s_axi_araddr(2),
      I3 => s_axi_araddr(3),
      I4 => \s_axi_rdata_reg[24]_0\(18),
      I5 => \^dds_pinc_dbg\(18),
      O => s_axi_rdata_0(18)
    );
\s_axi_rdata[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000A0000000C"
    )
        port map (
      I0 => \s_axi_rdata_reg[24]_0\(19),
      I1 => \^dds_pinc_dbg\(19),
      I2 => s_axi_araddr(2),
      I3 => s_axi_araddr(0),
      I4 => s_axi_araddr(1),
      I5 => s_axi_araddr(3),
      O => s_axi_rdata_0(19)
    );
\s_axi_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A0A220228082000"
    )
        port map (
      I0 => \s_axi_rdata[8]_i_2_n_0\,
      I1 => s_axi_araddr(3),
      I2 => s_axi_araddr(2),
      I3 => peak_index_dbg(1),
      I4 => \s_axi_rdata_reg[24]_0\(1),
      I5 => \^dds_pinc_dbg\(1),
      O => s_axi_rdata_0(1)
    );
\s_axi_rdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000A0000000C"
    )
        port map (
      I0 => \s_axi_rdata_reg[24]_0\(20),
      I1 => \^dds_pinc_dbg\(20),
      I2 => s_axi_araddr(2),
      I3 => s_axi_araddr(0),
      I4 => s_axi_araddr(1),
      I5 => s_axi_araddr(3),
      O => s_axi_rdata_0(20)
    );
\s_axi_rdata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000A0000000C"
    )
        port map (
      I0 => \s_axi_rdata_reg[24]_0\(21),
      I1 => \^dds_pinc_dbg\(21),
      I2 => s_axi_araddr(2),
      I3 => s_axi_araddr(0),
      I4 => s_axi_araddr(1),
      I5 => s_axi_araddr(3),
      O => s_axi_rdata_0(21)
    );
\s_axi_rdata[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000A0000000C"
    )
        port map (
      I0 => \s_axi_rdata_reg[24]_0\(22),
      I1 => \^dds_pinc_dbg\(22),
      I2 => s_axi_araddr(2),
      I3 => s_axi_araddr(0),
      I4 => s_axi_araddr(1),
      I5 => s_axi_araddr(3),
      O => s_axi_rdata_0(22)
    );
\s_axi_rdata[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000A0000000C"
    )
        port map (
      I0 => \s_axi_rdata_reg[24]_0\(23),
      I1 => \^dds_pinc_dbg\(23),
      I2 => s_axi_araddr(2),
      I3 => s_axi_araddr(0),
      I4 => s_axi_araddr(1),
      I5 => s_axi_araddr(3),
      O => s_axi_rdata_0(23)
    );
\s_axi_rdata[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000A0000000C"
    )
        port map (
      I0 => \s_axi_rdata_reg[24]_0\(24),
      I1 => \^dds_pinc_dbg\(24),
      I2 => s_axi_araddr(2),
      I3 => s_axi_araddr(0),
      I4 => s_axi_araddr(1),
      I5 => s_axi_araddr(3),
      O => s_axi_rdata_0(24)
    );
\s_axi_rdata[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => s_axi_araddr(3),
      I1 => s_axi_araddr(1),
      I2 => s_axi_araddr(0),
      I3 => s_axi_araddr(2),
      I4 => \^dds_pinc_dbg\(25),
      O => s_axi_rdata_0(25)
    );
\s_axi_rdata[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => s_axi_araddr(3),
      I1 => s_axi_araddr(1),
      I2 => s_axi_araddr(0),
      I3 => s_axi_araddr(2),
      I4 => \^dds_pinc_dbg\(26),
      O => s_axi_rdata_0(26)
    );
\s_axi_rdata[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => s_axi_araddr(3),
      I1 => s_axi_araddr(1),
      I2 => s_axi_araddr(0),
      I3 => s_axi_araddr(2),
      I4 => \^dds_pinc_dbg\(27),
      O => s_axi_rdata_0(27)
    );
\s_axi_rdata[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => s_axi_araddr(3),
      I1 => s_axi_araddr(1),
      I2 => s_axi_araddr(0),
      I3 => s_axi_araddr(2),
      I4 => \^dds_pinc_dbg\(28),
      O => s_axi_rdata_0(28)
    );
\s_axi_rdata[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => s_axi_araddr(3),
      I1 => s_axi_araddr(1),
      I2 => s_axi_araddr(0),
      I3 => s_axi_araddr(2),
      I4 => \^dds_pinc_dbg\(29),
      O => s_axi_rdata_0(29)
    );
\s_axi_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A0A220228082000"
    )
        port map (
      I0 => \s_axi_rdata[8]_i_2_n_0\,
      I1 => s_axi_araddr(3),
      I2 => s_axi_araddr(2),
      I3 => peak_index_dbg(2),
      I4 => \s_axi_rdata_reg[24]_0\(2),
      I5 => \^dds_pinc_dbg\(2),
      O => s_axi_rdata_0(2)
    );
\s_axi_rdata[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => s_axi_araddr(3),
      I1 => s_axi_araddr(1),
      I2 => s_axi_araddr(0),
      I3 => s_axi_araddr(2),
      I4 => \^dds_pinc_dbg\(30),
      O => s_axi_rdata_0(30)
    );
\s_axi_rdata[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \^s_axi_rvalid_reg_0\,
      O => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => s_axi_araddr(3),
      I1 => s_axi_araddr(1),
      I2 => s_axi_araddr(0),
      I3 => s_axi_araddr(2),
      I4 => \^dds_pinc_dbg\(31),
      O => s_axi_rdata_0(31)
    );
\s_axi_rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A0A220228082000"
    )
        port map (
      I0 => \s_axi_rdata[8]_i_2_n_0\,
      I1 => s_axi_araddr(3),
      I2 => s_axi_araddr(2),
      I3 => peak_index_dbg(3),
      I4 => \s_axi_rdata_reg[24]_0\(3),
      I5 => \^dds_pinc_dbg\(3),
      O => s_axi_rdata_0(3)
    );
\s_axi_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A0A220228082000"
    )
        port map (
      I0 => \s_axi_rdata[8]_i_2_n_0\,
      I1 => s_axi_araddr(3),
      I2 => s_axi_araddr(2),
      I3 => peak_index_dbg(4),
      I4 => \s_axi_rdata_reg[24]_0\(4),
      I5 => \^dds_pinc_dbg\(4),
      O => s_axi_rdata_0(4)
    );
\s_axi_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A0A220228082000"
    )
        port map (
      I0 => \s_axi_rdata[8]_i_2_n_0\,
      I1 => s_axi_araddr(3),
      I2 => s_axi_araddr(2),
      I3 => peak_index_dbg(5),
      I4 => \s_axi_rdata_reg[24]_0\(5),
      I5 => \^dds_pinc_dbg\(5),
      O => s_axi_rdata_0(5)
    );
\s_axi_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A0A220228082000"
    )
        port map (
      I0 => \s_axi_rdata[8]_i_2_n_0\,
      I1 => s_axi_araddr(3),
      I2 => s_axi_araddr(2),
      I3 => peak_index_dbg(6),
      I4 => \s_axi_rdata_reg[24]_0\(6),
      I5 => \^dds_pinc_dbg\(6),
      O => s_axi_rdata_0(6)
    );
\s_axi_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A0A220228082000"
    )
        port map (
      I0 => \s_axi_rdata[8]_i_2_n_0\,
      I1 => s_axi_araddr(3),
      I2 => s_axi_araddr(2),
      I3 => peak_index_dbg(7),
      I4 => \s_axi_rdata_reg[24]_0\(7),
      I5 => \^dds_pinc_dbg\(7),
      O => s_axi_rdata_0(7)
    );
\s_axi_rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A0A220228082000"
    )
        port map (
      I0 => \s_axi_rdata[8]_i_2_n_0\,
      I1 => s_axi_araddr(3),
      I2 => s_axi_araddr(2),
      I3 => data1(8),
      I4 => \s_axi_rdata_reg[24]_0\(8),
      I5 => \^dds_pinc_dbg\(8),
      O => s_axi_rdata_0(8)
    );
\s_axi_rdata[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_araddr(0),
      I1 => s_axi_araddr(1),
      O => \s_axi_rdata[8]_i_2_n_0\
    );
\s_axi_rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000A0000000C"
    )
        port map (
      I0 => \s_axi_rdata_reg[24]_0\(9),
      I1 => \^dds_pinc_dbg\(9),
      I2 => s_axi_araddr(2),
      I3 => s_axi_araddr(0),
      I4 => s_axi_araddr(1),
      I5 => s_axi_araddr(3),
      O => s_axi_rdata_0(9)
    );
\s_axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \s_axi_rdata[31]_i_1_n_0\,
      D => s_axi_rdata_0(0),
      Q => s_axi_rdata(0),
      R => SR(0)
    );
\s_axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \s_axi_rdata[31]_i_1_n_0\,
      D => s_axi_rdata_0(10),
      Q => s_axi_rdata(10),
      R => SR(0)
    );
\s_axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \s_axi_rdata[31]_i_1_n_0\,
      D => s_axi_rdata_0(11),
      Q => s_axi_rdata(11),
      R => SR(0)
    );
\s_axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \s_axi_rdata[31]_i_1_n_0\,
      D => s_axi_rdata_0(12),
      Q => s_axi_rdata(12),
      R => SR(0)
    );
\s_axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \s_axi_rdata[31]_i_1_n_0\,
      D => s_axi_rdata_0(13),
      Q => s_axi_rdata(13),
      R => SR(0)
    );
\s_axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \s_axi_rdata[31]_i_1_n_0\,
      D => s_axi_rdata_0(14),
      Q => s_axi_rdata(14),
      R => SR(0)
    );
\s_axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \s_axi_rdata[31]_i_1_n_0\,
      D => s_axi_rdata_0(15),
      Q => s_axi_rdata(15),
      R => SR(0)
    );
\s_axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \s_axi_rdata[31]_i_1_n_0\,
      D => s_axi_rdata_0(16),
      Q => s_axi_rdata(16),
      R => SR(0)
    );
\s_axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \s_axi_rdata[31]_i_1_n_0\,
      D => s_axi_rdata_0(17),
      Q => s_axi_rdata(17),
      R => SR(0)
    );
\s_axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \s_axi_rdata[31]_i_1_n_0\,
      D => s_axi_rdata_0(18),
      Q => s_axi_rdata(18),
      R => SR(0)
    );
\s_axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \s_axi_rdata[31]_i_1_n_0\,
      D => s_axi_rdata_0(19),
      Q => s_axi_rdata(19),
      R => SR(0)
    );
\s_axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \s_axi_rdata[31]_i_1_n_0\,
      D => s_axi_rdata_0(1),
      Q => s_axi_rdata(1),
      R => SR(0)
    );
\s_axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \s_axi_rdata[31]_i_1_n_0\,
      D => s_axi_rdata_0(20),
      Q => s_axi_rdata(20),
      R => SR(0)
    );
\s_axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \s_axi_rdata[31]_i_1_n_0\,
      D => s_axi_rdata_0(21),
      Q => s_axi_rdata(21),
      R => SR(0)
    );
\s_axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \s_axi_rdata[31]_i_1_n_0\,
      D => s_axi_rdata_0(22),
      Q => s_axi_rdata(22),
      R => SR(0)
    );
\s_axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \s_axi_rdata[31]_i_1_n_0\,
      D => s_axi_rdata_0(23),
      Q => s_axi_rdata(23),
      R => SR(0)
    );
\s_axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \s_axi_rdata[31]_i_1_n_0\,
      D => s_axi_rdata_0(24),
      Q => s_axi_rdata(24),
      R => SR(0)
    );
\s_axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \s_axi_rdata[31]_i_1_n_0\,
      D => s_axi_rdata_0(25),
      Q => s_axi_rdata(25),
      R => SR(0)
    );
\s_axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \s_axi_rdata[31]_i_1_n_0\,
      D => s_axi_rdata_0(26),
      Q => s_axi_rdata(26),
      R => SR(0)
    );
\s_axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \s_axi_rdata[31]_i_1_n_0\,
      D => s_axi_rdata_0(27),
      Q => s_axi_rdata(27),
      R => SR(0)
    );
\s_axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \s_axi_rdata[31]_i_1_n_0\,
      D => s_axi_rdata_0(28),
      Q => s_axi_rdata(28),
      R => SR(0)
    );
\s_axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \s_axi_rdata[31]_i_1_n_0\,
      D => s_axi_rdata_0(29),
      Q => s_axi_rdata(29),
      R => SR(0)
    );
\s_axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \s_axi_rdata[31]_i_1_n_0\,
      D => s_axi_rdata_0(2),
      Q => s_axi_rdata(2),
      R => SR(0)
    );
\s_axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \s_axi_rdata[31]_i_1_n_0\,
      D => s_axi_rdata_0(30),
      Q => s_axi_rdata(30),
      R => SR(0)
    );
\s_axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \s_axi_rdata[31]_i_1_n_0\,
      D => s_axi_rdata_0(31),
      Q => s_axi_rdata(31),
      R => SR(0)
    );
\s_axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \s_axi_rdata[31]_i_1_n_0\,
      D => s_axi_rdata_0(3),
      Q => s_axi_rdata(3),
      R => SR(0)
    );
\s_axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \s_axi_rdata[31]_i_1_n_0\,
      D => s_axi_rdata_0(4),
      Q => s_axi_rdata(4),
      R => SR(0)
    );
\s_axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \s_axi_rdata[31]_i_1_n_0\,
      D => s_axi_rdata_0(5),
      Q => s_axi_rdata(5),
      R => SR(0)
    );
\s_axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \s_axi_rdata[31]_i_1_n_0\,
      D => s_axi_rdata_0(6),
      Q => s_axi_rdata(6),
      R => SR(0)
    );
\s_axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \s_axi_rdata[31]_i_1_n_0\,
      D => s_axi_rdata_0(7),
      Q => s_axi_rdata(7),
      R => SR(0)
    );
\s_axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \s_axi_rdata[31]_i_1_n_0\,
      D => s_axi_rdata_0(8),
      Q => s_axi_rdata(8),
      R => SR(0)
    );
\s_axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \s_axi_rdata[31]_i_1_n_0\,
      D => s_axi_rdata_0(9),
      Q => s_axi_rdata(9),
      R => SR(0)
    );
s_axi_rvalid_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3A"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => s_axi_rready,
      I2 => \^s_axi_rvalid_reg_0\,
      O => s_axi_rvalid_i_1_n_0
    );
s_axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s_axi_rvalid_i_1_n_0,
      Q => \^s_axi_rvalid_reg_0\,
      R => SR(0)
    );
s_axi_wready_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wdata_valid_reg_n_0,
      I1 => \^s_axi_bvalid_reg_0\,
      O => s_axi_wready
    );
\wdata_reg[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \^s_axi_bvalid_reg_0\,
      I1 => wdata_valid_reg_n_0,
      I2 => s_axi_wvalid,
      O => accept_w
    );
\wdata_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => accept_w,
      D => s_axi_wdata(0),
      Q => \wdata_reg_reg_n_0_[0]\,
      R => SR(0)
    );
\wdata_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => accept_w,
      D => s_axi_wdata(10),
      Q => \wdata_reg_reg_n_0_[10]\,
      R => SR(0)
    );
\wdata_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => accept_w,
      D => s_axi_wdata(11),
      Q => \wdata_reg_reg_n_0_[11]\,
      R => SR(0)
    );
\wdata_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => accept_w,
      D => s_axi_wdata(12),
      Q => \wdata_reg_reg_n_0_[12]\,
      R => SR(0)
    );
\wdata_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => accept_w,
      D => s_axi_wdata(13),
      Q => \wdata_reg_reg_n_0_[13]\,
      R => SR(0)
    );
\wdata_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => accept_w,
      D => s_axi_wdata(14),
      Q => \wdata_reg_reg_n_0_[14]\,
      R => SR(0)
    );
\wdata_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => accept_w,
      D => s_axi_wdata(15),
      Q => \wdata_reg_reg_n_0_[15]\,
      R => SR(0)
    );
\wdata_reg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => accept_w,
      D => s_axi_wdata(16),
      Q => \wdata_reg_reg_n_0_[16]\,
      R => SR(0)
    );
\wdata_reg_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => accept_w,
      D => s_axi_wdata(17),
      Q => \wdata_reg_reg_n_0_[17]\,
      R => SR(0)
    );
\wdata_reg_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => accept_w,
      D => s_axi_wdata(18),
      Q => \wdata_reg_reg_n_0_[18]\,
      R => SR(0)
    );
\wdata_reg_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => accept_w,
      D => s_axi_wdata(19),
      Q => \wdata_reg_reg_n_0_[19]\,
      R => SR(0)
    );
\wdata_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => accept_w,
      D => s_axi_wdata(1),
      Q => \wdata_reg_reg_n_0_[1]\,
      R => SR(0)
    );
\wdata_reg_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => accept_w,
      D => s_axi_wdata(20),
      Q => \wdata_reg_reg_n_0_[20]\,
      R => SR(0)
    );
\wdata_reg_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => accept_w,
      D => s_axi_wdata(21),
      Q => \wdata_reg_reg_n_0_[21]\,
      R => SR(0)
    );
\wdata_reg_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => accept_w,
      D => s_axi_wdata(22),
      Q => \wdata_reg_reg_n_0_[22]\,
      R => SR(0)
    );
\wdata_reg_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => accept_w,
      D => s_axi_wdata(23),
      Q => \wdata_reg_reg_n_0_[23]\,
      R => SR(0)
    );
\wdata_reg_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => accept_w,
      D => s_axi_wdata(24),
      Q => \wdata_reg_reg_n_0_[24]\,
      R => SR(0)
    );
\wdata_reg_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => accept_w,
      D => s_axi_wdata(25),
      Q => \wdata_reg_reg_n_0_[25]\,
      R => SR(0)
    );
\wdata_reg_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => accept_w,
      D => s_axi_wdata(26),
      Q => \wdata_reg_reg_n_0_[26]\,
      R => SR(0)
    );
\wdata_reg_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => accept_w,
      D => s_axi_wdata(27),
      Q => \wdata_reg_reg_n_0_[27]\,
      R => SR(0)
    );
\wdata_reg_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => accept_w,
      D => s_axi_wdata(28),
      Q => \wdata_reg_reg_n_0_[28]\,
      R => SR(0)
    );
\wdata_reg_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => accept_w,
      D => s_axi_wdata(29),
      Q => \wdata_reg_reg_n_0_[29]\,
      R => SR(0)
    );
\wdata_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => accept_w,
      D => s_axi_wdata(2),
      Q => \wdata_reg_reg_n_0_[2]\,
      R => SR(0)
    );
\wdata_reg_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => accept_w,
      D => s_axi_wdata(30),
      Q => \wdata_reg_reg_n_0_[30]\,
      R => SR(0)
    );
\wdata_reg_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => accept_w,
      D => s_axi_wdata(31),
      Q => \wdata_reg_reg_n_0_[31]\,
      R => SR(0)
    );
\wdata_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => accept_w,
      D => s_axi_wdata(3),
      Q => \wdata_reg_reg_n_0_[3]\,
      R => SR(0)
    );
\wdata_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => accept_w,
      D => s_axi_wdata(4),
      Q => \wdata_reg_reg_n_0_[4]\,
      R => SR(0)
    );
\wdata_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => accept_w,
      D => s_axi_wdata(5),
      Q => \wdata_reg_reg_n_0_[5]\,
      R => SR(0)
    );
\wdata_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => accept_w,
      D => s_axi_wdata(6),
      Q => \wdata_reg_reg_n_0_[6]\,
      R => SR(0)
    );
\wdata_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => accept_w,
      D => s_axi_wdata(7),
      Q => \wdata_reg_reg_n_0_[7]\,
      R => SR(0)
    );
\wdata_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => accept_w,
      D => s_axi_wdata(8),
      Q => p_0_in,
      R => SR(0)
    );
\wdata_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => accept_w,
      D => s_axi_wdata(9),
      Q => \wdata_reg_reg_n_0_[9]\,
      R => SR(0)
    );
wdata_valid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C008C0C8"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => rst_n,
      I2 => wdata_valid_reg_n_0,
      I3 => \^s_axi_bvalid_reg_0\,
      I4 => awaddr_valid,
      O => wdata_valid_i_1_n_0
    );
wdata_valid_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => wdata_valid_i_1_n_0,
      Q => wdata_valid_reg_n_0,
      R => '0'
    );
\wstrb_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => accept_w,
      D => s_axi_wstrb(0),
      Q => \wstrb_reg_reg_n_0_[0]\,
      R => SR(0)
    );
\wstrb_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => accept_w,
      D => s_axi_wstrb(1),
      Q => dds_pinc1,
      R => SR(0)
    );
\wstrb_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => accept_w,
      D => s_axi_wstrb(2),
      Q => \wstrb_reg_reg_n_0_[2]\,
      R => SR(0)
    );
\wstrb_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => accept_w,
      D => s_axi_wstrb(3),
      Q => \wstrb_reg_reg_n_0_[3]\,
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_fft_pl_ps_0_0_peak_detector is
  port (
    peak_valid_dbg : out STD_LOGIC;
    peak_index_dbg : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \peak_value_reg[24]_0\ : out STD_LOGIC_VECTOR ( 24 downto 0 );
    clk : in STD_LOGIC;
    \peak_value_reg[0]_0\ : in STD_LOGIC;
    \peak_value_reg[0]_1\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 24 downto 0 );
    rst_n : in STD_LOGIC;
    \max_index_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_fft_pl_ps_0_0_peak_detector : entity is "peak_detector";
end system_fft_pl_ps_0_0_peak_detector;

architecture STRUCTURE of system_fft_pl_ps_0_0_peak_detector is
  signal max_index : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \max_index1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \max_index1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \max_index1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \max_index1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \max_index1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \max_index1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \max_index1_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \max_index1_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \max_index1_carry__0_n_0\ : STD_LOGIC;
  signal \max_index1_carry__0_n_1\ : STD_LOGIC;
  signal \max_index1_carry__0_n_2\ : STD_LOGIC;
  signal \max_index1_carry__0_n_3\ : STD_LOGIC;
  signal \max_index1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \max_index1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \max_index1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \max_index1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \max_index1_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \max_index1_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \max_index1_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \max_index1_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \max_index1_carry__1_n_0\ : STD_LOGIC;
  signal \max_index1_carry__1_n_1\ : STD_LOGIC;
  signal \max_index1_carry__1_n_2\ : STD_LOGIC;
  signal \max_index1_carry__1_n_3\ : STD_LOGIC;
  signal \max_index1_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \max_index1_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \max_index1_carry__2_n_3\ : STD_LOGIC;
  signal max_index1_carry_i_1_n_0 : STD_LOGIC;
  signal max_index1_carry_i_2_n_0 : STD_LOGIC;
  signal max_index1_carry_i_3_n_0 : STD_LOGIC;
  signal max_index1_carry_i_4_n_0 : STD_LOGIC;
  signal max_index1_carry_i_5_n_0 : STD_LOGIC;
  signal max_index1_carry_i_6_n_0 : STD_LOGIC;
  signal max_index1_carry_i_7_n_0 : STD_LOGIC;
  signal max_index1_carry_i_8_n_0 : STD_LOGIC;
  signal max_index1_carry_n_0 : STD_LOGIC;
  signal max_index1_carry_n_1 : STD_LOGIC;
  signal max_index1_carry_n_2 : STD_LOGIC;
  signal max_index1_carry_n_3 : STD_LOGIC;
  signal max_index_0 : STD_LOGIC;
  signal max_value : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal \max_value[24]_i_2_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \peak_index[7]_i_1_n_0\ : STD_LOGIC;
  signal peak_valid_i_1_n_0 : STD_LOGIC;
  signal \peak_value[0]_i_1_n_0\ : STD_LOGIC;
  signal \peak_value[10]_i_1_n_0\ : STD_LOGIC;
  signal \peak_value[11]_i_1_n_0\ : STD_LOGIC;
  signal \peak_value[12]_i_1_n_0\ : STD_LOGIC;
  signal \peak_value[13]_i_1_n_0\ : STD_LOGIC;
  signal \peak_value[14]_i_1_n_0\ : STD_LOGIC;
  signal \peak_value[15]_i_1_n_0\ : STD_LOGIC;
  signal \peak_value[16]_i_1_n_0\ : STD_LOGIC;
  signal \peak_value[17]_i_1_n_0\ : STD_LOGIC;
  signal \peak_value[18]_i_1_n_0\ : STD_LOGIC;
  signal \peak_value[19]_i_1_n_0\ : STD_LOGIC;
  signal \peak_value[1]_i_1_n_0\ : STD_LOGIC;
  signal \peak_value[20]_i_1_n_0\ : STD_LOGIC;
  signal \peak_value[21]_i_1_n_0\ : STD_LOGIC;
  signal \peak_value[22]_i_1_n_0\ : STD_LOGIC;
  signal \peak_value[23]_i_1_n_0\ : STD_LOGIC;
  signal \peak_value[24]_i_1_n_0\ : STD_LOGIC;
  signal \peak_value[2]_i_1_n_0\ : STD_LOGIC;
  signal \peak_value[3]_i_1_n_0\ : STD_LOGIC;
  signal \peak_value[4]_i_1_n_0\ : STD_LOGIC;
  signal \peak_value[5]_i_1_n_0\ : STD_LOGIC;
  signal \peak_value[6]_i_1_n_0\ : STD_LOGIC;
  signal \peak_value[7]_i_1_n_0\ : STD_LOGIC;
  signal \peak_value[8]_i_1_n_0\ : STD_LOGIC;
  signal \peak_value[9]_i_1_n_0\ : STD_LOGIC;
  signal NLW_max_index1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_max_index1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_max_index1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_max_index1_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_max_index1_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of max_index1_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \max_index1_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \max_index1_carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \max_index1_carry__2\ : label is 11;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \peak_index[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \peak_index[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \peak_index[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \peak_index[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \peak_index[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \peak_index[5]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \peak_index[6]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \peak_index[7]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \peak_value[10]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \peak_value[11]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \peak_value[12]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \peak_value[13]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \peak_value[14]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \peak_value[15]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \peak_value[16]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \peak_value[17]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \peak_value[18]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \peak_value[19]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \peak_value[1]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \peak_value[20]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \peak_value[21]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \peak_value[22]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \peak_value[23]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \peak_value[24]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \peak_value[2]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \peak_value[3]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \peak_value[4]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \peak_value[5]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \peak_value[6]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \peak_value[7]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \peak_value[8]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \peak_value[9]_i_1\ : label is "soft_lutpair11";
begin
max_index1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => max_index1_carry_n_0,
      CO(2) => max_index1_carry_n_1,
      CO(1) => max_index1_carry_n_2,
      CO(0) => max_index1_carry_n_3,
      CYINIT => '0',
      DI(3) => max_index1_carry_i_1_n_0,
      DI(2) => max_index1_carry_i_2_n_0,
      DI(1) => max_index1_carry_i_3_n_0,
      DI(0) => max_index1_carry_i_4_n_0,
      O(3 downto 0) => NLW_max_index1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => max_index1_carry_i_5_n_0,
      S(2) => max_index1_carry_i_6_n_0,
      S(1) => max_index1_carry_i_7_n_0,
      S(0) => max_index1_carry_i_8_n_0
    );
\max_index1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => max_index1_carry_n_0,
      CO(3) => \max_index1_carry__0_n_0\,
      CO(2) => \max_index1_carry__0_n_1\,
      CO(1) => \max_index1_carry__0_n_2\,
      CO(0) => \max_index1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \max_index1_carry__0_i_1_n_0\,
      DI(2) => \max_index1_carry__0_i_2_n_0\,
      DI(1) => \max_index1_carry__0_i_3_n_0\,
      DI(0) => \max_index1_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_max_index1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \max_index1_carry__0_i_5_n_0\,
      S(2) => \max_index1_carry__0_i_6_n_0\,
      S(1) => \max_index1_carry__0_i_7_n_0\,
      S(0) => \max_index1_carry__0_i_8_n_0\
    );
\max_index1_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => Q(15),
      I1 => max_value(15),
      I2 => Q(14),
      I3 => max_value(14),
      O => \max_index1_carry__0_i_1_n_0\
    );
\max_index1_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => Q(13),
      I1 => max_value(13),
      I2 => Q(12),
      I3 => max_value(12),
      O => \max_index1_carry__0_i_2_n_0\
    );
\max_index1_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => Q(11),
      I1 => max_value(11),
      I2 => Q(10),
      I3 => max_value(10),
      O => \max_index1_carry__0_i_3_n_0\
    );
\max_index1_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => Q(9),
      I1 => max_value(9),
      I2 => Q(8),
      I3 => max_value(8),
      O => \max_index1_carry__0_i_4_n_0\
    );
\max_index1_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => max_value(15),
      I1 => Q(15),
      I2 => max_value(14),
      I3 => Q(14),
      O => \max_index1_carry__0_i_5_n_0\
    );
\max_index1_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => max_value(13),
      I1 => Q(13),
      I2 => max_value(12),
      I3 => Q(12),
      O => \max_index1_carry__0_i_6_n_0\
    );
\max_index1_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => max_value(11),
      I1 => Q(11),
      I2 => max_value(10),
      I3 => Q(10),
      O => \max_index1_carry__0_i_7_n_0\
    );
\max_index1_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => max_value(9),
      I1 => Q(9),
      I2 => max_value(8),
      I3 => Q(8),
      O => \max_index1_carry__0_i_8_n_0\
    );
\max_index1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \max_index1_carry__0_n_0\,
      CO(3) => \max_index1_carry__1_n_0\,
      CO(2) => \max_index1_carry__1_n_1\,
      CO(1) => \max_index1_carry__1_n_2\,
      CO(0) => \max_index1_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \max_index1_carry__1_i_1_n_0\,
      DI(2) => \max_index1_carry__1_i_2_n_0\,
      DI(1) => \max_index1_carry__1_i_3_n_0\,
      DI(0) => \max_index1_carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_max_index1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \max_index1_carry__1_i_5_n_0\,
      S(2) => \max_index1_carry__1_i_6_n_0\,
      S(1) => \max_index1_carry__1_i_7_n_0\,
      S(0) => \max_index1_carry__1_i_8_n_0\
    );
\max_index1_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => Q(23),
      I1 => max_value(23),
      I2 => Q(22),
      I3 => max_value(22),
      O => \max_index1_carry__1_i_1_n_0\
    );
\max_index1_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => Q(21),
      I1 => max_value(21),
      I2 => Q(20),
      I3 => max_value(20),
      O => \max_index1_carry__1_i_2_n_0\
    );
\max_index1_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => Q(19),
      I1 => max_value(19),
      I2 => Q(18),
      I3 => max_value(18),
      O => \max_index1_carry__1_i_3_n_0\
    );
\max_index1_carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => Q(17),
      I1 => max_value(17),
      I2 => Q(16),
      I3 => max_value(16),
      O => \max_index1_carry__1_i_4_n_0\
    );
\max_index1_carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => max_value(23),
      I1 => Q(23),
      I2 => max_value(22),
      I3 => Q(22),
      O => \max_index1_carry__1_i_5_n_0\
    );
\max_index1_carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => max_value(21),
      I1 => Q(21),
      I2 => max_value(20),
      I3 => Q(20),
      O => \max_index1_carry__1_i_6_n_0\
    );
\max_index1_carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => max_value(19),
      I1 => Q(19),
      I2 => max_value(18),
      I3 => Q(18),
      O => \max_index1_carry__1_i_7_n_0\
    );
\max_index1_carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => max_value(17),
      I1 => Q(17),
      I2 => max_value(16),
      I3 => Q(16),
      O => \max_index1_carry__1_i_8_n_0\
    );
\max_index1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \max_index1_carry__1_n_0\,
      CO(3 downto 1) => \NLW_max_index1_carry__2_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \max_index1_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \max_index1_carry__2_i_1_n_0\,
      O(3 downto 0) => \NLW_max_index1_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \max_index1_carry__2_i_2_n_0\
    );
\max_index1_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(24),
      I1 => max_value(24),
      O => \max_index1_carry__2_i_1_n_0\
    );
\max_index1_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => max_value(24),
      I1 => Q(24),
      O => \max_index1_carry__2_i_2_n_0\
    );
max_index1_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => Q(7),
      I1 => max_value(7),
      I2 => Q(6),
      I3 => max_value(6),
      O => max_index1_carry_i_1_n_0
    );
max_index1_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => Q(5),
      I1 => max_value(5),
      I2 => Q(4),
      I3 => max_value(4),
      O => max_index1_carry_i_2_n_0
    );
max_index1_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => Q(3),
      I1 => max_value(3),
      I2 => Q(2),
      I3 => max_value(2),
      O => max_index1_carry_i_3_n_0
    );
max_index1_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => Q(1),
      I1 => max_value(1),
      I2 => Q(0),
      I3 => max_value(0),
      O => max_index1_carry_i_4_n_0
    );
max_index1_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => max_value(7),
      I1 => Q(7),
      I2 => max_value(6),
      I3 => Q(6),
      O => max_index1_carry_i_5_n_0
    );
max_index1_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => max_value(5),
      I1 => Q(5),
      I2 => max_value(4),
      I3 => Q(4),
      O => max_index1_carry_i_6_n_0
    );
max_index1_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => max_value(3),
      I1 => Q(3),
      I2 => max_value(2),
      I3 => Q(2),
      O => max_index1_carry_i_7_n_0
    );
max_index1_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => max_value(1),
      I1 => Q(1),
      I2 => max_value(0),
      I3 => Q(0),
      O => max_index1_carry_i_8_n_0
    );
\max_index_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => max_index_0,
      D => \max_index_reg[7]_0\(0),
      Q => max_index(0),
      R => SR(0)
    );
\max_index_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => max_index_0,
      D => \max_index_reg[7]_0\(1),
      Q => max_index(1),
      R => SR(0)
    );
\max_index_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => max_index_0,
      D => \max_index_reg[7]_0\(2),
      Q => max_index(2),
      R => SR(0)
    );
\max_index_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => max_index_0,
      D => \max_index_reg[7]_0\(3),
      Q => max_index(3),
      R => SR(0)
    );
\max_index_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => max_index_0,
      D => \max_index_reg[7]_0\(4),
      Q => max_index(4),
      R => SR(0)
    );
\max_index_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => max_index_0,
      D => \max_index_reg[7]_0\(5),
      Q => max_index(5),
      R => SR(0)
    );
\max_index_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => max_index_0,
      D => \max_index_reg[7]_0\(6),
      Q => max_index(6),
      R => SR(0)
    );
\max_index_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => max_index_0,
      D => \max_index_reg[7]_0\(7),
      Q => max_index(7),
      R => SR(0)
    );
\max_value[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAE0000"
    )
        port map (
      I0 => \max_index1_carry__2_n_3\,
      I1 => \max_value[24]_i_2_n_0\,
      I2 => \max_index_reg[7]_0\(1),
      I3 => \max_index_reg[7]_0\(0),
      I4 => \peak_value_reg[0]_0\,
      O => max_index_0
    );
\max_value[24]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \max_index_reg[7]_0\(4),
      I1 => \max_index_reg[7]_0\(5),
      I2 => \max_index_reg[7]_0\(2),
      I3 => \max_index_reg[7]_0\(3),
      I4 => \max_index_reg[7]_0\(7),
      I5 => \max_index_reg[7]_0\(6),
      O => \max_value[24]_i_2_n_0\
    );
\max_value_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => max_index_0,
      D => Q(0),
      Q => max_value(0),
      R => SR(0)
    );
\max_value_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => max_index_0,
      D => Q(10),
      Q => max_value(10),
      R => SR(0)
    );
\max_value_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => max_index_0,
      D => Q(11),
      Q => max_value(11),
      R => SR(0)
    );
\max_value_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => max_index_0,
      D => Q(12),
      Q => max_value(12),
      R => SR(0)
    );
\max_value_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => max_index_0,
      D => Q(13),
      Q => max_value(13),
      R => SR(0)
    );
\max_value_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => max_index_0,
      D => Q(14),
      Q => max_value(14),
      R => SR(0)
    );
\max_value_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => max_index_0,
      D => Q(15),
      Q => max_value(15),
      R => SR(0)
    );
\max_value_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => max_index_0,
      D => Q(16),
      Q => max_value(16),
      R => SR(0)
    );
\max_value_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => max_index_0,
      D => Q(17),
      Q => max_value(17),
      R => SR(0)
    );
\max_value_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => max_index_0,
      D => Q(18),
      Q => max_value(18),
      R => SR(0)
    );
\max_value_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => max_index_0,
      D => Q(19),
      Q => max_value(19),
      R => SR(0)
    );
\max_value_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => max_index_0,
      D => Q(1),
      Q => max_value(1),
      R => SR(0)
    );
\max_value_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => max_index_0,
      D => Q(20),
      Q => max_value(20),
      R => SR(0)
    );
\max_value_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => max_index_0,
      D => Q(21),
      Q => max_value(21),
      R => SR(0)
    );
\max_value_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => max_index_0,
      D => Q(22),
      Q => max_value(22),
      R => SR(0)
    );
\max_value_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => max_index_0,
      D => Q(23),
      Q => max_value(23),
      R => SR(0)
    );
\max_value_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => max_index_0,
      D => Q(24),
      Q => max_value(24),
      R => SR(0)
    );
\max_value_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => max_index_0,
      D => Q(2),
      Q => max_value(2),
      R => SR(0)
    );
\max_value_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => max_index_0,
      D => Q(3),
      Q => max_value(3),
      R => SR(0)
    );
\max_value_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => max_index_0,
      D => Q(4),
      Q => max_value(4),
      R => SR(0)
    );
\max_value_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => max_index_0,
      D => Q(5),
      Q => max_value(5),
      R => SR(0)
    );
\max_value_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => max_index_0,
      D => Q(6),
      Q => max_value(6),
      R => SR(0)
    );
\max_value_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => max_index_0,
      D => Q(7),
      Q => max_value(7),
      R => SR(0)
    );
\max_value_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => max_index_0,
      D => Q(8),
      Q => max_value(8),
      R => SR(0)
    );
\max_value_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => max_index_0,
      D => Q(9),
      Q => max_value(9),
      R => SR(0)
    );
\peak_index[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \max_index_reg[7]_0\(0),
      I1 => \max_index1_carry__2_n_3\,
      I2 => max_index(0),
      O => p_0_in(0)
    );
\peak_index[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \max_index_reg[7]_0\(1),
      I1 => \max_index1_carry__2_n_3\,
      I2 => max_index(1),
      O => p_0_in(1)
    );
\peak_index[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \max_index_reg[7]_0\(2),
      I1 => \max_index1_carry__2_n_3\,
      I2 => max_index(2),
      O => p_0_in(2)
    );
\peak_index[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \max_index_reg[7]_0\(3),
      I1 => \max_index1_carry__2_n_3\,
      I2 => max_index(3),
      O => p_0_in(3)
    );
\peak_index[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \max_index_reg[7]_0\(4),
      I1 => \max_index1_carry__2_n_3\,
      I2 => max_index(4),
      O => p_0_in(4)
    );
\peak_index[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \max_index_reg[7]_0\(5),
      I1 => \max_index1_carry__2_n_3\,
      I2 => max_index(5),
      O => p_0_in(5)
    );
\peak_index[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \max_index_reg[7]_0\(6),
      I1 => \max_index1_carry__2_n_3\,
      I2 => max_index(6),
      O => p_0_in(6)
    );
\peak_index[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \peak_value_reg[0]_0\,
      I1 => \peak_value_reg[0]_1\,
      O => \peak_index[7]_i_1_n_0\
    );
\peak_index[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \max_index_reg[7]_0\(7),
      I1 => \max_index1_carry__2_n_3\,
      I2 => max_index(7),
      O => p_0_in(7)
    );
\peak_index_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \peak_index[7]_i_1_n_0\,
      D => p_0_in(0),
      Q => peak_index_dbg(0),
      R => SR(0)
    );
\peak_index_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \peak_index[7]_i_1_n_0\,
      D => p_0_in(1),
      Q => peak_index_dbg(1),
      R => SR(0)
    );
\peak_index_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \peak_index[7]_i_1_n_0\,
      D => p_0_in(2),
      Q => peak_index_dbg(2),
      R => SR(0)
    );
\peak_index_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \peak_index[7]_i_1_n_0\,
      D => p_0_in(3),
      Q => peak_index_dbg(3),
      R => SR(0)
    );
\peak_index_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \peak_index[7]_i_1_n_0\,
      D => p_0_in(4),
      Q => peak_index_dbg(4),
      R => SR(0)
    );
\peak_index_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \peak_index[7]_i_1_n_0\,
      D => p_0_in(5),
      Q => peak_index_dbg(5),
      R => SR(0)
    );
\peak_index_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \peak_index[7]_i_1_n_0\,
      D => p_0_in(6),
      Q => peak_index_dbg(6),
      R => SR(0)
    );
\peak_index_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \peak_index[7]_i_1_n_0\,
      D => p_0_in(7),
      Q => peak_index_dbg(7),
      R => SR(0)
    );
peak_valid_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \peak_value_reg[0]_0\,
      I1 => \peak_value_reg[0]_1\,
      I2 => rst_n,
      O => peak_valid_i_1_n_0
    );
peak_valid_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => peak_valid_i_1_n_0,
      Q => peak_valid_dbg,
      R => '0'
    );
\peak_value[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(0),
      I1 => \max_index1_carry__2_n_3\,
      I2 => max_value(0),
      O => \peak_value[0]_i_1_n_0\
    );
\peak_value[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(10),
      I1 => \max_index1_carry__2_n_3\,
      I2 => max_value(10),
      O => \peak_value[10]_i_1_n_0\
    );
\peak_value[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(11),
      I1 => \max_index1_carry__2_n_3\,
      I2 => max_value(11),
      O => \peak_value[11]_i_1_n_0\
    );
\peak_value[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(12),
      I1 => \max_index1_carry__2_n_3\,
      I2 => max_value(12),
      O => \peak_value[12]_i_1_n_0\
    );
\peak_value[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(13),
      I1 => \max_index1_carry__2_n_3\,
      I2 => max_value(13),
      O => \peak_value[13]_i_1_n_0\
    );
\peak_value[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(14),
      I1 => \max_index1_carry__2_n_3\,
      I2 => max_value(14),
      O => \peak_value[14]_i_1_n_0\
    );
\peak_value[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(15),
      I1 => \max_index1_carry__2_n_3\,
      I2 => max_value(15),
      O => \peak_value[15]_i_1_n_0\
    );
\peak_value[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(16),
      I1 => \max_index1_carry__2_n_3\,
      I2 => max_value(16),
      O => \peak_value[16]_i_1_n_0\
    );
\peak_value[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(17),
      I1 => \max_index1_carry__2_n_3\,
      I2 => max_value(17),
      O => \peak_value[17]_i_1_n_0\
    );
\peak_value[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(18),
      I1 => \max_index1_carry__2_n_3\,
      I2 => max_value(18),
      O => \peak_value[18]_i_1_n_0\
    );
\peak_value[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(19),
      I1 => \max_index1_carry__2_n_3\,
      I2 => max_value(19),
      O => \peak_value[19]_i_1_n_0\
    );
\peak_value[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(1),
      I1 => \max_index1_carry__2_n_3\,
      I2 => max_value(1),
      O => \peak_value[1]_i_1_n_0\
    );
\peak_value[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(20),
      I1 => \max_index1_carry__2_n_3\,
      I2 => max_value(20),
      O => \peak_value[20]_i_1_n_0\
    );
\peak_value[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(21),
      I1 => \max_index1_carry__2_n_3\,
      I2 => max_value(21),
      O => \peak_value[21]_i_1_n_0\
    );
\peak_value[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(22),
      I1 => \max_index1_carry__2_n_3\,
      I2 => max_value(22),
      O => \peak_value[22]_i_1_n_0\
    );
\peak_value[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(23),
      I1 => \max_index1_carry__2_n_3\,
      I2 => max_value(23),
      O => \peak_value[23]_i_1_n_0\
    );
\peak_value[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(24),
      I1 => \max_index1_carry__2_n_3\,
      I2 => max_value(24),
      O => \peak_value[24]_i_1_n_0\
    );
\peak_value[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(2),
      I1 => \max_index1_carry__2_n_3\,
      I2 => max_value(2),
      O => \peak_value[2]_i_1_n_0\
    );
\peak_value[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(3),
      I1 => \max_index1_carry__2_n_3\,
      I2 => max_value(3),
      O => \peak_value[3]_i_1_n_0\
    );
\peak_value[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(4),
      I1 => \max_index1_carry__2_n_3\,
      I2 => max_value(4),
      O => \peak_value[4]_i_1_n_0\
    );
\peak_value[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(5),
      I1 => \max_index1_carry__2_n_3\,
      I2 => max_value(5),
      O => \peak_value[5]_i_1_n_0\
    );
\peak_value[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(6),
      I1 => \max_index1_carry__2_n_3\,
      I2 => max_value(6),
      O => \peak_value[6]_i_1_n_0\
    );
\peak_value[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(7),
      I1 => \max_index1_carry__2_n_3\,
      I2 => max_value(7),
      O => \peak_value[7]_i_1_n_0\
    );
\peak_value[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(8),
      I1 => \max_index1_carry__2_n_3\,
      I2 => max_value(8),
      O => \peak_value[8]_i_1_n_0\
    );
\peak_value[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(9),
      I1 => \max_index1_carry__2_n_3\,
      I2 => max_value(9),
      O => \peak_value[9]_i_1_n_0\
    );
\peak_value_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \peak_index[7]_i_1_n_0\,
      D => \peak_value[0]_i_1_n_0\,
      Q => \peak_value_reg[24]_0\(0),
      R => SR(0)
    );
\peak_value_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \peak_index[7]_i_1_n_0\,
      D => \peak_value[10]_i_1_n_0\,
      Q => \peak_value_reg[24]_0\(10),
      R => SR(0)
    );
\peak_value_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \peak_index[7]_i_1_n_0\,
      D => \peak_value[11]_i_1_n_0\,
      Q => \peak_value_reg[24]_0\(11),
      R => SR(0)
    );
\peak_value_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \peak_index[7]_i_1_n_0\,
      D => \peak_value[12]_i_1_n_0\,
      Q => \peak_value_reg[24]_0\(12),
      R => SR(0)
    );
\peak_value_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \peak_index[7]_i_1_n_0\,
      D => \peak_value[13]_i_1_n_0\,
      Q => \peak_value_reg[24]_0\(13),
      R => SR(0)
    );
\peak_value_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \peak_index[7]_i_1_n_0\,
      D => \peak_value[14]_i_1_n_0\,
      Q => \peak_value_reg[24]_0\(14),
      R => SR(0)
    );
\peak_value_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \peak_index[7]_i_1_n_0\,
      D => \peak_value[15]_i_1_n_0\,
      Q => \peak_value_reg[24]_0\(15),
      R => SR(0)
    );
\peak_value_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \peak_index[7]_i_1_n_0\,
      D => \peak_value[16]_i_1_n_0\,
      Q => \peak_value_reg[24]_0\(16),
      R => SR(0)
    );
\peak_value_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \peak_index[7]_i_1_n_0\,
      D => \peak_value[17]_i_1_n_0\,
      Q => \peak_value_reg[24]_0\(17),
      R => SR(0)
    );
\peak_value_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \peak_index[7]_i_1_n_0\,
      D => \peak_value[18]_i_1_n_0\,
      Q => \peak_value_reg[24]_0\(18),
      R => SR(0)
    );
\peak_value_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \peak_index[7]_i_1_n_0\,
      D => \peak_value[19]_i_1_n_0\,
      Q => \peak_value_reg[24]_0\(19),
      R => SR(0)
    );
\peak_value_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \peak_index[7]_i_1_n_0\,
      D => \peak_value[1]_i_1_n_0\,
      Q => \peak_value_reg[24]_0\(1),
      R => SR(0)
    );
\peak_value_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \peak_index[7]_i_1_n_0\,
      D => \peak_value[20]_i_1_n_0\,
      Q => \peak_value_reg[24]_0\(20),
      R => SR(0)
    );
\peak_value_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \peak_index[7]_i_1_n_0\,
      D => \peak_value[21]_i_1_n_0\,
      Q => \peak_value_reg[24]_0\(21),
      R => SR(0)
    );
\peak_value_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \peak_index[7]_i_1_n_0\,
      D => \peak_value[22]_i_1_n_0\,
      Q => \peak_value_reg[24]_0\(22),
      R => SR(0)
    );
\peak_value_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \peak_index[7]_i_1_n_0\,
      D => \peak_value[23]_i_1_n_0\,
      Q => \peak_value_reg[24]_0\(23),
      R => SR(0)
    );
\peak_value_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \peak_index[7]_i_1_n_0\,
      D => \peak_value[24]_i_1_n_0\,
      Q => \peak_value_reg[24]_0\(24),
      R => SR(0)
    );
\peak_value_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \peak_index[7]_i_1_n_0\,
      D => \peak_value[2]_i_1_n_0\,
      Q => \peak_value_reg[24]_0\(2),
      R => SR(0)
    );
\peak_value_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \peak_index[7]_i_1_n_0\,
      D => \peak_value[3]_i_1_n_0\,
      Q => \peak_value_reg[24]_0\(3),
      R => SR(0)
    );
\peak_value_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \peak_index[7]_i_1_n_0\,
      D => \peak_value[4]_i_1_n_0\,
      Q => \peak_value_reg[24]_0\(4),
      R => SR(0)
    );
\peak_value_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \peak_index[7]_i_1_n_0\,
      D => \peak_value[5]_i_1_n_0\,
      Q => \peak_value_reg[24]_0\(5),
      R => SR(0)
    );
\peak_value_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \peak_index[7]_i_1_n_0\,
      D => \peak_value[6]_i_1_n_0\,
      Q => \peak_value_reg[24]_0\(6),
      R => SR(0)
    );
\peak_value_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \peak_index[7]_i_1_n_0\,
      D => \peak_value[7]_i_1_n_0\,
      Q => \peak_value_reg[24]_0\(7),
      R => SR(0)
    );
\peak_value_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \peak_index[7]_i_1_n_0\,
      D => \peak_value[8]_i_1_n_0\,
      Q => \peak_value_reg[24]_0\(8),
      R => SR(0)
    );
\peak_value_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \peak_index[7]_i_1_n_0\,
      D => \peak_value[9]_i_1_n_0\,
      Q => \peak_value_reg[24]_0\(9),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_fft_pl_ps_0_0_three_term_part4 is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 11 downto 0 );
    \round_w_return1__2_0\ : out STD_LOGIC_VECTOR ( 11 downto 0 );
    xk_valid_out : out STD_LOGIC;
    xk_last_out : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    m_axis_data_tvalid : in STD_LOGIC;
    m_axis_data_tuser : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_data_tlast : in STD_LOGIC;
    m_axis_data_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_fft_pl_ps_0_0_three_term_part4 : entity is "three_term_part4";
end system_fft_pl_ps_0_0_three_term_part4;

architecture STRUCTURE of system_fft_pl_ps_0_0_three_term_part4 is
  signal \FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal last_s1 : STD_LOGIC;
  signal last_s10 : STD_LOGIC;
  signal last_s1_i_2_n_0 : STD_LOGIC;
  signal last_s2 : STD_LOGIC;
  signal m : STD_LOGIC;
  signal \m[0]_i_2_n_0\ : STD_LOGIC;
  signal \m[1]_i_1_n_0\ : STD_LOGIC;
  signal \m[2]_i_1_n_0\ : STD_LOGIC;
  signal \m[3]_i_1_n_0\ : STD_LOGIC;
  signal \m[4]_i_1_n_0\ : STD_LOGIC;
  signal \m[5]_i_1_n_0\ : STD_LOGIC;
  signal \m[6]_i_1_n_0\ : STD_LOGIC;
  signal \m[7]_i_1_n_0\ : STD_LOGIC;
  signal m_minus_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m_plus_1 : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \m_reg_n_0_[0]\ : STD_LOGIC;
  signal \m_reg_n_0_[1]\ : STD_LOGIC;
  signal \m_reg_n_0_[2]\ : STD_LOGIC;
  signal \m_reg_n_0_[3]\ : STD_LOGIC;
  signal \m_reg_n_0_[4]\ : STD_LOGIC;
  signal \m_reg_n_0_[5]\ : STD_LOGIC;
  signal \m_reg_n_0_[6]\ : STD_LOGIC;
  signal \m_reg_n_0_[7]\ : STD_LOGIC;
  signal m_s1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m_s2 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \round_w_return1__0_i_15_n_0\ : STD_LOGIC;
  signal \round_w_return1__0_n_100\ : STD_LOGIC;
  signal \round_w_return1__0_n_101\ : STD_LOGIC;
  signal \round_w_return1__0_n_102\ : STD_LOGIC;
  signal \round_w_return1__0_n_103\ : STD_LOGIC;
  signal \round_w_return1__0_n_104\ : STD_LOGIC;
  signal \round_w_return1__0_n_105\ : STD_LOGIC;
  signal \round_w_return1__0_n_91\ : STD_LOGIC;
  signal \round_w_return1__0_n_92\ : STD_LOGIC;
  signal \round_w_return1__0_n_93\ : STD_LOGIC;
  signal \round_w_return1__0_n_94\ : STD_LOGIC;
  signal \round_w_return1__0_n_95\ : STD_LOGIC;
  signal \round_w_return1__0_n_96\ : STD_LOGIC;
  signal \round_w_return1__0_n_97\ : STD_LOGIC;
  signal \round_w_return1__0_n_98\ : STD_LOGIC;
  signal \round_w_return1__0_n_99\ : STD_LOGIC;
  signal \round_w_return1__1_n_106\ : STD_LOGIC;
  signal \round_w_return1__1_n_107\ : STD_LOGIC;
  signal \round_w_return1__1_n_108\ : STD_LOGIC;
  signal \round_w_return1__1_n_109\ : STD_LOGIC;
  signal \round_w_return1__1_n_110\ : STD_LOGIC;
  signal \round_w_return1__1_n_111\ : STD_LOGIC;
  signal \round_w_return1__1_n_112\ : STD_LOGIC;
  signal \round_w_return1__1_n_113\ : STD_LOGIC;
  signal \round_w_return1__1_n_114\ : STD_LOGIC;
  signal \round_w_return1__1_n_115\ : STD_LOGIC;
  signal \round_w_return1__1_n_116\ : STD_LOGIC;
  signal \round_w_return1__1_n_117\ : STD_LOGIC;
  signal \round_w_return1__1_n_118\ : STD_LOGIC;
  signal \round_w_return1__1_n_119\ : STD_LOGIC;
  signal \round_w_return1__1_n_120\ : STD_LOGIC;
  signal \round_w_return1__1_n_121\ : STD_LOGIC;
  signal \round_w_return1__1_n_122\ : STD_LOGIC;
  signal \round_w_return1__1_n_123\ : STD_LOGIC;
  signal \round_w_return1__1_n_124\ : STD_LOGIC;
  signal \round_w_return1__1_n_125\ : STD_LOGIC;
  signal \round_w_return1__1_n_126\ : STD_LOGIC;
  signal \round_w_return1__1_n_127\ : STD_LOGIC;
  signal \round_w_return1__1_n_128\ : STD_LOGIC;
  signal \round_w_return1__1_n_129\ : STD_LOGIC;
  signal \round_w_return1__1_n_130\ : STD_LOGIC;
  signal \round_w_return1__1_n_131\ : STD_LOGIC;
  signal \round_w_return1__1_n_132\ : STD_LOGIC;
  signal \round_w_return1__1_n_133\ : STD_LOGIC;
  signal \round_w_return1__1_n_134\ : STD_LOGIC;
  signal \round_w_return1__1_n_135\ : STD_LOGIC;
  signal \round_w_return1__1_n_136\ : STD_LOGIC;
  signal \round_w_return1__1_n_137\ : STD_LOGIC;
  signal \round_w_return1__1_n_138\ : STD_LOGIC;
  signal \round_w_return1__1_n_139\ : STD_LOGIC;
  signal \round_w_return1__1_n_140\ : STD_LOGIC;
  signal \round_w_return1__1_n_141\ : STD_LOGIC;
  signal \round_w_return1__1_n_142\ : STD_LOGIC;
  signal \round_w_return1__1_n_143\ : STD_LOGIC;
  signal \round_w_return1__1_n_144\ : STD_LOGIC;
  signal \round_w_return1__1_n_145\ : STD_LOGIC;
  signal \round_w_return1__1_n_146\ : STD_LOGIC;
  signal \round_w_return1__1_n_147\ : STD_LOGIC;
  signal \round_w_return1__1_n_148\ : STD_LOGIC;
  signal \round_w_return1__1_n_149\ : STD_LOGIC;
  signal \round_w_return1__1_n_150\ : STD_LOGIC;
  signal \round_w_return1__1_n_151\ : STD_LOGIC;
  signal \round_w_return1__1_n_152\ : STD_LOGIC;
  signal \round_w_return1__1_n_153\ : STD_LOGIC;
  signal \round_w_return1__2_n_100\ : STD_LOGIC;
  signal \round_w_return1__2_n_101\ : STD_LOGIC;
  signal \round_w_return1__2_n_102\ : STD_LOGIC;
  signal \round_w_return1__2_n_103\ : STD_LOGIC;
  signal \round_w_return1__2_n_104\ : STD_LOGIC;
  signal \round_w_return1__2_n_105\ : STD_LOGIC;
  signal \round_w_return1__2_n_91\ : STD_LOGIC;
  signal \round_w_return1__2_n_92\ : STD_LOGIC;
  signal \round_w_return1__2_n_93\ : STD_LOGIC;
  signal \round_w_return1__2_n_94\ : STD_LOGIC;
  signal \round_w_return1__2_n_95\ : STD_LOGIC;
  signal \round_w_return1__2_n_96\ : STD_LOGIC;
  signal \round_w_return1__2_n_97\ : STD_LOGIC;
  signal \round_w_return1__2_n_98\ : STD_LOGIC;
  signal \round_w_return1__2_n_99\ : STD_LOGIC;
  signal round_w_return1_n_106 : STD_LOGIC;
  signal round_w_return1_n_107 : STD_LOGIC;
  signal round_w_return1_n_108 : STD_LOGIC;
  signal round_w_return1_n_109 : STD_LOGIC;
  signal round_w_return1_n_110 : STD_LOGIC;
  signal round_w_return1_n_111 : STD_LOGIC;
  signal round_w_return1_n_112 : STD_LOGIC;
  signal round_w_return1_n_113 : STD_LOGIC;
  signal round_w_return1_n_114 : STD_LOGIC;
  signal round_w_return1_n_115 : STD_LOGIC;
  signal round_w_return1_n_116 : STD_LOGIC;
  signal round_w_return1_n_117 : STD_LOGIC;
  signal round_w_return1_n_118 : STD_LOGIC;
  signal round_w_return1_n_119 : STD_LOGIC;
  signal round_w_return1_n_120 : STD_LOGIC;
  signal round_w_return1_n_121 : STD_LOGIC;
  signal round_w_return1_n_122 : STD_LOGIC;
  signal round_w_return1_n_123 : STD_LOGIC;
  signal round_w_return1_n_124 : STD_LOGIC;
  signal round_w_return1_n_125 : STD_LOGIC;
  signal round_w_return1_n_126 : STD_LOGIC;
  signal round_w_return1_n_127 : STD_LOGIC;
  signal round_w_return1_n_128 : STD_LOGIC;
  signal round_w_return1_n_129 : STD_LOGIC;
  signal round_w_return1_n_130 : STD_LOGIC;
  signal round_w_return1_n_131 : STD_LOGIC;
  signal round_w_return1_n_132 : STD_LOGIC;
  signal round_w_return1_n_133 : STD_LOGIC;
  signal round_w_return1_n_134 : STD_LOGIC;
  signal round_w_return1_n_135 : STD_LOGIC;
  signal round_w_return1_n_136 : STD_LOGIC;
  signal round_w_return1_n_137 : STD_LOGIC;
  signal round_w_return1_n_138 : STD_LOGIC;
  signal round_w_return1_n_139 : STD_LOGIC;
  signal round_w_return1_n_140 : STD_LOGIC;
  signal round_w_return1_n_141 : STD_LOGIC;
  signal round_w_return1_n_142 : STD_LOGIC;
  signal round_w_return1_n_143 : STD_LOGIC;
  signal round_w_return1_n_144 : STD_LOGIC;
  signal round_w_return1_n_145 : STD_LOGIC;
  signal round_w_return1_n_146 : STD_LOGIC;
  signal round_w_return1_n_147 : STD_LOGIC;
  signal round_w_return1_n_148 : STD_LOGIC;
  signal round_w_return1_n_149 : STD_LOGIC;
  signal round_w_return1_n_150 : STD_LOGIC;
  signal round_w_return1_n_151 : STD_LOGIC;
  signal round_w_return1_n_152 : STD_LOGIC;
  signal round_w_return1_n_153 : STD_LOGIC;
  signal vld_s1 : STD_LOGIC;
  signal vld_s2 : STD_LOGIC;
  signal xim_m0 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal xim_mem_reg_r1_0_63_0_2_n_0 : STD_LOGIC;
  signal xim_mem_reg_r1_0_63_0_2_n_1 : STD_LOGIC;
  signal xim_mem_reg_r1_0_63_0_2_n_2 : STD_LOGIC;
  signal xim_mem_reg_r1_0_63_3_5_n_0 : STD_LOGIC;
  signal xim_mem_reg_r1_0_63_3_5_n_1 : STD_LOGIC;
  signal xim_mem_reg_r1_0_63_3_5_n_2 : STD_LOGIC;
  signal xim_mem_reg_r1_0_63_6_8_n_0 : STD_LOGIC;
  signal xim_mem_reg_r1_0_63_6_8_n_1 : STD_LOGIC;
  signal xim_mem_reg_r1_0_63_6_8_n_2 : STD_LOGIC;
  signal xim_mem_reg_r1_0_63_9_11_n_0 : STD_LOGIC;
  signal xim_mem_reg_r1_0_63_9_11_n_1 : STD_LOGIC;
  signal xim_mem_reg_r1_0_63_9_11_n_2 : STD_LOGIC;
  signal xim_mem_reg_r1_128_191_0_2_n_0 : STD_LOGIC;
  signal xim_mem_reg_r1_128_191_0_2_n_1 : STD_LOGIC;
  signal xim_mem_reg_r1_128_191_0_2_n_2 : STD_LOGIC;
  signal xim_mem_reg_r1_128_191_3_5_n_0 : STD_LOGIC;
  signal xim_mem_reg_r1_128_191_3_5_n_1 : STD_LOGIC;
  signal xim_mem_reg_r1_128_191_3_5_n_2 : STD_LOGIC;
  signal xim_mem_reg_r1_128_191_6_8_n_0 : STD_LOGIC;
  signal xim_mem_reg_r1_128_191_6_8_n_1 : STD_LOGIC;
  signal xim_mem_reg_r1_128_191_6_8_n_2 : STD_LOGIC;
  signal xim_mem_reg_r1_128_191_9_11_n_0 : STD_LOGIC;
  signal xim_mem_reg_r1_128_191_9_11_n_1 : STD_LOGIC;
  signal xim_mem_reg_r1_128_191_9_11_n_2 : STD_LOGIC;
  signal xim_mem_reg_r1_192_255_0_2_n_0 : STD_LOGIC;
  signal xim_mem_reg_r1_192_255_0_2_n_1 : STD_LOGIC;
  signal xim_mem_reg_r1_192_255_0_2_n_2 : STD_LOGIC;
  signal xim_mem_reg_r1_192_255_3_5_n_0 : STD_LOGIC;
  signal xim_mem_reg_r1_192_255_3_5_n_1 : STD_LOGIC;
  signal xim_mem_reg_r1_192_255_3_5_n_2 : STD_LOGIC;
  signal xim_mem_reg_r1_192_255_6_8_n_0 : STD_LOGIC;
  signal xim_mem_reg_r1_192_255_6_8_n_1 : STD_LOGIC;
  signal xim_mem_reg_r1_192_255_6_8_n_2 : STD_LOGIC;
  signal xim_mem_reg_r1_192_255_9_11_n_0 : STD_LOGIC;
  signal xim_mem_reg_r1_192_255_9_11_n_1 : STD_LOGIC;
  signal xim_mem_reg_r1_192_255_9_11_n_2 : STD_LOGIC;
  signal xim_mem_reg_r1_64_127_0_2_n_0 : STD_LOGIC;
  signal xim_mem_reg_r1_64_127_0_2_n_1 : STD_LOGIC;
  signal xim_mem_reg_r1_64_127_0_2_n_2 : STD_LOGIC;
  signal xim_mem_reg_r1_64_127_3_5_n_0 : STD_LOGIC;
  signal xim_mem_reg_r1_64_127_3_5_n_1 : STD_LOGIC;
  signal xim_mem_reg_r1_64_127_3_5_n_2 : STD_LOGIC;
  signal xim_mem_reg_r1_64_127_6_8_n_0 : STD_LOGIC;
  signal xim_mem_reg_r1_64_127_6_8_n_1 : STD_LOGIC;
  signal xim_mem_reg_r1_64_127_6_8_n_2 : STD_LOGIC;
  signal xim_mem_reg_r1_64_127_9_11_n_0 : STD_LOGIC;
  signal xim_mem_reg_r1_64_127_9_11_n_1 : STD_LOGIC;
  signal xim_mem_reg_r1_64_127_9_11_n_2 : STD_LOGIC;
  signal xim_mem_reg_r2_0_63_0_2_n_0 : STD_LOGIC;
  signal xim_mem_reg_r2_0_63_0_2_n_1 : STD_LOGIC;
  signal xim_mem_reg_r2_0_63_0_2_n_2 : STD_LOGIC;
  signal xim_mem_reg_r2_0_63_3_5_n_0 : STD_LOGIC;
  signal xim_mem_reg_r2_0_63_3_5_n_1 : STD_LOGIC;
  signal xim_mem_reg_r2_0_63_3_5_n_2 : STD_LOGIC;
  signal xim_mem_reg_r2_0_63_6_8_n_0 : STD_LOGIC;
  signal xim_mem_reg_r2_0_63_6_8_n_1 : STD_LOGIC;
  signal xim_mem_reg_r2_0_63_6_8_n_2 : STD_LOGIC;
  signal xim_mem_reg_r2_0_63_9_11_n_0 : STD_LOGIC;
  signal xim_mem_reg_r2_0_63_9_11_n_1 : STD_LOGIC;
  signal xim_mem_reg_r2_0_63_9_11_n_2 : STD_LOGIC;
  signal xim_mem_reg_r2_128_191_0_2_n_0 : STD_LOGIC;
  signal xim_mem_reg_r2_128_191_0_2_n_1 : STD_LOGIC;
  signal xim_mem_reg_r2_128_191_0_2_n_2 : STD_LOGIC;
  signal xim_mem_reg_r2_128_191_3_5_n_0 : STD_LOGIC;
  signal xim_mem_reg_r2_128_191_3_5_n_1 : STD_LOGIC;
  signal xim_mem_reg_r2_128_191_3_5_n_2 : STD_LOGIC;
  signal xim_mem_reg_r2_128_191_6_8_n_0 : STD_LOGIC;
  signal xim_mem_reg_r2_128_191_6_8_n_1 : STD_LOGIC;
  signal xim_mem_reg_r2_128_191_6_8_n_2 : STD_LOGIC;
  signal xim_mem_reg_r2_128_191_9_11_n_0 : STD_LOGIC;
  signal xim_mem_reg_r2_128_191_9_11_n_1 : STD_LOGIC;
  signal xim_mem_reg_r2_128_191_9_11_n_2 : STD_LOGIC;
  signal xim_mem_reg_r2_192_255_0_2_n_0 : STD_LOGIC;
  signal xim_mem_reg_r2_192_255_0_2_n_1 : STD_LOGIC;
  signal xim_mem_reg_r2_192_255_0_2_n_2 : STD_LOGIC;
  signal xim_mem_reg_r2_192_255_3_5_n_0 : STD_LOGIC;
  signal xim_mem_reg_r2_192_255_3_5_n_1 : STD_LOGIC;
  signal xim_mem_reg_r2_192_255_3_5_n_2 : STD_LOGIC;
  signal xim_mem_reg_r2_192_255_6_8_n_0 : STD_LOGIC;
  signal xim_mem_reg_r2_192_255_6_8_n_1 : STD_LOGIC;
  signal xim_mem_reg_r2_192_255_6_8_n_2 : STD_LOGIC;
  signal xim_mem_reg_r2_192_255_9_11_n_0 : STD_LOGIC;
  signal xim_mem_reg_r2_192_255_9_11_n_1 : STD_LOGIC;
  signal xim_mem_reg_r2_192_255_9_11_n_2 : STD_LOGIC;
  signal xim_mem_reg_r2_64_127_0_2_n_0 : STD_LOGIC;
  signal xim_mem_reg_r2_64_127_0_2_n_1 : STD_LOGIC;
  signal xim_mem_reg_r2_64_127_0_2_n_2 : STD_LOGIC;
  signal xim_mem_reg_r2_64_127_3_5_n_0 : STD_LOGIC;
  signal xim_mem_reg_r2_64_127_3_5_n_1 : STD_LOGIC;
  signal xim_mem_reg_r2_64_127_3_5_n_2 : STD_LOGIC;
  signal xim_mem_reg_r2_64_127_6_8_n_0 : STD_LOGIC;
  signal xim_mem_reg_r2_64_127_6_8_n_1 : STD_LOGIC;
  signal xim_mem_reg_r2_64_127_6_8_n_2 : STD_LOGIC;
  signal xim_mem_reg_r2_64_127_9_11_n_0 : STD_LOGIC;
  signal xim_mem_reg_r2_64_127_9_11_n_1 : STD_LOGIC;
  signal xim_mem_reg_r2_64_127_9_11_n_2 : STD_LOGIC;
  signal xim_mem_reg_r3_0_63_0_2_n_0 : STD_LOGIC;
  signal xim_mem_reg_r3_0_63_0_2_n_1 : STD_LOGIC;
  signal xim_mem_reg_r3_0_63_0_2_n_2 : STD_LOGIC;
  signal xim_mem_reg_r3_0_63_3_5_n_0 : STD_LOGIC;
  signal xim_mem_reg_r3_0_63_3_5_n_1 : STD_LOGIC;
  signal xim_mem_reg_r3_0_63_3_5_n_2 : STD_LOGIC;
  signal xim_mem_reg_r3_0_63_6_8_n_0 : STD_LOGIC;
  signal xim_mem_reg_r3_0_63_6_8_n_1 : STD_LOGIC;
  signal xim_mem_reg_r3_0_63_6_8_n_2 : STD_LOGIC;
  signal xim_mem_reg_r3_0_63_9_11_n_0 : STD_LOGIC;
  signal xim_mem_reg_r3_0_63_9_11_n_1 : STD_LOGIC;
  signal xim_mem_reg_r3_0_63_9_11_n_2 : STD_LOGIC;
  signal xim_mem_reg_r3_128_191_0_2_n_0 : STD_LOGIC;
  signal xim_mem_reg_r3_128_191_0_2_n_1 : STD_LOGIC;
  signal xim_mem_reg_r3_128_191_0_2_n_2 : STD_LOGIC;
  signal xim_mem_reg_r3_128_191_3_5_n_0 : STD_LOGIC;
  signal xim_mem_reg_r3_128_191_3_5_n_1 : STD_LOGIC;
  signal xim_mem_reg_r3_128_191_3_5_n_2 : STD_LOGIC;
  signal xim_mem_reg_r3_128_191_6_8_n_0 : STD_LOGIC;
  signal xim_mem_reg_r3_128_191_6_8_n_1 : STD_LOGIC;
  signal xim_mem_reg_r3_128_191_6_8_n_2 : STD_LOGIC;
  signal xim_mem_reg_r3_128_191_9_11_n_0 : STD_LOGIC;
  signal xim_mem_reg_r3_128_191_9_11_n_1 : STD_LOGIC;
  signal xim_mem_reg_r3_128_191_9_11_n_2 : STD_LOGIC;
  signal xim_mem_reg_r3_192_255_0_2_n_0 : STD_LOGIC;
  signal xim_mem_reg_r3_192_255_0_2_n_1 : STD_LOGIC;
  signal xim_mem_reg_r3_192_255_0_2_n_2 : STD_LOGIC;
  signal xim_mem_reg_r3_192_255_3_5_n_0 : STD_LOGIC;
  signal xim_mem_reg_r3_192_255_3_5_n_1 : STD_LOGIC;
  signal xim_mem_reg_r3_192_255_3_5_n_2 : STD_LOGIC;
  signal xim_mem_reg_r3_192_255_6_8_n_0 : STD_LOGIC;
  signal xim_mem_reg_r3_192_255_6_8_n_1 : STD_LOGIC;
  signal xim_mem_reg_r3_192_255_6_8_n_2 : STD_LOGIC;
  signal xim_mem_reg_r3_192_255_9_11_n_0 : STD_LOGIC;
  signal xim_mem_reg_r3_192_255_9_11_n_1 : STD_LOGIC;
  signal xim_mem_reg_r3_192_255_9_11_n_2 : STD_LOGIC;
  signal xim_mem_reg_r3_64_127_0_2_n_0 : STD_LOGIC;
  signal xim_mem_reg_r3_64_127_0_2_n_1 : STD_LOGIC;
  signal xim_mem_reg_r3_64_127_0_2_n_2 : STD_LOGIC;
  signal xim_mem_reg_r3_64_127_3_5_n_0 : STD_LOGIC;
  signal xim_mem_reg_r3_64_127_3_5_n_1 : STD_LOGIC;
  signal xim_mem_reg_r3_64_127_3_5_n_2 : STD_LOGIC;
  signal xim_mem_reg_r3_64_127_6_8_n_0 : STD_LOGIC;
  signal xim_mem_reg_r3_64_127_6_8_n_1 : STD_LOGIC;
  signal xim_mem_reg_r3_64_127_6_8_n_2 : STD_LOGIC;
  signal xim_mem_reg_r3_64_127_9_11_n_0 : STD_LOGIC;
  signal xim_mem_reg_r3_64_127_9_11_n_1 : STD_LOGIC;
  signal xim_mem_reg_r3_64_127_9_11_n_2 : STD_LOGIC;
  signal xim_mm1 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal xim_mm10 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal xim_mp10 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal xre_m0 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal xre_mem_reg_r1_0_63_0_2_i_1_n_0 : STD_LOGIC;
  signal xre_mem_reg_r1_0_63_0_2_i_7_n_0 : STD_LOGIC;
  signal xre_mem_reg_r1_0_63_0_2_n_0 : STD_LOGIC;
  signal xre_mem_reg_r1_0_63_0_2_n_1 : STD_LOGIC;
  signal xre_mem_reg_r1_0_63_0_2_n_2 : STD_LOGIC;
  signal xre_mem_reg_r1_0_63_3_5_n_0 : STD_LOGIC;
  signal xre_mem_reg_r1_0_63_3_5_n_1 : STD_LOGIC;
  signal xre_mem_reg_r1_0_63_3_5_n_2 : STD_LOGIC;
  signal xre_mem_reg_r1_0_63_6_8_n_0 : STD_LOGIC;
  signal xre_mem_reg_r1_0_63_6_8_n_1 : STD_LOGIC;
  signal xre_mem_reg_r1_0_63_6_8_n_2 : STD_LOGIC;
  signal xre_mem_reg_r1_0_63_9_11_n_0 : STD_LOGIC;
  signal xre_mem_reg_r1_0_63_9_11_n_1 : STD_LOGIC;
  signal xre_mem_reg_r1_0_63_9_11_n_2 : STD_LOGIC;
  signal xre_mem_reg_r1_128_191_0_2_i_1_n_0 : STD_LOGIC;
  signal xre_mem_reg_r1_128_191_0_2_n_0 : STD_LOGIC;
  signal xre_mem_reg_r1_128_191_0_2_n_1 : STD_LOGIC;
  signal xre_mem_reg_r1_128_191_0_2_n_2 : STD_LOGIC;
  signal xre_mem_reg_r1_128_191_3_5_n_0 : STD_LOGIC;
  signal xre_mem_reg_r1_128_191_3_5_n_1 : STD_LOGIC;
  signal xre_mem_reg_r1_128_191_3_5_n_2 : STD_LOGIC;
  signal xre_mem_reg_r1_128_191_6_8_n_0 : STD_LOGIC;
  signal xre_mem_reg_r1_128_191_6_8_n_1 : STD_LOGIC;
  signal xre_mem_reg_r1_128_191_6_8_n_2 : STD_LOGIC;
  signal xre_mem_reg_r1_128_191_9_11_n_0 : STD_LOGIC;
  signal xre_mem_reg_r1_128_191_9_11_n_1 : STD_LOGIC;
  signal xre_mem_reg_r1_128_191_9_11_n_2 : STD_LOGIC;
  signal xre_mem_reg_r1_192_255_0_2_i_1_n_0 : STD_LOGIC;
  signal xre_mem_reg_r1_192_255_0_2_n_0 : STD_LOGIC;
  signal xre_mem_reg_r1_192_255_0_2_n_1 : STD_LOGIC;
  signal xre_mem_reg_r1_192_255_0_2_n_2 : STD_LOGIC;
  signal xre_mem_reg_r1_192_255_3_5_n_0 : STD_LOGIC;
  signal xre_mem_reg_r1_192_255_3_5_n_1 : STD_LOGIC;
  signal xre_mem_reg_r1_192_255_3_5_n_2 : STD_LOGIC;
  signal xre_mem_reg_r1_192_255_6_8_n_0 : STD_LOGIC;
  signal xre_mem_reg_r1_192_255_6_8_n_1 : STD_LOGIC;
  signal xre_mem_reg_r1_192_255_6_8_n_2 : STD_LOGIC;
  signal xre_mem_reg_r1_192_255_9_11_n_0 : STD_LOGIC;
  signal xre_mem_reg_r1_192_255_9_11_n_1 : STD_LOGIC;
  signal xre_mem_reg_r1_192_255_9_11_n_2 : STD_LOGIC;
  signal xre_mem_reg_r1_64_127_0_2_i_1_n_0 : STD_LOGIC;
  signal xre_mem_reg_r1_64_127_0_2_n_0 : STD_LOGIC;
  signal xre_mem_reg_r1_64_127_0_2_n_1 : STD_LOGIC;
  signal xre_mem_reg_r1_64_127_0_2_n_2 : STD_LOGIC;
  signal xre_mem_reg_r1_64_127_3_5_n_0 : STD_LOGIC;
  signal xre_mem_reg_r1_64_127_3_5_n_1 : STD_LOGIC;
  signal xre_mem_reg_r1_64_127_3_5_n_2 : STD_LOGIC;
  signal xre_mem_reg_r1_64_127_6_8_n_0 : STD_LOGIC;
  signal xre_mem_reg_r1_64_127_6_8_n_1 : STD_LOGIC;
  signal xre_mem_reg_r1_64_127_6_8_n_2 : STD_LOGIC;
  signal xre_mem_reg_r1_64_127_9_11_n_0 : STD_LOGIC;
  signal xre_mem_reg_r1_64_127_9_11_n_1 : STD_LOGIC;
  signal xre_mem_reg_r1_64_127_9_11_n_2 : STD_LOGIC;
  signal xre_mem_reg_r2_0_63_0_2_n_0 : STD_LOGIC;
  signal xre_mem_reg_r2_0_63_0_2_n_1 : STD_LOGIC;
  signal xre_mem_reg_r2_0_63_0_2_n_2 : STD_LOGIC;
  signal xre_mem_reg_r2_0_63_3_5_n_0 : STD_LOGIC;
  signal xre_mem_reg_r2_0_63_3_5_n_1 : STD_LOGIC;
  signal xre_mem_reg_r2_0_63_3_5_n_2 : STD_LOGIC;
  signal xre_mem_reg_r2_0_63_6_8_n_0 : STD_LOGIC;
  signal xre_mem_reg_r2_0_63_6_8_n_1 : STD_LOGIC;
  signal xre_mem_reg_r2_0_63_6_8_n_2 : STD_LOGIC;
  signal xre_mem_reg_r2_0_63_9_11_n_0 : STD_LOGIC;
  signal xre_mem_reg_r2_0_63_9_11_n_1 : STD_LOGIC;
  signal xre_mem_reg_r2_0_63_9_11_n_2 : STD_LOGIC;
  signal xre_mem_reg_r2_128_191_0_2_n_0 : STD_LOGIC;
  signal xre_mem_reg_r2_128_191_0_2_n_1 : STD_LOGIC;
  signal xre_mem_reg_r2_128_191_0_2_n_2 : STD_LOGIC;
  signal xre_mem_reg_r2_128_191_3_5_n_0 : STD_LOGIC;
  signal xre_mem_reg_r2_128_191_3_5_n_1 : STD_LOGIC;
  signal xre_mem_reg_r2_128_191_3_5_n_2 : STD_LOGIC;
  signal xre_mem_reg_r2_128_191_6_8_n_0 : STD_LOGIC;
  signal xre_mem_reg_r2_128_191_6_8_n_1 : STD_LOGIC;
  signal xre_mem_reg_r2_128_191_6_8_n_2 : STD_LOGIC;
  signal xre_mem_reg_r2_128_191_9_11_n_0 : STD_LOGIC;
  signal xre_mem_reg_r2_128_191_9_11_n_1 : STD_LOGIC;
  signal xre_mem_reg_r2_128_191_9_11_n_2 : STD_LOGIC;
  signal xre_mem_reg_r2_192_255_0_2_n_0 : STD_LOGIC;
  signal xre_mem_reg_r2_192_255_0_2_n_1 : STD_LOGIC;
  signal xre_mem_reg_r2_192_255_0_2_n_2 : STD_LOGIC;
  signal xre_mem_reg_r2_192_255_3_5_n_0 : STD_LOGIC;
  signal xre_mem_reg_r2_192_255_3_5_n_1 : STD_LOGIC;
  signal xre_mem_reg_r2_192_255_3_5_n_2 : STD_LOGIC;
  signal xre_mem_reg_r2_192_255_6_8_n_0 : STD_LOGIC;
  signal xre_mem_reg_r2_192_255_6_8_n_1 : STD_LOGIC;
  signal xre_mem_reg_r2_192_255_6_8_n_2 : STD_LOGIC;
  signal xre_mem_reg_r2_192_255_9_11_n_0 : STD_LOGIC;
  signal xre_mem_reg_r2_192_255_9_11_n_1 : STD_LOGIC;
  signal xre_mem_reg_r2_192_255_9_11_n_2 : STD_LOGIC;
  signal xre_mem_reg_r2_64_127_0_2_n_0 : STD_LOGIC;
  signal xre_mem_reg_r2_64_127_0_2_n_1 : STD_LOGIC;
  signal xre_mem_reg_r2_64_127_0_2_n_2 : STD_LOGIC;
  signal xre_mem_reg_r2_64_127_3_5_n_0 : STD_LOGIC;
  signal xre_mem_reg_r2_64_127_3_5_n_1 : STD_LOGIC;
  signal xre_mem_reg_r2_64_127_3_5_n_2 : STD_LOGIC;
  signal xre_mem_reg_r2_64_127_6_8_n_0 : STD_LOGIC;
  signal xre_mem_reg_r2_64_127_6_8_n_1 : STD_LOGIC;
  signal xre_mem_reg_r2_64_127_6_8_n_2 : STD_LOGIC;
  signal xre_mem_reg_r2_64_127_9_11_n_0 : STD_LOGIC;
  signal xre_mem_reg_r2_64_127_9_11_n_1 : STD_LOGIC;
  signal xre_mem_reg_r2_64_127_9_11_n_2 : STD_LOGIC;
  signal xre_mem_reg_r3_0_63_0_2_n_0 : STD_LOGIC;
  signal xre_mem_reg_r3_0_63_0_2_n_1 : STD_LOGIC;
  signal xre_mem_reg_r3_0_63_0_2_n_2 : STD_LOGIC;
  signal xre_mem_reg_r3_0_63_3_5_n_0 : STD_LOGIC;
  signal xre_mem_reg_r3_0_63_3_5_n_1 : STD_LOGIC;
  signal xre_mem_reg_r3_0_63_3_5_n_2 : STD_LOGIC;
  signal xre_mem_reg_r3_0_63_6_8_n_0 : STD_LOGIC;
  signal xre_mem_reg_r3_0_63_6_8_n_1 : STD_LOGIC;
  signal xre_mem_reg_r3_0_63_6_8_n_2 : STD_LOGIC;
  signal xre_mem_reg_r3_0_63_9_11_n_0 : STD_LOGIC;
  signal xre_mem_reg_r3_0_63_9_11_n_1 : STD_LOGIC;
  signal xre_mem_reg_r3_0_63_9_11_n_2 : STD_LOGIC;
  signal xre_mem_reg_r3_128_191_0_2_n_0 : STD_LOGIC;
  signal xre_mem_reg_r3_128_191_0_2_n_1 : STD_LOGIC;
  signal xre_mem_reg_r3_128_191_0_2_n_2 : STD_LOGIC;
  signal xre_mem_reg_r3_128_191_3_5_n_0 : STD_LOGIC;
  signal xre_mem_reg_r3_128_191_3_5_n_1 : STD_LOGIC;
  signal xre_mem_reg_r3_128_191_3_5_n_2 : STD_LOGIC;
  signal xre_mem_reg_r3_128_191_6_8_n_0 : STD_LOGIC;
  signal xre_mem_reg_r3_128_191_6_8_n_1 : STD_LOGIC;
  signal xre_mem_reg_r3_128_191_6_8_n_2 : STD_LOGIC;
  signal xre_mem_reg_r3_128_191_9_11_n_0 : STD_LOGIC;
  signal xre_mem_reg_r3_128_191_9_11_n_1 : STD_LOGIC;
  signal xre_mem_reg_r3_128_191_9_11_n_2 : STD_LOGIC;
  signal xre_mem_reg_r3_192_255_0_2_n_0 : STD_LOGIC;
  signal xre_mem_reg_r3_192_255_0_2_n_1 : STD_LOGIC;
  signal xre_mem_reg_r3_192_255_0_2_n_2 : STD_LOGIC;
  signal xre_mem_reg_r3_192_255_3_5_n_0 : STD_LOGIC;
  signal xre_mem_reg_r3_192_255_3_5_n_1 : STD_LOGIC;
  signal xre_mem_reg_r3_192_255_3_5_n_2 : STD_LOGIC;
  signal xre_mem_reg_r3_192_255_6_8_n_0 : STD_LOGIC;
  signal xre_mem_reg_r3_192_255_6_8_n_1 : STD_LOGIC;
  signal xre_mem_reg_r3_192_255_6_8_n_2 : STD_LOGIC;
  signal xre_mem_reg_r3_192_255_9_11_n_0 : STD_LOGIC;
  signal xre_mem_reg_r3_192_255_9_11_n_1 : STD_LOGIC;
  signal xre_mem_reg_r3_192_255_9_11_n_2 : STD_LOGIC;
  signal xre_mem_reg_r3_64_127_0_2_n_0 : STD_LOGIC;
  signal xre_mem_reg_r3_64_127_0_2_n_1 : STD_LOGIC;
  signal xre_mem_reg_r3_64_127_0_2_n_2 : STD_LOGIC;
  signal xre_mem_reg_r3_64_127_3_5_n_0 : STD_LOGIC;
  signal xre_mem_reg_r3_64_127_3_5_n_1 : STD_LOGIC;
  signal xre_mem_reg_r3_64_127_3_5_n_2 : STD_LOGIC;
  signal xre_mem_reg_r3_64_127_6_8_n_0 : STD_LOGIC;
  signal xre_mem_reg_r3_64_127_6_8_n_1 : STD_LOGIC;
  signal xre_mem_reg_r3_64_127_6_8_n_2 : STD_LOGIC;
  signal xre_mem_reg_r3_64_127_9_11_n_0 : STD_LOGIC;
  signal xre_mem_reg_r3_64_127_9_11_n_1 : STD_LOGIC;
  signal xre_mem_reg_r3_64_127_9_11_n_2 : STD_LOGIC;
  signal xre_mm1 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal xre_mm10 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \xre_mm1[11]_i_4_n_0\ : STD_LOGIC;
  signal xre_mp10 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_round_w_return1_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_round_w_return1_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_round_w_return1_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_round_w_return1_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_round_w_return1_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_round_w_return1_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_round_w_return1_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_round_w_return1_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_round_w_return1_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_round_w_return1_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_round_w_return1__0_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_round_w_return1__0_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_round_w_return1__0_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_round_w_return1__0_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_round_w_return1__0_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_round_w_return1__0_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_round_w_return1__0_ACOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_round_w_return1__0_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_round_w_return1__0_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_round_w_return1__0_P_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 27 );
  signal \NLW_round_w_return1__0_PCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_round_w_return1__1_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_round_w_return1__1_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_round_w_return1__1_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_round_w_return1__1_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_round_w_return1__1_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_round_w_return1__1_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_round_w_return1__1_ACOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_round_w_return1__1_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_round_w_return1__1_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_round_w_return1__1_P_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_round_w_return1__2_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_round_w_return1__2_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_round_w_return1__2_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_round_w_return1__2_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_round_w_return1__2_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_round_w_return1__2_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_round_w_return1__2_ACOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_round_w_return1__2_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_round_w_return1__2_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_round_w_return1__2_P_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 27 );
  signal \NLW_round_w_return1__2_PCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_xim_mem_reg_r1_0_63_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_xim_mem_reg_r1_0_63_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_xim_mem_reg_r1_0_63_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_xim_mem_reg_r1_0_63_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_xim_mem_reg_r1_128_191_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_xim_mem_reg_r1_128_191_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_xim_mem_reg_r1_128_191_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_xim_mem_reg_r1_128_191_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_xim_mem_reg_r1_192_255_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_xim_mem_reg_r1_192_255_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_xim_mem_reg_r1_192_255_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_xim_mem_reg_r1_192_255_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_xim_mem_reg_r1_64_127_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_xim_mem_reg_r1_64_127_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_xim_mem_reg_r1_64_127_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_xim_mem_reg_r1_64_127_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_xim_mem_reg_r2_0_63_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_xim_mem_reg_r2_0_63_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_xim_mem_reg_r2_0_63_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_xim_mem_reg_r2_0_63_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_xim_mem_reg_r2_128_191_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_xim_mem_reg_r2_128_191_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_xim_mem_reg_r2_128_191_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_xim_mem_reg_r2_128_191_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_xim_mem_reg_r2_192_255_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_xim_mem_reg_r2_192_255_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_xim_mem_reg_r2_192_255_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_xim_mem_reg_r2_192_255_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_xim_mem_reg_r2_64_127_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_xim_mem_reg_r2_64_127_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_xim_mem_reg_r2_64_127_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_xim_mem_reg_r2_64_127_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_xim_mem_reg_r3_0_63_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_xim_mem_reg_r3_0_63_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_xim_mem_reg_r3_0_63_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_xim_mem_reg_r3_0_63_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_xim_mem_reg_r3_128_191_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_xim_mem_reg_r3_128_191_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_xim_mem_reg_r3_128_191_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_xim_mem_reg_r3_128_191_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_xim_mem_reg_r3_192_255_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_xim_mem_reg_r3_192_255_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_xim_mem_reg_r3_192_255_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_xim_mem_reg_r3_192_255_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_xim_mem_reg_r3_64_127_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_xim_mem_reg_r3_64_127_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_xim_mem_reg_r3_64_127_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_xim_mem_reg_r3_64_127_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_xre_mem_reg_r1_0_63_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_xre_mem_reg_r1_0_63_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_xre_mem_reg_r1_0_63_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_xre_mem_reg_r1_0_63_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_xre_mem_reg_r1_128_191_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_xre_mem_reg_r1_128_191_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_xre_mem_reg_r1_128_191_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_xre_mem_reg_r1_128_191_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_xre_mem_reg_r1_192_255_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_xre_mem_reg_r1_192_255_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_xre_mem_reg_r1_192_255_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_xre_mem_reg_r1_192_255_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_xre_mem_reg_r1_64_127_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_xre_mem_reg_r1_64_127_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_xre_mem_reg_r1_64_127_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_xre_mem_reg_r1_64_127_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_xre_mem_reg_r2_0_63_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_xre_mem_reg_r2_0_63_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_xre_mem_reg_r2_0_63_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_xre_mem_reg_r2_0_63_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_xre_mem_reg_r2_128_191_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_xre_mem_reg_r2_128_191_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_xre_mem_reg_r2_128_191_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_xre_mem_reg_r2_128_191_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_xre_mem_reg_r2_192_255_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_xre_mem_reg_r2_192_255_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_xre_mem_reg_r2_192_255_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_xre_mem_reg_r2_192_255_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_xre_mem_reg_r2_64_127_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_xre_mem_reg_r2_64_127_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_xre_mem_reg_r2_64_127_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_xre_mem_reg_r2_64_127_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_xre_mem_reg_r3_0_63_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_xre_mem_reg_r3_0_63_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_xre_mem_reg_r3_0_63_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_xre_mem_reg_r3_0_63_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_xre_mem_reg_r3_128_191_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_xre_mem_reg_r3_128_191_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_xre_mem_reg_r3_128_191_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_xre_mem_reg_r3_128_191_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_xre_mem_reg_r3_192_255_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_xre_mem_reg_r3_192_255_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_xre_mem_reg_r3_192_255_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_xre_mem_reg_r3_192_255_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_xre_mem_reg_r3_64_127_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_xre_mem_reg_r3_64_127_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_xre_mem_reg_r3_64_127_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_xre_mem_reg_r3_64_127_9_11_DOD_UNCONNECTED : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "S_CAPTURE:001,S_SWEEP:010,S_DONE:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "S_CAPTURE:001,S_SWEEP:010,S_DONE:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "S_CAPTURE:001,S_SWEEP:010,S_DONE:100,";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of last_s1_i_1 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \m[0]_i_2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \m[1]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \m[2]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \m[3]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \m[5]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \m[6]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \m[7]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \round_w_return1__0_i_13\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \round_w_return1__0_i_15\ : label is "soft_lutpair19";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of xim_mem_reg_r1_0_63_0_2 : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of xim_mem_reg_r1_0_63_0_2 : label is 3072;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of xim_mem_reg_r1_0_63_0_2 : label is "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xim_mem_reg";
  attribute RTL_RAM_STYLE : string;
  attribute RTL_RAM_STYLE of xim_mem_reg_r1_0_63_0_2 : label is "auto";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of xim_mem_reg_r1_0_63_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of xim_mem_reg_r1_0_63_0_2 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of xim_mem_reg_r1_0_63_0_2 : label is 63;
  attribute ram_offset : integer;
  attribute ram_offset of xim_mem_reg_r1_0_63_0_2 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of xim_mem_reg_r1_0_63_0_2 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of xim_mem_reg_r1_0_63_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of xim_mem_reg_r1_0_63_3_5 : label is "";
  attribute RTL_RAM_BITS of xim_mem_reg_r1_0_63_3_5 : label is 3072;
  attribute RTL_RAM_NAME of xim_mem_reg_r1_0_63_3_5 : label is "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xim_mem_reg";
  attribute RTL_RAM_STYLE of xim_mem_reg_r1_0_63_3_5 : label is "auto";
  attribute RTL_RAM_TYPE of xim_mem_reg_r1_0_63_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of xim_mem_reg_r1_0_63_3_5 : label is 0;
  attribute ram_addr_end of xim_mem_reg_r1_0_63_3_5 : label is 63;
  attribute ram_offset of xim_mem_reg_r1_0_63_3_5 : label is 0;
  attribute ram_slice_begin of xim_mem_reg_r1_0_63_3_5 : label is 3;
  attribute ram_slice_end of xim_mem_reg_r1_0_63_3_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of xim_mem_reg_r1_0_63_6_8 : label is "";
  attribute RTL_RAM_BITS of xim_mem_reg_r1_0_63_6_8 : label is 3072;
  attribute RTL_RAM_NAME of xim_mem_reg_r1_0_63_6_8 : label is "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xim_mem_reg";
  attribute RTL_RAM_STYLE of xim_mem_reg_r1_0_63_6_8 : label is "auto";
  attribute RTL_RAM_TYPE of xim_mem_reg_r1_0_63_6_8 : label is "RAM_SDP";
  attribute ram_addr_begin of xim_mem_reg_r1_0_63_6_8 : label is 0;
  attribute ram_addr_end of xim_mem_reg_r1_0_63_6_8 : label is 63;
  attribute ram_offset of xim_mem_reg_r1_0_63_6_8 : label is 0;
  attribute ram_slice_begin of xim_mem_reg_r1_0_63_6_8 : label is 6;
  attribute ram_slice_end of xim_mem_reg_r1_0_63_6_8 : label is 8;
  attribute METHODOLOGY_DRC_VIOS of xim_mem_reg_r1_0_63_9_11 : label is "";
  attribute RTL_RAM_BITS of xim_mem_reg_r1_0_63_9_11 : label is 3072;
  attribute RTL_RAM_NAME of xim_mem_reg_r1_0_63_9_11 : label is "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xim_mem_reg";
  attribute RTL_RAM_STYLE of xim_mem_reg_r1_0_63_9_11 : label is "auto";
  attribute RTL_RAM_TYPE of xim_mem_reg_r1_0_63_9_11 : label is "RAM_SDP";
  attribute ram_addr_begin of xim_mem_reg_r1_0_63_9_11 : label is 0;
  attribute ram_addr_end of xim_mem_reg_r1_0_63_9_11 : label is 63;
  attribute ram_offset of xim_mem_reg_r1_0_63_9_11 : label is 0;
  attribute ram_slice_begin of xim_mem_reg_r1_0_63_9_11 : label is 9;
  attribute ram_slice_end of xim_mem_reg_r1_0_63_9_11 : label is 11;
  attribute METHODOLOGY_DRC_VIOS of xim_mem_reg_r1_128_191_0_2 : label is "";
  attribute RTL_RAM_BITS of xim_mem_reg_r1_128_191_0_2 : label is 3072;
  attribute RTL_RAM_NAME of xim_mem_reg_r1_128_191_0_2 : label is "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xim_mem_reg";
  attribute RTL_RAM_STYLE of xim_mem_reg_r1_128_191_0_2 : label is "auto";
  attribute RTL_RAM_TYPE of xim_mem_reg_r1_128_191_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of xim_mem_reg_r1_128_191_0_2 : label is 128;
  attribute ram_addr_end of xim_mem_reg_r1_128_191_0_2 : label is 191;
  attribute ram_offset of xim_mem_reg_r1_128_191_0_2 : label is 0;
  attribute ram_slice_begin of xim_mem_reg_r1_128_191_0_2 : label is 0;
  attribute ram_slice_end of xim_mem_reg_r1_128_191_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of xim_mem_reg_r1_128_191_3_5 : label is "";
  attribute RTL_RAM_BITS of xim_mem_reg_r1_128_191_3_5 : label is 3072;
  attribute RTL_RAM_NAME of xim_mem_reg_r1_128_191_3_5 : label is "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xim_mem_reg";
  attribute RTL_RAM_STYLE of xim_mem_reg_r1_128_191_3_5 : label is "auto";
  attribute RTL_RAM_TYPE of xim_mem_reg_r1_128_191_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of xim_mem_reg_r1_128_191_3_5 : label is 128;
  attribute ram_addr_end of xim_mem_reg_r1_128_191_3_5 : label is 191;
  attribute ram_offset of xim_mem_reg_r1_128_191_3_5 : label is 0;
  attribute ram_slice_begin of xim_mem_reg_r1_128_191_3_5 : label is 3;
  attribute ram_slice_end of xim_mem_reg_r1_128_191_3_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of xim_mem_reg_r1_128_191_6_8 : label is "";
  attribute RTL_RAM_BITS of xim_mem_reg_r1_128_191_6_8 : label is 3072;
  attribute RTL_RAM_NAME of xim_mem_reg_r1_128_191_6_8 : label is "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xim_mem_reg";
  attribute RTL_RAM_STYLE of xim_mem_reg_r1_128_191_6_8 : label is "auto";
  attribute RTL_RAM_TYPE of xim_mem_reg_r1_128_191_6_8 : label is "RAM_SDP";
  attribute ram_addr_begin of xim_mem_reg_r1_128_191_6_8 : label is 128;
  attribute ram_addr_end of xim_mem_reg_r1_128_191_6_8 : label is 191;
  attribute ram_offset of xim_mem_reg_r1_128_191_6_8 : label is 0;
  attribute ram_slice_begin of xim_mem_reg_r1_128_191_6_8 : label is 6;
  attribute ram_slice_end of xim_mem_reg_r1_128_191_6_8 : label is 8;
  attribute METHODOLOGY_DRC_VIOS of xim_mem_reg_r1_128_191_9_11 : label is "";
  attribute RTL_RAM_BITS of xim_mem_reg_r1_128_191_9_11 : label is 3072;
  attribute RTL_RAM_NAME of xim_mem_reg_r1_128_191_9_11 : label is "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xim_mem_reg";
  attribute RTL_RAM_STYLE of xim_mem_reg_r1_128_191_9_11 : label is "auto";
  attribute RTL_RAM_TYPE of xim_mem_reg_r1_128_191_9_11 : label is "RAM_SDP";
  attribute ram_addr_begin of xim_mem_reg_r1_128_191_9_11 : label is 128;
  attribute ram_addr_end of xim_mem_reg_r1_128_191_9_11 : label is 191;
  attribute ram_offset of xim_mem_reg_r1_128_191_9_11 : label is 0;
  attribute ram_slice_begin of xim_mem_reg_r1_128_191_9_11 : label is 9;
  attribute ram_slice_end of xim_mem_reg_r1_128_191_9_11 : label is 11;
  attribute METHODOLOGY_DRC_VIOS of xim_mem_reg_r1_192_255_0_2 : label is "";
  attribute RTL_RAM_BITS of xim_mem_reg_r1_192_255_0_2 : label is 3072;
  attribute RTL_RAM_NAME of xim_mem_reg_r1_192_255_0_2 : label is "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xim_mem_reg";
  attribute RTL_RAM_STYLE of xim_mem_reg_r1_192_255_0_2 : label is "auto";
  attribute RTL_RAM_TYPE of xim_mem_reg_r1_192_255_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of xim_mem_reg_r1_192_255_0_2 : label is 192;
  attribute ram_addr_end of xim_mem_reg_r1_192_255_0_2 : label is 255;
  attribute ram_offset of xim_mem_reg_r1_192_255_0_2 : label is 0;
  attribute ram_slice_begin of xim_mem_reg_r1_192_255_0_2 : label is 0;
  attribute ram_slice_end of xim_mem_reg_r1_192_255_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of xim_mem_reg_r1_192_255_3_5 : label is "";
  attribute RTL_RAM_BITS of xim_mem_reg_r1_192_255_3_5 : label is 3072;
  attribute RTL_RAM_NAME of xim_mem_reg_r1_192_255_3_5 : label is "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xim_mem_reg";
  attribute RTL_RAM_STYLE of xim_mem_reg_r1_192_255_3_5 : label is "auto";
  attribute RTL_RAM_TYPE of xim_mem_reg_r1_192_255_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of xim_mem_reg_r1_192_255_3_5 : label is 192;
  attribute ram_addr_end of xim_mem_reg_r1_192_255_3_5 : label is 255;
  attribute ram_offset of xim_mem_reg_r1_192_255_3_5 : label is 0;
  attribute ram_slice_begin of xim_mem_reg_r1_192_255_3_5 : label is 3;
  attribute ram_slice_end of xim_mem_reg_r1_192_255_3_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of xim_mem_reg_r1_192_255_6_8 : label is "";
  attribute RTL_RAM_BITS of xim_mem_reg_r1_192_255_6_8 : label is 3072;
  attribute RTL_RAM_NAME of xim_mem_reg_r1_192_255_6_8 : label is "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xim_mem_reg";
  attribute RTL_RAM_STYLE of xim_mem_reg_r1_192_255_6_8 : label is "auto";
  attribute RTL_RAM_TYPE of xim_mem_reg_r1_192_255_6_8 : label is "RAM_SDP";
  attribute ram_addr_begin of xim_mem_reg_r1_192_255_6_8 : label is 192;
  attribute ram_addr_end of xim_mem_reg_r1_192_255_6_8 : label is 255;
  attribute ram_offset of xim_mem_reg_r1_192_255_6_8 : label is 0;
  attribute ram_slice_begin of xim_mem_reg_r1_192_255_6_8 : label is 6;
  attribute ram_slice_end of xim_mem_reg_r1_192_255_6_8 : label is 8;
  attribute METHODOLOGY_DRC_VIOS of xim_mem_reg_r1_192_255_9_11 : label is "";
  attribute RTL_RAM_BITS of xim_mem_reg_r1_192_255_9_11 : label is 3072;
  attribute RTL_RAM_NAME of xim_mem_reg_r1_192_255_9_11 : label is "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xim_mem_reg";
  attribute RTL_RAM_STYLE of xim_mem_reg_r1_192_255_9_11 : label is "auto";
  attribute RTL_RAM_TYPE of xim_mem_reg_r1_192_255_9_11 : label is "RAM_SDP";
  attribute ram_addr_begin of xim_mem_reg_r1_192_255_9_11 : label is 192;
  attribute ram_addr_end of xim_mem_reg_r1_192_255_9_11 : label is 255;
  attribute ram_offset of xim_mem_reg_r1_192_255_9_11 : label is 0;
  attribute ram_slice_begin of xim_mem_reg_r1_192_255_9_11 : label is 9;
  attribute ram_slice_end of xim_mem_reg_r1_192_255_9_11 : label is 11;
  attribute METHODOLOGY_DRC_VIOS of xim_mem_reg_r1_64_127_0_2 : label is "";
  attribute RTL_RAM_BITS of xim_mem_reg_r1_64_127_0_2 : label is 3072;
  attribute RTL_RAM_NAME of xim_mem_reg_r1_64_127_0_2 : label is "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xim_mem_reg";
  attribute RTL_RAM_STYLE of xim_mem_reg_r1_64_127_0_2 : label is "auto";
  attribute RTL_RAM_TYPE of xim_mem_reg_r1_64_127_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of xim_mem_reg_r1_64_127_0_2 : label is 64;
  attribute ram_addr_end of xim_mem_reg_r1_64_127_0_2 : label is 127;
  attribute ram_offset of xim_mem_reg_r1_64_127_0_2 : label is 0;
  attribute ram_slice_begin of xim_mem_reg_r1_64_127_0_2 : label is 0;
  attribute ram_slice_end of xim_mem_reg_r1_64_127_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of xim_mem_reg_r1_64_127_3_5 : label is "";
  attribute RTL_RAM_BITS of xim_mem_reg_r1_64_127_3_5 : label is 3072;
  attribute RTL_RAM_NAME of xim_mem_reg_r1_64_127_3_5 : label is "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xim_mem_reg";
  attribute RTL_RAM_STYLE of xim_mem_reg_r1_64_127_3_5 : label is "auto";
  attribute RTL_RAM_TYPE of xim_mem_reg_r1_64_127_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of xim_mem_reg_r1_64_127_3_5 : label is 64;
  attribute ram_addr_end of xim_mem_reg_r1_64_127_3_5 : label is 127;
  attribute ram_offset of xim_mem_reg_r1_64_127_3_5 : label is 0;
  attribute ram_slice_begin of xim_mem_reg_r1_64_127_3_5 : label is 3;
  attribute ram_slice_end of xim_mem_reg_r1_64_127_3_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of xim_mem_reg_r1_64_127_6_8 : label is "";
  attribute RTL_RAM_BITS of xim_mem_reg_r1_64_127_6_8 : label is 3072;
  attribute RTL_RAM_NAME of xim_mem_reg_r1_64_127_6_8 : label is "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xim_mem_reg";
  attribute RTL_RAM_STYLE of xim_mem_reg_r1_64_127_6_8 : label is "auto";
  attribute RTL_RAM_TYPE of xim_mem_reg_r1_64_127_6_8 : label is "RAM_SDP";
  attribute ram_addr_begin of xim_mem_reg_r1_64_127_6_8 : label is 64;
  attribute ram_addr_end of xim_mem_reg_r1_64_127_6_8 : label is 127;
  attribute ram_offset of xim_mem_reg_r1_64_127_6_8 : label is 0;
  attribute ram_slice_begin of xim_mem_reg_r1_64_127_6_8 : label is 6;
  attribute ram_slice_end of xim_mem_reg_r1_64_127_6_8 : label is 8;
  attribute METHODOLOGY_DRC_VIOS of xim_mem_reg_r1_64_127_9_11 : label is "";
  attribute RTL_RAM_BITS of xim_mem_reg_r1_64_127_9_11 : label is 3072;
  attribute RTL_RAM_NAME of xim_mem_reg_r1_64_127_9_11 : label is "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xim_mem_reg";
  attribute RTL_RAM_STYLE of xim_mem_reg_r1_64_127_9_11 : label is "auto";
  attribute RTL_RAM_TYPE of xim_mem_reg_r1_64_127_9_11 : label is "RAM_SDP";
  attribute ram_addr_begin of xim_mem_reg_r1_64_127_9_11 : label is 64;
  attribute ram_addr_end of xim_mem_reg_r1_64_127_9_11 : label is 127;
  attribute ram_offset of xim_mem_reg_r1_64_127_9_11 : label is 0;
  attribute ram_slice_begin of xim_mem_reg_r1_64_127_9_11 : label is 9;
  attribute ram_slice_end of xim_mem_reg_r1_64_127_9_11 : label is 11;
  attribute METHODOLOGY_DRC_VIOS of xim_mem_reg_r2_0_63_0_2 : label is "";
  attribute RTL_RAM_BITS of xim_mem_reg_r2_0_63_0_2 : label is 3072;
  attribute RTL_RAM_NAME of xim_mem_reg_r2_0_63_0_2 : label is "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xim_mem_reg";
  attribute RTL_RAM_STYLE of xim_mem_reg_r2_0_63_0_2 : label is "auto";
  attribute RTL_RAM_TYPE of xim_mem_reg_r2_0_63_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of xim_mem_reg_r2_0_63_0_2 : label is 0;
  attribute ram_addr_end of xim_mem_reg_r2_0_63_0_2 : label is 63;
  attribute ram_offset of xim_mem_reg_r2_0_63_0_2 : label is 0;
  attribute ram_slice_begin of xim_mem_reg_r2_0_63_0_2 : label is 0;
  attribute ram_slice_end of xim_mem_reg_r2_0_63_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of xim_mem_reg_r2_0_63_3_5 : label is "";
  attribute RTL_RAM_BITS of xim_mem_reg_r2_0_63_3_5 : label is 3072;
  attribute RTL_RAM_NAME of xim_mem_reg_r2_0_63_3_5 : label is "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xim_mem_reg";
  attribute RTL_RAM_STYLE of xim_mem_reg_r2_0_63_3_5 : label is "auto";
  attribute RTL_RAM_TYPE of xim_mem_reg_r2_0_63_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of xim_mem_reg_r2_0_63_3_5 : label is 0;
  attribute ram_addr_end of xim_mem_reg_r2_0_63_3_5 : label is 63;
  attribute ram_offset of xim_mem_reg_r2_0_63_3_5 : label is 0;
  attribute ram_slice_begin of xim_mem_reg_r2_0_63_3_5 : label is 3;
  attribute ram_slice_end of xim_mem_reg_r2_0_63_3_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of xim_mem_reg_r2_0_63_6_8 : label is "";
  attribute RTL_RAM_BITS of xim_mem_reg_r2_0_63_6_8 : label is 3072;
  attribute RTL_RAM_NAME of xim_mem_reg_r2_0_63_6_8 : label is "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xim_mem_reg";
  attribute RTL_RAM_STYLE of xim_mem_reg_r2_0_63_6_8 : label is "auto";
  attribute RTL_RAM_TYPE of xim_mem_reg_r2_0_63_6_8 : label is "RAM_SDP";
  attribute ram_addr_begin of xim_mem_reg_r2_0_63_6_8 : label is 0;
  attribute ram_addr_end of xim_mem_reg_r2_0_63_6_8 : label is 63;
  attribute ram_offset of xim_mem_reg_r2_0_63_6_8 : label is 0;
  attribute ram_slice_begin of xim_mem_reg_r2_0_63_6_8 : label is 6;
  attribute ram_slice_end of xim_mem_reg_r2_0_63_6_8 : label is 8;
  attribute METHODOLOGY_DRC_VIOS of xim_mem_reg_r2_0_63_9_11 : label is "";
  attribute RTL_RAM_BITS of xim_mem_reg_r2_0_63_9_11 : label is 3072;
  attribute RTL_RAM_NAME of xim_mem_reg_r2_0_63_9_11 : label is "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xim_mem_reg";
  attribute RTL_RAM_STYLE of xim_mem_reg_r2_0_63_9_11 : label is "auto";
  attribute RTL_RAM_TYPE of xim_mem_reg_r2_0_63_9_11 : label is "RAM_SDP";
  attribute ram_addr_begin of xim_mem_reg_r2_0_63_9_11 : label is 0;
  attribute ram_addr_end of xim_mem_reg_r2_0_63_9_11 : label is 63;
  attribute ram_offset of xim_mem_reg_r2_0_63_9_11 : label is 0;
  attribute ram_slice_begin of xim_mem_reg_r2_0_63_9_11 : label is 9;
  attribute ram_slice_end of xim_mem_reg_r2_0_63_9_11 : label is 11;
  attribute METHODOLOGY_DRC_VIOS of xim_mem_reg_r2_128_191_0_2 : label is "";
  attribute RTL_RAM_BITS of xim_mem_reg_r2_128_191_0_2 : label is 3072;
  attribute RTL_RAM_NAME of xim_mem_reg_r2_128_191_0_2 : label is "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xim_mem_reg";
  attribute RTL_RAM_STYLE of xim_mem_reg_r2_128_191_0_2 : label is "auto";
  attribute RTL_RAM_TYPE of xim_mem_reg_r2_128_191_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of xim_mem_reg_r2_128_191_0_2 : label is 128;
  attribute ram_addr_end of xim_mem_reg_r2_128_191_0_2 : label is 191;
  attribute ram_offset of xim_mem_reg_r2_128_191_0_2 : label is 0;
  attribute ram_slice_begin of xim_mem_reg_r2_128_191_0_2 : label is 0;
  attribute ram_slice_end of xim_mem_reg_r2_128_191_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of xim_mem_reg_r2_128_191_3_5 : label is "";
  attribute RTL_RAM_BITS of xim_mem_reg_r2_128_191_3_5 : label is 3072;
  attribute RTL_RAM_NAME of xim_mem_reg_r2_128_191_3_5 : label is "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xim_mem_reg";
  attribute RTL_RAM_STYLE of xim_mem_reg_r2_128_191_3_5 : label is "auto";
  attribute RTL_RAM_TYPE of xim_mem_reg_r2_128_191_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of xim_mem_reg_r2_128_191_3_5 : label is 128;
  attribute ram_addr_end of xim_mem_reg_r2_128_191_3_5 : label is 191;
  attribute ram_offset of xim_mem_reg_r2_128_191_3_5 : label is 0;
  attribute ram_slice_begin of xim_mem_reg_r2_128_191_3_5 : label is 3;
  attribute ram_slice_end of xim_mem_reg_r2_128_191_3_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of xim_mem_reg_r2_128_191_6_8 : label is "";
  attribute RTL_RAM_BITS of xim_mem_reg_r2_128_191_6_8 : label is 3072;
  attribute RTL_RAM_NAME of xim_mem_reg_r2_128_191_6_8 : label is "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xim_mem_reg";
  attribute RTL_RAM_STYLE of xim_mem_reg_r2_128_191_6_8 : label is "auto";
  attribute RTL_RAM_TYPE of xim_mem_reg_r2_128_191_6_8 : label is "RAM_SDP";
  attribute ram_addr_begin of xim_mem_reg_r2_128_191_6_8 : label is 128;
  attribute ram_addr_end of xim_mem_reg_r2_128_191_6_8 : label is 191;
  attribute ram_offset of xim_mem_reg_r2_128_191_6_8 : label is 0;
  attribute ram_slice_begin of xim_mem_reg_r2_128_191_6_8 : label is 6;
  attribute ram_slice_end of xim_mem_reg_r2_128_191_6_8 : label is 8;
  attribute METHODOLOGY_DRC_VIOS of xim_mem_reg_r2_128_191_9_11 : label is "";
  attribute RTL_RAM_BITS of xim_mem_reg_r2_128_191_9_11 : label is 3072;
  attribute RTL_RAM_NAME of xim_mem_reg_r2_128_191_9_11 : label is "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xim_mem_reg";
  attribute RTL_RAM_STYLE of xim_mem_reg_r2_128_191_9_11 : label is "auto";
  attribute RTL_RAM_TYPE of xim_mem_reg_r2_128_191_9_11 : label is "RAM_SDP";
  attribute ram_addr_begin of xim_mem_reg_r2_128_191_9_11 : label is 128;
  attribute ram_addr_end of xim_mem_reg_r2_128_191_9_11 : label is 191;
  attribute ram_offset of xim_mem_reg_r2_128_191_9_11 : label is 0;
  attribute ram_slice_begin of xim_mem_reg_r2_128_191_9_11 : label is 9;
  attribute ram_slice_end of xim_mem_reg_r2_128_191_9_11 : label is 11;
  attribute METHODOLOGY_DRC_VIOS of xim_mem_reg_r2_192_255_0_2 : label is "";
  attribute RTL_RAM_BITS of xim_mem_reg_r2_192_255_0_2 : label is 3072;
  attribute RTL_RAM_NAME of xim_mem_reg_r2_192_255_0_2 : label is "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xim_mem_reg";
  attribute RTL_RAM_STYLE of xim_mem_reg_r2_192_255_0_2 : label is "auto";
  attribute RTL_RAM_TYPE of xim_mem_reg_r2_192_255_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of xim_mem_reg_r2_192_255_0_2 : label is 192;
  attribute ram_addr_end of xim_mem_reg_r2_192_255_0_2 : label is 255;
  attribute ram_offset of xim_mem_reg_r2_192_255_0_2 : label is 0;
  attribute ram_slice_begin of xim_mem_reg_r2_192_255_0_2 : label is 0;
  attribute ram_slice_end of xim_mem_reg_r2_192_255_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of xim_mem_reg_r2_192_255_3_5 : label is "";
  attribute RTL_RAM_BITS of xim_mem_reg_r2_192_255_3_5 : label is 3072;
  attribute RTL_RAM_NAME of xim_mem_reg_r2_192_255_3_5 : label is "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xim_mem_reg";
  attribute RTL_RAM_STYLE of xim_mem_reg_r2_192_255_3_5 : label is "auto";
  attribute RTL_RAM_TYPE of xim_mem_reg_r2_192_255_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of xim_mem_reg_r2_192_255_3_5 : label is 192;
  attribute ram_addr_end of xim_mem_reg_r2_192_255_3_5 : label is 255;
  attribute ram_offset of xim_mem_reg_r2_192_255_3_5 : label is 0;
  attribute ram_slice_begin of xim_mem_reg_r2_192_255_3_5 : label is 3;
  attribute ram_slice_end of xim_mem_reg_r2_192_255_3_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of xim_mem_reg_r2_192_255_6_8 : label is "";
  attribute RTL_RAM_BITS of xim_mem_reg_r2_192_255_6_8 : label is 3072;
  attribute RTL_RAM_NAME of xim_mem_reg_r2_192_255_6_8 : label is "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xim_mem_reg";
  attribute RTL_RAM_STYLE of xim_mem_reg_r2_192_255_6_8 : label is "auto";
  attribute RTL_RAM_TYPE of xim_mem_reg_r2_192_255_6_8 : label is "RAM_SDP";
  attribute ram_addr_begin of xim_mem_reg_r2_192_255_6_8 : label is 192;
  attribute ram_addr_end of xim_mem_reg_r2_192_255_6_8 : label is 255;
  attribute ram_offset of xim_mem_reg_r2_192_255_6_8 : label is 0;
  attribute ram_slice_begin of xim_mem_reg_r2_192_255_6_8 : label is 6;
  attribute ram_slice_end of xim_mem_reg_r2_192_255_6_8 : label is 8;
  attribute METHODOLOGY_DRC_VIOS of xim_mem_reg_r2_192_255_9_11 : label is "";
  attribute RTL_RAM_BITS of xim_mem_reg_r2_192_255_9_11 : label is 3072;
  attribute RTL_RAM_NAME of xim_mem_reg_r2_192_255_9_11 : label is "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xim_mem_reg";
  attribute RTL_RAM_STYLE of xim_mem_reg_r2_192_255_9_11 : label is "auto";
  attribute RTL_RAM_TYPE of xim_mem_reg_r2_192_255_9_11 : label is "RAM_SDP";
  attribute ram_addr_begin of xim_mem_reg_r2_192_255_9_11 : label is 192;
  attribute ram_addr_end of xim_mem_reg_r2_192_255_9_11 : label is 255;
  attribute ram_offset of xim_mem_reg_r2_192_255_9_11 : label is 0;
  attribute ram_slice_begin of xim_mem_reg_r2_192_255_9_11 : label is 9;
  attribute ram_slice_end of xim_mem_reg_r2_192_255_9_11 : label is 11;
  attribute METHODOLOGY_DRC_VIOS of xim_mem_reg_r2_64_127_0_2 : label is "";
  attribute RTL_RAM_BITS of xim_mem_reg_r2_64_127_0_2 : label is 3072;
  attribute RTL_RAM_NAME of xim_mem_reg_r2_64_127_0_2 : label is "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xim_mem_reg";
  attribute RTL_RAM_STYLE of xim_mem_reg_r2_64_127_0_2 : label is "auto";
  attribute RTL_RAM_TYPE of xim_mem_reg_r2_64_127_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of xim_mem_reg_r2_64_127_0_2 : label is 64;
  attribute ram_addr_end of xim_mem_reg_r2_64_127_0_2 : label is 127;
  attribute ram_offset of xim_mem_reg_r2_64_127_0_2 : label is 0;
  attribute ram_slice_begin of xim_mem_reg_r2_64_127_0_2 : label is 0;
  attribute ram_slice_end of xim_mem_reg_r2_64_127_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of xim_mem_reg_r2_64_127_3_5 : label is "";
  attribute RTL_RAM_BITS of xim_mem_reg_r2_64_127_3_5 : label is 3072;
  attribute RTL_RAM_NAME of xim_mem_reg_r2_64_127_3_5 : label is "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xim_mem_reg";
  attribute RTL_RAM_STYLE of xim_mem_reg_r2_64_127_3_5 : label is "auto";
  attribute RTL_RAM_TYPE of xim_mem_reg_r2_64_127_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of xim_mem_reg_r2_64_127_3_5 : label is 64;
  attribute ram_addr_end of xim_mem_reg_r2_64_127_3_5 : label is 127;
  attribute ram_offset of xim_mem_reg_r2_64_127_3_5 : label is 0;
  attribute ram_slice_begin of xim_mem_reg_r2_64_127_3_5 : label is 3;
  attribute ram_slice_end of xim_mem_reg_r2_64_127_3_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of xim_mem_reg_r2_64_127_6_8 : label is "";
  attribute RTL_RAM_BITS of xim_mem_reg_r2_64_127_6_8 : label is 3072;
  attribute RTL_RAM_NAME of xim_mem_reg_r2_64_127_6_8 : label is "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xim_mem_reg";
  attribute RTL_RAM_STYLE of xim_mem_reg_r2_64_127_6_8 : label is "auto";
  attribute RTL_RAM_TYPE of xim_mem_reg_r2_64_127_6_8 : label is "RAM_SDP";
  attribute ram_addr_begin of xim_mem_reg_r2_64_127_6_8 : label is 64;
  attribute ram_addr_end of xim_mem_reg_r2_64_127_6_8 : label is 127;
  attribute ram_offset of xim_mem_reg_r2_64_127_6_8 : label is 0;
  attribute ram_slice_begin of xim_mem_reg_r2_64_127_6_8 : label is 6;
  attribute ram_slice_end of xim_mem_reg_r2_64_127_6_8 : label is 8;
  attribute METHODOLOGY_DRC_VIOS of xim_mem_reg_r2_64_127_9_11 : label is "";
  attribute RTL_RAM_BITS of xim_mem_reg_r2_64_127_9_11 : label is 3072;
  attribute RTL_RAM_NAME of xim_mem_reg_r2_64_127_9_11 : label is "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xim_mem_reg";
  attribute RTL_RAM_STYLE of xim_mem_reg_r2_64_127_9_11 : label is "auto";
  attribute RTL_RAM_TYPE of xim_mem_reg_r2_64_127_9_11 : label is "RAM_SDP";
  attribute ram_addr_begin of xim_mem_reg_r2_64_127_9_11 : label is 64;
  attribute ram_addr_end of xim_mem_reg_r2_64_127_9_11 : label is 127;
  attribute ram_offset of xim_mem_reg_r2_64_127_9_11 : label is 0;
  attribute ram_slice_begin of xim_mem_reg_r2_64_127_9_11 : label is 9;
  attribute ram_slice_end of xim_mem_reg_r2_64_127_9_11 : label is 11;
  attribute METHODOLOGY_DRC_VIOS of xim_mem_reg_r3_0_63_0_2 : label is "";
  attribute RTL_RAM_BITS of xim_mem_reg_r3_0_63_0_2 : label is 3072;
  attribute RTL_RAM_NAME of xim_mem_reg_r3_0_63_0_2 : label is "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xim_mem_reg";
  attribute RTL_RAM_STYLE of xim_mem_reg_r3_0_63_0_2 : label is "auto";
  attribute RTL_RAM_TYPE of xim_mem_reg_r3_0_63_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of xim_mem_reg_r3_0_63_0_2 : label is 0;
  attribute ram_addr_end of xim_mem_reg_r3_0_63_0_2 : label is 63;
  attribute ram_offset of xim_mem_reg_r3_0_63_0_2 : label is 0;
  attribute ram_slice_begin of xim_mem_reg_r3_0_63_0_2 : label is 0;
  attribute ram_slice_end of xim_mem_reg_r3_0_63_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of xim_mem_reg_r3_0_63_3_5 : label is "";
  attribute RTL_RAM_BITS of xim_mem_reg_r3_0_63_3_5 : label is 3072;
  attribute RTL_RAM_NAME of xim_mem_reg_r3_0_63_3_5 : label is "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xim_mem_reg";
  attribute RTL_RAM_STYLE of xim_mem_reg_r3_0_63_3_5 : label is "auto";
  attribute RTL_RAM_TYPE of xim_mem_reg_r3_0_63_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of xim_mem_reg_r3_0_63_3_5 : label is 0;
  attribute ram_addr_end of xim_mem_reg_r3_0_63_3_5 : label is 63;
  attribute ram_offset of xim_mem_reg_r3_0_63_3_5 : label is 0;
  attribute ram_slice_begin of xim_mem_reg_r3_0_63_3_5 : label is 3;
  attribute ram_slice_end of xim_mem_reg_r3_0_63_3_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of xim_mem_reg_r3_0_63_6_8 : label is "";
  attribute RTL_RAM_BITS of xim_mem_reg_r3_0_63_6_8 : label is 3072;
  attribute RTL_RAM_NAME of xim_mem_reg_r3_0_63_6_8 : label is "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xim_mem_reg";
  attribute RTL_RAM_STYLE of xim_mem_reg_r3_0_63_6_8 : label is "auto";
  attribute RTL_RAM_TYPE of xim_mem_reg_r3_0_63_6_8 : label is "RAM_SDP";
  attribute ram_addr_begin of xim_mem_reg_r3_0_63_6_8 : label is 0;
  attribute ram_addr_end of xim_mem_reg_r3_0_63_6_8 : label is 63;
  attribute ram_offset of xim_mem_reg_r3_0_63_6_8 : label is 0;
  attribute ram_slice_begin of xim_mem_reg_r3_0_63_6_8 : label is 6;
  attribute ram_slice_end of xim_mem_reg_r3_0_63_6_8 : label is 8;
  attribute METHODOLOGY_DRC_VIOS of xim_mem_reg_r3_0_63_9_11 : label is "";
  attribute RTL_RAM_BITS of xim_mem_reg_r3_0_63_9_11 : label is 3072;
  attribute RTL_RAM_NAME of xim_mem_reg_r3_0_63_9_11 : label is "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xim_mem_reg";
  attribute RTL_RAM_STYLE of xim_mem_reg_r3_0_63_9_11 : label is "auto";
  attribute RTL_RAM_TYPE of xim_mem_reg_r3_0_63_9_11 : label is "RAM_SDP";
  attribute ram_addr_begin of xim_mem_reg_r3_0_63_9_11 : label is 0;
  attribute ram_addr_end of xim_mem_reg_r3_0_63_9_11 : label is 63;
  attribute ram_offset of xim_mem_reg_r3_0_63_9_11 : label is 0;
  attribute ram_slice_begin of xim_mem_reg_r3_0_63_9_11 : label is 9;
  attribute ram_slice_end of xim_mem_reg_r3_0_63_9_11 : label is 11;
  attribute METHODOLOGY_DRC_VIOS of xim_mem_reg_r3_128_191_0_2 : label is "";
  attribute RTL_RAM_BITS of xim_mem_reg_r3_128_191_0_2 : label is 3072;
  attribute RTL_RAM_NAME of xim_mem_reg_r3_128_191_0_2 : label is "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xim_mem_reg";
  attribute RTL_RAM_STYLE of xim_mem_reg_r3_128_191_0_2 : label is "auto";
  attribute RTL_RAM_TYPE of xim_mem_reg_r3_128_191_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of xim_mem_reg_r3_128_191_0_2 : label is 128;
  attribute ram_addr_end of xim_mem_reg_r3_128_191_0_2 : label is 191;
  attribute ram_offset of xim_mem_reg_r3_128_191_0_2 : label is 0;
  attribute ram_slice_begin of xim_mem_reg_r3_128_191_0_2 : label is 0;
  attribute ram_slice_end of xim_mem_reg_r3_128_191_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of xim_mem_reg_r3_128_191_3_5 : label is "";
  attribute RTL_RAM_BITS of xim_mem_reg_r3_128_191_3_5 : label is 3072;
  attribute RTL_RAM_NAME of xim_mem_reg_r3_128_191_3_5 : label is "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xim_mem_reg";
  attribute RTL_RAM_STYLE of xim_mem_reg_r3_128_191_3_5 : label is "auto";
  attribute RTL_RAM_TYPE of xim_mem_reg_r3_128_191_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of xim_mem_reg_r3_128_191_3_5 : label is 128;
  attribute ram_addr_end of xim_mem_reg_r3_128_191_3_5 : label is 191;
  attribute ram_offset of xim_mem_reg_r3_128_191_3_5 : label is 0;
  attribute ram_slice_begin of xim_mem_reg_r3_128_191_3_5 : label is 3;
  attribute ram_slice_end of xim_mem_reg_r3_128_191_3_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of xim_mem_reg_r3_128_191_6_8 : label is "";
  attribute RTL_RAM_BITS of xim_mem_reg_r3_128_191_6_8 : label is 3072;
  attribute RTL_RAM_NAME of xim_mem_reg_r3_128_191_6_8 : label is "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xim_mem_reg";
  attribute RTL_RAM_STYLE of xim_mem_reg_r3_128_191_6_8 : label is "auto";
  attribute RTL_RAM_TYPE of xim_mem_reg_r3_128_191_6_8 : label is "RAM_SDP";
  attribute ram_addr_begin of xim_mem_reg_r3_128_191_6_8 : label is 128;
  attribute ram_addr_end of xim_mem_reg_r3_128_191_6_8 : label is 191;
  attribute ram_offset of xim_mem_reg_r3_128_191_6_8 : label is 0;
  attribute ram_slice_begin of xim_mem_reg_r3_128_191_6_8 : label is 6;
  attribute ram_slice_end of xim_mem_reg_r3_128_191_6_8 : label is 8;
  attribute METHODOLOGY_DRC_VIOS of xim_mem_reg_r3_128_191_9_11 : label is "";
  attribute RTL_RAM_BITS of xim_mem_reg_r3_128_191_9_11 : label is 3072;
  attribute RTL_RAM_NAME of xim_mem_reg_r3_128_191_9_11 : label is "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xim_mem_reg";
  attribute RTL_RAM_STYLE of xim_mem_reg_r3_128_191_9_11 : label is "auto";
  attribute RTL_RAM_TYPE of xim_mem_reg_r3_128_191_9_11 : label is "RAM_SDP";
  attribute ram_addr_begin of xim_mem_reg_r3_128_191_9_11 : label is 128;
  attribute ram_addr_end of xim_mem_reg_r3_128_191_9_11 : label is 191;
  attribute ram_offset of xim_mem_reg_r3_128_191_9_11 : label is 0;
  attribute ram_slice_begin of xim_mem_reg_r3_128_191_9_11 : label is 9;
  attribute ram_slice_end of xim_mem_reg_r3_128_191_9_11 : label is 11;
  attribute METHODOLOGY_DRC_VIOS of xim_mem_reg_r3_192_255_0_2 : label is "";
  attribute RTL_RAM_BITS of xim_mem_reg_r3_192_255_0_2 : label is 3072;
  attribute RTL_RAM_NAME of xim_mem_reg_r3_192_255_0_2 : label is "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xim_mem_reg";
  attribute RTL_RAM_STYLE of xim_mem_reg_r3_192_255_0_2 : label is "auto";
  attribute RTL_RAM_TYPE of xim_mem_reg_r3_192_255_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of xim_mem_reg_r3_192_255_0_2 : label is 192;
  attribute ram_addr_end of xim_mem_reg_r3_192_255_0_2 : label is 255;
  attribute ram_offset of xim_mem_reg_r3_192_255_0_2 : label is 0;
  attribute ram_slice_begin of xim_mem_reg_r3_192_255_0_2 : label is 0;
  attribute ram_slice_end of xim_mem_reg_r3_192_255_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of xim_mem_reg_r3_192_255_3_5 : label is "";
  attribute RTL_RAM_BITS of xim_mem_reg_r3_192_255_3_5 : label is 3072;
  attribute RTL_RAM_NAME of xim_mem_reg_r3_192_255_3_5 : label is "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xim_mem_reg";
  attribute RTL_RAM_STYLE of xim_mem_reg_r3_192_255_3_5 : label is "auto";
  attribute RTL_RAM_TYPE of xim_mem_reg_r3_192_255_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of xim_mem_reg_r3_192_255_3_5 : label is 192;
  attribute ram_addr_end of xim_mem_reg_r3_192_255_3_5 : label is 255;
  attribute ram_offset of xim_mem_reg_r3_192_255_3_5 : label is 0;
  attribute ram_slice_begin of xim_mem_reg_r3_192_255_3_5 : label is 3;
  attribute ram_slice_end of xim_mem_reg_r3_192_255_3_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of xim_mem_reg_r3_192_255_6_8 : label is "";
  attribute RTL_RAM_BITS of xim_mem_reg_r3_192_255_6_8 : label is 3072;
  attribute RTL_RAM_NAME of xim_mem_reg_r3_192_255_6_8 : label is "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xim_mem_reg";
  attribute RTL_RAM_STYLE of xim_mem_reg_r3_192_255_6_8 : label is "auto";
  attribute RTL_RAM_TYPE of xim_mem_reg_r3_192_255_6_8 : label is "RAM_SDP";
  attribute ram_addr_begin of xim_mem_reg_r3_192_255_6_8 : label is 192;
  attribute ram_addr_end of xim_mem_reg_r3_192_255_6_8 : label is 255;
  attribute ram_offset of xim_mem_reg_r3_192_255_6_8 : label is 0;
  attribute ram_slice_begin of xim_mem_reg_r3_192_255_6_8 : label is 6;
  attribute ram_slice_end of xim_mem_reg_r3_192_255_6_8 : label is 8;
  attribute METHODOLOGY_DRC_VIOS of xim_mem_reg_r3_192_255_9_11 : label is "";
  attribute RTL_RAM_BITS of xim_mem_reg_r3_192_255_9_11 : label is 3072;
  attribute RTL_RAM_NAME of xim_mem_reg_r3_192_255_9_11 : label is "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xim_mem_reg";
  attribute RTL_RAM_STYLE of xim_mem_reg_r3_192_255_9_11 : label is "auto";
  attribute RTL_RAM_TYPE of xim_mem_reg_r3_192_255_9_11 : label is "RAM_SDP";
  attribute ram_addr_begin of xim_mem_reg_r3_192_255_9_11 : label is 192;
  attribute ram_addr_end of xim_mem_reg_r3_192_255_9_11 : label is 255;
  attribute ram_offset of xim_mem_reg_r3_192_255_9_11 : label is 0;
  attribute ram_slice_begin of xim_mem_reg_r3_192_255_9_11 : label is 9;
  attribute ram_slice_end of xim_mem_reg_r3_192_255_9_11 : label is 11;
  attribute METHODOLOGY_DRC_VIOS of xim_mem_reg_r3_64_127_0_2 : label is "";
  attribute RTL_RAM_BITS of xim_mem_reg_r3_64_127_0_2 : label is 3072;
  attribute RTL_RAM_NAME of xim_mem_reg_r3_64_127_0_2 : label is "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xim_mem_reg";
  attribute RTL_RAM_STYLE of xim_mem_reg_r3_64_127_0_2 : label is "auto";
  attribute RTL_RAM_TYPE of xim_mem_reg_r3_64_127_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of xim_mem_reg_r3_64_127_0_2 : label is 64;
  attribute ram_addr_end of xim_mem_reg_r3_64_127_0_2 : label is 127;
  attribute ram_offset of xim_mem_reg_r3_64_127_0_2 : label is 0;
  attribute ram_slice_begin of xim_mem_reg_r3_64_127_0_2 : label is 0;
  attribute ram_slice_end of xim_mem_reg_r3_64_127_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of xim_mem_reg_r3_64_127_3_5 : label is "";
  attribute RTL_RAM_BITS of xim_mem_reg_r3_64_127_3_5 : label is 3072;
  attribute RTL_RAM_NAME of xim_mem_reg_r3_64_127_3_5 : label is "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xim_mem_reg";
  attribute RTL_RAM_STYLE of xim_mem_reg_r3_64_127_3_5 : label is "auto";
  attribute RTL_RAM_TYPE of xim_mem_reg_r3_64_127_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of xim_mem_reg_r3_64_127_3_5 : label is 64;
  attribute ram_addr_end of xim_mem_reg_r3_64_127_3_5 : label is 127;
  attribute ram_offset of xim_mem_reg_r3_64_127_3_5 : label is 0;
  attribute ram_slice_begin of xim_mem_reg_r3_64_127_3_5 : label is 3;
  attribute ram_slice_end of xim_mem_reg_r3_64_127_3_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of xim_mem_reg_r3_64_127_6_8 : label is "";
  attribute RTL_RAM_BITS of xim_mem_reg_r3_64_127_6_8 : label is 3072;
  attribute RTL_RAM_NAME of xim_mem_reg_r3_64_127_6_8 : label is "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xim_mem_reg";
  attribute RTL_RAM_STYLE of xim_mem_reg_r3_64_127_6_8 : label is "auto";
  attribute RTL_RAM_TYPE of xim_mem_reg_r3_64_127_6_8 : label is "RAM_SDP";
  attribute ram_addr_begin of xim_mem_reg_r3_64_127_6_8 : label is 64;
  attribute ram_addr_end of xim_mem_reg_r3_64_127_6_8 : label is 127;
  attribute ram_offset of xim_mem_reg_r3_64_127_6_8 : label is 0;
  attribute ram_slice_begin of xim_mem_reg_r3_64_127_6_8 : label is 6;
  attribute ram_slice_end of xim_mem_reg_r3_64_127_6_8 : label is 8;
  attribute METHODOLOGY_DRC_VIOS of xim_mem_reg_r3_64_127_9_11 : label is "";
  attribute RTL_RAM_BITS of xim_mem_reg_r3_64_127_9_11 : label is 3072;
  attribute RTL_RAM_NAME of xim_mem_reg_r3_64_127_9_11 : label is "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xim_mem_reg";
  attribute RTL_RAM_STYLE of xim_mem_reg_r3_64_127_9_11 : label is "auto";
  attribute RTL_RAM_TYPE of xim_mem_reg_r3_64_127_9_11 : label is "RAM_SDP";
  attribute ram_addr_begin of xim_mem_reg_r3_64_127_9_11 : label is 64;
  attribute ram_addr_end of xim_mem_reg_r3_64_127_9_11 : label is 127;
  attribute ram_offset of xim_mem_reg_r3_64_127_9_11 : label is 0;
  attribute ram_slice_begin of xim_mem_reg_r3_64_127_9_11 : label is 9;
  attribute ram_slice_end of xim_mem_reg_r3_64_127_9_11 : label is 11;
  attribute METHODOLOGY_DRC_VIOS of xre_mem_reg_r1_0_63_0_2 : label is "";
  attribute RTL_RAM_BITS of xre_mem_reg_r1_0_63_0_2 : label is 3072;
  attribute RTL_RAM_NAME of xre_mem_reg_r1_0_63_0_2 : label is "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xre_mem_reg";
  attribute RTL_RAM_STYLE of xre_mem_reg_r1_0_63_0_2 : label is "auto";
  attribute RTL_RAM_TYPE of xre_mem_reg_r1_0_63_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of xre_mem_reg_r1_0_63_0_2 : label is 0;
  attribute ram_addr_end of xre_mem_reg_r1_0_63_0_2 : label is 63;
  attribute ram_offset of xre_mem_reg_r1_0_63_0_2 : label is 0;
  attribute ram_slice_begin of xre_mem_reg_r1_0_63_0_2 : label is 0;
  attribute ram_slice_end of xre_mem_reg_r1_0_63_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of xre_mem_reg_r1_0_63_3_5 : label is "";
  attribute RTL_RAM_BITS of xre_mem_reg_r1_0_63_3_5 : label is 3072;
  attribute RTL_RAM_NAME of xre_mem_reg_r1_0_63_3_5 : label is "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xre_mem_reg";
  attribute RTL_RAM_STYLE of xre_mem_reg_r1_0_63_3_5 : label is "auto";
  attribute RTL_RAM_TYPE of xre_mem_reg_r1_0_63_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of xre_mem_reg_r1_0_63_3_5 : label is 0;
  attribute ram_addr_end of xre_mem_reg_r1_0_63_3_5 : label is 63;
  attribute ram_offset of xre_mem_reg_r1_0_63_3_5 : label is 0;
  attribute ram_slice_begin of xre_mem_reg_r1_0_63_3_5 : label is 3;
  attribute ram_slice_end of xre_mem_reg_r1_0_63_3_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of xre_mem_reg_r1_0_63_6_8 : label is "";
  attribute RTL_RAM_BITS of xre_mem_reg_r1_0_63_6_8 : label is 3072;
  attribute RTL_RAM_NAME of xre_mem_reg_r1_0_63_6_8 : label is "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xre_mem_reg";
  attribute RTL_RAM_STYLE of xre_mem_reg_r1_0_63_6_8 : label is "auto";
  attribute RTL_RAM_TYPE of xre_mem_reg_r1_0_63_6_8 : label is "RAM_SDP";
  attribute ram_addr_begin of xre_mem_reg_r1_0_63_6_8 : label is 0;
  attribute ram_addr_end of xre_mem_reg_r1_0_63_6_8 : label is 63;
  attribute ram_offset of xre_mem_reg_r1_0_63_6_8 : label is 0;
  attribute ram_slice_begin of xre_mem_reg_r1_0_63_6_8 : label is 6;
  attribute ram_slice_end of xre_mem_reg_r1_0_63_6_8 : label is 8;
  attribute METHODOLOGY_DRC_VIOS of xre_mem_reg_r1_0_63_9_11 : label is "";
  attribute RTL_RAM_BITS of xre_mem_reg_r1_0_63_9_11 : label is 3072;
  attribute RTL_RAM_NAME of xre_mem_reg_r1_0_63_9_11 : label is "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xre_mem_reg";
  attribute RTL_RAM_STYLE of xre_mem_reg_r1_0_63_9_11 : label is "auto";
  attribute RTL_RAM_TYPE of xre_mem_reg_r1_0_63_9_11 : label is "RAM_SDP";
  attribute ram_addr_begin of xre_mem_reg_r1_0_63_9_11 : label is 0;
  attribute ram_addr_end of xre_mem_reg_r1_0_63_9_11 : label is 63;
  attribute ram_offset of xre_mem_reg_r1_0_63_9_11 : label is 0;
  attribute ram_slice_begin of xre_mem_reg_r1_0_63_9_11 : label is 9;
  attribute ram_slice_end of xre_mem_reg_r1_0_63_9_11 : label is 11;
  attribute METHODOLOGY_DRC_VIOS of xre_mem_reg_r1_128_191_0_2 : label is "";
  attribute RTL_RAM_BITS of xre_mem_reg_r1_128_191_0_2 : label is 3072;
  attribute RTL_RAM_NAME of xre_mem_reg_r1_128_191_0_2 : label is "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xre_mem_reg";
  attribute RTL_RAM_STYLE of xre_mem_reg_r1_128_191_0_2 : label is "auto";
  attribute RTL_RAM_TYPE of xre_mem_reg_r1_128_191_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of xre_mem_reg_r1_128_191_0_2 : label is 128;
  attribute ram_addr_end of xre_mem_reg_r1_128_191_0_2 : label is 191;
  attribute ram_offset of xre_mem_reg_r1_128_191_0_2 : label is 0;
  attribute ram_slice_begin of xre_mem_reg_r1_128_191_0_2 : label is 0;
  attribute ram_slice_end of xre_mem_reg_r1_128_191_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of xre_mem_reg_r1_128_191_3_5 : label is "";
  attribute RTL_RAM_BITS of xre_mem_reg_r1_128_191_3_5 : label is 3072;
  attribute RTL_RAM_NAME of xre_mem_reg_r1_128_191_3_5 : label is "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xre_mem_reg";
  attribute RTL_RAM_STYLE of xre_mem_reg_r1_128_191_3_5 : label is "auto";
  attribute RTL_RAM_TYPE of xre_mem_reg_r1_128_191_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of xre_mem_reg_r1_128_191_3_5 : label is 128;
  attribute ram_addr_end of xre_mem_reg_r1_128_191_3_5 : label is 191;
  attribute ram_offset of xre_mem_reg_r1_128_191_3_5 : label is 0;
  attribute ram_slice_begin of xre_mem_reg_r1_128_191_3_5 : label is 3;
  attribute ram_slice_end of xre_mem_reg_r1_128_191_3_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of xre_mem_reg_r1_128_191_6_8 : label is "";
  attribute RTL_RAM_BITS of xre_mem_reg_r1_128_191_6_8 : label is 3072;
  attribute RTL_RAM_NAME of xre_mem_reg_r1_128_191_6_8 : label is "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xre_mem_reg";
  attribute RTL_RAM_STYLE of xre_mem_reg_r1_128_191_6_8 : label is "auto";
  attribute RTL_RAM_TYPE of xre_mem_reg_r1_128_191_6_8 : label is "RAM_SDP";
  attribute ram_addr_begin of xre_mem_reg_r1_128_191_6_8 : label is 128;
  attribute ram_addr_end of xre_mem_reg_r1_128_191_6_8 : label is 191;
  attribute ram_offset of xre_mem_reg_r1_128_191_6_8 : label is 0;
  attribute ram_slice_begin of xre_mem_reg_r1_128_191_6_8 : label is 6;
  attribute ram_slice_end of xre_mem_reg_r1_128_191_6_8 : label is 8;
  attribute METHODOLOGY_DRC_VIOS of xre_mem_reg_r1_128_191_9_11 : label is "";
  attribute RTL_RAM_BITS of xre_mem_reg_r1_128_191_9_11 : label is 3072;
  attribute RTL_RAM_NAME of xre_mem_reg_r1_128_191_9_11 : label is "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xre_mem_reg";
  attribute RTL_RAM_STYLE of xre_mem_reg_r1_128_191_9_11 : label is "auto";
  attribute RTL_RAM_TYPE of xre_mem_reg_r1_128_191_9_11 : label is "RAM_SDP";
  attribute ram_addr_begin of xre_mem_reg_r1_128_191_9_11 : label is 128;
  attribute ram_addr_end of xre_mem_reg_r1_128_191_9_11 : label is 191;
  attribute ram_offset of xre_mem_reg_r1_128_191_9_11 : label is 0;
  attribute ram_slice_begin of xre_mem_reg_r1_128_191_9_11 : label is 9;
  attribute ram_slice_end of xre_mem_reg_r1_128_191_9_11 : label is 11;
  attribute METHODOLOGY_DRC_VIOS of xre_mem_reg_r1_192_255_0_2 : label is "";
  attribute RTL_RAM_BITS of xre_mem_reg_r1_192_255_0_2 : label is 3072;
  attribute RTL_RAM_NAME of xre_mem_reg_r1_192_255_0_2 : label is "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xre_mem_reg";
  attribute RTL_RAM_STYLE of xre_mem_reg_r1_192_255_0_2 : label is "auto";
  attribute RTL_RAM_TYPE of xre_mem_reg_r1_192_255_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of xre_mem_reg_r1_192_255_0_2 : label is 192;
  attribute ram_addr_end of xre_mem_reg_r1_192_255_0_2 : label is 255;
  attribute ram_offset of xre_mem_reg_r1_192_255_0_2 : label is 0;
  attribute ram_slice_begin of xre_mem_reg_r1_192_255_0_2 : label is 0;
  attribute ram_slice_end of xre_mem_reg_r1_192_255_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of xre_mem_reg_r1_192_255_3_5 : label is "";
  attribute RTL_RAM_BITS of xre_mem_reg_r1_192_255_3_5 : label is 3072;
  attribute RTL_RAM_NAME of xre_mem_reg_r1_192_255_3_5 : label is "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xre_mem_reg";
  attribute RTL_RAM_STYLE of xre_mem_reg_r1_192_255_3_5 : label is "auto";
  attribute RTL_RAM_TYPE of xre_mem_reg_r1_192_255_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of xre_mem_reg_r1_192_255_3_5 : label is 192;
  attribute ram_addr_end of xre_mem_reg_r1_192_255_3_5 : label is 255;
  attribute ram_offset of xre_mem_reg_r1_192_255_3_5 : label is 0;
  attribute ram_slice_begin of xre_mem_reg_r1_192_255_3_5 : label is 3;
  attribute ram_slice_end of xre_mem_reg_r1_192_255_3_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of xre_mem_reg_r1_192_255_6_8 : label is "";
  attribute RTL_RAM_BITS of xre_mem_reg_r1_192_255_6_8 : label is 3072;
  attribute RTL_RAM_NAME of xre_mem_reg_r1_192_255_6_8 : label is "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xre_mem_reg";
  attribute RTL_RAM_STYLE of xre_mem_reg_r1_192_255_6_8 : label is "auto";
  attribute RTL_RAM_TYPE of xre_mem_reg_r1_192_255_6_8 : label is "RAM_SDP";
  attribute ram_addr_begin of xre_mem_reg_r1_192_255_6_8 : label is 192;
  attribute ram_addr_end of xre_mem_reg_r1_192_255_6_8 : label is 255;
  attribute ram_offset of xre_mem_reg_r1_192_255_6_8 : label is 0;
  attribute ram_slice_begin of xre_mem_reg_r1_192_255_6_8 : label is 6;
  attribute ram_slice_end of xre_mem_reg_r1_192_255_6_8 : label is 8;
  attribute METHODOLOGY_DRC_VIOS of xre_mem_reg_r1_192_255_9_11 : label is "";
  attribute RTL_RAM_BITS of xre_mem_reg_r1_192_255_9_11 : label is 3072;
  attribute RTL_RAM_NAME of xre_mem_reg_r1_192_255_9_11 : label is "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xre_mem_reg";
  attribute RTL_RAM_STYLE of xre_mem_reg_r1_192_255_9_11 : label is "auto";
  attribute RTL_RAM_TYPE of xre_mem_reg_r1_192_255_9_11 : label is "RAM_SDP";
  attribute ram_addr_begin of xre_mem_reg_r1_192_255_9_11 : label is 192;
  attribute ram_addr_end of xre_mem_reg_r1_192_255_9_11 : label is 255;
  attribute ram_offset of xre_mem_reg_r1_192_255_9_11 : label is 0;
  attribute ram_slice_begin of xre_mem_reg_r1_192_255_9_11 : label is 9;
  attribute ram_slice_end of xre_mem_reg_r1_192_255_9_11 : label is 11;
  attribute METHODOLOGY_DRC_VIOS of xre_mem_reg_r1_64_127_0_2 : label is "";
  attribute RTL_RAM_BITS of xre_mem_reg_r1_64_127_0_2 : label is 3072;
  attribute RTL_RAM_NAME of xre_mem_reg_r1_64_127_0_2 : label is "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xre_mem_reg";
  attribute RTL_RAM_STYLE of xre_mem_reg_r1_64_127_0_2 : label is "auto";
  attribute RTL_RAM_TYPE of xre_mem_reg_r1_64_127_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of xre_mem_reg_r1_64_127_0_2 : label is 64;
  attribute ram_addr_end of xre_mem_reg_r1_64_127_0_2 : label is 127;
  attribute ram_offset of xre_mem_reg_r1_64_127_0_2 : label is 0;
  attribute ram_slice_begin of xre_mem_reg_r1_64_127_0_2 : label is 0;
  attribute ram_slice_end of xre_mem_reg_r1_64_127_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of xre_mem_reg_r1_64_127_3_5 : label is "";
  attribute RTL_RAM_BITS of xre_mem_reg_r1_64_127_3_5 : label is 3072;
  attribute RTL_RAM_NAME of xre_mem_reg_r1_64_127_3_5 : label is "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xre_mem_reg";
  attribute RTL_RAM_STYLE of xre_mem_reg_r1_64_127_3_5 : label is "auto";
  attribute RTL_RAM_TYPE of xre_mem_reg_r1_64_127_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of xre_mem_reg_r1_64_127_3_5 : label is 64;
  attribute ram_addr_end of xre_mem_reg_r1_64_127_3_5 : label is 127;
  attribute ram_offset of xre_mem_reg_r1_64_127_3_5 : label is 0;
  attribute ram_slice_begin of xre_mem_reg_r1_64_127_3_5 : label is 3;
  attribute ram_slice_end of xre_mem_reg_r1_64_127_3_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of xre_mem_reg_r1_64_127_6_8 : label is "";
  attribute RTL_RAM_BITS of xre_mem_reg_r1_64_127_6_8 : label is 3072;
  attribute RTL_RAM_NAME of xre_mem_reg_r1_64_127_6_8 : label is "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xre_mem_reg";
  attribute RTL_RAM_STYLE of xre_mem_reg_r1_64_127_6_8 : label is "auto";
  attribute RTL_RAM_TYPE of xre_mem_reg_r1_64_127_6_8 : label is "RAM_SDP";
  attribute ram_addr_begin of xre_mem_reg_r1_64_127_6_8 : label is 64;
  attribute ram_addr_end of xre_mem_reg_r1_64_127_6_8 : label is 127;
  attribute ram_offset of xre_mem_reg_r1_64_127_6_8 : label is 0;
  attribute ram_slice_begin of xre_mem_reg_r1_64_127_6_8 : label is 6;
  attribute ram_slice_end of xre_mem_reg_r1_64_127_6_8 : label is 8;
  attribute METHODOLOGY_DRC_VIOS of xre_mem_reg_r1_64_127_9_11 : label is "";
  attribute RTL_RAM_BITS of xre_mem_reg_r1_64_127_9_11 : label is 3072;
  attribute RTL_RAM_NAME of xre_mem_reg_r1_64_127_9_11 : label is "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xre_mem_reg";
  attribute RTL_RAM_STYLE of xre_mem_reg_r1_64_127_9_11 : label is "auto";
  attribute RTL_RAM_TYPE of xre_mem_reg_r1_64_127_9_11 : label is "RAM_SDP";
  attribute ram_addr_begin of xre_mem_reg_r1_64_127_9_11 : label is 64;
  attribute ram_addr_end of xre_mem_reg_r1_64_127_9_11 : label is 127;
  attribute ram_offset of xre_mem_reg_r1_64_127_9_11 : label is 0;
  attribute ram_slice_begin of xre_mem_reg_r1_64_127_9_11 : label is 9;
  attribute ram_slice_end of xre_mem_reg_r1_64_127_9_11 : label is 11;
  attribute METHODOLOGY_DRC_VIOS of xre_mem_reg_r2_0_63_0_2 : label is "";
  attribute RTL_RAM_BITS of xre_mem_reg_r2_0_63_0_2 : label is 3072;
  attribute RTL_RAM_NAME of xre_mem_reg_r2_0_63_0_2 : label is "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xre_mem_reg";
  attribute RTL_RAM_STYLE of xre_mem_reg_r2_0_63_0_2 : label is "auto";
  attribute RTL_RAM_TYPE of xre_mem_reg_r2_0_63_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of xre_mem_reg_r2_0_63_0_2 : label is 0;
  attribute ram_addr_end of xre_mem_reg_r2_0_63_0_2 : label is 63;
  attribute ram_offset of xre_mem_reg_r2_0_63_0_2 : label is 0;
  attribute ram_slice_begin of xre_mem_reg_r2_0_63_0_2 : label is 0;
  attribute ram_slice_end of xre_mem_reg_r2_0_63_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of xre_mem_reg_r2_0_63_3_5 : label is "";
  attribute RTL_RAM_BITS of xre_mem_reg_r2_0_63_3_5 : label is 3072;
  attribute RTL_RAM_NAME of xre_mem_reg_r2_0_63_3_5 : label is "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xre_mem_reg";
  attribute RTL_RAM_STYLE of xre_mem_reg_r2_0_63_3_5 : label is "auto";
  attribute RTL_RAM_TYPE of xre_mem_reg_r2_0_63_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of xre_mem_reg_r2_0_63_3_5 : label is 0;
  attribute ram_addr_end of xre_mem_reg_r2_0_63_3_5 : label is 63;
  attribute ram_offset of xre_mem_reg_r2_0_63_3_5 : label is 0;
  attribute ram_slice_begin of xre_mem_reg_r2_0_63_3_5 : label is 3;
  attribute ram_slice_end of xre_mem_reg_r2_0_63_3_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of xre_mem_reg_r2_0_63_6_8 : label is "";
  attribute RTL_RAM_BITS of xre_mem_reg_r2_0_63_6_8 : label is 3072;
  attribute RTL_RAM_NAME of xre_mem_reg_r2_0_63_6_8 : label is "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xre_mem_reg";
  attribute RTL_RAM_STYLE of xre_mem_reg_r2_0_63_6_8 : label is "auto";
  attribute RTL_RAM_TYPE of xre_mem_reg_r2_0_63_6_8 : label is "RAM_SDP";
  attribute ram_addr_begin of xre_mem_reg_r2_0_63_6_8 : label is 0;
  attribute ram_addr_end of xre_mem_reg_r2_0_63_6_8 : label is 63;
  attribute ram_offset of xre_mem_reg_r2_0_63_6_8 : label is 0;
  attribute ram_slice_begin of xre_mem_reg_r2_0_63_6_8 : label is 6;
  attribute ram_slice_end of xre_mem_reg_r2_0_63_6_8 : label is 8;
  attribute METHODOLOGY_DRC_VIOS of xre_mem_reg_r2_0_63_9_11 : label is "";
  attribute RTL_RAM_BITS of xre_mem_reg_r2_0_63_9_11 : label is 3072;
  attribute RTL_RAM_NAME of xre_mem_reg_r2_0_63_9_11 : label is "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xre_mem_reg";
  attribute RTL_RAM_STYLE of xre_mem_reg_r2_0_63_9_11 : label is "auto";
  attribute RTL_RAM_TYPE of xre_mem_reg_r2_0_63_9_11 : label is "RAM_SDP";
  attribute ram_addr_begin of xre_mem_reg_r2_0_63_9_11 : label is 0;
  attribute ram_addr_end of xre_mem_reg_r2_0_63_9_11 : label is 63;
  attribute ram_offset of xre_mem_reg_r2_0_63_9_11 : label is 0;
  attribute ram_slice_begin of xre_mem_reg_r2_0_63_9_11 : label is 9;
  attribute ram_slice_end of xre_mem_reg_r2_0_63_9_11 : label is 11;
  attribute METHODOLOGY_DRC_VIOS of xre_mem_reg_r2_128_191_0_2 : label is "";
  attribute RTL_RAM_BITS of xre_mem_reg_r2_128_191_0_2 : label is 3072;
  attribute RTL_RAM_NAME of xre_mem_reg_r2_128_191_0_2 : label is "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xre_mem_reg";
  attribute RTL_RAM_STYLE of xre_mem_reg_r2_128_191_0_2 : label is "auto";
  attribute RTL_RAM_TYPE of xre_mem_reg_r2_128_191_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of xre_mem_reg_r2_128_191_0_2 : label is 128;
  attribute ram_addr_end of xre_mem_reg_r2_128_191_0_2 : label is 191;
  attribute ram_offset of xre_mem_reg_r2_128_191_0_2 : label is 0;
  attribute ram_slice_begin of xre_mem_reg_r2_128_191_0_2 : label is 0;
  attribute ram_slice_end of xre_mem_reg_r2_128_191_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of xre_mem_reg_r2_128_191_3_5 : label is "";
  attribute RTL_RAM_BITS of xre_mem_reg_r2_128_191_3_5 : label is 3072;
  attribute RTL_RAM_NAME of xre_mem_reg_r2_128_191_3_5 : label is "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xre_mem_reg";
  attribute RTL_RAM_STYLE of xre_mem_reg_r2_128_191_3_5 : label is "auto";
  attribute RTL_RAM_TYPE of xre_mem_reg_r2_128_191_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of xre_mem_reg_r2_128_191_3_5 : label is 128;
  attribute ram_addr_end of xre_mem_reg_r2_128_191_3_5 : label is 191;
  attribute ram_offset of xre_mem_reg_r2_128_191_3_5 : label is 0;
  attribute ram_slice_begin of xre_mem_reg_r2_128_191_3_5 : label is 3;
  attribute ram_slice_end of xre_mem_reg_r2_128_191_3_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of xre_mem_reg_r2_128_191_6_8 : label is "";
  attribute RTL_RAM_BITS of xre_mem_reg_r2_128_191_6_8 : label is 3072;
  attribute RTL_RAM_NAME of xre_mem_reg_r2_128_191_6_8 : label is "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xre_mem_reg";
  attribute RTL_RAM_STYLE of xre_mem_reg_r2_128_191_6_8 : label is "auto";
  attribute RTL_RAM_TYPE of xre_mem_reg_r2_128_191_6_8 : label is "RAM_SDP";
  attribute ram_addr_begin of xre_mem_reg_r2_128_191_6_8 : label is 128;
  attribute ram_addr_end of xre_mem_reg_r2_128_191_6_8 : label is 191;
  attribute ram_offset of xre_mem_reg_r2_128_191_6_8 : label is 0;
  attribute ram_slice_begin of xre_mem_reg_r2_128_191_6_8 : label is 6;
  attribute ram_slice_end of xre_mem_reg_r2_128_191_6_8 : label is 8;
  attribute METHODOLOGY_DRC_VIOS of xre_mem_reg_r2_128_191_9_11 : label is "";
  attribute RTL_RAM_BITS of xre_mem_reg_r2_128_191_9_11 : label is 3072;
  attribute RTL_RAM_NAME of xre_mem_reg_r2_128_191_9_11 : label is "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xre_mem_reg";
  attribute RTL_RAM_STYLE of xre_mem_reg_r2_128_191_9_11 : label is "auto";
  attribute RTL_RAM_TYPE of xre_mem_reg_r2_128_191_9_11 : label is "RAM_SDP";
  attribute ram_addr_begin of xre_mem_reg_r2_128_191_9_11 : label is 128;
  attribute ram_addr_end of xre_mem_reg_r2_128_191_9_11 : label is 191;
  attribute ram_offset of xre_mem_reg_r2_128_191_9_11 : label is 0;
  attribute ram_slice_begin of xre_mem_reg_r2_128_191_9_11 : label is 9;
  attribute ram_slice_end of xre_mem_reg_r2_128_191_9_11 : label is 11;
  attribute METHODOLOGY_DRC_VIOS of xre_mem_reg_r2_192_255_0_2 : label is "";
  attribute RTL_RAM_BITS of xre_mem_reg_r2_192_255_0_2 : label is 3072;
  attribute RTL_RAM_NAME of xre_mem_reg_r2_192_255_0_2 : label is "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xre_mem_reg";
  attribute RTL_RAM_STYLE of xre_mem_reg_r2_192_255_0_2 : label is "auto";
  attribute RTL_RAM_TYPE of xre_mem_reg_r2_192_255_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of xre_mem_reg_r2_192_255_0_2 : label is 192;
  attribute ram_addr_end of xre_mem_reg_r2_192_255_0_2 : label is 255;
  attribute ram_offset of xre_mem_reg_r2_192_255_0_2 : label is 0;
  attribute ram_slice_begin of xre_mem_reg_r2_192_255_0_2 : label is 0;
  attribute ram_slice_end of xre_mem_reg_r2_192_255_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of xre_mem_reg_r2_192_255_3_5 : label is "";
  attribute RTL_RAM_BITS of xre_mem_reg_r2_192_255_3_5 : label is 3072;
  attribute RTL_RAM_NAME of xre_mem_reg_r2_192_255_3_5 : label is "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xre_mem_reg";
  attribute RTL_RAM_STYLE of xre_mem_reg_r2_192_255_3_5 : label is "auto";
  attribute RTL_RAM_TYPE of xre_mem_reg_r2_192_255_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of xre_mem_reg_r2_192_255_3_5 : label is 192;
  attribute ram_addr_end of xre_mem_reg_r2_192_255_3_5 : label is 255;
  attribute ram_offset of xre_mem_reg_r2_192_255_3_5 : label is 0;
  attribute ram_slice_begin of xre_mem_reg_r2_192_255_3_5 : label is 3;
  attribute ram_slice_end of xre_mem_reg_r2_192_255_3_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of xre_mem_reg_r2_192_255_6_8 : label is "";
  attribute RTL_RAM_BITS of xre_mem_reg_r2_192_255_6_8 : label is 3072;
  attribute RTL_RAM_NAME of xre_mem_reg_r2_192_255_6_8 : label is "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xre_mem_reg";
  attribute RTL_RAM_STYLE of xre_mem_reg_r2_192_255_6_8 : label is "auto";
  attribute RTL_RAM_TYPE of xre_mem_reg_r2_192_255_6_8 : label is "RAM_SDP";
  attribute ram_addr_begin of xre_mem_reg_r2_192_255_6_8 : label is 192;
  attribute ram_addr_end of xre_mem_reg_r2_192_255_6_8 : label is 255;
  attribute ram_offset of xre_mem_reg_r2_192_255_6_8 : label is 0;
  attribute ram_slice_begin of xre_mem_reg_r2_192_255_6_8 : label is 6;
  attribute ram_slice_end of xre_mem_reg_r2_192_255_6_8 : label is 8;
  attribute METHODOLOGY_DRC_VIOS of xre_mem_reg_r2_192_255_9_11 : label is "";
  attribute RTL_RAM_BITS of xre_mem_reg_r2_192_255_9_11 : label is 3072;
  attribute RTL_RAM_NAME of xre_mem_reg_r2_192_255_9_11 : label is "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xre_mem_reg";
  attribute RTL_RAM_STYLE of xre_mem_reg_r2_192_255_9_11 : label is "auto";
  attribute RTL_RAM_TYPE of xre_mem_reg_r2_192_255_9_11 : label is "RAM_SDP";
  attribute ram_addr_begin of xre_mem_reg_r2_192_255_9_11 : label is 192;
  attribute ram_addr_end of xre_mem_reg_r2_192_255_9_11 : label is 255;
  attribute ram_offset of xre_mem_reg_r2_192_255_9_11 : label is 0;
  attribute ram_slice_begin of xre_mem_reg_r2_192_255_9_11 : label is 9;
  attribute ram_slice_end of xre_mem_reg_r2_192_255_9_11 : label is 11;
  attribute METHODOLOGY_DRC_VIOS of xre_mem_reg_r2_64_127_0_2 : label is "";
  attribute RTL_RAM_BITS of xre_mem_reg_r2_64_127_0_2 : label is 3072;
  attribute RTL_RAM_NAME of xre_mem_reg_r2_64_127_0_2 : label is "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xre_mem_reg";
  attribute RTL_RAM_STYLE of xre_mem_reg_r2_64_127_0_2 : label is "auto";
  attribute RTL_RAM_TYPE of xre_mem_reg_r2_64_127_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of xre_mem_reg_r2_64_127_0_2 : label is 64;
  attribute ram_addr_end of xre_mem_reg_r2_64_127_0_2 : label is 127;
  attribute ram_offset of xre_mem_reg_r2_64_127_0_2 : label is 0;
  attribute ram_slice_begin of xre_mem_reg_r2_64_127_0_2 : label is 0;
  attribute ram_slice_end of xre_mem_reg_r2_64_127_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of xre_mem_reg_r2_64_127_3_5 : label is "";
  attribute RTL_RAM_BITS of xre_mem_reg_r2_64_127_3_5 : label is 3072;
  attribute RTL_RAM_NAME of xre_mem_reg_r2_64_127_3_5 : label is "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xre_mem_reg";
  attribute RTL_RAM_STYLE of xre_mem_reg_r2_64_127_3_5 : label is "auto";
  attribute RTL_RAM_TYPE of xre_mem_reg_r2_64_127_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of xre_mem_reg_r2_64_127_3_5 : label is 64;
  attribute ram_addr_end of xre_mem_reg_r2_64_127_3_5 : label is 127;
  attribute ram_offset of xre_mem_reg_r2_64_127_3_5 : label is 0;
  attribute ram_slice_begin of xre_mem_reg_r2_64_127_3_5 : label is 3;
  attribute ram_slice_end of xre_mem_reg_r2_64_127_3_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of xre_mem_reg_r2_64_127_6_8 : label is "";
  attribute RTL_RAM_BITS of xre_mem_reg_r2_64_127_6_8 : label is 3072;
  attribute RTL_RAM_NAME of xre_mem_reg_r2_64_127_6_8 : label is "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xre_mem_reg";
  attribute RTL_RAM_STYLE of xre_mem_reg_r2_64_127_6_8 : label is "auto";
  attribute RTL_RAM_TYPE of xre_mem_reg_r2_64_127_6_8 : label is "RAM_SDP";
  attribute ram_addr_begin of xre_mem_reg_r2_64_127_6_8 : label is 64;
  attribute ram_addr_end of xre_mem_reg_r2_64_127_6_8 : label is 127;
  attribute ram_offset of xre_mem_reg_r2_64_127_6_8 : label is 0;
  attribute ram_slice_begin of xre_mem_reg_r2_64_127_6_8 : label is 6;
  attribute ram_slice_end of xre_mem_reg_r2_64_127_6_8 : label is 8;
  attribute METHODOLOGY_DRC_VIOS of xre_mem_reg_r2_64_127_9_11 : label is "";
  attribute RTL_RAM_BITS of xre_mem_reg_r2_64_127_9_11 : label is 3072;
  attribute RTL_RAM_NAME of xre_mem_reg_r2_64_127_9_11 : label is "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xre_mem_reg";
  attribute RTL_RAM_STYLE of xre_mem_reg_r2_64_127_9_11 : label is "auto";
  attribute RTL_RAM_TYPE of xre_mem_reg_r2_64_127_9_11 : label is "RAM_SDP";
  attribute ram_addr_begin of xre_mem_reg_r2_64_127_9_11 : label is 64;
  attribute ram_addr_end of xre_mem_reg_r2_64_127_9_11 : label is 127;
  attribute ram_offset of xre_mem_reg_r2_64_127_9_11 : label is 0;
  attribute ram_slice_begin of xre_mem_reg_r2_64_127_9_11 : label is 9;
  attribute ram_slice_end of xre_mem_reg_r2_64_127_9_11 : label is 11;
  attribute METHODOLOGY_DRC_VIOS of xre_mem_reg_r3_0_63_0_2 : label is "";
  attribute RTL_RAM_BITS of xre_mem_reg_r3_0_63_0_2 : label is 3072;
  attribute RTL_RAM_NAME of xre_mem_reg_r3_0_63_0_2 : label is "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xre_mem_reg";
  attribute RTL_RAM_STYLE of xre_mem_reg_r3_0_63_0_2 : label is "auto";
  attribute RTL_RAM_TYPE of xre_mem_reg_r3_0_63_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of xre_mem_reg_r3_0_63_0_2 : label is 0;
  attribute ram_addr_end of xre_mem_reg_r3_0_63_0_2 : label is 63;
  attribute ram_offset of xre_mem_reg_r3_0_63_0_2 : label is 0;
  attribute ram_slice_begin of xre_mem_reg_r3_0_63_0_2 : label is 0;
  attribute ram_slice_end of xre_mem_reg_r3_0_63_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of xre_mem_reg_r3_0_63_3_5 : label is "";
  attribute RTL_RAM_BITS of xre_mem_reg_r3_0_63_3_5 : label is 3072;
  attribute RTL_RAM_NAME of xre_mem_reg_r3_0_63_3_5 : label is "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xre_mem_reg";
  attribute RTL_RAM_STYLE of xre_mem_reg_r3_0_63_3_5 : label is "auto";
  attribute RTL_RAM_TYPE of xre_mem_reg_r3_0_63_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of xre_mem_reg_r3_0_63_3_5 : label is 0;
  attribute ram_addr_end of xre_mem_reg_r3_0_63_3_5 : label is 63;
  attribute ram_offset of xre_mem_reg_r3_0_63_3_5 : label is 0;
  attribute ram_slice_begin of xre_mem_reg_r3_0_63_3_5 : label is 3;
  attribute ram_slice_end of xre_mem_reg_r3_0_63_3_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of xre_mem_reg_r3_0_63_6_8 : label is "";
  attribute RTL_RAM_BITS of xre_mem_reg_r3_0_63_6_8 : label is 3072;
  attribute RTL_RAM_NAME of xre_mem_reg_r3_0_63_6_8 : label is "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xre_mem_reg";
  attribute RTL_RAM_STYLE of xre_mem_reg_r3_0_63_6_8 : label is "auto";
  attribute RTL_RAM_TYPE of xre_mem_reg_r3_0_63_6_8 : label is "RAM_SDP";
  attribute ram_addr_begin of xre_mem_reg_r3_0_63_6_8 : label is 0;
  attribute ram_addr_end of xre_mem_reg_r3_0_63_6_8 : label is 63;
  attribute ram_offset of xre_mem_reg_r3_0_63_6_8 : label is 0;
  attribute ram_slice_begin of xre_mem_reg_r3_0_63_6_8 : label is 6;
  attribute ram_slice_end of xre_mem_reg_r3_0_63_6_8 : label is 8;
  attribute METHODOLOGY_DRC_VIOS of xre_mem_reg_r3_0_63_9_11 : label is "";
  attribute RTL_RAM_BITS of xre_mem_reg_r3_0_63_9_11 : label is 3072;
  attribute RTL_RAM_NAME of xre_mem_reg_r3_0_63_9_11 : label is "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xre_mem_reg";
  attribute RTL_RAM_STYLE of xre_mem_reg_r3_0_63_9_11 : label is "auto";
  attribute RTL_RAM_TYPE of xre_mem_reg_r3_0_63_9_11 : label is "RAM_SDP";
  attribute ram_addr_begin of xre_mem_reg_r3_0_63_9_11 : label is 0;
  attribute ram_addr_end of xre_mem_reg_r3_0_63_9_11 : label is 63;
  attribute ram_offset of xre_mem_reg_r3_0_63_9_11 : label is 0;
  attribute ram_slice_begin of xre_mem_reg_r3_0_63_9_11 : label is 9;
  attribute ram_slice_end of xre_mem_reg_r3_0_63_9_11 : label is 11;
  attribute METHODOLOGY_DRC_VIOS of xre_mem_reg_r3_128_191_0_2 : label is "";
  attribute RTL_RAM_BITS of xre_mem_reg_r3_128_191_0_2 : label is 3072;
  attribute RTL_RAM_NAME of xre_mem_reg_r3_128_191_0_2 : label is "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xre_mem_reg";
  attribute RTL_RAM_STYLE of xre_mem_reg_r3_128_191_0_2 : label is "auto";
  attribute RTL_RAM_TYPE of xre_mem_reg_r3_128_191_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of xre_mem_reg_r3_128_191_0_2 : label is 128;
  attribute ram_addr_end of xre_mem_reg_r3_128_191_0_2 : label is 191;
  attribute ram_offset of xre_mem_reg_r3_128_191_0_2 : label is 0;
  attribute ram_slice_begin of xre_mem_reg_r3_128_191_0_2 : label is 0;
  attribute ram_slice_end of xre_mem_reg_r3_128_191_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of xre_mem_reg_r3_128_191_3_5 : label is "";
  attribute RTL_RAM_BITS of xre_mem_reg_r3_128_191_3_5 : label is 3072;
  attribute RTL_RAM_NAME of xre_mem_reg_r3_128_191_3_5 : label is "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xre_mem_reg";
  attribute RTL_RAM_STYLE of xre_mem_reg_r3_128_191_3_5 : label is "auto";
  attribute RTL_RAM_TYPE of xre_mem_reg_r3_128_191_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of xre_mem_reg_r3_128_191_3_5 : label is 128;
  attribute ram_addr_end of xre_mem_reg_r3_128_191_3_5 : label is 191;
  attribute ram_offset of xre_mem_reg_r3_128_191_3_5 : label is 0;
  attribute ram_slice_begin of xre_mem_reg_r3_128_191_3_5 : label is 3;
  attribute ram_slice_end of xre_mem_reg_r3_128_191_3_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of xre_mem_reg_r3_128_191_6_8 : label is "";
  attribute RTL_RAM_BITS of xre_mem_reg_r3_128_191_6_8 : label is 3072;
  attribute RTL_RAM_NAME of xre_mem_reg_r3_128_191_6_8 : label is "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xre_mem_reg";
  attribute RTL_RAM_STYLE of xre_mem_reg_r3_128_191_6_8 : label is "auto";
  attribute RTL_RAM_TYPE of xre_mem_reg_r3_128_191_6_8 : label is "RAM_SDP";
  attribute ram_addr_begin of xre_mem_reg_r3_128_191_6_8 : label is 128;
  attribute ram_addr_end of xre_mem_reg_r3_128_191_6_8 : label is 191;
  attribute ram_offset of xre_mem_reg_r3_128_191_6_8 : label is 0;
  attribute ram_slice_begin of xre_mem_reg_r3_128_191_6_8 : label is 6;
  attribute ram_slice_end of xre_mem_reg_r3_128_191_6_8 : label is 8;
  attribute METHODOLOGY_DRC_VIOS of xre_mem_reg_r3_128_191_9_11 : label is "";
  attribute RTL_RAM_BITS of xre_mem_reg_r3_128_191_9_11 : label is 3072;
  attribute RTL_RAM_NAME of xre_mem_reg_r3_128_191_9_11 : label is "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xre_mem_reg";
  attribute RTL_RAM_STYLE of xre_mem_reg_r3_128_191_9_11 : label is "auto";
  attribute RTL_RAM_TYPE of xre_mem_reg_r3_128_191_9_11 : label is "RAM_SDP";
  attribute ram_addr_begin of xre_mem_reg_r3_128_191_9_11 : label is 128;
  attribute ram_addr_end of xre_mem_reg_r3_128_191_9_11 : label is 191;
  attribute ram_offset of xre_mem_reg_r3_128_191_9_11 : label is 0;
  attribute ram_slice_begin of xre_mem_reg_r3_128_191_9_11 : label is 9;
  attribute ram_slice_end of xre_mem_reg_r3_128_191_9_11 : label is 11;
  attribute METHODOLOGY_DRC_VIOS of xre_mem_reg_r3_192_255_0_2 : label is "";
  attribute RTL_RAM_BITS of xre_mem_reg_r3_192_255_0_2 : label is 3072;
  attribute RTL_RAM_NAME of xre_mem_reg_r3_192_255_0_2 : label is "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xre_mem_reg";
  attribute RTL_RAM_STYLE of xre_mem_reg_r3_192_255_0_2 : label is "auto";
  attribute RTL_RAM_TYPE of xre_mem_reg_r3_192_255_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of xre_mem_reg_r3_192_255_0_2 : label is 192;
  attribute ram_addr_end of xre_mem_reg_r3_192_255_0_2 : label is 255;
  attribute ram_offset of xre_mem_reg_r3_192_255_0_2 : label is 0;
  attribute ram_slice_begin of xre_mem_reg_r3_192_255_0_2 : label is 0;
  attribute ram_slice_end of xre_mem_reg_r3_192_255_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of xre_mem_reg_r3_192_255_3_5 : label is "";
  attribute RTL_RAM_BITS of xre_mem_reg_r3_192_255_3_5 : label is 3072;
  attribute RTL_RAM_NAME of xre_mem_reg_r3_192_255_3_5 : label is "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xre_mem_reg";
  attribute RTL_RAM_STYLE of xre_mem_reg_r3_192_255_3_5 : label is "auto";
  attribute RTL_RAM_TYPE of xre_mem_reg_r3_192_255_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of xre_mem_reg_r3_192_255_3_5 : label is 192;
  attribute ram_addr_end of xre_mem_reg_r3_192_255_3_5 : label is 255;
  attribute ram_offset of xre_mem_reg_r3_192_255_3_5 : label is 0;
  attribute ram_slice_begin of xre_mem_reg_r3_192_255_3_5 : label is 3;
  attribute ram_slice_end of xre_mem_reg_r3_192_255_3_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of xre_mem_reg_r3_192_255_6_8 : label is "";
  attribute RTL_RAM_BITS of xre_mem_reg_r3_192_255_6_8 : label is 3072;
  attribute RTL_RAM_NAME of xre_mem_reg_r3_192_255_6_8 : label is "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xre_mem_reg";
  attribute RTL_RAM_STYLE of xre_mem_reg_r3_192_255_6_8 : label is "auto";
  attribute RTL_RAM_TYPE of xre_mem_reg_r3_192_255_6_8 : label is "RAM_SDP";
  attribute ram_addr_begin of xre_mem_reg_r3_192_255_6_8 : label is 192;
  attribute ram_addr_end of xre_mem_reg_r3_192_255_6_8 : label is 255;
  attribute ram_offset of xre_mem_reg_r3_192_255_6_8 : label is 0;
  attribute ram_slice_begin of xre_mem_reg_r3_192_255_6_8 : label is 6;
  attribute ram_slice_end of xre_mem_reg_r3_192_255_6_8 : label is 8;
  attribute METHODOLOGY_DRC_VIOS of xre_mem_reg_r3_192_255_9_11 : label is "";
  attribute RTL_RAM_BITS of xre_mem_reg_r3_192_255_9_11 : label is 3072;
  attribute RTL_RAM_NAME of xre_mem_reg_r3_192_255_9_11 : label is "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xre_mem_reg";
  attribute RTL_RAM_STYLE of xre_mem_reg_r3_192_255_9_11 : label is "auto";
  attribute RTL_RAM_TYPE of xre_mem_reg_r3_192_255_9_11 : label is "RAM_SDP";
  attribute ram_addr_begin of xre_mem_reg_r3_192_255_9_11 : label is 192;
  attribute ram_addr_end of xre_mem_reg_r3_192_255_9_11 : label is 255;
  attribute ram_offset of xre_mem_reg_r3_192_255_9_11 : label is 0;
  attribute ram_slice_begin of xre_mem_reg_r3_192_255_9_11 : label is 9;
  attribute ram_slice_end of xre_mem_reg_r3_192_255_9_11 : label is 11;
  attribute METHODOLOGY_DRC_VIOS of xre_mem_reg_r3_64_127_0_2 : label is "";
  attribute RTL_RAM_BITS of xre_mem_reg_r3_64_127_0_2 : label is 3072;
  attribute RTL_RAM_NAME of xre_mem_reg_r3_64_127_0_2 : label is "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xre_mem_reg";
  attribute RTL_RAM_STYLE of xre_mem_reg_r3_64_127_0_2 : label is "auto";
  attribute RTL_RAM_TYPE of xre_mem_reg_r3_64_127_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of xre_mem_reg_r3_64_127_0_2 : label is 64;
  attribute ram_addr_end of xre_mem_reg_r3_64_127_0_2 : label is 127;
  attribute ram_offset of xre_mem_reg_r3_64_127_0_2 : label is 0;
  attribute ram_slice_begin of xre_mem_reg_r3_64_127_0_2 : label is 0;
  attribute ram_slice_end of xre_mem_reg_r3_64_127_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of xre_mem_reg_r3_64_127_3_5 : label is "";
  attribute RTL_RAM_BITS of xre_mem_reg_r3_64_127_3_5 : label is 3072;
  attribute RTL_RAM_NAME of xre_mem_reg_r3_64_127_3_5 : label is "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xre_mem_reg";
  attribute RTL_RAM_STYLE of xre_mem_reg_r3_64_127_3_5 : label is "auto";
  attribute RTL_RAM_TYPE of xre_mem_reg_r3_64_127_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of xre_mem_reg_r3_64_127_3_5 : label is 64;
  attribute ram_addr_end of xre_mem_reg_r3_64_127_3_5 : label is 127;
  attribute ram_offset of xre_mem_reg_r3_64_127_3_5 : label is 0;
  attribute ram_slice_begin of xre_mem_reg_r3_64_127_3_5 : label is 3;
  attribute ram_slice_end of xre_mem_reg_r3_64_127_3_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of xre_mem_reg_r3_64_127_6_8 : label is "";
  attribute RTL_RAM_BITS of xre_mem_reg_r3_64_127_6_8 : label is 3072;
  attribute RTL_RAM_NAME of xre_mem_reg_r3_64_127_6_8 : label is "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xre_mem_reg";
  attribute RTL_RAM_STYLE of xre_mem_reg_r3_64_127_6_8 : label is "auto";
  attribute RTL_RAM_TYPE of xre_mem_reg_r3_64_127_6_8 : label is "RAM_SDP";
  attribute ram_addr_begin of xre_mem_reg_r3_64_127_6_8 : label is 64;
  attribute ram_addr_end of xre_mem_reg_r3_64_127_6_8 : label is 127;
  attribute ram_offset of xre_mem_reg_r3_64_127_6_8 : label is 0;
  attribute ram_slice_begin of xre_mem_reg_r3_64_127_6_8 : label is 6;
  attribute ram_slice_end of xre_mem_reg_r3_64_127_6_8 : label is 8;
  attribute METHODOLOGY_DRC_VIOS of xre_mem_reg_r3_64_127_9_11 : label is "";
  attribute RTL_RAM_BITS of xre_mem_reg_r3_64_127_9_11 : label is 3072;
  attribute RTL_RAM_NAME of xre_mem_reg_r3_64_127_9_11 : label is "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xre_mem_reg";
  attribute RTL_RAM_STYLE of xre_mem_reg_r3_64_127_9_11 : label is "auto";
  attribute RTL_RAM_TYPE of xre_mem_reg_r3_64_127_9_11 : label is "RAM_SDP";
  attribute ram_addr_begin of xre_mem_reg_r3_64_127_9_11 : label is 64;
  attribute ram_addr_end of xre_mem_reg_r3_64_127_9_11 : label is 127;
  attribute ram_offset of xre_mem_reg_r3_64_127_9_11 : label is 0;
  attribute ram_slice_begin of xre_mem_reg_r3_64_127_9_11 : label is 9;
  attribute ram_slice_end of xre_mem_reg_r3_64_127_9_11 : label is 11;
  attribute SOFT_HLUTNM of \xre_mm1[11]_i_2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \xre_mm1[11]_i_3\ : label is "soft_lutpair18";
begin
  SR(0) <= \^sr\(0);
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAABFA0"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => m_axis_data_tlast,
      I2 => m_axis_data_tvalid,
      I3 => \FSM_onehot_state_reg_n_0_[0]\,
      I4 => last_s10,
      O => \FSM_onehot_state[0]_i_1_n_0\
    );
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF5FFF00E000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => m_axis_data_tlast,
      I2 => m_axis_data_tvalid,
      I3 => \FSM_onehot_state_reg_n_0_[0]\,
      I4 => last_s10,
      I5 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAA8CC88CC"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => m_axis_data_tlast,
      I3 => m_axis_data_tvalid,
      I4 => \FSM_onehot_state_reg_n_0_[0]\,
      I5 => last_s10,
      O => \FSM_onehot_state[2]_i_1_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[0]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      S => \^sr\(0)
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[1]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[1]\,
      R => \^sr\(0)
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[2]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[2]\,
      R => \^sr\(0)
    );
last_s1_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \m_reg_n_0_[7]\,
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      I2 => \m_reg_n_0_[6]\,
      I3 => last_s1_i_2_n_0,
      O => last_s10
    );
last_s1_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \m_reg_n_0_[4]\,
      I1 => \m_reg_n_0_[2]\,
      I2 => \m_reg_n_0_[0]\,
      I3 => \m_reg_n_0_[1]\,
      I4 => \m_reg_n_0_[3]\,
      I5 => \m_reg_n_0_[5]\,
      O => last_s1_i_2_n_0
    );
last_s1_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => last_s10,
      Q => last_s1,
      R => \^sr\(0)
    );
last_s2_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => last_s1,
      Q => last_s2,
      R => \^sr\(0)
    );
\m[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF80"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => m_axis_data_tvalid,
      I2 => m_axis_data_tlast,
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      O => m
    );
\m[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => \m_reg_n_0_[0]\,
      O => \m[0]_i_2_n_0\
    );
\m[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => \m_reg_n_0_[1]\,
      I1 => \m_reg_n_0_[0]\,
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \m[1]_i_1_n_0\
    );
\m[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6A00"
    )
        port map (
      I0 => \m_reg_n_0_[2]\,
      I1 => \m_reg_n_0_[0]\,
      I2 => \m_reg_n_0_[1]\,
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \m[2]_i_1_n_0\
    );
\m[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAA0000"
    )
        port map (
      I0 => \m_reg_n_0_[3]\,
      I1 => \m_reg_n_0_[1]\,
      I2 => \m_reg_n_0_[0]\,
      I3 => \m_reg_n_0_[2]\,
      I4 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \m[3]_i_1_n_0\
    );
\m[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAA00000000"
    )
        port map (
      I0 => \m_reg_n_0_[4]\,
      I1 => \m_reg_n_0_[2]\,
      I2 => \m_reg_n_0_[0]\,
      I3 => \m_reg_n_0_[1]\,
      I4 => \m_reg_n_0_[3]\,
      I5 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \m[4]_i_1_n_0\
    );
\m[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m_plus_1(5),
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \m[5]_i_1_n_0\
    );
\m[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m_plus_1(6),
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \m[6]_i_1_n_0\
    );
\m[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m_plus_1(7),
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \m[7]_i_1_n_0\
    );
\m_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m,
      D => \m[0]_i_2_n_0\,
      Q => \m_reg_n_0_[0]\,
      R => \^sr\(0)
    );
\m_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m,
      D => \m[1]_i_1_n_0\,
      Q => \m_reg_n_0_[1]\,
      R => \^sr\(0)
    );
\m_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m,
      D => \m[2]_i_1_n_0\,
      Q => \m_reg_n_0_[2]\,
      R => \^sr\(0)
    );
\m_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m,
      D => \m[3]_i_1_n_0\,
      Q => \m_reg_n_0_[3]\,
      R => \^sr\(0)
    );
\m_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m,
      D => \m[4]_i_1_n_0\,
      Q => \m_reg_n_0_[4]\,
      R => \^sr\(0)
    );
\m_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m,
      D => \m[5]_i_1_n_0\,
      Q => \m_reg_n_0_[5]\,
      R => \^sr\(0)
    );
\m_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m,
      D => \m[6]_i_1_n_0\,
      Q => \m_reg_n_0_[6]\,
      R => \^sr\(0)
    );
\m_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m,
      D => \m[7]_i_1_n_0\,
      Q => \m_reg_n_0_[7]\,
      R => \^sr\(0)
    );
\m_s1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \m_reg_n_0_[0]\,
      Q => m_s1(0),
      R => \^sr\(0)
    );
\m_s1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \m_reg_n_0_[1]\,
      Q => m_s1(1),
      R => \^sr\(0)
    );
\m_s1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \m_reg_n_0_[2]\,
      Q => m_s1(2),
      R => \^sr\(0)
    );
\m_s1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \m_reg_n_0_[3]\,
      Q => m_s1(3),
      R => \^sr\(0)
    );
\m_s1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \m_reg_n_0_[4]\,
      Q => m_s1(4),
      R => \^sr\(0)
    );
\m_s1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \m_reg_n_0_[5]\,
      Q => m_s1(5),
      R => \^sr\(0)
    );
\m_s1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \m_reg_n_0_[6]\,
      Q => m_s1(6),
      R => \^sr\(0)
    );
\m_s1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \m_reg_n_0_[7]\,
      Q => m_s1(7),
      R => \^sr\(0)
    );
\m_s2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => m_s1(0),
      Q => m_s2(0),
      R => \^sr\(0)
    );
\m_s2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => m_s1(1),
      Q => m_s2(1),
      R => \^sr\(0)
    );
\m_s2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => m_s1(2),
      Q => m_s2(2),
      R => \^sr\(0)
    );
\m_s2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => m_s1(3),
      Q => m_s2(3),
      R => \^sr\(0)
    );
\m_s2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => m_s1(4),
      Q => m_s2(4),
      R => \^sr\(0)
    );
\m_s2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => m_s1(5),
      Q => m_s2(5),
      R => \^sr\(0)
    );
\m_s2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => m_s1(6),
      Q => m_s2(6),
      R => \^sr\(0)
    );
\m_s2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => m_s1(7),
      Q => m_s2(7),
      R => \^sr\(0)
    );
round_w_return1: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => xim_m0(11),
      A(28) => xim_m0(11),
      A(27) => xim_m0(11),
      A(26) => xim_m0(11),
      A(25) => xim_m0(11),
      A(24) => xim_m0(11),
      A(23) => xim_m0(11),
      A(22) => xim_m0(11),
      A(21) => xim_m0(11),
      A(20) => xim_m0(11),
      A(19) => xim_m0(11),
      A(18) => xim_m0(11),
      A(17) => xim_m0(11),
      A(16) => xim_m0(11),
      A(15) => xim_m0(11),
      A(14) => xim_m0(11),
      A(13) => xim_m0(11),
      A(12) => xim_m0(11),
      A(11 downto 0) => xim_m0(11 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_round_w_return1_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B"000100010100011111",
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_round_w_return1_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000000100000000000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_round_w_return1_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_round_w_return1_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '1',
      CLK => clk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_round_w_return1_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_round_w_return1_OVERFLOW_UNCONNECTED,
      P(47 downto 0) => NLW_round_w_return1_P_UNCONNECTED(47 downto 0),
      PATTERNBDETECT => NLW_round_w_return1_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_round_w_return1_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47) => round_w_return1_n_106,
      PCOUT(46) => round_w_return1_n_107,
      PCOUT(45) => round_w_return1_n_108,
      PCOUT(44) => round_w_return1_n_109,
      PCOUT(43) => round_w_return1_n_110,
      PCOUT(42) => round_w_return1_n_111,
      PCOUT(41) => round_w_return1_n_112,
      PCOUT(40) => round_w_return1_n_113,
      PCOUT(39) => round_w_return1_n_114,
      PCOUT(38) => round_w_return1_n_115,
      PCOUT(37) => round_w_return1_n_116,
      PCOUT(36) => round_w_return1_n_117,
      PCOUT(35) => round_w_return1_n_118,
      PCOUT(34) => round_w_return1_n_119,
      PCOUT(33) => round_w_return1_n_120,
      PCOUT(32) => round_w_return1_n_121,
      PCOUT(31) => round_w_return1_n_122,
      PCOUT(30) => round_w_return1_n_123,
      PCOUT(29) => round_w_return1_n_124,
      PCOUT(28) => round_w_return1_n_125,
      PCOUT(27) => round_w_return1_n_126,
      PCOUT(26) => round_w_return1_n_127,
      PCOUT(25) => round_w_return1_n_128,
      PCOUT(24) => round_w_return1_n_129,
      PCOUT(23) => round_w_return1_n_130,
      PCOUT(22) => round_w_return1_n_131,
      PCOUT(21) => round_w_return1_n_132,
      PCOUT(20) => round_w_return1_n_133,
      PCOUT(19) => round_w_return1_n_134,
      PCOUT(18) => round_w_return1_n_135,
      PCOUT(17) => round_w_return1_n_136,
      PCOUT(16) => round_w_return1_n_137,
      PCOUT(15) => round_w_return1_n_138,
      PCOUT(14) => round_w_return1_n_139,
      PCOUT(13) => round_w_return1_n_140,
      PCOUT(12) => round_w_return1_n_141,
      PCOUT(11) => round_w_return1_n_142,
      PCOUT(10) => round_w_return1_n_143,
      PCOUT(9) => round_w_return1_n_144,
      PCOUT(8) => round_w_return1_n_145,
      PCOUT(7) => round_w_return1_n_146,
      PCOUT(6) => round_w_return1_n_147,
      PCOUT(5) => round_w_return1_n_148,
      PCOUT(4) => round_w_return1_n_149,
      PCOUT(3) => round_w_return1_n_150,
      PCOUT(2) => round_w_return1_n_151,
      PCOUT(1) => round_w_return1_n_152,
      PCOUT(0) => round_w_return1_n_153,
      RSTA => \^sr\(0),
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => \^sr\(0),
      UNDERFLOW => NLW_round_w_return1_UNDERFLOW_UNCONNECTED
    );
\round_w_return1__0\: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 0,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 0,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => true,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => xim_mp10(11),
      A(28) => xim_mp10(11),
      A(27) => xim_mp10(11),
      A(26) => xim_mp10(11),
      A(25) => xim_mp10(11),
      A(24) => xim_mp10(11),
      A(23) => xim_mp10(11),
      A(22) => xim_mp10(11),
      A(21) => xim_mp10(11),
      A(20) => xim_mp10(11),
      A(19) => xim_mp10(11),
      A(18) => xim_mp10(11),
      A(17) => xim_mp10(11),
      A(16) => xim_mp10(11),
      A(15) => xim_mp10(11),
      A(14) => xim_mp10(11),
      A(13) => xim_mp10(11),
      A(12) => xim_mp10(11),
      A(11 downto 0) => xim_mp10(11 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => \NLW_round_w_return1__0_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0011",
      B(17 downto 0) => B"000001110101110001",
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_round_w_return1__0_BCOUT_UNCONNECTED\(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_round_w_return1__0_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_round_w_return1__0_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => clk,
      D(24) => xim_mm1(11),
      D(23) => xim_mm1(11),
      D(22) => xim_mm1(11),
      D(21) => xim_mm1(11),
      D(20) => xim_mm1(11),
      D(19) => xim_mm1(11),
      D(18) => xim_mm1(11),
      D(17) => xim_mm1(11),
      D(16) => xim_mm1(11),
      D(15) => xim_mm1(11),
      D(14) => xim_mm1(11),
      D(13) => xim_mm1(11),
      D(12) => xim_mm1(11),
      D(11 downto 0) => xim_mm1(11 downto 0),
      INMODE(4 downto 0) => B"00100",
      MULTSIGNIN => '0',
      MULTSIGNOUT => \NLW_round_w_return1__0_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(6 downto 0) => B"0010101",
      OVERFLOW => \NLW_round_w_return1__0_OVERFLOW_UNCONNECTED\,
      P(47 downto 27) => \NLW_round_w_return1__0_P_UNCONNECTED\(47 downto 27),
      P(26 downto 15) => D(11 downto 0),
      P(14) => \round_w_return1__0_n_91\,
      P(13) => \round_w_return1__0_n_92\,
      P(12) => \round_w_return1__0_n_93\,
      P(11) => \round_w_return1__0_n_94\,
      P(10) => \round_w_return1__0_n_95\,
      P(9) => \round_w_return1__0_n_96\,
      P(8) => \round_w_return1__0_n_97\,
      P(7) => \round_w_return1__0_n_98\,
      P(6) => \round_w_return1__0_n_99\,
      P(5) => \round_w_return1__0_n_100\,
      P(4) => \round_w_return1__0_n_101\,
      P(3) => \round_w_return1__0_n_102\,
      P(2) => \round_w_return1__0_n_103\,
      P(1) => \round_w_return1__0_n_104\,
      P(0) => \round_w_return1__0_n_105\,
      PATTERNBDETECT => \NLW_round_w_return1__0_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_round_w_return1__0_PATTERNDETECT_UNCONNECTED\,
      PCIN(47) => round_w_return1_n_106,
      PCIN(46) => round_w_return1_n_107,
      PCIN(45) => round_w_return1_n_108,
      PCIN(44) => round_w_return1_n_109,
      PCIN(43) => round_w_return1_n_110,
      PCIN(42) => round_w_return1_n_111,
      PCIN(41) => round_w_return1_n_112,
      PCIN(40) => round_w_return1_n_113,
      PCIN(39) => round_w_return1_n_114,
      PCIN(38) => round_w_return1_n_115,
      PCIN(37) => round_w_return1_n_116,
      PCIN(36) => round_w_return1_n_117,
      PCIN(35) => round_w_return1_n_118,
      PCIN(34) => round_w_return1_n_119,
      PCIN(33) => round_w_return1_n_120,
      PCIN(32) => round_w_return1_n_121,
      PCIN(31) => round_w_return1_n_122,
      PCIN(30) => round_w_return1_n_123,
      PCIN(29) => round_w_return1_n_124,
      PCIN(28) => round_w_return1_n_125,
      PCIN(27) => round_w_return1_n_126,
      PCIN(26) => round_w_return1_n_127,
      PCIN(25) => round_w_return1_n_128,
      PCIN(24) => round_w_return1_n_129,
      PCIN(23) => round_w_return1_n_130,
      PCIN(22) => round_w_return1_n_131,
      PCIN(21) => round_w_return1_n_132,
      PCIN(20) => round_w_return1_n_133,
      PCIN(19) => round_w_return1_n_134,
      PCIN(18) => round_w_return1_n_135,
      PCIN(17) => round_w_return1_n_136,
      PCIN(16) => round_w_return1_n_137,
      PCIN(15) => round_w_return1_n_138,
      PCIN(14) => round_w_return1_n_139,
      PCIN(13) => round_w_return1_n_140,
      PCIN(12) => round_w_return1_n_141,
      PCIN(11) => round_w_return1_n_142,
      PCIN(10) => round_w_return1_n_143,
      PCIN(9) => round_w_return1_n_144,
      PCIN(8) => round_w_return1_n_145,
      PCIN(7) => round_w_return1_n_146,
      PCIN(6) => round_w_return1_n_147,
      PCIN(5) => round_w_return1_n_148,
      PCIN(4) => round_w_return1_n_149,
      PCIN(3) => round_w_return1_n_150,
      PCIN(2) => round_w_return1_n_151,
      PCIN(1) => round_w_return1_n_152,
      PCIN(0) => round_w_return1_n_153,
      PCOUT(47 downto 0) => \NLW_round_w_return1__0_PCOUT_UNCONNECTED\(47 downto 0),
      RSTA => \^sr\(0),
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => \^sr\(0),
      RSTP => \^sr\(0),
      UNDERFLOW => \NLW_round_w_return1__0_UNDERFLOW_UNCONNECTED\
    );
\round_w_return1__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => xim_mem_reg_r1_192_255_9_11_n_2,
      I1 => xim_mem_reg_r1_128_191_9_11_n_2,
      I2 => m_plus_1(7),
      I3 => xim_mem_reg_r1_64_127_9_11_n_2,
      I4 => m_plus_1(6),
      I5 => xim_mem_reg_r1_0_63_9_11_n_2,
      O => xim_mp10(11)
    );
\round_w_return1__0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => xim_mem_reg_r1_192_255_0_2_n_2,
      I1 => xim_mem_reg_r1_128_191_0_2_n_2,
      I2 => m_plus_1(7),
      I3 => xim_mem_reg_r1_64_127_0_2_n_2,
      I4 => m_plus_1(6),
      I5 => xim_mem_reg_r1_0_63_0_2_n_2,
      O => xim_mp10(2)
    );
\round_w_return1__0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => xim_mem_reg_r1_192_255_0_2_n_1,
      I1 => xim_mem_reg_r1_128_191_0_2_n_1,
      I2 => m_plus_1(7),
      I3 => xim_mem_reg_r1_64_127_0_2_n_1,
      I4 => m_plus_1(6),
      I5 => xim_mem_reg_r1_0_63_0_2_n_1,
      O => xim_mp10(1)
    );
\round_w_return1__0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => xim_mem_reg_r1_192_255_0_2_n_0,
      I1 => xim_mem_reg_r1_128_191_0_2_n_0,
      I2 => m_plus_1(7),
      I3 => xim_mem_reg_r1_64_127_0_2_n_0,
      I4 => m_plus_1(6),
      I5 => xim_mem_reg_r1_0_63_0_2_n_0,
      O => xim_mp10(0)
    );
\round_w_return1__0_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => \m_reg_n_0_[6]\,
      I1 => last_s1_i_2_n_0,
      I2 => \m_reg_n_0_[7]\,
      O => m_plus_1(7)
    );
\round_w_return1__0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF08000000"
    )
        port map (
      I0 => \m_reg_n_0_[5]\,
      I1 => \m_reg_n_0_[3]\,
      I2 => \round_w_return1__0_i_15_n_0\,
      I3 => \m_reg_n_0_[2]\,
      I4 => \m_reg_n_0_[4]\,
      I5 => \m_reg_n_0_[6]\,
      O => m_plus_1(6)
    );
\round_w_return1__0_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \m_reg_n_0_[0]\,
      I1 => \m_reg_n_0_[1]\,
      O => \round_w_return1__0_i_15_n_0\
    );
\round_w_return1__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => xim_mem_reg_r1_192_255_9_11_n_1,
      I1 => xim_mem_reg_r1_128_191_9_11_n_1,
      I2 => m_plus_1(7),
      I3 => xim_mem_reg_r1_64_127_9_11_n_1,
      I4 => m_plus_1(6),
      I5 => xim_mem_reg_r1_0_63_9_11_n_1,
      O => xim_mp10(10)
    );
\round_w_return1__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => xim_mem_reg_r1_192_255_9_11_n_0,
      I1 => xim_mem_reg_r1_128_191_9_11_n_0,
      I2 => m_plus_1(7),
      I3 => xim_mem_reg_r1_64_127_9_11_n_0,
      I4 => m_plus_1(6),
      I5 => xim_mem_reg_r1_0_63_9_11_n_0,
      O => xim_mp10(9)
    );
\round_w_return1__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => xim_mem_reg_r1_192_255_6_8_n_2,
      I1 => xim_mem_reg_r1_128_191_6_8_n_2,
      I2 => m_plus_1(7),
      I3 => xim_mem_reg_r1_64_127_6_8_n_2,
      I4 => m_plus_1(6),
      I5 => xim_mem_reg_r1_0_63_6_8_n_2,
      O => xim_mp10(8)
    );
\round_w_return1__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => xim_mem_reg_r1_192_255_6_8_n_1,
      I1 => xim_mem_reg_r1_128_191_6_8_n_1,
      I2 => m_plus_1(7),
      I3 => xim_mem_reg_r1_64_127_6_8_n_1,
      I4 => m_plus_1(6),
      I5 => xim_mem_reg_r1_0_63_6_8_n_1,
      O => xim_mp10(7)
    );
\round_w_return1__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => xim_mem_reg_r1_192_255_6_8_n_0,
      I1 => xim_mem_reg_r1_128_191_6_8_n_0,
      I2 => m_plus_1(7),
      I3 => xim_mem_reg_r1_64_127_6_8_n_0,
      I4 => m_plus_1(6),
      I5 => xim_mem_reg_r1_0_63_6_8_n_0,
      O => xim_mp10(6)
    );
\round_w_return1__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => xim_mem_reg_r1_192_255_3_5_n_2,
      I1 => xim_mem_reg_r1_128_191_3_5_n_2,
      I2 => m_plus_1(7),
      I3 => xim_mem_reg_r1_64_127_3_5_n_2,
      I4 => m_plus_1(6),
      I5 => xim_mem_reg_r1_0_63_3_5_n_2,
      O => xim_mp10(5)
    );
\round_w_return1__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => xim_mem_reg_r1_192_255_3_5_n_1,
      I1 => xim_mem_reg_r1_128_191_3_5_n_1,
      I2 => m_plus_1(7),
      I3 => xim_mem_reg_r1_64_127_3_5_n_1,
      I4 => m_plus_1(6),
      I5 => xim_mem_reg_r1_0_63_3_5_n_1,
      O => xim_mp10(4)
    );
\round_w_return1__0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => xim_mem_reg_r1_192_255_3_5_n_0,
      I1 => xim_mem_reg_r1_128_191_3_5_n_0,
      I2 => m_plus_1(7),
      I3 => xim_mem_reg_r1_64_127_3_5_n_0,
      I4 => m_plus_1(6),
      I5 => xim_mem_reg_r1_0_63_3_5_n_0,
      O => xim_mp10(3)
    );
\round_w_return1__1\: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => xre_m0(11),
      A(28) => xre_m0(11),
      A(27) => xre_m0(11),
      A(26) => xre_m0(11),
      A(25) => xre_m0(11),
      A(24) => xre_m0(11),
      A(23) => xre_m0(11),
      A(22) => xre_m0(11),
      A(21) => xre_m0(11),
      A(20) => xre_m0(11),
      A(19) => xre_m0(11),
      A(18) => xre_m0(11),
      A(17) => xre_m0(11),
      A(16) => xre_m0(11),
      A(15) => xre_m0(11),
      A(14) => xre_m0(11),
      A(13) => xre_m0(11),
      A(12) => xre_m0(11),
      A(11 downto 0) => xre_m0(11 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => \NLW_round_w_return1__1_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B"000100010100011111",
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_round_w_return1__1_BCOUT_UNCONNECTED\(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000000100000000000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_round_w_return1__1_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_round_w_return1__1_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '1',
      CLK => clk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => \NLW_round_w_return1__1_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => \NLW_round_w_return1__1_OVERFLOW_UNCONNECTED\,
      P(47 downto 0) => \NLW_round_w_return1__1_P_UNCONNECTED\(47 downto 0),
      PATTERNBDETECT => \NLW_round_w_return1__1_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_round_w_return1__1_PATTERNDETECT_UNCONNECTED\,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47) => \round_w_return1__1_n_106\,
      PCOUT(46) => \round_w_return1__1_n_107\,
      PCOUT(45) => \round_w_return1__1_n_108\,
      PCOUT(44) => \round_w_return1__1_n_109\,
      PCOUT(43) => \round_w_return1__1_n_110\,
      PCOUT(42) => \round_w_return1__1_n_111\,
      PCOUT(41) => \round_w_return1__1_n_112\,
      PCOUT(40) => \round_w_return1__1_n_113\,
      PCOUT(39) => \round_w_return1__1_n_114\,
      PCOUT(38) => \round_w_return1__1_n_115\,
      PCOUT(37) => \round_w_return1__1_n_116\,
      PCOUT(36) => \round_w_return1__1_n_117\,
      PCOUT(35) => \round_w_return1__1_n_118\,
      PCOUT(34) => \round_w_return1__1_n_119\,
      PCOUT(33) => \round_w_return1__1_n_120\,
      PCOUT(32) => \round_w_return1__1_n_121\,
      PCOUT(31) => \round_w_return1__1_n_122\,
      PCOUT(30) => \round_w_return1__1_n_123\,
      PCOUT(29) => \round_w_return1__1_n_124\,
      PCOUT(28) => \round_w_return1__1_n_125\,
      PCOUT(27) => \round_w_return1__1_n_126\,
      PCOUT(26) => \round_w_return1__1_n_127\,
      PCOUT(25) => \round_w_return1__1_n_128\,
      PCOUT(24) => \round_w_return1__1_n_129\,
      PCOUT(23) => \round_w_return1__1_n_130\,
      PCOUT(22) => \round_w_return1__1_n_131\,
      PCOUT(21) => \round_w_return1__1_n_132\,
      PCOUT(20) => \round_w_return1__1_n_133\,
      PCOUT(19) => \round_w_return1__1_n_134\,
      PCOUT(18) => \round_w_return1__1_n_135\,
      PCOUT(17) => \round_w_return1__1_n_136\,
      PCOUT(16) => \round_w_return1__1_n_137\,
      PCOUT(15) => \round_w_return1__1_n_138\,
      PCOUT(14) => \round_w_return1__1_n_139\,
      PCOUT(13) => \round_w_return1__1_n_140\,
      PCOUT(12) => \round_w_return1__1_n_141\,
      PCOUT(11) => \round_w_return1__1_n_142\,
      PCOUT(10) => \round_w_return1__1_n_143\,
      PCOUT(9) => \round_w_return1__1_n_144\,
      PCOUT(8) => \round_w_return1__1_n_145\,
      PCOUT(7) => \round_w_return1__1_n_146\,
      PCOUT(6) => \round_w_return1__1_n_147\,
      PCOUT(5) => \round_w_return1__1_n_148\,
      PCOUT(4) => \round_w_return1__1_n_149\,
      PCOUT(3) => \round_w_return1__1_n_150\,
      PCOUT(2) => \round_w_return1__1_n_151\,
      PCOUT(1) => \round_w_return1__1_n_152\,
      PCOUT(0) => \round_w_return1__1_n_153\,
      RSTA => \^sr\(0),
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => \^sr\(0),
      UNDERFLOW => \NLW_round_w_return1__1_UNDERFLOW_UNCONNECTED\
    );
\round_w_return1__1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => xre_mem_reg_r3_192_255_9_11_n_2,
      I1 => xre_mem_reg_r3_128_191_9_11_n_2,
      I2 => \m_reg_n_0_[7]\,
      I3 => xre_mem_reg_r3_64_127_9_11_n_2,
      I4 => \m_reg_n_0_[6]\,
      I5 => xre_mem_reg_r3_0_63_9_11_n_2,
      O => xre_m0(11)
    );
\round_w_return1__1_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => xre_mem_reg_r3_192_255_0_2_n_2,
      I1 => xre_mem_reg_r3_128_191_0_2_n_2,
      I2 => \m_reg_n_0_[7]\,
      I3 => xre_mem_reg_r3_64_127_0_2_n_2,
      I4 => \m_reg_n_0_[6]\,
      I5 => xre_mem_reg_r3_0_63_0_2_n_2,
      O => xre_m0(2)
    );
\round_w_return1__1_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => xre_mem_reg_r3_192_255_0_2_n_1,
      I1 => xre_mem_reg_r3_128_191_0_2_n_1,
      I2 => \m_reg_n_0_[7]\,
      I3 => xre_mem_reg_r3_64_127_0_2_n_1,
      I4 => \m_reg_n_0_[6]\,
      I5 => xre_mem_reg_r3_0_63_0_2_n_1,
      O => xre_m0(1)
    );
\round_w_return1__1_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => xre_mem_reg_r3_192_255_0_2_n_0,
      I1 => xre_mem_reg_r3_128_191_0_2_n_0,
      I2 => \m_reg_n_0_[7]\,
      I3 => xre_mem_reg_r3_64_127_0_2_n_0,
      I4 => \m_reg_n_0_[6]\,
      I5 => xre_mem_reg_r3_0_63_0_2_n_0,
      O => xre_m0(0)
    );
\round_w_return1__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => xre_mem_reg_r3_192_255_9_11_n_1,
      I1 => xre_mem_reg_r3_128_191_9_11_n_1,
      I2 => \m_reg_n_0_[7]\,
      I3 => xre_mem_reg_r3_64_127_9_11_n_1,
      I4 => \m_reg_n_0_[6]\,
      I5 => xre_mem_reg_r3_0_63_9_11_n_1,
      O => xre_m0(10)
    );
\round_w_return1__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => xre_mem_reg_r3_192_255_9_11_n_0,
      I1 => xre_mem_reg_r3_128_191_9_11_n_0,
      I2 => \m_reg_n_0_[7]\,
      I3 => xre_mem_reg_r3_64_127_9_11_n_0,
      I4 => \m_reg_n_0_[6]\,
      I5 => xre_mem_reg_r3_0_63_9_11_n_0,
      O => xre_m0(9)
    );
\round_w_return1__1_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => xre_mem_reg_r3_192_255_6_8_n_2,
      I1 => xre_mem_reg_r3_128_191_6_8_n_2,
      I2 => \m_reg_n_0_[7]\,
      I3 => xre_mem_reg_r3_64_127_6_8_n_2,
      I4 => \m_reg_n_0_[6]\,
      I5 => xre_mem_reg_r3_0_63_6_8_n_2,
      O => xre_m0(8)
    );
\round_w_return1__1_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => xre_mem_reg_r3_192_255_6_8_n_1,
      I1 => xre_mem_reg_r3_128_191_6_8_n_1,
      I2 => \m_reg_n_0_[7]\,
      I3 => xre_mem_reg_r3_64_127_6_8_n_1,
      I4 => \m_reg_n_0_[6]\,
      I5 => xre_mem_reg_r3_0_63_6_8_n_1,
      O => xre_m0(7)
    );
\round_w_return1__1_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => xre_mem_reg_r3_192_255_6_8_n_0,
      I1 => xre_mem_reg_r3_128_191_6_8_n_0,
      I2 => \m_reg_n_0_[7]\,
      I3 => xre_mem_reg_r3_64_127_6_8_n_0,
      I4 => \m_reg_n_0_[6]\,
      I5 => xre_mem_reg_r3_0_63_6_8_n_0,
      O => xre_m0(6)
    );
\round_w_return1__1_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => xre_mem_reg_r3_192_255_3_5_n_2,
      I1 => xre_mem_reg_r3_128_191_3_5_n_2,
      I2 => \m_reg_n_0_[7]\,
      I3 => xre_mem_reg_r3_64_127_3_5_n_2,
      I4 => \m_reg_n_0_[6]\,
      I5 => xre_mem_reg_r3_0_63_3_5_n_2,
      O => xre_m0(5)
    );
\round_w_return1__1_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => xre_mem_reg_r3_192_255_3_5_n_1,
      I1 => xre_mem_reg_r3_128_191_3_5_n_1,
      I2 => \m_reg_n_0_[7]\,
      I3 => xre_mem_reg_r3_64_127_3_5_n_1,
      I4 => \m_reg_n_0_[6]\,
      I5 => xre_mem_reg_r3_0_63_3_5_n_1,
      O => xre_m0(4)
    );
\round_w_return1__1_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => xre_mem_reg_r3_192_255_3_5_n_0,
      I1 => xre_mem_reg_r3_128_191_3_5_n_0,
      I2 => \m_reg_n_0_[7]\,
      I3 => xre_mem_reg_r3_64_127_3_5_n_0,
      I4 => \m_reg_n_0_[6]\,
      I5 => xre_mem_reg_r3_0_63_3_5_n_0,
      O => xre_m0(3)
    );
\round_w_return1__2\: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 0,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 0,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => true,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => xre_mp10(11),
      A(28) => xre_mp10(11),
      A(27) => xre_mp10(11),
      A(26) => xre_mp10(11),
      A(25) => xre_mp10(11),
      A(24) => xre_mp10(11),
      A(23) => xre_mp10(11),
      A(22) => xre_mp10(11),
      A(21) => xre_mp10(11),
      A(20) => xre_mp10(11),
      A(19) => xre_mp10(11),
      A(18) => xre_mp10(11),
      A(17) => xre_mp10(11),
      A(16) => xre_mp10(11),
      A(15) => xre_mp10(11),
      A(14) => xre_mp10(11),
      A(13) => xre_mp10(11),
      A(12) => xre_mp10(11),
      A(11 downto 0) => xre_mp10(11 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => \NLW_round_w_return1__2_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0011",
      B(17 downto 0) => B"000001110101110001",
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_round_w_return1__2_BCOUT_UNCONNECTED\(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_round_w_return1__2_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_round_w_return1__2_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => clk,
      D(24) => xre_mm1(11),
      D(23) => xre_mm1(11),
      D(22) => xre_mm1(11),
      D(21) => xre_mm1(11),
      D(20) => xre_mm1(11),
      D(19) => xre_mm1(11),
      D(18) => xre_mm1(11),
      D(17) => xre_mm1(11),
      D(16) => xre_mm1(11),
      D(15) => xre_mm1(11),
      D(14) => xre_mm1(11),
      D(13) => xre_mm1(11),
      D(12) => xre_mm1(11),
      D(11 downto 0) => xre_mm1(11 downto 0),
      INMODE(4 downto 0) => B"00100",
      MULTSIGNIN => '0',
      MULTSIGNOUT => \NLW_round_w_return1__2_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(6 downto 0) => B"0010101",
      OVERFLOW => \NLW_round_w_return1__2_OVERFLOW_UNCONNECTED\,
      P(47 downto 27) => \NLW_round_w_return1__2_P_UNCONNECTED\(47 downto 27),
      P(26 downto 15) => \round_w_return1__2_0\(11 downto 0),
      P(14) => \round_w_return1__2_n_91\,
      P(13) => \round_w_return1__2_n_92\,
      P(12) => \round_w_return1__2_n_93\,
      P(11) => \round_w_return1__2_n_94\,
      P(10) => \round_w_return1__2_n_95\,
      P(9) => \round_w_return1__2_n_96\,
      P(8) => \round_w_return1__2_n_97\,
      P(7) => \round_w_return1__2_n_98\,
      P(6) => \round_w_return1__2_n_99\,
      P(5) => \round_w_return1__2_n_100\,
      P(4) => \round_w_return1__2_n_101\,
      P(3) => \round_w_return1__2_n_102\,
      P(2) => \round_w_return1__2_n_103\,
      P(1) => \round_w_return1__2_n_104\,
      P(0) => \round_w_return1__2_n_105\,
      PATTERNBDETECT => \NLW_round_w_return1__2_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_round_w_return1__2_PATTERNDETECT_UNCONNECTED\,
      PCIN(47) => \round_w_return1__1_n_106\,
      PCIN(46) => \round_w_return1__1_n_107\,
      PCIN(45) => \round_w_return1__1_n_108\,
      PCIN(44) => \round_w_return1__1_n_109\,
      PCIN(43) => \round_w_return1__1_n_110\,
      PCIN(42) => \round_w_return1__1_n_111\,
      PCIN(41) => \round_w_return1__1_n_112\,
      PCIN(40) => \round_w_return1__1_n_113\,
      PCIN(39) => \round_w_return1__1_n_114\,
      PCIN(38) => \round_w_return1__1_n_115\,
      PCIN(37) => \round_w_return1__1_n_116\,
      PCIN(36) => \round_w_return1__1_n_117\,
      PCIN(35) => \round_w_return1__1_n_118\,
      PCIN(34) => \round_w_return1__1_n_119\,
      PCIN(33) => \round_w_return1__1_n_120\,
      PCIN(32) => \round_w_return1__1_n_121\,
      PCIN(31) => \round_w_return1__1_n_122\,
      PCIN(30) => \round_w_return1__1_n_123\,
      PCIN(29) => \round_w_return1__1_n_124\,
      PCIN(28) => \round_w_return1__1_n_125\,
      PCIN(27) => \round_w_return1__1_n_126\,
      PCIN(26) => \round_w_return1__1_n_127\,
      PCIN(25) => \round_w_return1__1_n_128\,
      PCIN(24) => \round_w_return1__1_n_129\,
      PCIN(23) => \round_w_return1__1_n_130\,
      PCIN(22) => \round_w_return1__1_n_131\,
      PCIN(21) => \round_w_return1__1_n_132\,
      PCIN(20) => \round_w_return1__1_n_133\,
      PCIN(19) => \round_w_return1__1_n_134\,
      PCIN(18) => \round_w_return1__1_n_135\,
      PCIN(17) => \round_w_return1__1_n_136\,
      PCIN(16) => \round_w_return1__1_n_137\,
      PCIN(15) => \round_w_return1__1_n_138\,
      PCIN(14) => \round_w_return1__1_n_139\,
      PCIN(13) => \round_w_return1__1_n_140\,
      PCIN(12) => \round_w_return1__1_n_141\,
      PCIN(11) => \round_w_return1__1_n_142\,
      PCIN(10) => \round_w_return1__1_n_143\,
      PCIN(9) => \round_w_return1__1_n_144\,
      PCIN(8) => \round_w_return1__1_n_145\,
      PCIN(7) => \round_w_return1__1_n_146\,
      PCIN(6) => \round_w_return1__1_n_147\,
      PCIN(5) => \round_w_return1__1_n_148\,
      PCIN(4) => \round_w_return1__1_n_149\,
      PCIN(3) => \round_w_return1__1_n_150\,
      PCIN(2) => \round_w_return1__1_n_151\,
      PCIN(1) => \round_w_return1__1_n_152\,
      PCIN(0) => \round_w_return1__1_n_153\,
      PCOUT(47 downto 0) => \NLW_round_w_return1__2_PCOUT_UNCONNECTED\(47 downto 0),
      RSTA => \^sr\(0),
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => \^sr\(0),
      RSTP => \^sr\(0),
      UNDERFLOW => \NLW_round_w_return1__2_UNDERFLOW_UNCONNECTED\
    );
\round_w_return1__2_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => xre_mem_reg_r1_192_255_9_11_n_2,
      I1 => xre_mem_reg_r1_128_191_9_11_n_2,
      I2 => m_plus_1(7),
      I3 => xre_mem_reg_r1_64_127_9_11_n_2,
      I4 => m_plus_1(6),
      I5 => xre_mem_reg_r1_0_63_9_11_n_2,
      O => xre_mp10(11)
    );
\round_w_return1__2_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => xre_mem_reg_r1_192_255_0_2_n_2,
      I1 => xre_mem_reg_r1_128_191_0_2_n_2,
      I2 => m_plus_1(7),
      I3 => xre_mem_reg_r1_64_127_0_2_n_2,
      I4 => m_plus_1(6),
      I5 => xre_mem_reg_r1_0_63_0_2_n_2,
      O => xre_mp10(2)
    );
\round_w_return1__2_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => xre_mem_reg_r1_192_255_0_2_n_1,
      I1 => xre_mem_reg_r1_128_191_0_2_n_1,
      I2 => m_plus_1(7),
      I3 => xre_mem_reg_r1_64_127_0_2_n_1,
      I4 => m_plus_1(6),
      I5 => xre_mem_reg_r1_0_63_0_2_n_1,
      O => xre_mp10(1)
    );
\round_w_return1__2_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => xre_mem_reg_r1_192_255_0_2_n_0,
      I1 => xre_mem_reg_r1_128_191_0_2_n_0,
      I2 => m_plus_1(7),
      I3 => xre_mem_reg_r1_64_127_0_2_n_0,
      I4 => m_plus_1(6),
      I5 => xre_mem_reg_r1_0_63_0_2_n_0,
      O => xre_mp10(0)
    );
\round_w_return1__2_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => xre_mem_reg_r1_192_255_9_11_n_1,
      I1 => xre_mem_reg_r1_128_191_9_11_n_1,
      I2 => m_plus_1(7),
      I3 => xre_mem_reg_r1_64_127_9_11_n_1,
      I4 => m_plus_1(6),
      I5 => xre_mem_reg_r1_0_63_9_11_n_1,
      O => xre_mp10(10)
    );
\round_w_return1__2_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => xre_mem_reg_r1_192_255_9_11_n_0,
      I1 => xre_mem_reg_r1_128_191_9_11_n_0,
      I2 => m_plus_1(7),
      I3 => xre_mem_reg_r1_64_127_9_11_n_0,
      I4 => m_plus_1(6),
      I5 => xre_mem_reg_r1_0_63_9_11_n_0,
      O => xre_mp10(9)
    );
\round_w_return1__2_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => xre_mem_reg_r1_192_255_6_8_n_2,
      I1 => xre_mem_reg_r1_128_191_6_8_n_2,
      I2 => m_plus_1(7),
      I3 => xre_mem_reg_r1_64_127_6_8_n_2,
      I4 => m_plus_1(6),
      I5 => xre_mem_reg_r1_0_63_6_8_n_2,
      O => xre_mp10(8)
    );
\round_w_return1__2_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => xre_mem_reg_r1_192_255_6_8_n_1,
      I1 => xre_mem_reg_r1_128_191_6_8_n_1,
      I2 => m_plus_1(7),
      I3 => xre_mem_reg_r1_64_127_6_8_n_1,
      I4 => m_plus_1(6),
      I5 => xre_mem_reg_r1_0_63_6_8_n_1,
      O => xre_mp10(7)
    );
\round_w_return1__2_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => xre_mem_reg_r1_192_255_6_8_n_0,
      I1 => xre_mem_reg_r1_128_191_6_8_n_0,
      I2 => m_plus_1(7),
      I3 => xre_mem_reg_r1_64_127_6_8_n_0,
      I4 => m_plus_1(6),
      I5 => xre_mem_reg_r1_0_63_6_8_n_0,
      O => xre_mp10(6)
    );
\round_w_return1__2_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => xre_mem_reg_r1_192_255_3_5_n_2,
      I1 => xre_mem_reg_r1_128_191_3_5_n_2,
      I2 => m_plus_1(7),
      I3 => xre_mem_reg_r1_64_127_3_5_n_2,
      I4 => m_plus_1(6),
      I5 => xre_mem_reg_r1_0_63_3_5_n_2,
      O => xre_mp10(5)
    );
\round_w_return1__2_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => xre_mem_reg_r1_192_255_3_5_n_1,
      I1 => xre_mem_reg_r1_128_191_3_5_n_1,
      I2 => m_plus_1(7),
      I3 => xre_mem_reg_r1_64_127_3_5_n_1,
      I4 => m_plus_1(6),
      I5 => xre_mem_reg_r1_0_63_3_5_n_1,
      O => xre_mp10(4)
    );
\round_w_return1__2_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => xre_mem_reg_r1_192_255_3_5_n_0,
      I1 => xre_mem_reg_r1_128_191_3_5_n_0,
      I2 => m_plus_1(7),
      I3 => xre_mem_reg_r1_64_127_3_5_n_0,
      I4 => m_plus_1(6),
      I5 => xre_mem_reg_r1_0_63_3_5_n_0,
      O => xre_mp10(3)
    );
round_w_return1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => xim_mem_reg_r3_192_255_9_11_n_2,
      I1 => xim_mem_reg_r3_128_191_9_11_n_2,
      I2 => \m_reg_n_0_[7]\,
      I3 => xim_mem_reg_r3_64_127_9_11_n_2,
      I4 => \m_reg_n_0_[6]\,
      I5 => xim_mem_reg_r3_0_63_9_11_n_2,
      O => xim_m0(11)
    );
round_w_return1_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => xim_mem_reg_r3_192_255_0_2_n_2,
      I1 => xim_mem_reg_r3_128_191_0_2_n_2,
      I2 => \m_reg_n_0_[7]\,
      I3 => xim_mem_reg_r3_64_127_0_2_n_2,
      I4 => \m_reg_n_0_[6]\,
      I5 => xim_mem_reg_r3_0_63_0_2_n_2,
      O => xim_m0(2)
    );
round_w_return1_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => xim_mem_reg_r3_192_255_0_2_n_1,
      I1 => xim_mem_reg_r3_128_191_0_2_n_1,
      I2 => \m_reg_n_0_[7]\,
      I3 => xim_mem_reg_r3_64_127_0_2_n_1,
      I4 => \m_reg_n_0_[6]\,
      I5 => xim_mem_reg_r3_0_63_0_2_n_1,
      O => xim_m0(1)
    );
round_w_return1_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => xim_mem_reg_r3_192_255_0_2_n_0,
      I1 => xim_mem_reg_r3_128_191_0_2_n_0,
      I2 => \m_reg_n_0_[7]\,
      I3 => xim_mem_reg_r3_64_127_0_2_n_0,
      I4 => \m_reg_n_0_[6]\,
      I5 => xim_mem_reg_r3_0_63_0_2_n_0,
      O => xim_m0(0)
    );
round_w_return1_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => xim_mem_reg_r3_192_255_9_11_n_1,
      I1 => xim_mem_reg_r3_128_191_9_11_n_1,
      I2 => \m_reg_n_0_[7]\,
      I3 => xim_mem_reg_r3_64_127_9_11_n_1,
      I4 => \m_reg_n_0_[6]\,
      I5 => xim_mem_reg_r3_0_63_9_11_n_1,
      O => xim_m0(10)
    );
round_w_return1_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => xim_mem_reg_r3_192_255_9_11_n_0,
      I1 => xim_mem_reg_r3_128_191_9_11_n_0,
      I2 => \m_reg_n_0_[7]\,
      I3 => xim_mem_reg_r3_64_127_9_11_n_0,
      I4 => \m_reg_n_0_[6]\,
      I5 => xim_mem_reg_r3_0_63_9_11_n_0,
      O => xim_m0(9)
    );
round_w_return1_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => xim_mem_reg_r3_192_255_6_8_n_2,
      I1 => xim_mem_reg_r3_128_191_6_8_n_2,
      I2 => \m_reg_n_0_[7]\,
      I3 => xim_mem_reg_r3_64_127_6_8_n_2,
      I4 => \m_reg_n_0_[6]\,
      I5 => xim_mem_reg_r3_0_63_6_8_n_2,
      O => xim_m0(8)
    );
round_w_return1_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => xim_mem_reg_r3_192_255_6_8_n_1,
      I1 => xim_mem_reg_r3_128_191_6_8_n_1,
      I2 => \m_reg_n_0_[7]\,
      I3 => xim_mem_reg_r3_64_127_6_8_n_1,
      I4 => \m_reg_n_0_[6]\,
      I5 => xim_mem_reg_r3_0_63_6_8_n_1,
      O => xim_m0(7)
    );
round_w_return1_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => xim_mem_reg_r3_192_255_6_8_n_0,
      I1 => xim_mem_reg_r3_128_191_6_8_n_0,
      I2 => \m_reg_n_0_[7]\,
      I3 => xim_mem_reg_r3_64_127_6_8_n_0,
      I4 => \m_reg_n_0_[6]\,
      I5 => xim_mem_reg_r3_0_63_6_8_n_0,
      O => xim_m0(6)
    );
round_w_return1_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => xim_mem_reg_r3_192_255_3_5_n_2,
      I1 => xim_mem_reg_r3_128_191_3_5_n_2,
      I2 => \m_reg_n_0_[7]\,
      I3 => xim_mem_reg_r3_64_127_3_5_n_2,
      I4 => \m_reg_n_0_[6]\,
      I5 => xim_mem_reg_r3_0_63_3_5_n_2,
      O => xim_m0(5)
    );
round_w_return1_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => xim_mem_reg_r3_192_255_3_5_n_1,
      I1 => xim_mem_reg_r3_128_191_3_5_n_1,
      I2 => \m_reg_n_0_[7]\,
      I3 => xim_mem_reg_r3_64_127_3_5_n_1,
      I4 => \m_reg_n_0_[6]\,
      I5 => xim_mem_reg_r3_0_63_3_5_n_1,
      O => xim_m0(4)
    );
round_w_return1_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => xim_mem_reg_r3_192_255_3_5_n_0,
      I1 => xim_mem_reg_r3_128_191_3_5_n_0,
      I2 => \m_reg_n_0_[7]\,
      I3 => xim_mem_reg_r3_64_127_3_5_n_0,
      I4 => \m_reg_n_0_[6]\,
      I5 => xim_mem_reg_r3_0_63_3_5_n_0,
      O => xim_m0(3)
    );
s_axi_bvalid_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n,
      O => \^sr\(0)
    );
vld_s1_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state_reg_n_0_[1]\,
      Q => vld_s1,
      R => \^sr\(0)
    );
vld_s2_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => vld_s1,
      Q => vld_s2,
      R => \^sr\(0)
    );
xim_mem_reg_r1_0_63_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 1) => m_plus_1(5 downto 1),
      ADDRA(0) => m_minus_1(0),
      ADDRB(5 downto 1) => m_plus_1(5 downto 1),
      ADDRB(0) => m_minus_1(0),
      ADDRC(5 downto 1) => m_plus_1(5 downto 1),
      ADDRC(0) => m_minus_1(0),
      ADDRD(5 downto 0) => m_axis_data_tuser(5 downto 0),
      DIA => m_axis_data_tdata(12),
      DIB => m_axis_data_tdata(13),
      DIC => m_axis_data_tdata(14),
      DID => '0',
      DOA => xim_mem_reg_r1_0_63_0_2_n_0,
      DOB => xim_mem_reg_r1_0_63_0_2_n_1,
      DOC => xim_mem_reg_r1_0_63_0_2_n_2,
      DOD => NLW_xim_mem_reg_r1_0_63_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => xre_mem_reg_r1_0_63_0_2_i_1_n_0
    );
xim_mem_reg_r1_0_63_0_2_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \m_reg_n_0_[0]\,
      O => m_minus_1(0)
    );
xim_mem_reg_r1_0_63_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 1) => m_plus_1(5 downto 1),
      ADDRA(0) => m_minus_1(0),
      ADDRB(5 downto 1) => m_plus_1(5 downto 1),
      ADDRB(0) => m_minus_1(0),
      ADDRC(5 downto 1) => m_plus_1(5 downto 1),
      ADDRC(0) => m_minus_1(0),
      ADDRD(5 downto 0) => m_axis_data_tuser(5 downto 0),
      DIA => m_axis_data_tdata(15),
      DIB => m_axis_data_tdata(16),
      DIC => m_axis_data_tdata(17),
      DID => '0',
      DOA => xim_mem_reg_r1_0_63_3_5_n_0,
      DOB => xim_mem_reg_r1_0_63_3_5_n_1,
      DOC => xim_mem_reg_r1_0_63_3_5_n_2,
      DOD => NLW_xim_mem_reg_r1_0_63_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => xre_mem_reg_r1_0_63_0_2_i_1_n_0
    );
xim_mem_reg_r1_0_63_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 1) => m_plus_1(5 downto 1),
      ADDRA(0) => m_minus_1(0),
      ADDRB(5 downto 1) => m_plus_1(5 downto 1),
      ADDRB(0) => m_minus_1(0),
      ADDRC(5 downto 1) => m_plus_1(5 downto 1),
      ADDRC(0) => m_minus_1(0),
      ADDRD(5 downto 0) => m_axis_data_tuser(5 downto 0),
      DIA => m_axis_data_tdata(18),
      DIB => m_axis_data_tdata(19),
      DIC => m_axis_data_tdata(20),
      DID => '0',
      DOA => xim_mem_reg_r1_0_63_6_8_n_0,
      DOB => xim_mem_reg_r1_0_63_6_8_n_1,
      DOC => xim_mem_reg_r1_0_63_6_8_n_2,
      DOD => NLW_xim_mem_reg_r1_0_63_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => xre_mem_reg_r1_0_63_0_2_i_1_n_0
    );
xim_mem_reg_r1_0_63_9_11: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 1) => m_plus_1(5 downto 1),
      ADDRA(0) => m_minus_1(0),
      ADDRB(5 downto 1) => m_plus_1(5 downto 1),
      ADDRB(0) => m_minus_1(0),
      ADDRC(5 downto 1) => m_plus_1(5 downto 1),
      ADDRC(0) => m_minus_1(0),
      ADDRD(5 downto 0) => m_axis_data_tuser(5 downto 0),
      DIA => m_axis_data_tdata(21),
      DIB => m_axis_data_tdata(22),
      DIC => m_axis_data_tdata(23),
      DID => '0',
      DOA => xim_mem_reg_r1_0_63_9_11_n_0,
      DOB => xim_mem_reg_r1_0_63_9_11_n_1,
      DOC => xim_mem_reg_r1_0_63_9_11_n_2,
      DOD => NLW_xim_mem_reg_r1_0_63_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => xre_mem_reg_r1_0_63_0_2_i_1_n_0
    );
xim_mem_reg_r1_128_191_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 1) => m_plus_1(5 downto 1),
      ADDRA(0) => m_minus_1(0),
      ADDRB(5 downto 1) => m_plus_1(5 downto 1),
      ADDRB(0) => m_minus_1(0),
      ADDRC(5 downto 1) => m_plus_1(5 downto 1),
      ADDRC(0) => m_minus_1(0),
      ADDRD(5 downto 0) => m_axis_data_tuser(5 downto 0),
      DIA => m_axis_data_tdata(12),
      DIB => m_axis_data_tdata(13),
      DIC => m_axis_data_tdata(14),
      DID => '0',
      DOA => xim_mem_reg_r1_128_191_0_2_n_0,
      DOB => xim_mem_reg_r1_128_191_0_2_n_1,
      DOC => xim_mem_reg_r1_128_191_0_2_n_2,
      DOD => NLW_xim_mem_reg_r1_128_191_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => xre_mem_reg_r1_128_191_0_2_i_1_n_0
    );
xim_mem_reg_r1_128_191_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 1) => m_plus_1(5 downto 1),
      ADDRA(0) => m_minus_1(0),
      ADDRB(5 downto 1) => m_plus_1(5 downto 1),
      ADDRB(0) => m_minus_1(0),
      ADDRC(5 downto 1) => m_plus_1(5 downto 1),
      ADDRC(0) => m_minus_1(0),
      ADDRD(5 downto 0) => m_axis_data_tuser(5 downto 0),
      DIA => m_axis_data_tdata(15),
      DIB => m_axis_data_tdata(16),
      DIC => m_axis_data_tdata(17),
      DID => '0',
      DOA => xim_mem_reg_r1_128_191_3_5_n_0,
      DOB => xim_mem_reg_r1_128_191_3_5_n_1,
      DOC => xim_mem_reg_r1_128_191_3_5_n_2,
      DOD => NLW_xim_mem_reg_r1_128_191_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => xre_mem_reg_r1_128_191_0_2_i_1_n_0
    );
xim_mem_reg_r1_128_191_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 1) => m_plus_1(5 downto 1),
      ADDRA(0) => m_minus_1(0),
      ADDRB(5 downto 1) => m_plus_1(5 downto 1),
      ADDRB(0) => m_minus_1(0),
      ADDRC(5 downto 1) => m_plus_1(5 downto 1),
      ADDRC(0) => m_minus_1(0),
      ADDRD(5 downto 0) => m_axis_data_tuser(5 downto 0),
      DIA => m_axis_data_tdata(18),
      DIB => m_axis_data_tdata(19),
      DIC => m_axis_data_tdata(20),
      DID => '0',
      DOA => xim_mem_reg_r1_128_191_6_8_n_0,
      DOB => xim_mem_reg_r1_128_191_6_8_n_1,
      DOC => xim_mem_reg_r1_128_191_6_8_n_2,
      DOD => NLW_xim_mem_reg_r1_128_191_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => xre_mem_reg_r1_128_191_0_2_i_1_n_0
    );
xim_mem_reg_r1_128_191_9_11: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 1) => m_plus_1(5 downto 1),
      ADDRA(0) => m_minus_1(0),
      ADDRB(5 downto 1) => m_plus_1(5 downto 1),
      ADDRB(0) => m_minus_1(0),
      ADDRC(5 downto 1) => m_plus_1(5 downto 1),
      ADDRC(0) => m_minus_1(0),
      ADDRD(5 downto 0) => m_axis_data_tuser(5 downto 0),
      DIA => m_axis_data_tdata(21),
      DIB => m_axis_data_tdata(22),
      DIC => m_axis_data_tdata(23),
      DID => '0',
      DOA => xim_mem_reg_r1_128_191_9_11_n_0,
      DOB => xim_mem_reg_r1_128_191_9_11_n_1,
      DOC => xim_mem_reg_r1_128_191_9_11_n_2,
      DOD => NLW_xim_mem_reg_r1_128_191_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => xre_mem_reg_r1_128_191_0_2_i_1_n_0
    );
xim_mem_reg_r1_192_255_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 1) => m_plus_1(5 downto 1),
      ADDRA(0) => m_minus_1(0),
      ADDRB(5 downto 1) => m_plus_1(5 downto 1),
      ADDRB(0) => m_minus_1(0),
      ADDRC(5 downto 1) => m_plus_1(5 downto 1),
      ADDRC(0) => m_minus_1(0),
      ADDRD(5 downto 0) => m_axis_data_tuser(5 downto 0),
      DIA => m_axis_data_tdata(12),
      DIB => m_axis_data_tdata(13),
      DIC => m_axis_data_tdata(14),
      DID => '0',
      DOA => xim_mem_reg_r1_192_255_0_2_n_0,
      DOB => xim_mem_reg_r1_192_255_0_2_n_1,
      DOC => xim_mem_reg_r1_192_255_0_2_n_2,
      DOD => NLW_xim_mem_reg_r1_192_255_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => xre_mem_reg_r1_192_255_0_2_i_1_n_0
    );
xim_mem_reg_r1_192_255_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 1) => m_plus_1(5 downto 1),
      ADDRA(0) => m_minus_1(0),
      ADDRB(5 downto 1) => m_plus_1(5 downto 1),
      ADDRB(0) => m_minus_1(0),
      ADDRC(5 downto 1) => m_plus_1(5 downto 1),
      ADDRC(0) => m_minus_1(0),
      ADDRD(5 downto 0) => m_axis_data_tuser(5 downto 0),
      DIA => m_axis_data_tdata(15),
      DIB => m_axis_data_tdata(16),
      DIC => m_axis_data_tdata(17),
      DID => '0',
      DOA => xim_mem_reg_r1_192_255_3_5_n_0,
      DOB => xim_mem_reg_r1_192_255_3_5_n_1,
      DOC => xim_mem_reg_r1_192_255_3_5_n_2,
      DOD => NLW_xim_mem_reg_r1_192_255_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => xre_mem_reg_r1_192_255_0_2_i_1_n_0
    );
xim_mem_reg_r1_192_255_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 1) => m_plus_1(5 downto 1),
      ADDRA(0) => m_minus_1(0),
      ADDRB(5 downto 1) => m_plus_1(5 downto 1),
      ADDRB(0) => m_minus_1(0),
      ADDRC(5 downto 1) => m_plus_1(5 downto 1),
      ADDRC(0) => m_minus_1(0),
      ADDRD(5 downto 0) => m_axis_data_tuser(5 downto 0),
      DIA => m_axis_data_tdata(18),
      DIB => m_axis_data_tdata(19),
      DIC => m_axis_data_tdata(20),
      DID => '0',
      DOA => xim_mem_reg_r1_192_255_6_8_n_0,
      DOB => xim_mem_reg_r1_192_255_6_8_n_1,
      DOC => xim_mem_reg_r1_192_255_6_8_n_2,
      DOD => NLW_xim_mem_reg_r1_192_255_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => xre_mem_reg_r1_192_255_0_2_i_1_n_0
    );
xim_mem_reg_r1_192_255_9_11: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 1) => m_plus_1(5 downto 1),
      ADDRA(0) => m_minus_1(0),
      ADDRB(5 downto 1) => m_plus_1(5 downto 1),
      ADDRB(0) => m_minus_1(0),
      ADDRC(5 downto 1) => m_plus_1(5 downto 1),
      ADDRC(0) => m_minus_1(0),
      ADDRD(5 downto 0) => m_axis_data_tuser(5 downto 0),
      DIA => m_axis_data_tdata(21),
      DIB => m_axis_data_tdata(22),
      DIC => m_axis_data_tdata(23),
      DID => '0',
      DOA => xim_mem_reg_r1_192_255_9_11_n_0,
      DOB => xim_mem_reg_r1_192_255_9_11_n_1,
      DOC => xim_mem_reg_r1_192_255_9_11_n_2,
      DOD => NLW_xim_mem_reg_r1_192_255_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => xre_mem_reg_r1_192_255_0_2_i_1_n_0
    );
xim_mem_reg_r1_64_127_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 1) => m_plus_1(5 downto 1),
      ADDRA(0) => m_minus_1(0),
      ADDRB(5 downto 1) => m_plus_1(5 downto 1),
      ADDRB(0) => m_minus_1(0),
      ADDRC(5 downto 1) => m_plus_1(5 downto 1),
      ADDRC(0) => m_minus_1(0),
      ADDRD(5 downto 0) => m_axis_data_tuser(5 downto 0),
      DIA => m_axis_data_tdata(12),
      DIB => m_axis_data_tdata(13),
      DIC => m_axis_data_tdata(14),
      DID => '0',
      DOA => xim_mem_reg_r1_64_127_0_2_n_0,
      DOB => xim_mem_reg_r1_64_127_0_2_n_1,
      DOC => xim_mem_reg_r1_64_127_0_2_n_2,
      DOD => NLW_xim_mem_reg_r1_64_127_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => xre_mem_reg_r1_64_127_0_2_i_1_n_0
    );
xim_mem_reg_r1_64_127_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 1) => m_plus_1(5 downto 1),
      ADDRA(0) => m_minus_1(0),
      ADDRB(5 downto 1) => m_plus_1(5 downto 1),
      ADDRB(0) => m_minus_1(0),
      ADDRC(5 downto 1) => m_plus_1(5 downto 1),
      ADDRC(0) => m_minus_1(0),
      ADDRD(5 downto 0) => m_axis_data_tuser(5 downto 0),
      DIA => m_axis_data_tdata(15),
      DIB => m_axis_data_tdata(16),
      DIC => m_axis_data_tdata(17),
      DID => '0',
      DOA => xim_mem_reg_r1_64_127_3_5_n_0,
      DOB => xim_mem_reg_r1_64_127_3_5_n_1,
      DOC => xim_mem_reg_r1_64_127_3_5_n_2,
      DOD => NLW_xim_mem_reg_r1_64_127_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => xre_mem_reg_r1_64_127_0_2_i_1_n_0
    );
xim_mem_reg_r1_64_127_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 1) => m_plus_1(5 downto 1),
      ADDRA(0) => m_minus_1(0),
      ADDRB(5 downto 1) => m_plus_1(5 downto 1),
      ADDRB(0) => m_minus_1(0),
      ADDRC(5 downto 1) => m_plus_1(5 downto 1),
      ADDRC(0) => m_minus_1(0),
      ADDRD(5 downto 0) => m_axis_data_tuser(5 downto 0),
      DIA => m_axis_data_tdata(18),
      DIB => m_axis_data_tdata(19),
      DIC => m_axis_data_tdata(20),
      DID => '0',
      DOA => xim_mem_reg_r1_64_127_6_8_n_0,
      DOB => xim_mem_reg_r1_64_127_6_8_n_1,
      DOC => xim_mem_reg_r1_64_127_6_8_n_2,
      DOD => NLW_xim_mem_reg_r1_64_127_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => xre_mem_reg_r1_64_127_0_2_i_1_n_0
    );
xim_mem_reg_r1_64_127_9_11: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 1) => m_plus_1(5 downto 1),
      ADDRA(0) => m_minus_1(0),
      ADDRB(5 downto 1) => m_plus_1(5 downto 1),
      ADDRB(0) => m_minus_1(0),
      ADDRC(5 downto 1) => m_plus_1(5 downto 1),
      ADDRC(0) => m_minus_1(0),
      ADDRD(5 downto 0) => m_axis_data_tuser(5 downto 0),
      DIA => m_axis_data_tdata(21),
      DIB => m_axis_data_tdata(22),
      DIC => m_axis_data_tdata(23),
      DID => '0',
      DOA => xim_mem_reg_r1_64_127_9_11_n_0,
      DOB => xim_mem_reg_r1_64_127_9_11_n_1,
      DOC => xim_mem_reg_r1_64_127_9_11_n_2,
      DOD => NLW_xim_mem_reg_r1_64_127_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => xre_mem_reg_r1_64_127_0_2_i_1_n_0
    );
xim_mem_reg_r2_0_63_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => m_minus_1(5 downto 0),
      ADDRB(5 downto 0) => m_minus_1(5 downto 0),
      ADDRC(5 downto 0) => m_minus_1(5 downto 0),
      ADDRD(5 downto 0) => m_axis_data_tuser(5 downto 0),
      DIA => m_axis_data_tdata(12),
      DIB => m_axis_data_tdata(13),
      DIC => m_axis_data_tdata(14),
      DID => '0',
      DOA => xim_mem_reg_r2_0_63_0_2_n_0,
      DOB => xim_mem_reg_r2_0_63_0_2_n_1,
      DOC => xim_mem_reg_r2_0_63_0_2_n_2,
      DOD => NLW_xim_mem_reg_r2_0_63_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => xre_mem_reg_r1_0_63_0_2_i_1_n_0
    );
xim_mem_reg_r2_0_63_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => m_minus_1(5 downto 0),
      ADDRB(5 downto 0) => m_minus_1(5 downto 0),
      ADDRC(5 downto 0) => m_minus_1(5 downto 0),
      ADDRD(5 downto 0) => m_axis_data_tuser(5 downto 0),
      DIA => m_axis_data_tdata(15),
      DIB => m_axis_data_tdata(16),
      DIC => m_axis_data_tdata(17),
      DID => '0',
      DOA => xim_mem_reg_r2_0_63_3_5_n_0,
      DOB => xim_mem_reg_r2_0_63_3_5_n_1,
      DOC => xim_mem_reg_r2_0_63_3_5_n_2,
      DOD => NLW_xim_mem_reg_r2_0_63_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => xre_mem_reg_r1_0_63_0_2_i_1_n_0
    );
xim_mem_reg_r2_0_63_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => m_minus_1(5 downto 0),
      ADDRB(5 downto 0) => m_minus_1(5 downto 0),
      ADDRC(5 downto 0) => m_minus_1(5 downto 0),
      ADDRD(5 downto 0) => m_axis_data_tuser(5 downto 0),
      DIA => m_axis_data_tdata(18),
      DIB => m_axis_data_tdata(19),
      DIC => m_axis_data_tdata(20),
      DID => '0',
      DOA => xim_mem_reg_r2_0_63_6_8_n_0,
      DOB => xim_mem_reg_r2_0_63_6_8_n_1,
      DOC => xim_mem_reg_r2_0_63_6_8_n_2,
      DOD => NLW_xim_mem_reg_r2_0_63_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => xre_mem_reg_r1_0_63_0_2_i_1_n_0
    );
xim_mem_reg_r2_0_63_9_11: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => m_minus_1(5 downto 0),
      ADDRB(5 downto 0) => m_minus_1(5 downto 0),
      ADDRC(5 downto 0) => m_minus_1(5 downto 0),
      ADDRD(5 downto 0) => m_axis_data_tuser(5 downto 0),
      DIA => m_axis_data_tdata(21),
      DIB => m_axis_data_tdata(22),
      DIC => m_axis_data_tdata(23),
      DID => '0',
      DOA => xim_mem_reg_r2_0_63_9_11_n_0,
      DOB => xim_mem_reg_r2_0_63_9_11_n_1,
      DOC => xim_mem_reg_r2_0_63_9_11_n_2,
      DOD => NLW_xim_mem_reg_r2_0_63_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => xre_mem_reg_r1_0_63_0_2_i_1_n_0
    );
xim_mem_reg_r2_128_191_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => m_minus_1(5 downto 0),
      ADDRB(5 downto 0) => m_minus_1(5 downto 0),
      ADDRC(5 downto 0) => m_minus_1(5 downto 0),
      ADDRD(5 downto 0) => m_axis_data_tuser(5 downto 0),
      DIA => m_axis_data_tdata(12),
      DIB => m_axis_data_tdata(13),
      DIC => m_axis_data_tdata(14),
      DID => '0',
      DOA => xim_mem_reg_r2_128_191_0_2_n_0,
      DOB => xim_mem_reg_r2_128_191_0_2_n_1,
      DOC => xim_mem_reg_r2_128_191_0_2_n_2,
      DOD => NLW_xim_mem_reg_r2_128_191_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => xre_mem_reg_r1_128_191_0_2_i_1_n_0
    );
xim_mem_reg_r2_128_191_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => m_minus_1(5 downto 0),
      ADDRB(5 downto 0) => m_minus_1(5 downto 0),
      ADDRC(5 downto 0) => m_minus_1(5 downto 0),
      ADDRD(5 downto 0) => m_axis_data_tuser(5 downto 0),
      DIA => m_axis_data_tdata(15),
      DIB => m_axis_data_tdata(16),
      DIC => m_axis_data_tdata(17),
      DID => '0',
      DOA => xim_mem_reg_r2_128_191_3_5_n_0,
      DOB => xim_mem_reg_r2_128_191_3_5_n_1,
      DOC => xim_mem_reg_r2_128_191_3_5_n_2,
      DOD => NLW_xim_mem_reg_r2_128_191_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => xre_mem_reg_r1_128_191_0_2_i_1_n_0
    );
xim_mem_reg_r2_128_191_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => m_minus_1(5 downto 0),
      ADDRB(5 downto 0) => m_minus_1(5 downto 0),
      ADDRC(5 downto 0) => m_minus_1(5 downto 0),
      ADDRD(5 downto 0) => m_axis_data_tuser(5 downto 0),
      DIA => m_axis_data_tdata(18),
      DIB => m_axis_data_tdata(19),
      DIC => m_axis_data_tdata(20),
      DID => '0',
      DOA => xim_mem_reg_r2_128_191_6_8_n_0,
      DOB => xim_mem_reg_r2_128_191_6_8_n_1,
      DOC => xim_mem_reg_r2_128_191_6_8_n_2,
      DOD => NLW_xim_mem_reg_r2_128_191_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => xre_mem_reg_r1_128_191_0_2_i_1_n_0
    );
xim_mem_reg_r2_128_191_9_11: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => m_minus_1(5 downto 0),
      ADDRB(5 downto 0) => m_minus_1(5 downto 0),
      ADDRC(5 downto 0) => m_minus_1(5 downto 0),
      ADDRD(5 downto 0) => m_axis_data_tuser(5 downto 0),
      DIA => m_axis_data_tdata(21),
      DIB => m_axis_data_tdata(22),
      DIC => m_axis_data_tdata(23),
      DID => '0',
      DOA => xim_mem_reg_r2_128_191_9_11_n_0,
      DOB => xim_mem_reg_r2_128_191_9_11_n_1,
      DOC => xim_mem_reg_r2_128_191_9_11_n_2,
      DOD => NLW_xim_mem_reg_r2_128_191_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => xre_mem_reg_r1_128_191_0_2_i_1_n_0
    );
xim_mem_reg_r2_192_255_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => m_minus_1(5 downto 0),
      ADDRB(5 downto 0) => m_minus_1(5 downto 0),
      ADDRC(5 downto 0) => m_minus_1(5 downto 0),
      ADDRD(5 downto 0) => m_axis_data_tuser(5 downto 0),
      DIA => m_axis_data_tdata(12),
      DIB => m_axis_data_tdata(13),
      DIC => m_axis_data_tdata(14),
      DID => '0',
      DOA => xim_mem_reg_r2_192_255_0_2_n_0,
      DOB => xim_mem_reg_r2_192_255_0_2_n_1,
      DOC => xim_mem_reg_r2_192_255_0_2_n_2,
      DOD => NLW_xim_mem_reg_r2_192_255_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => xre_mem_reg_r1_192_255_0_2_i_1_n_0
    );
xim_mem_reg_r2_192_255_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => m_minus_1(5 downto 0),
      ADDRB(5 downto 0) => m_minus_1(5 downto 0),
      ADDRC(5 downto 0) => m_minus_1(5 downto 0),
      ADDRD(5 downto 0) => m_axis_data_tuser(5 downto 0),
      DIA => m_axis_data_tdata(15),
      DIB => m_axis_data_tdata(16),
      DIC => m_axis_data_tdata(17),
      DID => '0',
      DOA => xim_mem_reg_r2_192_255_3_5_n_0,
      DOB => xim_mem_reg_r2_192_255_3_5_n_1,
      DOC => xim_mem_reg_r2_192_255_3_5_n_2,
      DOD => NLW_xim_mem_reg_r2_192_255_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => xre_mem_reg_r1_192_255_0_2_i_1_n_0
    );
xim_mem_reg_r2_192_255_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => m_minus_1(5 downto 0),
      ADDRB(5 downto 0) => m_minus_1(5 downto 0),
      ADDRC(5 downto 0) => m_minus_1(5 downto 0),
      ADDRD(5 downto 0) => m_axis_data_tuser(5 downto 0),
      DIA => m_axis_data_tdata(18),
      DIB => m_axis_data_tdata(19),
      DIC => m_axis_data_tdata(20),
      DID => '0',
      DOA => xim_mem_reg_r2_192_255_6_8_n_0,
      DOB => xim_mem_reg_r2_192_255_6_8_n_1,
      DOC => xim_mem_reg_r2_192_255_6_8_n_2,
      DOD => NLW_xim_mem_reg_r2_192_255_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => xre_mem_reg_r1_192_255_0_2_i_1_n_0
    );
xim_mem_reg_r2_192_255_9_11: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => m_minus_1(5 downto 0),
      ADDRB(5 downto 0) => m_minus_1(5 downto 0),
      ADDRC(5 downto 0) => m_minus_1(5 downto 0),
      ADDRD(5 downto 0) => m_axis_data_tuser(5 downto 0),
      DIA => m_axis_data_tdata(21),
      DIB => m_axis_data_tdata(22),
      DIC => m_axis_data_tdata(23),
      DID => '0',
      DOA => xim_mem_reg_r2_192_255_9_11_n_0,
      DOB => xim_mem_reg_r2_192_255_9_11_n_1,
      DOC => xim_mem_reg_r2_192_255_9_11_n_2,
      DOD => NLW_xim_mem_reg_r2_192_255_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => xre_mem_reg_r1_192_255_0_2_i_1_n_0
    );
xim_mem_reg_r2_64_127_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => m_minus_1(5 downto 0),
      ADDRB(5 downto 0) => m_minus_1(5 downto 0),
      ADDRC(5 downto 0) => m_minus_1(5 downto 0),
      ADDRD(5 downto 0) => m_axis_data_tuser(5 downto 0),
      DIA => m_axis_data_tdata(12),
      DIB => m_axis_data_tdata(13),
      DIC => m_axis_data_tdata(14),
      DID => '0',
      DOA => xim_mem_reg_r2_64_127_0_2_n_0,
      DOB => xim_mem_reg_r2_64_127_0_2_n_1,
      DOC => xim_mem_reg_r2_64_127_0_2_n_2,
      DOD => NLW_xim_mem_reg_r2_64_127_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => xre_mem_reg_r1_64_127_0_2_i_1_n_0
    );
xim_mem_reg_r2_64_127_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => m_minus_1(5 downto 0),
      ADDRB(5 downto 0) => m_minus_1(5 downto 0),
      ADDRC(5 downto 0) => m_minus_1(5 downto 0),
      ADDRD(5 downto 0) => m_axis_data_tuser(5 downto 0),
      DIA => m_axis_data_tdata(15),
      DIB => m_axis_data_tdata(16),
      DIC => m_axis_data_tdata(17),
      DID => '0',
      DOA => xim_mem_reg_r2_64_127_3_5_n_0,
      DOB => xim_mem_reg_r2_64_127_3_5_n_1,
      DOC => xim_mem_reg_r2_64_127_3_5_n_2,
      DOD => NLW_xim_mem_reg_r2_64_127_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => xre_mem_reg_r1_64_127_0_2_i_1_n_0
    );
xim_mem_reg_r2_64_127_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => m_minus_1(5 downto 0),
      ADDRB(5 downto 0) => m_minus_1(5 downto 0),
      ADDRC(5 downto 0) => m_minus_1(5 downto 0),
      ADDRD(5 downto 0) => m_axis_data_tuser(5 downto 0),
      DIA => m_axis_data_tdata(18),
      DIB => m_axis_data_tdata(19),
      DIC => m_axis_data_tdata(20),
      DID => '0',
      DOA => xim_mem_reg_r2_64_127_6_8_n_0,
      DOB => xim_mem_reg_r2_64_127_6_8_n_1,
      DOC => xim_mem_reg_r2_64_127_6_8_n_2,
      DOD => NLW_xim_mem_reg_r2_64_127_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => xre_mem_reg_r1_64_127_0_2_i_1_n_0
    );
xim_mem_reg_r2_64_127_9_11: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => m_minus_1(5 downto 0),
      ADDRB(5 downto 0) => m_minus_1(5 downto 0),
      ADDRC(5 downto 0) => m_minus_1(5 downto 0),
      ADDRD(5 downto 0) => m_axis_data_tuser(5 downto 0),
      DIA => m_axis_data_tdata(21),
      DIB => m_axis_data_tdata(22),
      DIC => m_axis_data_tdata(23),
      DID => '0',
      DOA => xim_mem_reg_r2_64_127_9_11_n_0,
      DOB => xim_mem_reg_r2_64_127_9_11_n_1,
      DOC => xim_mem_reg_r2_64_127_9_11_n_2,
      DOD => NLW_xim_mem_reg_r2_64_127_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => xre_mem_reg_r1_64_127_0_2_i_1_n_0
    );
xim_mem_reg_r3_0_63_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5) => \m_reg_n_0_[5]\,
      ADDRA(4) => \m_reg_n_0_[4]\,
      ADDRA(3) => \m_reg_n_0_[3]\,
      ADDRA(2) => \m_reg_n_0_[2]\,
      ADDRA(1) => \m_reg_n_0_[1]\,
      ADDRA(0) => \m_reg_n_0_[0]\,
      ADDRB(5) => \m_reg_n_0_[5]\,
      ADDRB(4) => \m_reg_n_0_[4]\,
      ADDRB(3) => \m_reg_n_0_[3]\,
      ADDRB(2) => \m_reg_n_0_[2]\,
      ADDRB(1) => \m_reg_n_0_[1]\,
      ADDRB(0) => \m_reg_n_0_[0]\,
      ADDRC(5) => \m_reg_n_0_[5]\,
      ADDRC(4) => \m_reg_n_0_[4]\,
      ADDRC(3) => \m_reg_n_0_[3]\,
      ADDRC(2) => \m_reg_n_0_[2]\,
      ADDRC(1) => \m_reg_n_0_[1]\,
      ADDRC(0) => \m_reg_n_0_[0]\,
      ADDRD(5 downto 0) => m_axis_data_tuser(5 downto 0),
      DIA => m_axis_data_tdata(12),
      DIB => m_axis_data_tdata(13),
      DIC => m_axis_data_tdata(14),
      DID => '0',
      DOA => xim_mem_reg_r3_0_63_0_2_n_0,
      DOB => xim_mem_reg_r3_0_63_0_2_n_1,
      DOC => xim_mem_reg_r3_0_63_0_2_n_2,
      DOD => NLW_xim_mem_reg_r3_0_63_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => xre_mem_reg_r1_0_63_0_2_i_1_n_0
    );
xim_mem_reg_r3_0_63_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5) => \m_reg_n_0_[5]\,
      ADDRA(4) => \m_reg_n_0_[4]\,
      ADDRA(3) => \m_reg_n_0_[3]\,
      ADDRA(2) => \m_reg_n_0_[2]\,
      ADDRA(1) => \m_reg_n_0_[1]\,
      ADDRA(0) => \m_reg_n_0_[0]\,
      ADDRB(5) => \m_reg_n_0_[5]\,
      ADDRB(4) => \m_reg_n_0_[4]\,
      ADDRB(3) => \m_reg_n_0_[3]\,
      ADDRB(2) => \m_reg_n_0_[2]\,
      ADDRB(1) => \m_reg_n_0_[1]\,
      ADDRB(0) => \m_reg_n_0_[0]\,
      ADDRC(5) => \m_reg_n_0_[5]\,
      ADDRC(4) => \m_reg_n_0_[4]\,
      ADDRC(3) => \m_reg_n_0_[3]\,
      ADDRC(2) => \m_reg_n_0_[2]\,
      ADDRC(1) => \m_reg_n_0_[1]\,
      ADDRC(0) => \m_reg_n_0_[0]\,
      ADDRD(5 downto 0) => m_axis_data_tuser(5 downto 0),
      DIA => m_axis_data_tdata(15),
      DIB => m_axis_data_tdata(16),
      DIC => m_axis_data_tdata(17),
      DID => '0',
      DOA => xim_mem_reg_r3_0_63_3_5_n_0,
      DOB => xim_mem_reg_r3_0_63_3_5_n_1,
      DOC => xim_mem_reg_r3_0_63_3_5_n_2,
      DOD => NLW_xim_mem_reg_r3_0_63_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => xre_mem_reg_r1_0_63_0_2_i_1_n_0
    );
xim_mem_reg_r3_0_63_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5) => \m_reg_n_0_[5]\,
      ADDRA(4) => \m_reg_n_0_[4]\,
      ADDRA(3) => \m_reg_n_0_[3]\,
      ADDRA(2) => \m_reg_n_0_[2]\,
      ADDRA(1) => \m_reg_n_0_[1]\,
      ADDRA(0) => \m_reg_n_0_[0]\,
      ADDRB(5) => \m_reg_n_0_[5]\,
      ADDRB(4) => \m_reg_n_0_[4]\,
      ADDRB(3) => \m_reg_n_0_[3]\,
      ADDRB(2) => \m_reg_n_0_[2]\,
      ADDRB(1) => \m_reg_n_0_[1]\,
      ADDRB(0) => \m_reg_n_0_[0]\,
      ADDRC(5) => \m_reg_n_0_[5]\,
      ADDRC(4) => \m_reg_n_0_[4]\,
      ADDRC(3) => \m_reg_n_0_[3]\,
      ADDRC(2) => \m_reg_n_0_[2]\,
      ADDRC(1) => \m_reg_n_0_[1]\,
      ADDRC(0) => \m_reg_n_0_[0]\,
      ADDRD(5 downto 0) => m_axis_data_tuser(5 downto 0),
      DIA => m_axis_data_tdata(18),
      DIB => m_axis_data_tdata(19),
      DIC => m_axis_data_tdata(20),
      DID => '0',
      DOA => xim_mem_reg_r3_0_63_6_8_n_0,
      DOB => xim_mem_reg_r3_0_63_6_8_n_1,
      DOC => xim_mem_reg_r3_0_63_6_8_n_2,
      DOD => NLW_xim_mem_reg_r3_0_63_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => xre_mem_reg_r1_0_63_0_2_i_1_n_0
    );
xim_mem_reg_r3_0_63_9_11: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5) => \m_reg_n_0_[5]\,
      ADDRA(4) => \m_reg_n_0_[4]\,
      ADDRA(3) => \m_reg_n_0_[3]\,
      ADDRA(2) => \m_reg_n_0_[2]\,
      ADDRA(1) => \m_reg_n_0_[1]\,
      ADDRA(0) => \m_reg_n_0_[0]\,
      ADDRB(5) => \m_reg_n_0_[5]\,
      ADDRB(4) => \m_reg_n_0_[4]\,
      ADDRB(3) => \m_reg_n_0_[3]\,
      ADDRB(2) => \m_reg_n_0_[2]\,
      ADDRB(1) => \m_reg_n_0_[1]\,
      ADDRB(0) => \m_reg_n_0_[0]\,
      ADDRC(5) => \m_reg_n_0_[5]\,
      ADDRC(4) => \m_reg_n_0_[4]\,
      ADDRC(3) => \m_reg_n_0_[3]\,
      ADDRC(2) => \m_reg_n_0_[2]\,
      ADDRC(1) => \m_reg_n_0_[1]\,
      ADDRC(0) => \m_reg_n_0_[0]\,
      ADDRD(5 downto 0) => m_axis_data_tuser(5 downto 0),
      DIA => m_axis_data_tdata(21),
      DIB => m_axis_data_tdata(22),
      DIC => m_axis_data_tdata(23),
      DID => '0',
      DOA => xim_mem_reg_r3_0_63_9_11_n_0,
      DOB => xim_mem_reg_r3_0_63_9_11_n_1,
      DOC => xim_mem_reg_r3_0_63_9_11_n_2,
      DOD => NLW_xim_mem_reg_r3_0_63_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => xre_mem_reg_r1_0_63_0_2_i_1_n_0
    );
xim_mem_reg_r3_128_191_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5) => \m_reg_n_0_[5]\,
      ADDRA(4) => \m_reg_n_0_[4]\,
      ADDRA(3) => \m_reg_n_0_[3]\,
      ADDRA(2) => \m_reg_n_0_[2]\,
      ADDRA(1) => \m_reg_n_0_[1]\,
      ADDRA(0) => \m_reg_n_0_[0]\,
      ADDRB(5) => \m_reg_n_0_[5]\,
      ADDRB(4) => \m_reg_n_0_[4]\,
      ADDRB(3) => \m_reg_n_0_[3]\,
      ADDRB(2) => \m_reg_n_0_[2]\,
      ADDRB(1) => \m_reg_n_0_[1]\,
      ADDRB(0) => \m_reg_n_0_[0]\,
      ADDRC(5) => \m_reg_n_0_[5]\,
      ADDRC(4) => \m_reg_n_0_[4]\,
      ADDRC(3) => \m_reg_n_0_[3]\,
      ADDRC(2) => \m_reg_n_0_[2]\,
      ADDRC(1) => \m_reg_n_0_[1]\,
      ADDRC(0) => \m_reg_n_0_[0]\,
      ADDRD(5 downto 0) => m_axis_data_tuser(5 downto 0),
      DIA => m_axis_data_tdata(12),
      DIB => m_axis_data_tdata(13),
      DIC => m_axis_data_tdata(14),
      DID => '0',
      DOA => xim_mem_reg_r3_128_191_0_2_n_0,
      DOB => xim_mem_reg_r3_128_191_0_2_n_1,
      DOC => xim_mem_reg_r3_128_191_0_2_n_2,
      DOD => NLW_xim_mem_reg_r3_128_191_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => xre_mem_reg_r1_128_191_0_2_i_1_n_0
    );
xim_mem_reg_r3_128_191_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5) => \m_reg_n_0_[5]\,
      ADDRA(4) => \m_reg_n_0_[4]\,
      ADDRA(3) => \m_reg_n_0_[3]\,
      ADDRA(2) => \m_reg_n_0_[2]\,
      ADDRA(1) => \m_reg_n_0_[1]\,
      ADDRA(0) => \m_reg_n_0_[0]\,
      ADDRB(5) => \m_reg_n_0_[5]\,
      ADDRB(4) => \m_reg_n_0_[4]\,
      ADDRB(3) => \m_reg_n_0_[3]\,
      ADDRB(2) => \m_reg_n_0_[2]\,
      ADDRB(1) => \m_reg_n_0_[1]\,
      ADDRB(0) => \m_reg_n_0_[0]\,
      ADDRC(5) => \m_reg_n_0_[5]\,
      ADDRC(4) => \m_reg_n_0_[4]\,
      ADDRC(3) => \m_reg_n_0_[3]\,
      ADDRC(2) => \m_reg_n_0_[2]\,
      ADDRC(1) => \m_reg_n_0_[1]\,
      ADDRC(0) => \m_reg_n_0_[0]\,
      ADDRD(5 downto 0) => m_axis_data_tuser(5 downto 0),
      DIA => m_axis_data_tdata(15),
      DIB => m_axis_data_tdata(16),
      DIC => m_axis_data_tdata(17),
      DID => '0',
      DOA => xim_mem_reg_r3_128_191_3_5_n_0,
      DOB => xim_mem_reg_r3_128_191_3_5_n_1,
      DOC => xim_mem_reg_r3_128_191_3_5_n_2,
      DOD => NLW_xim_mem_reg_r3_128_191_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => xre_mem_reg_r1_128_191_0_2_i_1_n_0
    );
xim_mem_reg_r3_128_191_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5) => \m_reg_n_0_[5]\,
      ADDRA(4) => \m_reg_n_0_[4]\,
      ADDRA(3) => \m_reg_n_0_[3]\,
      ADDRA(2) => \m_reg_n_0_[2]\,
      ADDRA(1) => \m_reg_n_0_[1]\,
      ADDRA(0) => \m_reg_n_0_[0]\,
      ADDRB(5) => \m_reg_n_0_[5]\,
      ADDRB(4) => \m_reg_n_0_[4]\,
      ADDRB(3) => \m_reg_n_0_[3]\,
      ADDRB(2) => \m_reg_n_0_[2]\,
      ADDRB(1) => \m_reg_n_0_[1]\,
      ADDRB(0) => \m_reg_n_0_[0]\,
      ADDRC(5) => \m_reg_n_0_[5]\,
      ADDRC(4) => \m_reg_n_0_[4]\,
      ADDRC(3) => \m_reg_n_0_[3]\,
      ADDRC(2) => \m_reg_n_0_[2]\,
      ADDRC(1) => \m_reg_n_0_[1]\,
      ADDRC(0) => \m_reg_n_0_[0]\,
      ADDRD(5 downto 0) => m_axis_data_tuser(5 downto 0),
      DIA => m_axis_data_tdata(18),
      DIB => m_axis_data_tdata(19),
      DIC => m_axis_data_tdata(20),
      DID => '0',
      DOA => xim_mem_reg_r3_128_191_6_8_n_0,
      DOB => xim_mem_reg_r3_128_191_6_8_n_1,
      DOC => xim_mem_reg_r3_128_191_6_8_n_2,
      DOD => NLW_xim_mem_reg_r3_128_191_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => xre_mem_reg_r1_128_191_0_2_i_1_n_0
    );
xim_mem_reg_r3_128_191_9_11: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5) => \m_reg_n_0_[5]\,
      ADDRA(4) => \m_reg_n_0_[4]\,
      ADDRA(3) => \m_reg_n_0_[3]\,
      ADDRA(2) => \m_reg_n_0_[2]\,
      ADDRA(1) => \m_reg_n_0_[1]\,
      ADDRA(0) => \m_reg_n_0_[0]\,
      ADDRB(5) => \m_reg_n_0_[5]\,
      ADDRB(4) => \m_reg_n_0_[4]\,
      ADDRB(3) => \m_reg_n_0_[3]\,
      ADDRB(2) => \m_reg_n_0_[2]\,
      ADDRB(1) => \m_reg_n_0_[1]\,
      ADDRB(0) => \m_reg_n_0_[0]\,
      ADDRC(5) => \m_reg_n_0_[5]\,
      ADDRC(4) => \m_reg_n_0_[4]\,
      ADDRC(3) => \m_reg_n_0_[3]\,
      ADDRC(2) => \m_reg_n_0_[2]\,
      ADDRC(1) => \m_reg_n_0_[1]\,
      ADDRC(0) => \m_reg_n_0_[0]\,
      ADDRD(5 downto 0) => m_axis_data_tuser(5 downto 0),
      DIA => m_axis_data_tdata(21),
      DIB => m_axis_data_tdata(22),
      DIC => m_axis_data_tdata(23),
      DID => '0',
      DOA => xim_mem_reg_r3_128_191_9_11_n_0,
      DOB => xim_mem_reg_r3_128_191_9_11_n_1,
      DOC => xim_mem_reg_r3_128_191_9_11_n_2,
      DOD => NLW_xim_mem_reg_r3_128_191_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => xre_mem_reg_r1_128_191_0_2_i_1_n_0
    );
xim_mem_reg_r3_192_255_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5) => \m_reg_n_0_[5]\,
      ADDRA(4) => \m_reg_n_0_[4]\,
      ADDRA(3) => \m_reg_n_0_[3]\,
      ADDRA(2) => \m_reg_n_0_[2]\,
      ADDRA(1) => \m_reg_n_0_[1]\,
      ADDRA(0) => \m_reg_n_0_[0]\,
      ADDRB(5) => \m_reg_n_0_[5]\,
      ADDRB(4) => \m_reg_n_0_[4]\,
      ADDRB(3) => \m_reg_n_0_[3]\,
      ADDRB(2) => \m_reg_n_0_[2]\,
      ADDRB(1) => \m_reg_n_0_[1]\,
      ADDRB(0) => \m_reg_n_0_[0]\,
      ADDRC(5) => \m_reg_n_0_[5]\,
      ADDRC(4) => \m_reg_n_0_[4]\,
      ADDRC(3) => \m_reg_n_0_[3]\,
      ADDRC(2) => \m_reg_n_0_[2]\,
      ADDRC(1) => \m_reg_n_0_[1]\,
      ADDRC(0) => \m_reg_n_0_[0]\,
      ADDRD(5 downto 0) => m_axis_data_tuser(5 downto 0),
      DIA => m_axis_data_tdata(12),
      DIB => m_axis_data_tdata(13),
      DIC => m_axis_data_tdata(14),
      DID => '0',
      DOA => xim_mem_reg_r3_192_255_0_2_n_0,
      DOB => xim_mem_reg_r3_192_255_0_2_n_1,
      DOC => xim_mem_reg_r3_192_255_0_2_n_2,
      DOD => NLW_xim_mem_reg_r3_192_255_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => xre_mem_reg_r1_192_255_0_2_i_1_n_0
    );
xim_mem_reg_r3_192_255_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5) => \m_reg_n_0_[5]\,
      ADDRA(4) => \m_reg_n_0_[4]\,
      ADDRA(3) => \m_reg_n_0_[3]\,
      ADDRA(2) => \m_reg_n_0_[2]\,
      ADDRA(1) => \m_reg_n_0_[1]\,
      ADDRA(0) => \m_reg_n_0_[0]\,
      ADDRB(5) => \m_reg_n_0_[5]\,
      ADDRB(4) => \m_reg_n_0_[4]\,
      ADDRB(3) => \m_reg_n_0_[3]\,
      ADDRB(2) => \m_reg_n_0_[2]\,
      ADDRB(1) => \m_reg_n_0_[1]\,
      ADDRB(0) => \m_reg_n_0_[0]\,
      ADDRC(5) => \m_reg_n_0_[5]\,
      ADDRC(4) => \m_reg_n_0_[4]\,
      ADDRC(3) => \m_reg_n_0_[3]\,
      ADDRC(2) => \m_reg_n_0_[2]\,
      ADDRC(1) => \m_reg_n_0_[1]\,
      ADDRC(0) => \m_reg_n_0_[0]\,
      ADDRD(5 downto 0) => m_axis_data_tuser(5 downto 0),
      DIA => m_axis_data_tdata(15),
      DIB => m_axis_data_tdata(16),
      DIC => m_axis_data_tdata(17),
      DID => '0',
      DOA => xim_mem_reg_r3_192_255_3_5_n_0,
      DOB => xim_mem_reg_r3_192_255_3_5_n_1,
      DOC => xim_mem_reg_r3_192_255_3_5_n_2,
      DOD => NLW_xim_mem_reg_r3_192_255_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => xre_mem_reg_r1_192_255_0_2_i_1_n_0
    );
xim_mem_reg_r3_192_255_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5) => \m_reg_n_0_[5]\,
      ADDRA(4) => \m_reg_n_0_[4]\,
      ADDRA(3) => \m_reg_n_0_[3]\,
      ADDRA(2) => \m_reg_n_0_[2]\,
      ADDRA(1) => \m_reg_n_0_[1]\,
      ADDRA(0) => \m_reg_n_0_[0]\,
      ADDRB(5) => \m_reg_n_0_[5]\,
      ADDRB(4) => \m_reg_n_0_[4]\,
      ADDRB(3) => \m_reg_n_0_[3]\,
      ADDRB(2) => \m_reg_n_0_[2]\,
      ADDRB(1) => \m_reg_n_0_[1]\,
      ADDRB(0) => \m_reg_n_0_[0]\,
      ADDRC(5) => \m_reg_n_0_[5]\,
      ADDRC(4) => \m_reg_n_0_[4]\,
      ADDRC(3) => \m_reg_n_0_[3]\,
      ADDRC(2) => \m_reg_n_0_[2]\,
      ADDRC(1) => \m_reg_n_0_[1]\,
      ADDRC(0) => \m_reg_n_0_[0]\,
      ADDRD(5 downto 0) => m_axis_data_tuser(5 downto 0),
      DIA => m_axis_data_tdata(18),
      DIB => m_axis_data_tdata(19),
      DIC => m_axis_data_tdata(20),
      DID => '0',
      DOA => xim_mem_reg_r3_192_255_6_8_n_0,
      DOB => xim_mem_reg_r3_192_255_6_8_n_1,
      DOC => xim_mem_reg_r3_192_255_6_8_n_2,
      DOD => NLW_xim_mem_reg_r3_192_255_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => xre_mem_reg_r1_192_255_0_2_i_1_n_0
    );
xim_mem_reg_r3_192_255_9_11: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5) => \m_reg_n_0_[5]\,
      ADDRA(4) => \m_reg_n_0_[4]\,
      ADDRA(3) => \m_reg_n_0_[3]\,
      ADDRA(2) => \m_reg_n_0_[2]\,
      ADDRA(1) => \m_reg_n_0_[1]\,
      ADDRA(0) => \m_reg_n_0_[0]\,
      ADDRB(5) => \m_reg_n_0_[5]\,
      ADDRB(4) => \m_reg_n_0_[4]\,
      ADDRB(3) => \m_reg_n_0_[3]\,
      ADDRB(2) => \m_reg_n_0_[2]\,
      ADDRB(1) => \m_reg_n_0_[1]\,
      ADDRB(0) => \m_reg_n_0_[0]\,
      ADDRC(5) => \m_reg_n_0_[5]\,
      ADDRC(4) => \m_reg_n_0_[4]\,
      ADDRC(3) => \m_reg_n_0_[3]\,
      ADDRC(2) => \m_reg_n_0_[2]\,
      ADDRC(1) => \m_reg_n_0_[1]\,
      ADDRC(0) => \m_reg_n_0_[0]\,
      ADDRD(5 downto 0) => m_axis_data_tuser(5 downto 0),
      DIA => m_axis_data_tdata(21),
      DIB => m_axis_data_tdata(22),
      DIC => m_axis_data_tdata(23),
      DID => '0',
      DOA => xim_mem_reg_r3_192_255_9_11_n_0,
      DOB => xim_mem_reg_r3_192_255_9_11_n_1,
      DOC => xim_mem_reg_r3_192_255_9_11_n_2,
      DOD => NLW_xim_mem_reg_r3_192_255_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => xre_mem_reg_r1_192_255_0_2_i_1_n_0
    );
xim_mem_reg_r3_64_127_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5) => \m_reg_n_0_[5]\,
      ADDRA(4) => \m_reg_n_0_[4]\,
      ADDRA(3) => \m_reg_n_0_[3]\,
      ADDRA(2) => \m_reg_n_0_[2]\,
      ADDRA(1) => \m_reg_n_0_[1]\,
      ADDRA(0) => \m_reg_n_0_[0]\,
      ADDRB(5) => \m_reg_n_0_[5]\,
      ADDRB(4) => \m_reg_n_0_[4]\,
      ADDRB(3) => \m_reg_n_0_[3]\,
      ADDRB(2) => \m_reg_n_0_[2]\,
      ADDRB(1) => \m_reg_n_0_[1]\,
      ADDRB(0) => \m_reg_n_0_[0]\,
      ADDRC(5) => \m_reg_n_0_[5]\,
      ADDRC(4) => \m_reg_n_0_[4]\,
      ADDRC(3) => \m_reg_n_0_[3]\,
      ADDRC(2) => \m_reg_n_0_[2]\,
      ADDRC(1) => \m_reg_n_0_[1]\,
      ADDRC(0) => \m_reg_n_0_[0]\,
      ADDRD(5 downto 0) => m_axis_data_tuser(5 downto 0),
      DIA => m_axis_data_tdata(12),
      DIB => m_axis_data_tdata(13),
      DIC => m_axis_data_tdata(14),
      DID => '0',
      DOA => xim_mem_reg_r3_64_127_0_2_n_0,
      DOB => xim_mem_reg_r3_64_127_0_2_n_1,
      DOC => xim_mem_reg_r3_64_127_0_2_n_2,
      DOD => NLW_xim_mem_reg_r3_64_127_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => xre_mem_reg_r1_64_127_0_2_i_1_n_0
    );
xim_mem_reg_r3_64_127_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5) => \m_reg_n_0_[5]\,
      ADDRA(4) => \m_reg_n_0_[4]\,
      ADDRA(3) => \m_reg_n_0_[3]\,
      ADDRA(2) => \m_reg_n_0_[2]\,
      ADDRA(1) => \m_reg_n_0_[1]\,
      ADDRA(0) => \m_reg_n_0_[0]\,
      ADDRB(5) => \m_reg_n_0_[5]\,
      ADDRB(4) => \m_reg_n_0_[4]\,
      ADDRB(3) => \m_reg_n_0_[3]\,
      ADDRB(2) => \m_reg_n_0_[2]\,
      ADDRB(1) => \m_reg_n_0_[1]\,
      ADDRB(0) => \m_reg_n_0_[0]\,
      ADDRC(5) => \m_reg_n_0_[5]\,
      ADDRC(4) => \m_reg_n_0_[4]\,
      ADDRC(3) => \m_reg_n_0_[3]\,
      ADDRC(2) => \m_reg_n_0_[2]\,
      ADDRC(1) => \m_reg_n_0_[1]\,
      ADDRC(0) => \m_reg_n_0_[0]\,
      ADDRD(5 downto 0) => m_axis_data_tuser(5 downto 0),
      DIA => m_axis_data_tdata(15),
      DIB => m_axis_data_tdata(16),
      DIC => m_axis_data_tdata(17),
      DID => '0',
      DOA => xim_mem_reg_r3_64_127_3_5_n_0,
      DOB => xim_mem_reg_r3_64_127_3_5_n_1,
      DOC => xim_mem_reg_r3_64_127_3_5_n_2,
      DOD => NLW_xim_mem_reg_r3_64_127_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => xre_mem_reg_r1_64_127_0_2_i_1_n_0
    );
xim_mem_reg_r3_64_127_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5) => \m_reg_n_0_[5]\,
      ADDRA(4) => \m_reg_n_0_[4]\,
      ADDRA(3) => \m_reg_n_0_[3]\,
      ADDRA(2) => \m_reg_n_0_[2]\,
      ADDRA(1) => \m_reg_n_0_[1]\,
      ADDRA(0) => \m_reg_n_0_[0]\,
      ADDRB(5) => \m_reg_n_0_[5]\,
      ADDRB(4) => \m_reg_n_0_[4]\,
      ADDRB(3) => \m_reg_n_0_[3]\,
      ADDRB(2) => \m_reg_n_0_[2]\,
      ADDRB(1) => \m_reg_n_0_[1]\,
      ADDRB(0) => \m_reg_n_0_[0]\,
      ADDRC(5) => \m_reg_n_0_[5]\,
      ADDRC(4) => \m_reg_n_0_[4]\,
      ADDRC(3) => \m_reg_n_0_[3]\,
      ADDRC(2) => \m_reg_n_0_[2]\,
      ADDRC(1) => \m_reg_n_0_[1]\,
      ADDRC(0) => \m_reg_n_0_[0]\,
      ADDRD(5 downto 0) => m_axis_data_tuser(5 downto 0),
      DIA => m_axis_data_tdata(18),
      DIB => m_axis_data_tdata(19),
      DIC => m_axis_data_tdata(20),
      DID => '0',
      DOA => xim_mem_reg_r3_64_127_6_8_n_0,
      DOB => xim_mem_reg_r3_64_127_6_8_n_1,
      DOC => xim_mem_reg_r3_64_127_6_8_n_2,
      DOD => NLW_xim_mem_reg_r3_64_127_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => xre_mem_reg_r1_64_127_0_2_i_1_n_0
    );
xim_mem_reg_r3_64_127_9_11: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5) => \m_reg_n_0_[5]\,
      ADDRA(4) => \m_reg_n_0_[4]\,
      ADDRA(3) => \m_reg_n_0_[3]\,
      ADDRA(2) => \m_reg_n_0_[2]\,
      ADDRA(1) => \m_reg_n_0_[1]\,
      ADDRA(0) => \m_reg_n_0_[0]\,
      ADDRB(5) => \m_reg_n_0_[5]\,
      ADDRB(4) => \m_reg_n_0_[4]\,
      ADDRB(3) => \m_reg_n_0_[3]\,
      ADDRB(2) => \m_reg_n_0_[2]\,
      ADDRB(1) => \m_reg_n_0_[1]\,
      ADDRB(0) => \m_reg_n_0_[0]\,
      ADDRC(5) => \m_reg_n_0_[5]\,
      ADDRC(4) => \m_reg_n_0_[4]\,
      ADDRC(3) => \m_reg_n_0_[3]\,
      ADDRC(2) => \m_reg_n_0_[2]\,
      ADDRC(1) => \m_reg_n_0_[1]\,
      ADDRC(0) => \m_reg_n_0_[0]\,
      ADDRD(5 downto 0) => m_axis_data_tuser(5 downto 0),
      DIA => m_axis_data_tdata(21),
      DIB => m_axis_data_tdata(22),
      DIC => m_axis_data_tdata(23),
      DID => '0',
      DOA => xim_mem_reg_r3_64_127_9_11_n_0,
      DOB => xim_mem_reg_r3_64_127_9_11_n_1,
      DOC => xim_mem_reg_r3_64_127_9_11_n_2,
      DOD => NLW_xim_mem_reg_r3_64_127_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => xre_mem_reg_r1_64_127_0_2_i_1_n_0
    );
\xim_mm1[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => xim_mem_reg_r2_192_255_0_2_n_0,
      I1 => xim_mem_reg_r2_128_191_0_2_n_0,
      I2 => m_minus_1(7),
      I3 => xim_mem_reg_r2_64_127_0_2_n_0,
      I4 => m_minus_1(6),
      I5 => xim_mem_reg_r2_0_63_0_2_n_0,
      O => xim_mm10(0)
    );
\xim_mm1[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => xim_mem_reg_r2_192_255_9_11_n_1,
      I1 => xim_mem_reg_r2_128_191_9_11_n_1,
      I2 => m_minus_1(7),
      I3 => xim_mem_reg_r2_64_127_9_11_n_1,
      I4 => m_minus_1(6),
      I5 => xim_mem_reg_r2_0_63_9_11_n_1,
      O => xim_mm10(10)
    );
\xim_mm1[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => xim_mem_reg_r2_192_255_9_11_n_2,
      I1 => xim_mem_reg_r2_128_191_9_11_n_2,
      I2 => m_minus_1(7),
      I3 => xim_mem_reg_r2_64_127_9_11_n_2,
      I4 => m_minus_1(6),
      I5 => xim_mem_reg_r2_0_63_9_11_n_2,
      O => xim_mm10(11)
    );
\xim_mm1[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => xim_mem_reg_r2_192_255_0_2_n_1,
      I1 => xim_mem_reg_r2_128_191_0_2_n_1,
      I2 => m_minus_1(7),
      I3 => xim_mem_reg_r2_64_127_0_2_n_1,
      I4 => m_minus_1(6),
      I5 => xim_mem_reg_r2_0_63_0_2_n_1,
      O => xim_mm10(1)
    );
\xim_mm1[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => xim_mem_reg_r2_192_255_0_2_n_2,
      I1 => xim_mem_reg_r2_128_191_0_2_n_2,
      I2 => m_minus_1(7),
      I3 => xim_mem_reg_r2_64_127_0_2_n_2,
      I4 => m_minus_1(6),
      I5 => xim_mem_reg_r2_0_63_0_2_n_2,
      O => xim_mm10(2)
    );
\xim_mm1[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => xim_mem_reg_r2_192_255_3_5_n_0,
      I1 => xim_mem_reg_r2_128_191_3_5_n_0,
      I2 => m_minus_1(7),
      I3 => xim_mem_reg_r2_64_127_3_5_n_0,
      I4 => m_minus_1(6),
      I5 => xim_mem_reg_r2_0_63_3_5_n_0,
      O => xim_mm10(3)
    );
\xim_mm1[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => xim_mem_reg_r2_192_255_3_5_n_1,
      I1 => xim_mem_reg_r2_128_191_3_5_n_1,
      I2 => m_minus_1(7),
      I3 => xim_mem_reg_r2_64_127_3_5_n_1,
      I4 => m_minus_1(6),
      I5 => xim_mem_reg_r2_0_63_3_5_n_1,
      O => xim_mm10(4)
    );
\xim_mm1[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => xim_mem_reg_r2_192_255_3_5_n_2,
      I1 => xim_mem_reg_r2_128_191_3_5_n_2,
      I2 => m_minus_1(7),
      I3 => xim_mem_reg_r2_64_127_3_5_n_2,
      I4 => m_minus_1(6),
      I5 => xim_mem_reg_r2_0_63_3_5_n_2,
      O => xim_mm10(5)
    );
\xim_mm1[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => xim_mem_reg_r2_192_255_6_8_n_0,
      I1 => xim_mem_reg_r2_128_191_6_8_n_0,
      I2 => m_minus_1(7),
      I3 => xim_mem_reg_r2_64_127_6_8_n_0,
      I4 => m_minus_1(6),
      I5 => xim_mem_reg_r2_0_63_6_8_n_0,
      O => xim_mm10(6)
    );
\xim_mm1[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => xim_mem_reg_r2_192_255_6_8_n_1,
      I1 => xim_mem_reg_r2_128_191_6_8_n_1,
      I2 => m_minus_1(7),
      I3 => xim_mem_reg_r2_64_127_6_8_n_1,
      I4 => m_minus_1(6),
      I5 => xim_mem_reg_r2_0_63_6_8_n_1,
      O => xim_mm10(7)
    );
\xim_mm1[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => xim_mem_reg_r2_192_255_6_8_n_2,
      I1 => xim_mem_reg_r2_128_191_6_8_n_2,
      I2 => m_minus_1(7),
      I3 => xim_mem_reg_r2_64_127_6_8_n_2,
      I4 => m_minus_1(6),
      I5 => xim_mem_reg_r2_0_63_6_8_n_2,
      O => xim_mm10(8)
    );
\xim_mm1[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => xim_mem_reg_r2_192_255_9_11_n_0,
      I1 => xim_mem_reg_r2_128_191_9_11_n_0,
      I2 => m_minus_1(7),
      I3 => xim_mem_reg_r2_64_127_9_11_n_0,
      I4 => m_minus_1(6),
      I5 => xim_mem_reg_r2_0_63_9_11_n_0,
      O => xim_mm10(9)
    );
\xim_mm1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => xim_mm10(0),
      Q => xim_mm1(0),
      R => \^sr\(0)
    );
\xim_mm1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => xim_mm10(10),
      Q => xim_mm1(10),
      R => \^sr\(0)
    );
\xim_mm1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => xim_mm10(11),
      Q => xim_mm1(11),
      R => \^sr\(0)
    );
\xim_mm1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => xim_mm10(1),
      Q => xim_mm1(1),
      R => \^sr\(0)
    );
\xim_mm1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => xim_mm10(2),
      Q => xim_mm1(2),
      R => \^sr\(0)
    );
\xim_mm1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => xim_mm10(3),
      Q => xim_mm1(3),
      R => \^sr\(0)
    );
\xim_mm1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => xim_mm10(4),
      Q => xim_mm1(4),
      R => \^sr\(0)
    );
\xim_mm1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => xim_mm10(5),
      Q => xim_mm1(5),
      R => \^sr\(0)
    );
\xim_mm1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => xim_mm10(6),
      Q => xim_mm1(6),
      R => \^sr\(0)
    );
\xim_mm1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => xim_mm10(7),
      Q => xim_mm1(7),
      R => \^sr\(0)
    );
\xim_mm1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => xim_mm10(8),
      Q => xim_mm1(8),
      R => \^sr\(0)
    );
\xim_mm1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => xim_mm10(9),
      Q => xim_mm1(9),
      R => \^sr\(0)
    );
\xk_index_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => m_s2(0),
      Q => Q(0),
      R => \^sr\(0)
    );
\xk_index_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => m_s2(1),
      Q => Q(1),
      R => \^sr\(0)
    );
\xk_index_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => m_s2(2),
      Q => Q(2),
      R => \^sr\(0)
    );
\xk_index_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => m_s2(3),
      Q => Q(3),
      R => \^sr\(0)
    );
\xk_index_out_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => m_s2(4),
      Q => Q(4),
      R => \^sr\(0)
    );
\xk_index_out_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => m_s2(5),
      Q => Q(5),
      R => \^sr\(0)
    );
\xk_index_out_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => m_s2(6),
      Q => Q(6),
      R => \^sr\(0)
    );
\xk_index_out_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => m_s2(7),
      Q => Q(7),
      R => \^sr\(0)
    );
xk_last_out_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => last_s2,
      Q => xk_last_out,
      R => \^sr\(0)
    );
xk_valid_out_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => vld_s2,
      Q => xk_valid_out,
      R => \^sr\(0)
    );
xre_mem_reg_r1_0_63_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 1) => m_plus_1(5 downto 1),
      ADDRA(0) => xre_mem_reg_r1_0_63_0_2_i_7_n_0,
      ADDRB(5 downto 1) => m_plus_1(5 downto 1),
      ADDRB(0) => xre_mem_reg_r1_0_63_0_2_i_7_n_0,
      ADDRC(5 downto 1) => m_plus_1(5 downto 1),
      ADDRC(0) => xre_mem_reg_r1_0_63_0_2_i_7_n_0,
      ADDRD(5 downto 0) => m_axis_data_tuser(5 downto 0),
      DIA => m_axis_data_tdata(0),
      DIB => m_axis_data_tdata(1),
      DIC => m_axis_data_tdata(2),
      DID => '0',
      DOA => xre_mem_reg_r1_0_63_0_2_n_0,
      DOB => xre_mem_reg_r1_0_63_0_2_n_1,
      DOC => xre_mem_reg_r1_0_63_0_2_n_2,
      DOD => NLW_xre_mem_reg_r1_0_63_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => xre_mem_reg_r1_0_63_0_2_i_1_n_0
    );
xre_mem_reg_r1_0_63_0_2_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => m_axis_data_tvalid,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => m_axis_data_tuser(6),
      I3 => m_axis_data_tuser(7),
      O => xre_mem_reg_r1_0_63_0_2_i_1_n_0
    );
xre_mem_reg_r1_0_63_0_2_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \m_reg_n_0_[4]\,
      I1 => \m_reg_n_0_[2]\,
      I2 => \m_reg_n_0_[0]\,
      I3 => \m_reg_n_0_[1]\,
      I4 => \m_reg_n_0_[3]\,
      I5 => \m_reg_n_0_[5]\,
      O => m_plus_1(5)
    );
xre_mem_reg_r1_0_63_0_2_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \m_reg_n_0_[3]\,
      I1 => \m_reg_n_0_[1]\,
      I2 => \m_reg_n_0_[0]\,
      I3 => \m_reg_n_0_[2]\,
      I4 => \m_reg_n_0_[4]\,
      O => m_plus_1(4)
    );
xre_mem_reg_r1_0_63_0_2_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \m_reg_n_0_[2]\,
      I1 => \m_reg_n_0_[0]\,
      I2 => \m_reg_n_0_[1]\,
      I3 => \m_reg_n_0_[3]\,
      O => m_plus_1(3)
    );
xre_mem_reg_r1_0_63_0_2_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \m_reg_n_0_[1]\,
      I1 => \m_reg_n_0_[0]\,
      I2 => \m_reg_n_0_[2]\,
      O => m_plus_1(2)
    );
xre_mem_reg_r1_0_63_0_2_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \m_reg_n_0_[0]\,
      I1 => \m_reg_n_0_[1]\,
      O => m_plus_1(1)
    );
xre_mem_reg_r1_0_63_0_2_i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \m_reg_n_0_[0]\,
      O => xre_mem_reg_r1_0_63_0_2_i_7_n_0
    );
xre_mem_reg_r1_0_63_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 1) => m_plus_1(5 downto 1),
      ADDRA(0) => xre_mem_reg_r1_0_63_0_2_i_7_n_0,
      ADDRB(5 downto 1) => m_plus_1(5 downto 1),
      ADDRB(0) => xre_mem_reg_r1_0_63_0_2_i_7_n_0,
      ADDRC(5 downto 1) => m_plus_1(5 downto 1),
      ADDRC(0) => xre_mem_reg_r1_0_63_0_2_i_7_n_0,
      ADDRD(5 downto 0) => m_axis_data_tuser(5 downto 0),
      DIA => m_axis_data_tdata(3),
      DIB => m_axis_data_tdata(4),
      DIC => m_axis_data_tdata(5),
      DID => '0',
      DOA => xre_mem_reg_r1_0_63_3_5_n_0,
      DOB => xre_mem_reg_r1_0_63_3_5_n_1,
      DOC => xre_mem_reg_r1_0_63_3_5_n_2,
      DOD => NLW_xre_mem_reg_r1_0_63_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => xre_mem_reg_r1_0_63_0_2_i_1_n_0
    );
xre_mem_reg_r1_0_63_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 1) => m_plus_1(5 downto 1),
      ADDRA(0) => xre_mem_reg_r1_0_63_0_2_i_7_n_0,
      ADDRB(5 downto 1) => m_plus_1(5 downto 1),
      ADDRB(0) => xre_mem_reg_r1_0_63_0_2_i_7_n_0,
      ADDRC(5 downto 1) => m_plus_1(5 downto 1),
      ADDRC(0) => xre_mem_reg_r1_0_63_0_2_i_7_n_0,
      ADDRD(5 downto 0) => m_axis_data_tuser(5 downto 0),
      DIA => m_axis_data_tdata(6),
      DIB => m_axis_data_tdata(7),
      DIC => m_axis_data_tdata(8),
      DID => '0',
      DOA => xre_mem_reg_r1_0_63_6_8_n_0,
      DOB => xre_mem_reg_r1_0_63_6_8_n_1,
      DOC => xre_mem_reg_r1_0_63_6_8_n_2,
      DOD => NLW_xre_mem_reg_r1_0_63_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => xre_mem_reg_r1_0_63_0_2_i_1_n_0
    );
xre_mem_reg_r1_0_63_9_11: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 1) => m_plus_1(5 downto 1),
      ADDRA(0) => xre_mem_reg_r1_0_63_0_2_i_7_n_0,
      ADDRB(5 downto 1) => m_plus_1(5 downto 1),
      ADDRB(0) => xre_mem_reg_r1_0_63_0_2_i_7_n_0,
      ADDRC(5 downto 1) => m_plus_1(5 downto 1),
      ADDRC(0) => xre_mem_reg_r1_0_63_0_2_i_7_n_0,
      ADDRD(5 downto 0) => m_axis_data_tuser(5 downto 0),
      DIA => m_axis_data_tdata(9),
      DIB => m_axis_data_tdata(10),
      DIC => m_axis_data_tdata(11),
      DID => '0',
      DOA => xre_mem_reg_r1_0_63_9_11_n_0,
      DOB => xre_mem_reg_r1_0_63_9_11_n_1,
      DOC => xre_mem_reg_r1_0_63_9_11_n_2,
      DOD => NLW_xre_mem_reg_r1_0_63_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => xre_mem_reg_r1_0_63_0_2_i_1_n_0
    );
xre_mem_reg_r1_128_191_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 1) => m_plus_1(5 downto 1),
      ADDRA(0) => xre_mem_reg_r1_0_63_0_2_i_7_n_0,
      ADDRB(5 downto 1) => m_plus_1(5 downto 1),
      ADDRB(0) => xre_mem_reg_r1_0_63_0_2_i_7_n_0,
      ADDRC(5 downto 1) => m_plus_1(5 downto 1),
      ADDRC(0) => xre_mem_reg_r1_0_63_0_2_i_7_n_0,
      ADDRD(5 downto 0) => m_axis_data_tuser(5 downto 0),
      DIA => m_axis_data_tdata(0),
      DIB => m_axis_data_tdata(1),
      DIC => m_axis_data_tdata(2),
      DID => '0',
      DOA => xre_mem_reg_r1_128_191_0_2_n_0,
      DOB => xre_mem_reg_r1_128_191_0_2_n_1,
      DOC => xre_mem_reg_r1_128_191_0_2_n_2,
      DOD => NLW_xre_mem_reg_r1_128_191_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => xre_mem_reg_r1_128_191_0_2_i_1_n_0
    );
xre_mem_reg_r1_128_191_0_2_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => m_axis_data_tuser(6),
      I1 => m_axis_data_tuser(7),
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => m_axis_data_tvalid,
      O => xre_mem_reg_r1_128_191_0_2_i_1_n_0
    );
xre_mem_reg_r1_128_191_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 1) => m_plus_1(5 downto 1),
      ADDRA(0) => xre_mem_reg_r1_0_63_0_2_i_7_n_0,
      ADDRB(5 downto 1) => m_plus_1(5 downto 1),
      ADDRB(0) => xre_mem_reg_r1_0_63_0_2_i_7_n_0,
      ADDRC(5 downto 1) => m_plus_1(5 downto 1),
      ADDRC(0) => xre_mem_reg_r1_0_63_0_2_i_7_n_0,
      ADDRD(5 downto 0) => m_axis_data_tuser(5 downto 0),
      DIA => m_axis_data_tdata(3),
      DIB => m_axis_data_tdata(4),
      DIC => m_axis_data_tdata(5),
      DID => '0',
      DOA => xre_mem_reg_r1_128_191_3_5_n_0,
      DOB => xre_mem_reg_r1_128_191_3_5_n_1,
      DOC => xre_mem_reg_r1_128_191_3_5_n_2,
      DOD => NLW_xre_mem_reg_r1_128_191_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => xre_mem_reg_r1_128_191_0_2_i_1_n_0
    );
xre_mem_reg_r1_128_191_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 1) => m_plus_1(5 downto 1),
      ADDRA(0) => xre_mem_reg_r1_0_63_0_2_i_7_n_0,
      ADDRB(5 downto 1) => m_plus_1(5 downto 1),
      ADDRB(0) => xre_mem_reg_r1_0_63_0_2_i_7_n_0,
      ADDRC(5 downto 1) => m_plus_1(5 downto 1),
      ADDRC(0) => xre_mem_reg_r1_0_63_0_2_i_7_n_0,
      ADDRD(5 downto 0) => m_axis_data_tuser(5 downto 0),
      DIA => m_axis_data_tdata(6),
      DIB => m_axis_data_tdata(7),
      DIC => m_axis_data_tdata(8),
      DID => '0',
      DOA => xre_mem_reg_r1_128_191_6_8_n_0,
      DOB => xre_mem_reg_r1_128_191_6_8_n_1,
      DOC => xre_mem_reg_r1_128_191_6_8_n_2,
      DOD => NLW_xre_mem_reg_r1_128_191_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => xre_mem_reg_r1_128_191_0_2_i_1_n_0
    );
xre_mem_reg_r1_128_191_9_11: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 1) => m_plus_1(5 downto 1),
      ADDRA(0) => xre_mem_reg_r1_0_63_0_2_i_7_n_0,
      ADDRB(5 downto 1) => m_plus_1(5 downto 1),
      ADDRB(0) => xre_mem_reg_r1_0_63_0_2_i_7_n_0,
      ADDRC(5 downto 1) => m_plus_1(5 downto 1),
      ADDRC(0) => xre_mem_reg_r1_0_63_0_2_i_7_n_0,
      ADDRD(5 downto 0) => m_axis_data_tuser(5 downto 0),
      DIA => m_axis_data_tdata(9),
      DIB => m_axis_data_tdata(10),
      DIC => m_axis_data_tdata(11),
      DID => '0',
      DOA => xre_mem_reg_r1_128_191_9_11_n_0,
      DOB => xre_mem_reg_r1_128_191_9_11_n_1,
      DOC => xre_mem_reg_r1_128_191_9_11_n_2,
      DOD => NLW_xre_mem_reg_r1_128_191_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => xre_mem_reg_r1_128_191_0_2_i_1_n_0
    );
xre_mem_reg_r1_192_255_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 1) => m_plus_1(5 downto 1),
      ADDRA(0) => xre_mem_reg_r1_0_63_0_2_i_7_n_0,
      ADDRB(5 downto 1) => m_plus_1(5 downto 1),
      ADDRB(0) => xre_mem_reg_r1_0_63_0_2_i_7_n_0,
      ADDRC(5 downto 1) => m_plus_1(5 downto 1),
      ADDRC(0) => xre_mem_reg_r1_0_63_0_2_i_7_n_0,
      ADDRD(5 downto 0) => m_axis_data_tuser(5 downto 0),
      DIA => m_axis_data_tdata(0),
      DIB => m_axis_data_tdata(1),
      DIC => m_axis_data_tdata(2),
      DID => '0',
      DOA => xre_mem_reg_r1_192_255_0_2_n_0,
      DOB => xre_mem_reg_r1_192_255_0_2_n_1,
      DOC => xre_mem_reg_r1_192_255_0_2_n_2,
      DOD => NLW_xre_mem_reg_r1_192_255_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => xre_mem_reg_r1_192_255_0_2_i_1_n_0
    );
xre_mem_reg_r1_192_255_0_2_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => m_axis_data_tvalid,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => m_axis_data_tuser(6),
      I3 => m_axis_data_tuser(7),
      O => xre_mem_reg_r1_192_255_0_2_i_1_n_0
    );
xre_mem_reg_r1_192_255_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 1) => m_plus_1(5 downto 1),
      ADDRA(0) => xre_mem_reg_r1_0_63_0_2_i_7_n_0,
      ADDRB(5 downto 1) => m_plus_1(5 downto 1),
      ADDRB(0) => xre_mem_reg_r1_0_63_0_2_i_7_n_0,
      ADDRC(5 downto 1) => m_plus_1(5 downto 1),
      ADDRC(0) => xre_mem_reg_r1_0_63_0_2_i_7_n_0,
      ADDRD(5 downto 0) => m_axis_data_tuser(5 downto 0),
      DIA => m_axis_data_tdata(3),
      DIB => m_axis_data_tdata(4),
      DIC => m_axis_data_tdata(5),
      DID => '0',
      DOA => xre_mem_reg_r1_192_255_3_5_n_0,
      DOB => xre_mem_reg_r1_192_255_3_5_n_1,
      DOC => xre_mem_reg_r1_192_255_3_5_n_2,
      DOD => NLW_xre_mem_reg_r1_192_255_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => xre_mem_reg_r1_192_255_0_2_i_1_n_0
    );
xre_mem_reg_r1_192_255_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 1) => m_plus_1(5 downto 1),
      ADDRA(0) => xre_mem_reg_r1_0_63_0_2_i_7_n_0,
      ADDRB(5 downto 1) => m_plus_1(5 downto 1),
      ADDRB(0) => xre_mem_reg_r1_0_63_0_2_i_7_n_0,
      ADDRC(5 downto 1) => m_plus_1(5 downto 1),
      ADDRC(0) => xre_mem_reg_r1_0_63_0_2_i_7_n_0,
      ADDRD(5 downto 0) => m_axis_data_tuser(5 downto 0),
      DIA => m_axis_data_tdata(6),
      DIB => m_axis_data_tdata(7),
      DIC => m_axis_data_tdata(8),
      DID => '0',
      DOA => xre_mem_reg_r1_192_255_6_8_n_0,
      DOB => xre_mem_reg_r1_192_255_6_8_n_1,
      DOC => xre_mem_reg_r1_192_255_6_8_n_2,
      DOD => NLW_xre_mem_reg_r1_192_255_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => xre_mem_reg_r1_192_255_0_2_i_1_n_0
    );
xre_mem_reg_r1_192_255_9_11: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 1) => m_plus_1(5 downto 1),
      ADDRA(0) => xre_mem_reg_r1_0_63_0_2_i_7_n_0,
      ADDRB(5 downto 1) => m_plus_1(5 downto 1),
      ADDRB(0) => xre_mem_reg_r1_0_63_0_2_i_7_n_0,
      ADDRC(5 downto 1) => m_plus_1(5 downto 1),
      ADDRC(0) => xre_mem_reg_r1_0_63_0_2_i_7_n_0,
      ADDRD(5 downto 0) => m_axis_data_tuser(5 downto 0),
      DIA => m_axis_data_tdata(9),
      DIB => m_axis_data_tdata(10),
      DIC => m_axis_data_tdata(11),
      DID => '0',
      DOA => xre_mem_reg_r1_192_255_9_11_n_0,
      DOB => xre_mem_reg_r1_192_255_9_11_n_1,
      DOC => xre_mem_reg_r1_192_255_9_11_n_2,
      DOD => NLW_xre_mem_reg_r1_192_255_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => xre_mem_reg_r1_192_255_0_2_i_1_n_0
    );
xre_mem_reg_r1_64_127_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 1) => m_plus_1(5 downto 1),
      ADDRA(0) => xre_mem_reg_r1_0_63_0_2_i_7_n_0,
      ADDRB(5 downto 1) => m_plus_1(5 downto 1),
      ADDRB(0) => xre_mem_reg_r1_0_63_0_2_i_7_n_0,
      ADDRC(5 downto 1) => m_plus_1(5 downto 1),
      ADDRC(0) => xre_mem_reg_r1_0_63_0_2_i_7_n_0,
      ADDRD(5 downto 0) => m_axis_data_tuser(5 downto 0),
      DIA => m_axis_data_tdata(0),
      DIB => m_axis_data_tdata(1),
      DIC => m_axis_data_tdata(2),
      DID => '0',
      DOA => xre_mem_reg_r1_64_127_0_2_n_0,
      DOB => xre_mem_reg_r1_64_127_0_2_n_1,
      DOC => xre_mem_reg_r1_64_127_0_2_n_2,
      DOD => NLW_xre_mem_reg_r1_64_127_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => xre_mem_reg_r1_64_127_0_2_i_1_n_0
    );
xre_mem_reg_r1_64_127_0_2_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => m_axis_data_tuser(7),
      I1 => m_axis_data_tuser(6),
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => m_axis_data_tvalid,
      O => xre_mem_reg_r1_64_127_0_2_i_1_n_0
    );
xre_mem_reg_r1_64_127_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 1) => m_plus_1(5 downto 1),
      ADDRA(0) => xre_mem_reg_r1_0_63_0_2_i_7_n_0,
      ADDRB(5 downto 1) => m_plus_1(5 downto 1),
      ADDRB(0) => xre_mem_reg_r1_0_63_0_2_i_7_n_0,
      ADDRC(5 downto 1) => m_plus_1(5 downto 1),
      ADDRC(0) => xre_mem_reg_r1_0_63_0_2_i_7_n_0,
      ADDRD(5 downto 0) => m_axis_data_tuser(5 downto 0),
      DIA => m_axis_data_tdata(3),
      DIB => m_axis_data_tdata(4),
      DIC => m_axis_data_tdata(5),
      DID => '0',
      DOA => xre_mem_reg_r1_64_127_3_5_n_0,
      DOB => xre_mem_reg_r1_64_127_3_5_n_1,
      DOC => xre_mem_reg_r1_64_127_3_5_n_2,
      DOD => NLW_xre_mem_reg_r1_64_127_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => xre_mem_reg_r1_64_127_0_2_i_1_n_0
    );
xre_mem_reg_r1_64_127_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 1) => m_plus_1(5 downto 1),
      ADDRA(0) => xre_mem_reg_r1_0_63_0_2_i_7_n_0,
      ADDRB(5 downto 1) => m_plus_1(5 downto 1),
      ADDRB(0) => xre_mem_reg_r1_0_63_0_2_i_7_n_0,
      ADDRC(5 downto 1) => m_plus_1(5 downto 1),
      ADDRC(0) => xre_mem_reg_r1_0_63_0_2_i_7_n_0,
      ADDRD(5 downto 0) => m_axis_data_tuser(5 downto 0),
      DIA => m_axis_data_tdata(6),
      DIB => m_axis_data_tdata(7),
      DIC => m_axis_data_tdata(8),
      DID => '0',
      DOA => xre_mem_reg_r1_64_127_6_8_n_0,
      DOB => xre_mem_reg_r1_64_127_6_8_n_1,
      DOC => xre_mem_reg_r1_64_127_6_8_n_2,
      DOD => NLW_xre_mem_reg_r1_64_127_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => xre_mem_reg_r1_64_127_0_2_i_1_n_0
    );
xre_mem_reg_r1_64_127_9_11: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 1) => m_plus_1(5 downto 1),
      ADDRA(0) => xre_mem_reg_r1_0_63_0_2_i_7_n_0,
      ADDRB(5 downto 1) => m_plus_1(5 downto 1),
      ADDRB(0) => xre_mem_reg_r1_0_63_0_2_i_7_n_0,
      ADDRC(5 downto 1) => m_plus_1(5 downto 1),
      ADDRC(0) => xre_mem_reg_r1_0_63_0_2_i_7_n_0,
      ADDRD(5 downto 0) => m_axis_data_tuser(5 downto 0),
      DIA => m_axis_data_tdata(9),
      DIB => m_axis_data_tdata(10),
      DIC => m_axis_data_tdata(11),
      DID => '0',
      DOA => xre_mem_reg_r1_64_127_9_11_n_0,
      DOB => xre_mem_reg_r1_64_127_9_11_n_1,
      DOC => xre_mem_reg_r1_64_127_9_11_n_2,
      DOD => NLW_xre_mem_reg_r1_64_127_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => xre_mem_reg_r1_64_127_0_2_i_1_n_0
    );
xre_mem_reg_r2_0_63_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 1) => m_minus_1(5 downto 1),
      ADDRA(0) => xre_mem_reg_r1_0_63_0_2_i_7_n_0,
      ADDRB(5 downto 1) => m_minus_1(5 downto 1),
      ADDRB(0) => xre_mem_reg_r1_0_63_0_2_i_7_n_0,
      ADDRC(5 downto 1) => m_minus_1(5 downto 1),
      ADDRC(0) => xre_mem_reg_r1_0_63_0_2_i_7_n_0,
      ADDRD(5 downto 0) => m_axis_data_tuser(5 downto 0),
      DIA => m_axis_data_tdata(0),
      DIB => m_axis_data_tdata(1),
      DIC => m_axis_data_tdata(2),
      DID => '0',
      DOA => xre_mem_reg_r2_0_63_0_2_n_0,
      DOB => xre_mem_reg_r2_0_63_0_2_n_1,
      DOC => xre_mem_reg_r2_0_63_0_2_n_2,
      DOD => NLW_xre_mem_reg_r2_0_63_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => xre_mem_reg_r1_0_63_0_2_i_1_n_0
    );
xre_mem_reg_r2_0_63_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA9"
    )
        port map (
      I0 => \m_reg_n_0_[5]\,
      I1 => \m_reg_n_0_[3]\,
      I2 => \m_reg_n_0_[1]\,
      I3 => \m_reg_n_0_[0]\,
      I4 => \m_reg_n_0_[2]\,
      I5 => \m_reg_n_0_[4]\,
      O => m_minus_1(5)
    );
xre_mem_reg_r2_0_63_0_2_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA9"
    )
        port map (
      I0 => \m_reg_n_0_[4]\,
      I1 => \m_reg_n_0_[2]\,
      I2 => \m_reg_n_0_[0]\,
      I3 => \m_reg_n_0_[1]\,
      I4 => \m_reg_n_0_[3]\,
      O => m_minus_1(4)
    );
xre_mem_reg_r2_0_63_0_2_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA9"
    )
        port map (
      I0 => \m_reg_n_0_[3]\,
      I1 => \m_reg_n_0_[1]\,
      I2 => \m_reg_n_0_[0]\,
      I3 => \m_reg_n_0_[2]\,
      O => m_minus_1(3)
    );
xre_mem_reg_r2_0_63_0_2_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => \m_reg_n_0_[2]\,
      I1 => \m_reg_n_0_[0]\,
      I2 => \m_reg_n_0_[1]\,
      O => m_minus_1(2)
    );
xre_mem_reg_r2_0_63_0_2_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \m_reg_n_0_[1]\,
      I1 => \m_reg_n_0_[0]\,
      O => m_minus_1(1)
    );
xre_mem_reg_r2_0_63_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 1) => m_minus_1(5 downto 1),
      ADDRA(0) => xre_mem_reg_r1_0_63_0_2_i_7_n_0,
      ADDRB(5 downto 1) => m_minus_1(5 downto 1),
      ADDRB(0) => xre_mem_reg_r1_0_63_0_2_i_7_n_0,
      ADDRC(5 downto 1) => m_minus_1(5 downto 1),
      ADDRC(0) => xre_mem_reg_r1_0_63_0_2_i_7_n_0,
      ADDRD(5 downto 0) => m_axis_data_tuser(5 downto 0),
      DIA => m_axis_data_tdata(3),
      DIB => m_axis_data_tdata(4),
      DIC => m_axis_data_tdata(5),
      DID => '0',
      DOA => xre_mem_reg_r2_0_63_3_5_n_0,
      DOB => xre_mem_reg_r2_0_63_3_5_n_1,
      DOC => xre_mem_reg_r2_0_63_3_5_n_2,
      DOD => NLW_xre_mem_reg_r2_0_63_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => xre_mem_reg_r1_0_63_0_2_i_1_n_0
    );
xre_mem_reg_r2_0_63_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 1) => m_minus_1(5 downto 1),
      ADDRA(0) => xre_mem_reg_r1_0_63_0_2_i_7_n_0,
      ADDRB(5 downto 1) => m_minus_1(5 downto 1),
      ADDRB(0) => xre_mem_reg_r1_0_63_0_2_i_7_n_0,
      ADDRC(5 downto 1) => m_minus_1(5 downto 1),
      ADDRC(0) => xre_mem_reg_r1_0_63_0_2_i_7_n_0,
      ADDRD(5 downto 0) => m_axis_data_tuser(5 downto 0),
      DIA => m_axis_data_tdata(6),
      DIB => m_axis_data_tdata(7),
      DIC => m_axis_data_tdata(8),
      DID => '0',
      DOA => xre_mem_reg_r2_0_63_6_8_n_0,
      DOB => xre_mem_reg_r2_0_63_6_8_n_1,
      DOC => xre_mem_reg_r2_0_63_6_8_n_2,
      DOD => NLW_xre_mem_reg_r2_0_63_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => xre_mem_reg_r1_0_63_0_2_i_1_n_0
    );
xre_mem_reg_r2_0_63_9_11: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 1) => m_minus_1(5 downto 1),
      ADDRA(0) => xre_mem_reg_r1_0_63_0_2_i_7_n_0,
      ADDRB(5 downto 1) => m_minus_1(5 downto 1),
      ADDRB(0) => xre_mem_reg_r1_0_63_0_2_i_7_n_0,
      ADDRC(5 downto 1) => m_minus_1(5 downto 1),
      ADDRC(0) => xre_mem_reg_r1_0_63_0_2_i_7_n_0,
      ADDRD(5 downto 0) => m_axis_data_tuser(5 downto 0),
      DIA => m_axis_data_tdata(9),
      DIB => m_axis_data_tdata(10),
      DIC => m_axis_data_tdata(11),
      DID => '0',
      DOA => xre_mem_reg_r2_0_63_9_11_n_0,
      DOB => xre_mem_reg_r2_0_63_9_11_n_1,
      DOC => xre_mem_reg_r2_0_63_9_11_n_2,
      DOD => NLW_xre_mem_reg_r2_0_63_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => xre_mem_reg_r1_0_63_0_2_i_1_n_0
    );
xre_mem_reg_r2_128_191_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 1) => m_minus_1(5 downto 1),
      ADDRA(0) => xre_mem_reg_r1_0_63_0_2_i_7_n_0,
      ADDRB(5 downto 1) => m_minus_1(5 downto 1),
      ADDRB(0) => xre_mem_reg_r1_0_63_0_2_i_7_n_0,
      ADDRC(5 downto 1) => m_minus_1(5 downto 1),
      ADDRC(0) => xre_mem_reg_r1_0_63_0_2_i_7_n_0,
      ADDRD(5 downto 0) => m_axis_data_tuser(5 downto 0),
      DIA => m_axis_data_tdata(0),
      DIB => m_axis_data_tdata(1),
      DIC => m_axis_data_tdata(2),
      DID => '0',
      DOA => xre_mem_reg_r2_128_191_0_2_n_0,
      DOB => xre_mem_reg_r2_128_191_0_2_n_1,
      DOC => xre_mem_reg_r2_128_191_0_2_n_2,
      DOD => NLW_xre_mem_reg_r2_128_191_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => xre_mem_reg_r1_128_191_0_2_i_1_n_0
    );
xre_mem_reg_r2_128_191_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 1) => m_minus_1(5 downto 1),
      ADDRA(0) => xre_mem_reg_r1_0_63_0_2_i_7_n_0,
      ADDRB(5 downto 1) => m_minus_1(5 downto 1),
      ADDRB(0) => xre_mem_reg_r1_0_63_0_2_i_7_n_0,
      ADDRC(5 downto 1) => m_minus_1(5 downto 1),
      ADDRC(0) => xre_mem_reg_r1_0_63_0_2_i_7_n_0,
      ADDRD(5 downto 0) => m_axis_data_tuser(5 downto 0),
      DIA => m_axis_data_tdata(3),
      DIB => m_axis_data_tdata(4),
      DIC => m_axis_data_tdata(5),
      DID => '0',
      DOA => xre_mem_reg_r2_128_191_3_5_n_0,
      DOB => xre_mem_reg_r2_128_191_3_5_n_1,
      DOC => xre_mem_reg_r2_128_191_3_5_n_2,
      DOD => NLW_xre_mem_reg_r2_128_191_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => xre_mem_reg_r1_128_191_0_2_i_1_n_0
    );
xre_mem_reg_r2_128_191_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 1) => m_minus_1(5 downto 1),
      ADDRA(0) => xre_mem_reg_r1_0_63_0_2_i_7_n_0,
      ADDRB(5 downto 1) => m_minus_1(5 downto 1),
      ADDRB(0) => xre_mem_reg_r1_0_63_0_2_i_7_n_0,
      ADDRC(5 downto 1) => m_minus_1(5 downto 1),
      ADDRC(0) => xre_mem_reg_r1_0_63_0_2_i_7_n_0,
      ADDRD(5 downto 0) => m_axis_data_tuser(5 downto 0),
      DIA => m_axis_data_tdata(6),
      DIB => m_axis_data_tdata(7),
      DIC => m_axis_data_tdata(8),
      DID => '0',
      DOA => xre_mem_reg_r2_128_191_6_8_n_0,
      DOB => xre_mem_reg_r2_128_191_6_8_n_1,
      DOC => xre_mem_reg_r2_128_191_6_8_n_2,
      DOD => NLW_xre_mem_reg_r2_128_191_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => xre_mem_reg_r1_128_191_0_2_i_1_n_0
    );
xre_mem_reg_r2_128_191_9_11: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 1) => m_minus_1(5 downto 1),
      ADDRA(0) => xre_mem_reg_r1_0_63_0_2_i_7_n_0,
      ADDRB(5 downto 1) => m_minus_1(5 downto 1),
      ADDRB(0) => xre_mem_reg_r1_0_63_0_2_i_7_n_0,
      ADDRC(5 downto 1) => m_minus_1(5 downto 1),
      ADDRC(0) => xre_mem_reg_r1_0_63_0_2_i_7_n_0,
      ADDRD(5 downto 0) => m_axis_data_tuser(5 downto 0),
      DIA => m_axis_data_tdata(9),
      DIB => m_axis_data_tdata(10),
      DIC => m_axis_data_tdata(11),
      DID => '0',
      DOA => xre_mem_reg_r2_128_191_9_11_n_0,
      DOB => xre_mem_reg_r2_128_191_9_11_n_1,
      DOC => xre_mem_reg_r2_128_191_9_11_n_2,
      DOD => NLW_xre_mem_reg_r2_128_191_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => xre_mem_reg_r1_128_191_0_2_i_1_n_0
    );
xre_mem_reg_r2_192_255_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 1) => m_minus_1(5 downto 1),
      ADDRA(0) => xre_mem_reg_r1_0_63_0_2_i_7_n_0,
      ADDRB(5 downto 1) => m_minus_1(5 downto 1),
      ADDRB(0) => xre_mem_reg_r1_0_63_0_2_i_7_n_0,
      ADDRC(5 downto 1) => m_minus_1(5 downto 1),
      ADDRC(0) => xre_mem_reg_r1_0_63_0_2_i_7_n_0,
      ADDRD(5 downto 0) => m_axis_data_tuser(5 downto 0),
      DIA => m_axis_data_tdata(0),
      DIB => m_axis_data_tdata(1),
      DIC => m_axis_data_tdata(2),
      DID => '0',
      DOA => xre_mem_reg_r2_192_255_0_2_n_0,
      DOB => xre_mem_reg_r2_192_255_0_2_n_1,
      DOC => xre_mem_reg_r2_192_255_0_2_n_2,
      DOD => NLW_xre_mem_reg_r2_192_255_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => xre_mem_reg_r1_192_255_0_2_i_1_n_0
    );
xre_mem_reg_r2_192_255_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 1) => m_minus_1(5 downto 1),
      ADDRA(0) => xre_mem_reg_r1_0_63_0_2_i_7_n_0,
      ADDRB(5 downto 1) => m_minus_1(5 downto 1),
      ADDRB(0) => xre_mem_reg_r1_0_63_0_2_i_7_n_0,
      ADDRC(5 downto 1) => m_minus_1(5 downto 1),
      ADDRC(0) => xre_mem_reg_r1_0_63_0_2_i_7_n_0,
      ADDRD(5 downto 0) => m_axis_data_tuser(5 downto 0),
      DIA => m_axis_data_tdata(3),
      DIB => m_axis_data_tdata(4),
      DIC => m_axis_data_tdata(5),
      DID => '0',
      DOA => xre_mem_reg_r2_192_255_3_5_n_0,
      DOB => xre_mem_reg_r2_192_255_3_5_n_1,
      DOC => xre_mem_reg_r2_192_255_3_5_n_2,
      DOD => NLW_xre_mem_reg_r2_192_255_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => xre_mem_reg_r1_192_255_0_2_i_1_n_0
    );
xre_mem_reg_r2_192_255_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 1) => m_minus_1(5 downto 1),
      ADDRA(0) => xre_mem_reg_r1_0_63_0_2_i_7_n_0,
      ADDRB(5 downto 1) => m_minus_1(5 downto 1),
      ADDRB(0) => xre_mem_reg_r1_0_63_0_2_i_7_n_0,
      ADDRC(5 downto 1) => m_minus_1(5 downto 1),
      ADDRC(0) => xre_mem_reg_r1_0_63_0_2_i_7_n_0,
      ADDRD(5 downto 0) => m_axis_data_tuser(5 downto 0),
      DIA => m_axis_data_tdata(6),
      DIB => m_axis_data_tdata(7),
      DIC => m_axis_data_tdata(8),
      DID => '0',
      DOA => xre_mem_reg_r2_192_255_6_8_n_0,
      DOB => xre_mem_reg_r2_192_255_6_8_n_1,
      DOC => xre_mem_reg_r2_192_255_6_8_n_2,
      DOD => NLW_xre_mem_reg_r2_192_255_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => xre_mem_reg_r1_192_255_0_2_i_1_n_0
    );
xre_mem_reg_r2_192_255_9_11: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 1) => m_minus_1(5 downto 1),
      ADDRA(0) => xre_mem_reg_r1_0_63_0_2_i_7_n_0,
      ADDRB(5 downto 1) => m_minus_1(5 downto 1),
      ADDRB(0) => xre_mem_reg_r1_0_63_0_2_i_7_n_0,
      ADDRC(5 downto 1) => m_minus_1(5 downto 1),
      ADDRC(0) => xre_mem_reg_r1_0_63_0_2_i_7_n_0,
      ADDRD(5 downto 0) => m_axis_data_tuser(5 downto 0),
      DIA => m_axis_data_tdata(9),
      DIB => m_axis_data_tdata(10),
      DIC => m_axis_data_tdata(11),
      DID => '0',
      DOA => xre_mem_reg_r2_192_255_9_11_n_0,
      DOB => xre_mem_reg_r2_192_255_9_11_n_1,
      DOC => xre_mem_reg_r2_192_255_9_11_n_2,
      DOD => NLW_xre_mem_reg_r2_192_255_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => xre_mem_reg_r1_192_255_0_2_i_1_n_0
    );
xre_mem_reg_r2_64_127_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 1) => m_minus_1(5 downto 1),
      ADDRA(0) => xre_mem_reg_r1_0_63_0_2_i_7_n_0,
      ADDRB(5 downto 1) => m_minus_1(5 downto 1),
      ADDRB(0) => xre_mem_reg_r1_0_63_0_2_i_7_n_0,
      ADDRC(5 downto 1) => m_minus_1(5 downto 1),
      ADDRC(0) => xre_mem_reg_r1_0_63_0_2_i_7_n_0,
      ADDRD(5 downto 0) => m_axis_data_tuser(5 downto 0),
      DIA => m_axis_data_tdata(0),
      DIB => m_axis_data_tdata(1),
      DIC => m_axis_data_tdata(2),
      DID => '0',
      DOA => xre_mem_reg_r2_64_127_0_2_n_0,
      DOB => xre_mem_reg_r2_64_127_0_2_n_1,
      DOC => xre_mem_reg_r2_64_127_0_2_n_2,
      DOD => NLW_xre_mem_reg_r2_64_127_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => xre_mem_reg_r1_64_127_0_2_i_1_n_0
    );
xre_mem_reg_r2_64_127_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 1) => m_minus_1(5 downto 1),
      ADDRA(0) => xre_mem_reg_r1_0_63_0_2_i_7_n_0,
      ADDRB(5 downto 1) => m_minus_1(5 downto 1),
      ADDRB(0) => xre_mem_reg_r1_0_63_0_2_i_7_n_0,
      ADDRC(5 downto 1) => m_minus_1(5 downto 1),
      ADDRC(0) => xre_mem_reg_r1_0_63_0_2_i_7_n_0,
      ADDRD(5 downto 0) => m_axis_data_tuser(5 downto 0),
      DIA => m_axis_data_tdata(3),
      DIB => m_axis_data_tdata(4),
      DIC => m_axis_data_tdata(5),
      DID => '0',
      DOA => xre_mem_reg_r2_64_127_3_5_n_0,
      DOB => xre_mem_reg_r2_64_127_3_5_n_1,
      DOC => xre_mem_reg_r2_64_127_3_5_n_2,
      DOD => NLW_xre_mem_reg_r2_64_127_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => xre_mem_reg_r1_64_127_0_2_i_1_n_0
    );
xre_mem_reg_r2_64_127_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 1) => m_minus_1(5 downto 1),
      ADDRA(0) => xre_mem_reg_r1_0_63_0_2_i_7_n_0,
      ADDRB(5 downto 1) => m_minus_1(5 downto 1),
      ADDRB(0) => xre_mem_reg_r1_0_63_0_2_i_7_n_0,
      ADDRC(5 downto 1) => m_minus_1(5 downto 1),
      ADDRC(0) => xre_mem_reg_r1_0_63_0_2_i_7_n_0,
      ADDRD(5 downto 0) => m_axis_data_tuser(5 downto 0),
      DIA => m_axis_data_tdata(6),
      DIB => m_axis_data_tdata(7),
      DIC => m_axis_data_tdata(8),
      DID => '0',
      DOA => xre_mem_reg_r2_64_127_6_8_n_0,
      DOB => xre_mem_reg_r2_64_127_6_8_n_1,
      DOC => xre_mem_reg_r2_64_127_6_8_n_2,
      DOD => NLW_xre_mem_reg_r2_64_127_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => xre_mem_reg_r1_64_127_0_2_i_1_n_0
    );
xre_mem_reg_r2_64_127_9_11: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 1) => m_minus_1(5 downto 1),
      ADDRA(0) => xre_mem_reg_r1_0_63_0_2_i_7_n_0,
      ADDRB(5 downto 1) => m_minus_1(5 downto 1),
      ADDRB(0) => xre_mem_reg_r1_0_63_0_2_i_7_n_0,
      ADDRC(5 downto 1) => m_minus_1(5 downto 1),
      ADDRC(0) => xre_mem_reg_r1_0_63_0_2_i_7_n_0,
      ADDRD(5 downto 0) => m_axis_data_tuser(5 downto 0),
      DIA => m_axis_data_tdata(9),
      DIB => m_axis_data_tdata(10),
      DIC => m_axis_data_tdata(11),
      DID => '0',
      DOA => xre_mem_reg_r2_64_127_9_11_n_0,
      DOB => xre_mem_reg_r2_64_127_9_11_n_1,
      DOC => xre_mem_reg_r2_64_127_9_11_n_2,
      DOD => NLW_xre_mem_reg_r2_64_127_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => xre_mem_reg_r1_64_127_0_2_i_1_n_0
    );
xre_mem_reg_r3_0_63_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5) => \m_reg_n_0_[5]\,
      ADDRA(4) => \m_reg_n_0_[4]\,
      ADDRA(3) => \m_reg_n_0_[3]\,
      ADDRA(2) => \m_reg_n_0_[2]\,
      ADDRA(1) => \m_reg_n_0_[1]\,
      ADDRA(0) => \m_reg_n_0_[0]\,
      ADDRB(5) => \m_reg_n_0_[5]\,
      ADDRB(4) => \m_reg_n_0_[4]\,
      ADDRB(3) => \m_reg_n_0_[3]\,
      ADDRB(2) => \m_reg_n_0_[2]\,
      ADDRB(1) => \m_reg_n_0_[1]\,
      ADDRB(0) => \m_reg_n_0_[0]\,
      ADDRC(5) => \m_reg_n_0_[5]\,
      ADDRC(4) => \m_reg_n_0_[4]\,
      ADDRC(3) => \m_reg_n_0_[3]\,
      ADDRC(2) => \m_reg_n_0_[2]\,
      ADDRC(1) => \m_reg_n_0_[1]\,
      ADDRC(0) => \m_reg_n_0_[0]\,
      ADDRD(5 downto 0) => m_axis_data_tuser(5 downto 0),
      DIA => m_axis_data_tdata(0),
      DIB => m_axis_data_tdata(1),
      DIC => m_axis_data_tdata(2),
      DID => '0',
      DOA => xre_mem_reg_r3_0_63_0_2_n_0,
      DOB => xre_mem_reg_r3_0_63_0_2_n_1,
      DOC => xre_mem_reg_r3_0_63_0_2_n_2,
      DOD => NLW_xre_mem_reg_r3_0_63_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => xre_mem_reg_r1_0_63_0_2_i_1_n_0
    );
xre_mem_reg_r3_0_63_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5) => \m_reg_n_0_[5]\,
      ADDRA(4) => \m_reg_n_0_[4]\,
      ADDRA(3) => \m_reg_n_0_[3]\,
      ADDRA(2) => \m_reg_n_0_[2]\,
      ADDRA(1) => \m_reg_n_0_[1]\,
      ADDRA(0) => \m_reg_n_0_[0]\,
      ADDRB(5) => \m_reg_n_0_[5]\,
      ADDRB(4) => \m_reg_n_0_[4]\,
      ADDRB(3) => \m_reg_n_0_[3]\,
      ADDRB(2) => \m_reg_n_0_[2]\,
      ADDRB(1) => \m_reg_n_0_[1]\,
      ADDRB(0) => \m_reg_n_0_[0]\,
      ADDRC(5) => \m_reg_n_0_[5]\,
      ADDRC(4) => \m_reg_n_0_[4]\,
      ADDRC(3) => \m_reg_n_0_[3]\,
      ADDRC(2) => \m_reg_n_0_[2]\,
      ADDRC(1) => \m_reg_n_0_[1]\,
      ADDRC(0) => \m_reg_n_0_[0]\,
      ADDRD(5 downto 0) => m_axis_data_tuser(5 downto 0),
      DIA => m_axis_data_tdata(3),
      DIB => m_axis_data_tdata(4),
      DIC => m_axis_data_tdata(5),
      DID => '0',
      DOA => xre_mem_reg_r3_0_63_3_5_n_0,
      DOB => xre_mem_reg_r3_0_63_3_5_n_1,
      DOC => xre_mem_reg_r3_0_63_3_5_n_2,
      DOD => NLW_xre_mem_reg_r3_0_63_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => xre_mem_reg_r1_0_63_0_2_i_1_n_0
    );
xre_mem_reg_r3_0_63_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5) => \m_reg_n_0_[5]\,
      ADDRA(4) => \m_reg_n_0_[4]\,
      ADDRA(3) => \m_reg_n_0_[3]\,
      ADDRA(2) => \m_reg_n_0_[2]\,
      ADDRA(1) => \m_reg_n_0_[1]\,
      ADDRA(0) => \m_reg_n_0_[0]\,
      ADDRB(5) => \m_reg_n_0_[5]\,
      ADDRB(4) => \m_reg_n_0_[4]\,
      ADDRB(3) => \m_reg_n_0_[3]\,
      ADDRB(2) => \m_reg_n_0_[2]\,
      ADDRB(1) => \m_reg_n_0_[1]\,
      ADDRB(0) => \m_reg_n_0_[0]\,
      ADDRC(5) => \m_reg_n_0_[5]\,
      ADDRC(4) => \m_reg_n_0_[4]\,
      ADDRC(3) => \m_reg_n_0_[3]\,
      ADDRC(2) => \m_reg_n_0_[2]\,
      ADDRC(1) => \m_reg_n_0_[1]\,
      ADDRC(0) => \m_reg_n_0_[0]\,
      ADDRD(5 downto 0) => m_axis_data_tuser(5 downto 0),
      DIA => m_axis_data_tdata(6),
      DIB => m_axis_data_tdata(7),
      DIC => m_axis_data_tdata(8),
      DID => '0',
      DOA => xre_mem_reg_r3_0_63_6_8_n_0,
      DOB => xre_mem_reg_r3_0_63_6_8_n_1,
      DOC => xre_mem_reg_r3_0_63_6_8_n_2,
      DOD => NLW_xre_mem_reg_r3_0_63_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => xre_mem_reg_r1_0_63_0_2_i_1_n_0
    );
xre_mem_reg_r3_0_63_9_11: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5) => \m_reg_n_0_[5]\,
      ADDRA(4) => \m_reg_n_0_[4]\,
      ADDRA(3) => \m_reg_n_0_[3]\,
      ADDRA(2) => \m_reg_n_0_[2]\,
      ADDRA(1) => \m_reg_n_0_[1]\,
      ADDRA(0) => \m_reg_n_0_[0]\,
      ADDRB(5) => \m_reg_n_0_[5]\,
      ADDRB(4) => \m_reg_n_0_[4]\,
      ADDRB(3) => \m_reg_n_0_[3]\,
      ADDRB(2) => \m_reg_n_0_[2]\,
      ADDRB(1) => \m_reg_n_0_[1]\,
      ADDRB(0) => \m_reg_n_0_[0]\,
      ADDRC(5) => \m_reg_n_0_[5]\,
      ADDRC(4) => \m_reg_n_0_[4]\,
      ADDRC(3) => \m_reg_n_0_[3]\,
      ADDRC(2) => \m_reg_n_0_[2]\,
      ADDRC(1) => \m_reg_n_0_[1]\,
      ADDRC(0) => \m_reg_n_0_[0]\,
      ADDRD(5 downto 0) => m_axis_data_tuser(5 downto 0),
      DIA => m_axis_data_tdata(9),
      DIB => m_axis_data_tdata(10),
      DIC => m_axis_data_tdata(11),
      DID => '0',
      DOA => xre_mem_reg_r3_0_63_9_11_n_0,
      DOB => xre_mem_reg_r3_0_63_9_11_n_1,
      DOC => xre_mem_reg_r3_0_63_9_11_n_2,
      DOD => NLW_xre_mem_reg_r3_0_63_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => xre_mem_reg_r1_0_63_0_2_i_1_n_0
    );
xre_mem_reg_r3_128_191_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5) => \m_reg_n_0_[5]\,
      ADDRA(4) => \m_reg_n_0_[4]\,
      ADDRA(3) => \m_reg_n_0_[3]\,
      ADDRA(2) => \m_reg_n_0_[2]\,
      ADDRA(1) => \m_reg_n_0_[1]\,
      ADDRA(0) => \m_reg_n_0_[0]\,
      ADDRB(5) => \m_reg_n_0_[5]\,
      ADDRB(4) => \m_reg_n_0_[4]\,
      ADDRB(3) => \m_reg_n_0_[3]\,
      ADDRB(2) => \m_reg_n_0_[2]\,
      ADDRB(1) => \m_reg_n_0_[1]\,
      ADDRB(0) => \m_reg_n_0_[0]\,
      ADDRC(5) => \m_reg_n_0_[5]\,
      ADDRC(4) => \m_reg_n_0_[4]\,
      ADDRC(3) => \m_reg_n_0_[3]\,
      ADDRC(2) => \m_reg_n_0_[2]\,
      ADDRC(1) => \m_reg_n_0_[1]\,
      ADDRC(0) => \m_reg_n_0_[0]\,
      ADDRD(5 downto 0) => m_axis_data_tuser(5 downto 0),
      DIA => m_axis_data_tdata(0),
      DIB => m_axis_data_tdata(1),
      DIC => m_axis_data_tdata(2),
      DID => '0',
      DOA => xre_mem_reg_r3_128_191_0_2_n_0,
      DOB => xre_mem_reg_r3_128_191_0_2_n_1,
      DOC => xre_mem_reg_r3_128_191_0_2_n_2,
      DOD => NLW_xre_mem_reg_r3_128_191_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => xre_mem_reg_r1_128_191_0_2_i_1_n_0
    );
xre_mem_reg_r3_128_191_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5) => \m_reg_n_0_[5]\,
      ADDRA(4) => \m_reg_n_0_[4]\,
      ADDRA(3) => \m_reg_n_0_[3]\,
      ADDRA(2) => \m_reg_n_0_[2]\,
      ADDRA(1) => \m_reg_n_0_[1]\,
      ADDRA(0) => \m_reg_n_0_[0]\,
      ADDRB(5) => \m_reg_n_0_[5]\,
      ADDRB(4) => \m_reg_n_0_[4]\,
      ADDRB(3) => \m_reg_n_0_[3]\,
      ADDRB(2) => \m_reg_n_0_[2]\,
      ADDRB(1) => \m_reg_n_0_[1]\,
      ADDRB(0) => \m_reg_n_0_[0]\,
      ADDRC(5) => \m_reg_n_0_[5]\,
      ADDRC(4) => \m_reg_n_0_[4]\,
      ADDRC(3) => \m_reg_n_0_[3]\,
      ADDRC(2) => \m_reg_n_0_[2]\,
      ADDRC(1) => \m_reg_n_0_[1]\,
      ADDRC(0) => \m_reg_n_0_[0]\,
      ADDRD(5 downto 0) => m_axis_data_tuser(5 downto 0),
      DIA => m_axis_data_tdata(3),
      DIB => m_axis_data_tdata(4),
      DIC => m_axis_data_tdata(5),
      DID => '0',
      DOA => xre_mem_reg_r3_128_191_3_5_n_0,
      DOB => xre_mem_reg_r3_128_191_3_5_n_1,
      DOC => xre_mem_reg_r3_128_191_3_5_n_2,
      DOD => NLW_xre_mem_reg_r3_128_191_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => xre_mem_reg_r1_128_191_0_2_i_1_n_0
    );
xre_mem_reg_r3_128_191_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5) => \m_reg_n_0_[5]\,
      ADDRA(4) => \m_reg_n_0_[4]\,
      ADDRA(3) => \m_reg_n_0_[3]\,
      ADDRA(2) => \m_reg_n_0_[2]\,
      ADDRA(1) => \m_reg_n_0_[1]\,
      ADDRA(0) => \m_reg_n_0_[0]\,
      ADDRB(5) => \m_reg_n_0_[5]\,
      ADDRB(4) => \m_reg_n_0_[4]\,
      ADDRB(3) => \m_reg_n_0_[3]\,
      ADDRB(2) => \m_reg_n_0_[2]\,
      ADDRB(1) => \m_reg_n_0_[1]\,
      ADDRB(0) => \m_reg_n_0_[0]\,
      ADDRC(5) => \m_reg_n_0_[5]\,
      ADDRC(4) => \m_reg_n_0_[4]\,
      ADDRC(3) => \m_reg_n_0_[3]\,
      ADDRC(2) => \m_reg_n_0_[2]\,
      ADDRC(1) => \m_reg_n_0_[1]\,
      ADDRC(0) => \m_reg_n_0_[0]\,
      ADDRD(5 downto 0) => m_axis_data_tuser(5 downto 0),
      DIA => m_axis_data_tdata(6),
      DIB => m_axis_data_tdata(7),
      DIC => m_axis_data_tdata(8),
      DID => '0',
      DOA => xre_mem_reg_r3_128_191_6_8_n_0,
      DOB => xre_mem_reg_r3_128_191_6_8_n_1,
      DOC => xre_mem_reg_r3_128_191_6_8_n_2,
      DOD => NLW_xre_mem_reg_r3_128_191_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => xre_mem_reg_r1_128_191_0_2_i_1_n_0
    );
xre_mem_reg_r3_128_191_9_11: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5) => \m_reg_n_0_[5]\,
      ADDRA(4) => \m_reg_n_0_[4]\,
      ADDRA(3) => \m_reg_n_0_[3]\,
      ADDRA(2) => \m_reg_n_0_[2]\,
      ADDRA(1) => \m_reg_n_0_[1]\,
      ADDRA(0) => \m_reg_n_0_[0]\,
      ADDRB(5) => \m_reg_n_0_[5]\,
      ADDRB(4) => \m_reg_n_0_[4]\,
      ADDRB(3) => \m_reg_n_0_[3]\,
      ADDRB(2) => \m_reg_n_0_[2]\,
      ADDRB(1) => \m_reg_n_0_[1]\,
      ADDRB(0) => \m_reg_n_0_[0]\,
      ADDRC(5) => \m_reg_n_0_[5]\,
      ADDRC(4) => \m_reg_n_0_[4]\,
      ADDRC(3) => \m_reg_n_0_[3]\,
      ADDRC(2) => \m_reg_n_0_[2]\,
      ADDRC(1) => \m_reg_n_0_[1]\,
      ADDRC(0) => \m_reg_n_0_[0]\,
      ADDRD(5 downto 0) => m_axis_data_tuser(5 downto 0),
      DIA => m_axis_data_tdata(9),
      DIB => m_axis_data_tdata(10),
      DIC => m_axis_data_tdata(11),
      DID => '0',
      DOA => xre_mem_reg_r3_128_191_9_11_n_0,
      DOB => xre_mem_reg_r3_128_191_9_11_n_1,
      DOC => xre_mem_reg_r3_128_191_9_11_n_2,
      DOD => NLW_xre_mem_reg_r3_128_191_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => xre_mem_reg_r1_128_191_0_2_i_1_n_0
    );
xre_mem_reg_r3_192_255_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5) => \m_reg_n_0_[5]\,
      ADDRA(4) => \m_reg_n_0_[4]\,
      ADDRA(3) => \m_reg_n_0_[3]\,
      ADDRA(2) => \m_reg_n_0_[2]\,
      ADDRA(1) => \m_reg_n_0_[1]\,
      ADDRA(0) => \m_reg_n_0_[0]\,
      ADDRB(5) => \m_reg_n_0_[5]\,
      ADDRB(4) => \m_reg_n_0_[4]\,
      ADDRB(3) => \m_reg_n_0_[3]\,
      ADDRB(2) => \m_reg_n_0_[2]\,
      ADDRB(1) => \m_reg_n_0_[1]\,
      ADDRB(0) => \m_reg_n_0_[0]\,
      ADDRC(5) => \m_reg_n_0_[5]\,
      ADDRC(4) => \m_reg_n_0_[4]\,
      ADDRC(3) => \m_reg_n_0_[3]\,
      ADDRC(2) => \m_reg_n_0_[2]\,
      ADDRC(1) => \m_reg_n_0_[1]\,
      ADDRC(0) => \m_reg_n_0_[0]\,
      ADDRD(5 downto 0) => m_axis_data_tuser(5 downto 0),
      DIA => m_axis_data_tdata(0),
      DIB => m_axis_data_tdata(1),
      DIC => m_axis_data_tdata(2),
      DID => '0',
      DOA => xre_mem_reg_r3_192_255_0_2_n_0,
      DOB => xre_mem_reg_r3_192_255_0_2_n_1,
      DOC => xre_mem_reg_r3_192_255_0_2_n_2,
      DOD => NLW_xre_mem_reg_r3_192_255_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => xre_mem_reg_r1_192_255_0_2_i_1_n_0
    );
xre_mem_reg_r3_192_255_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5) => \m_reg_n_0_[5]\,
      ADDRA(4) => \m_reg_n_0_[4]\,
      ADDRA(3) => \m_reg_n_0_[3]\,
      ADDRA(2) => \m_reg_n_0_[2]\,
      ADDRA(1) => \m_reg_n_0_[1]\,
      ADDRA(0) => \m_reg_n_0_[0]\,
      ADDRB(5) => \m_reg_n_0_[5]\,
      ADDRB(4) => \m_reg_n_0_[4]\,
      ADDRB(3) => \m_reg_n_0_[3]\,
      ADDRB(2) => \m_reg_n_0_[2]\,
      ADDRB(1) => \m_reg_n_0_[1]\,
      ADDRB(0) => \m_reg_n_0_[0]\,
      ADDRC(5) => \m_reg_n_0_[5]\,
      ADDRC(4) => \m_reg_n_0_[4]\,
      ADDRC(3) => \m_reg_n_0_[3]\,
      ADDRC(2) => \m_reg_n_0_[2]\,
      ADDRC(1) => \m_reg_n_0_[1]\,
      ADDRC(0) => \m_reg_n_0_[0]\,
      ADDRD(5 downto 0) => m_axis_data_tuser(5 downto 0),
      DIA => m_axis_data_tdata(3),
      DIB => m_axis_data_tdata(4),
      DIC => m_axis_data_tdata(5),
      DID => '0',
      DOA => xre_mem_reg_r3_192_255_3_5_n_0,
      DOB => xre_mem_reg_r3_192_255_3_5_n_1,
      DOC => xre_mem_reg_r3_192_255_3_5_n_2,
      DOD => NLW_xre_mem_reg_r3_192_255_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => xre_mem_reg_r1_192_255_0_2_i_1_n_0
    );
xre_mem_reg_r3_192_255_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5) => \m_reg_n_0_[5]\,
      ADDRA(4) => \m_reg_n_0_[4]\,
      ADDRA(3) => \m_reg_n_0_[3]\,
      ADDRA(2) => \m_reg_n_0_[2]\,
      ADDRA(1) => \m_reg_n_0_[1]\,
      ADDRA(0) => \m_reg_n_0_[0]\,
      ADDRB(5) => \m_reg_n_0_[5]\,
      ADDRB(4) => \m_reg_n_0_[4]\,
      ADDRB(3) => \m_reg_n_0_[3]\,
      ADDRB(2) => \m_reg_n_0_[2]\,
      ADDRB(1) => \m_reg_n_0_[1]\,
      ADDRB(0) => \m_reg_n_0_[0]\,
      ADDRC(5) => \m_reg_n_0_[5]\,
      ADDRC(4) => \m_reg_n_0_[4]\,
      ADDRC(3) => \m_reg_n_0_[3]\,
      ADDRC(2) => \m_reg_n_0_[2]\,
      ADDRC(1) => \m_reg_n_0_[1]\,
      ADDRC(0) => \m_reg_n_0_[0]\,
      ADDRD(5 downto 0) => m_axis_data_tuser(5 downto 0),
      DIA => m_axis_data_tdata(6),
      DIB => m_axis_data_tdata(7),
      DIC => m_axis_data_tdata(8),
      DID => '0',
      DOA => xre_mem_reg_r3_192_255_6_8_n_0,
      DOB => xre_mem_reg_r3_192_255_6_8_n_1,
      DOC => xre_mem_reg_r3_192_255_6_8_n_2,
      DOD => NLW_xre_mem_reg_r3_192_255_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => xre_mem_reg_r1_192_255_0_2_i_1_n_0
    );
xre_mem_reg_r3_192_255_9_11: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5) => \m_reg_n_0_[5]\,
      ADDRA(4) => \m_reg_n_0_[4]\,
      ADDRA(3) => \m_reg_n_0_[3]\,
      ADDRA(2) => \m_reg_n_0_[2]\,
      ADDRA(1) => \m_reg_n_0_[1]\,
      ADDRA(0) => \m_reg_n_0_[0]\,
      ADDRB(5) => \m_reg_n_0_[5]\,
      ADDRB(4) => \m_reg_n_0_[4]\,
      ADDRB(3) => \m_reg_n_0_[3]\,
      ADDRB(2) => \m_reg_n_0_[2]\,
      ADDRB(1) => \m_reg_n_0_[1]\,
      ADDRB(0) => \m_reg_n_0_[0]\,
      ADDRC(5) => \m_reg_n_0_[5]\,
      ADDRC(4) => \m_reg_n_0_[4]\,
      ADDRC(3) => \m_reg_n_0_[3]\,
      ADDRC(2) => \m_reg_n_0_[2]\,
      ADDRC(1) => \m_reg_n_0_[1]\,
      ADDRC(0) => \m_reg_n_0_[0]\,
      ADDRD(5 downto 0) => m_axis_data_tuser(5 downto 0),
      DIA => m_axis_data_tdata(9),
      DIB => m_axis_data_tdata(10),
      DIC => m_axis_data_tdata(11),
      DID => '0',
      DOA => xre_mem_reg_r3_192_255_9_11_n_0,
      DOB => xre_mem_reg_r3_192_255_9_11_n_1,
      DOC => xre_mem_reg_r3_192_255_9_11_n_2,
      DOD => NLW_xre_mem_reg_r3_192_255_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => xre_mem_reg_r1_192_255_0_2_i_1_n_0
    );
xre_mem_reg_r3_64_127_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5) => \m_reg_n_0_[5]\,
      ADDRA(4) => \m_reg_n_0_[4]\,
      ADDRA(3) => \m_reg_n_0_[3]\,
      ADDRA(2) => \m_reg_n_0_[2]\,
      ADDRA(1) => \m_reg_n_0_[1]\,
      ADDRA(0) => \m_reg_n_0_[0]\,
      ADDRB(5) => \m_reg_n_0_[5]\,
      ADDRB(4) => \m_reg_n_0_[4]\,
      ADDRB(3) => \m_reg_n_0_[3]\,
      ADDRB(2) => \m_reg_n_0_[2]\,
      ADDRB(1) => \m_reg_n_0_[1]\,
      ADDRB(0) => \m_reg_n_0_[0]\,
      ADDRC(5) => \m_reg_n_0_[5]\,
      ADDRC(4) => \m_reg_n_0_[4]\,
      ADDRC(3) => \m_reg_n_0_[3]\,
      ADDRC(2) => \m_reg_n_0_[2]\,
      ADDRC(1) => \m_reg_n_0_[1]\,
      ADDRC(0) => \m_reg_n_0_[0]\,
      ADDRD(5 downto 0) => m_axis_data_tuser(5 downto 0),
      DIA => m_axis_data_tdata(0),
      DIB => m_axis_data_tdata(1),
      DIC => m_axis_data_tdata(2),
      DID => '0',
      DOA => xre_mem_reg_r3_64_127_0_2_n_0,
      DOB => xre_mem_reg_r3_64_127_0_2_n_1,
      DOC => xre_mem_reg_r3_64_127_0_2_n_2,
      DOD => NLW_xre_mem_reg_r3_64_127_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => xre_mem_reg_r1_64_127_0_2_i_1_n_0
    );
xre_mem_reg_r3_64_127_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5) => \m_reg_n_0_[5]\,
      ADDRA(4) => \m_reg_n_0_[4]\,
      ADDRA(3) => \m_reg_n_0_[3]\,
      ADDRA(2) => \m_reg_n_0_[2]\,
      ADDRA(1) => \m_reg_n_0_[1]\,
      ADDRA(0) => \m_reg_n_0_[0]\,
      ADDRB(5) => \m_reg_n_0_[5]\,
      ADDRB(4) => \m_reg_n_0_[4]\,
      ADDRB(3) => \m_reg_n_0_[3]\,
      ADDRB(2) => \m_reg_n_0_[2]\,
      ADDRB(1) => \m_reg_n_0_[1]\,
      ADDRB(0) => \m_reg_n_0_[0]\,
      ADDRC(5) => \m_reg_n_0_[5]\,
      ADDRC(4) => \m_reg_n_0_[4]\,
      ADDRC(3) => \m_reg_n_0_[3]\,
      ADDRC(2) => \m_reg_n_0_[2]\,
      ADDRC(1) => \m_reg_n_0_[1]\,
      ADDRC(0) => \m_reg_n_0_[0]\,
      ADDRD(5 downto 0) => m_axis_data_tuser(5 downto 0),
      DIA => m_axis_data_tdata(3),
      DIB => m_axis_data_tdata(4),
      DIC => m_axis_data_tdata(5),
      DID => '0',
      DOA => xre_mem_reg_r3_64_127_3_5_n_0,
      DOB => xre_mem_reg_r3_64_127_3_5_n_1,
      DOC => xre_mem_reg_r3_64_127_3_5_n_2,
      DOD => NLW_xre_mem_reg_r3_64_127_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => xre_mem_reg_r1_64_127_0_2_i_1_n_0
    );
xre_mem_reg_r3_64_127_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5) => \m_reg_n_0_[5]\,
      ADDRA(4) => \m_reg_n_0_[4]\,
      ADDRA(3) => \m_reg_n_0_[3]\,
      ADDRA(2) => \m_reg_n_0_[2]\,
      ADDRA(1) => \m_reg_n_0_[1]\,
      ADDRA(0) => \m_reg_n_0_[0]\,
      ADDRB(5) => \m_reg_n_0_[5]\,
      ADDRB(4) => \m_reg_n_0_[4]\,
      ADDRB(3) => \m_reg_n_0_[3]\,
      ADDRB(2) => \m_reg_n_0_[2]\,
      ADDRB(1) => \m_reg_n_0_[1]\,
      ADDRB(0) => \m_reg_n_0_[0]\,
      ADDRC(5) => \m_reg_n_0_[5]\,
      ADDRC(4) => \m_reg_n_0_[4]\,
      ADDRC(3) => \m_reg_n_0_[3]\,
      ADDRC(2) => \m_reg_n_0_[2]\,
      ADDRC(1) => \m_reg_n_0_[1]\,
      ADDRC(0) => \m_reg_n_0_[0]\,
      ADDRD(5 downto 0) => m_axis_data_tuser(5 downto 0),
      DIA => m_axis_data_tdata(6),
      DIB => m_axis_data_tdata(7),
      DIC => m_axis_data_tdata(8),
      DID => '0',
      DOA => xre_mem_reg_r3_64_127_6_8_n_0,
      DOB => xre_mem_reg_r3_64_127_6_8_n_1,
      DOC => xre_mem_reg_r3_64_127_6_8_n_2,
      DOD => NLW_xre_mem_reg_r3_64_127_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => xre_mem_reg_r1_64_127_0_2_i_1_n_0
    );
xre_mem_reg_r3_64_127_9_11: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5) => \m_reg_n_0_[5]\,
      ADDRA(4) => \m_reg_n_0_[4]\,
      ADDRA(3) => \m_reg_n_0_[3]\,
      ADDRA(2) => \m_reg_n_0_[2]\,
      ADDRA(1) => \m_reg_n_0_[1]\,
      ADDRA(0) => \m_reg_n_0_[0]\,
      ADDRB(5) => \m_reg_n_0_[5]\,
      ADDRB(4) => \m_reg_n_0_[4]\,
      ADDRB(3) => \m_reg_n_0_[3]\,
      ADDRB(2) => \m_reg_n_0_[2]\,
      ADDRB(1) => \m_reg_n_0_[1]\,
      ADDRB(0) => \m_reg_n_0_[0]\,
      ADDRC(5) => \m_reg_n_0_[5]\,
      ADDRC(4) => \m_reg_n_0_[4]\,
      ADDRC(3) => \m_reg_n_0_[3]\,
      ADDRC(2) => \m_reg_n_0_[2]\,
      ADDRC(1) => \m_reg_n_0_[1]\,
      ADDRC(0) => \m_reg_n_0_[0]\,
      ADDRD(5 downto 0) => m_axis_data_tuser(5 downto 0),
      DIA => m_axis_data_tdata(9),
      DIB => m_axis_data_tdata(10),
      DIC => m_axis_data_tdata(11),
      DID => '0',
      DOA => xre_mem_reg_r3_64_127_9_11_n_0,
      DOB => xre_mem_reg_r3_64_127_9_11_n_1,
      DOC => xre_mem_reg_r3_64_127_9_11_n_2,
      DOD => NLW_xre_mem_reg_r3_64_127_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => xre_mem_reg_r1_64_127_0_2_i_1_n_0
    );
\xre_mm1[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => xre_mem_reg_r2_192_255_0_2_n_0,
      I1 => xre_mem_reg_r2_128_191_0_2_n_0,
      I2 => m_minus_1(7),
      I3 => xre_mem_reg_r2_64_127_0_2_n_0,
      I4 => m_minus_1(6),
      I5 => xre_mem_reg_r2_0_63_0_2_n_0,
      O => xre_mm10(0)
    );
\xre_mm1[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => xre_mem_reg_r2_192_255_9_11_n_1,
      I1 => xre_mem_reg_r2_128_191_9_11_n_1,
      I2 => m_minus_1(7),
      I3 => xre_mem_reg_r2_64_127_9_11_n_1,
      I4 => m_minus_1(6),
      I5 => xre_mem_reg_r2_0_63_9_11_n_1,
      O => xre_mm10(10)
    );
\xre_mm1[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => xre_mem_reg_r2_192_255_9_11_n_2,
      I1 => xre_mem_reg_r2_128_191_9_11_n_2,
      I2 => m_minus_1(7),
      I3 => xre_mem_reg_r2_64_127_9_11_n_2,
      I4 => m_minus_1(6),
      I5 => xre_mem_reg_r2_0_63_9_11_n_2,
      O => xre_mm10(11)
    );
\xre_mm1[11]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => \m_reg_n_0_[6]\,
      I1 => \xre_mm1[11]_i_4_n_0\,
      I2 => \m_reg_n_0_[7]\,
      O => m_minus_1(7)
    );
\xre_mm1[11]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \m_reg_n_0_[6]\,
      I1 => \xre_mm1[11]_i_4_n_0\,
      O => m_minus_1(6)
    );
\xre_mm1[11]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \m_reg_n_0_[4]\,
      I1 => \m_reg_n_0_[2]\,
      I2 => \m_reg_n_0_[0]\,
      I3 => \m_reg_n_0_[1]\,
      I4 => \m_reg_n_0_[3]\,
      I5 => \m_reg_n_0_[5]\,
      O => \xre_mm1[11]_i_4_n_0\
    );
\xre_mm1[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => xre_mem_reg_r2_192_255_0_2_n_1,
      I1 => xre_mem_reg_r2_128_191_0_2_n_1,
      I2 => m_minus_1(7),
      I3 => xre_mem_reg_r2_64_127_0_2_n_1,
      I4 => m_minus_1(6),
      I5 => xre_mem_reg_r2_0_63_0_2_n_1,
      O => xre_mm10(1)
    );
\xre_mm1[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => xre_mem_reg_r2_192_255_0_2_n_2,
      I1 => xre_mem_reg_r2_128_191_0_2_n_2,
      I2 => m_minus_1(7),
      I3 => xre_mem_reg_r2_64_127_0_2_n_2,
      I4 => m_minus_1(6),
      I5 => xre_mem_reg_r2_0_63_0_2_n_2,
      O => xre_mm10(2)
    );
\xre_mm1[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => xre_mem_reg_r2_192_255_3_5_n_0,
      I1 => xre_mem_reg_r2_128_191_3_5_n_0,
      I2 => m_minus_1(7),
      I3 => xre_mem_reg_r2_64_127_3_5_n_0,
      I4 => m_minus_1(6),
      I5 => xre_mem_reg_r2_0_63_3_5_n_0,
      O => xre_mm10(3)
    );
\xre_mm1[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => xre_mem_reg_r2_192_255_3_5_n_1,
      I1 => xre_mem_reg_r2_128_191_3_5_n_1,
      I2 => m_minus_1(7),
      I3 => xre_mem_reg_r2_64_127_3_5_n_1,
      I4 => m_minus_1(6),
      I5 => xre_mem_reg_r2_0_63_3_5_n_1,
      O => xre_mm10(4)
    );
\xre_mm1[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => xre_mem_reg_r2_192_255_3_5_n_2,
      I1 => xre_mem_reg_r2_128_191_3_5_n_2,
      I2 => m_minus_1(7),
      I3 => xre_mem_reg_r2_64_127_3_5_n_2,
      I4 => m_minus_1(6),
      I5 => xre_mem_reg_r2_0_63_3_5_n_2,
      O => xre_mm10(5)
    );
\xre_mm1[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => xre_mem_reg_r2_192_255_6_8_n_0,
      I1 => xre_mem_reg_r2_128_191_6_8_n_0,
      I2 => m_minus_1(7),
      I3 => xre_mem_reg_r2_64_127_6_8_n_0,
      I4 => m_minus_1(6),
      I5 => xre_mem_reg_r2_0_63_6_8_n_0,
      O => xre_mm10(6)
    );
\xre_mm1[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => xre_mem_reg_r2_192_255_6_8_n_1,
      I1 => xre_mem_reg_r2_128_191_6_8_n_1,
      I2 => m_minus_1(7),
      I3 => xre_mem_reg_r2_64_127_6_8_n_1,
      I4 => m_minus_1(6),
      I5 => xre_mem_reg_r2_0_63_6_8_n_1,
      O => xre_mm10(7)
    );
\xre_mm1[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => xre_mem_reg_r2_192_255_6_8_n_2,
      I1 => xre_mem_reg_r2_128_191_6_8_n_2,
      I2 => m_minus_1(7),
      I3 => xre_mem_reg_r2_64_127_6_8_n_2,
      I4 => m_minus_1(6),
      I5 => xre_mem_reg_r2_0_63_6_8_n_2,
      O => xre_mm10(8)
    );
\xre_mm1[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => xre_mem_reg_r2_192_255_9_11_n_0,
      I1 => xre_mem_reg_r2_128_191_9_11_n_0,
      I2 => m_minus_1(7),
      I3 => xre_mem_reg_r2_64_127_9_11_n_0,
      I4 => m_minus_1(6),
      I5 => xre_mem_reg_r2_0_63_9_11_n_0,
      O => xre_mm10(9)
    );
\xre_mm1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => xre_mm10(0),
      Q => xre_mm1(0),
      R => \^sr\(0)
    );
\xre_mm1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => xre_mm10(10),
      Q => xre_mm1(10),
      R => \^sr\(0)
    );
\xre_mm1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => xre_mm10(11),
      Q => xre_mm1(11),
      R => \^sr\(0)
    );
\xre_mm1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => xre_mm10(1),
      Q => xre_mm1(1),
      R => \^sr\(0)
    );
\xre_mm1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => xre_mm10(2),
      Q => xre_mm1(2),
      R => \^sr\(0)
    );
\xre_mm1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => xre_mm10(3),
      Q => xre_mm1(3),
      R => \^sr\(0)
    );
\xre_mm1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => xre_mm10(4),
      Q => xre_mm1(4),
      R => \^sr\(0)
    );
\xre_mm1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => xre_mm10(5),
      Q => xre_mm1(5),
      R => \^sr\(0)
    );
\xre_mm1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => xre_mm10(6),
      Q => xre_mm1(6),
      R => \^sr\(0)
    );
\xre_mm1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => xre_mm10(7),
      Q => xre_mm1(7),
      R => \^sr\(0)
    );
\xre_mm1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => xre_mm10(8),
      Q => xre_mm1(8),
      R => \^sr\(0)
    );
\xre_mm1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => xre_mm10(9),
      Q => xre_mm1(9),
      R => \^sr\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_fft_pl_ps_0_0_fft_freqwin_top_part4 is
  port (
    rst_n_0 : out STD_LOGIC;
    peak_valid_dbg : out STD_LOGIC;
    \frame_count_reg[4]\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    peak_index_dbg : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \peak_value_reg[24]\ : out STD_LOGIC_VECTOR ( 24 downto 0 );
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    m_axis_data_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_data_tvalid : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \abs_sq_value_reg[3]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_fft_pl_ps_0_0_fft_freqwin_top_part4 : entity is "fft_freqwin_top_part4";
end system_fft_pl_ps_0_0_fft_freqwin_top_part4;

architecture STRUCTURE of system_fft_pl_ps_0_0_fft_freqwin_top_part4 is
  component system_fft_pl_ps_0_0_xfft_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_config_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_config_tvalid : in STD_LOGIC;
    s_axis_config_tready : out STD_LOGIC;
    s_axis_data_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_data_tvalid : in STD_LOGIC;
    s_axis_data_tready : out STD_LOGIC;
    s_axis_data_tlast : in STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_data_tuser : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_data_tvalid : out STD_LOGIC;
    m_axis_data_tready : in STD_LOGIC;
    m_axis_data_tlast : out STD_LOGIC;
    event_frame_started : out STD_LOGIC;
    event_tlast_unexpected : out STD_LOGIC;
    event_tlast_missing : out STD_LOGIC;
    event_status_channel_halt : out STD_LOGIC;
    event_data_in_channel_halt : out STD_LOGIC;
    event_data_out_channel_halt : out STD_LOGIC
  );
  end component system_fft_pl_ps_0_0_xfft_0;
  signal abs_im_d0 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal abs_imag_sq_d10_n_100 : STD_LOGIC;
  signal abs_imag_sq_d10_n_101 : STD_LOGIC;
  signal abs_imag_sq_d10_n_102 : STD_LOGIC;
  signal abs_imag_sq_d10_n_103 : STD_LOGIC;
  signal abs_imag_sq_d10_n_104 : STD_LOGIC;
  signal abs_imag_sq_d10_n_105 : STD_LOGIC;
  signal abs_imag_sq_d10_n_82 : STD_LOGIC;
  signal abs_imag_sq_d10_n_83 : STD_LOGIC;
  signal abs_imag_sq_d10_n_84 : STD_LOGIC;
  signal abs_imag_sq_d10_n_85 : STD_LOGIC;
  signal abs_imag_sq_d10_n_86 : STD_LOGIC;
  signal abs_imag_sq_d10_n_87 : STD_LOGIC;
  signal abs_imag_sq_d10_n_88 : STD_LOGIC;
  signal abs_imag_sq_d10_n_89 : STD_LOGIC;
  signal abs_imag_sq_d10_n_90 : STD_LOGIC;
  signal abs_imag_sq_d10_n_91 : STD_LOGIC;
  signal abs_imag_sq_d10_n_92 : STD_LOGIC;
  signal abs_imag_sq_d10_n_93 : STD_LOGIC;
  signal abs_imag_sq_d10_n_94 : STD_LOGIC;
  signal abs_imag_sq_d10_n_95 : STD_LOGIC;
  signal abs_imag_sq_d10_n_96 : STD_LOGIC;
  signal abs_imag_sq_d10_n_97 : STD_LOGIC;
  signal abs_imag_sq_d10_n_98 : STD_LOGIC;
  signal abs_imag_sq_d10_n_99 : STD_LOGIC;
  signal abs_index_d0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal abs_index_d1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \abs_index_d2_reg_n_0_[0]\ : STD_LOGIC;
  signal \abs_index_d2_reg_n_0_[1]\ : STD_LOGIC;
  signal \abs_index_d2_reg_n_0_[2]\ : STD_LOGIC;
  signal \abs_index_d2_reg_n_0_[3]\ : STD_LOGIC;
  signal \abs_index_d2_reg_n_0_[4]\ : STD_LOGIC;
  signal \abs_index_d2_reg_n_0_[5]\ : STD_LOGIC;
  signal \abs_index_d2_reg_n_0_[6]\ : STD_LOGIC;
  signal \abs_index_d2_reg_n_0_[7]\ : STD_LOGIC;
  signal abs_last_d0 : STD_LOGIC;
  signal abs_last_d1 : STD_LOGIC;
  signal abs_last_d2_reg_n_0 : STD_LOGIC;
  signal abs_re_d0 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal abs_real_sq_d1 : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal abs_real_sq_d10_n_100 : STD_LOGIC;
  signal abs_real_sq_d10_n_101 : STD_LOGIC;
  signal abs_real_sq_d10_n_102 : STD_LOGIC;
  signal abs_real_sq_d10_n_103 : STD_LOGIC;
  signal abs_real_sq_d10_n_104 : STD_LOGIC;
  signal abs_real_sq_d10_n_105 : STD_LOGIC;
  signal abs_real_sq_d10_n_82 : STD_LOGIC;
  signal abs_real_sq_d10_n_83 : STD_LOGIC;
  signal abs_real_sq_d10_n_84 : STD_LOGIC;
  signal abs_real_sq_d10_n_85 : STD_LOGIC;
  signal abs_real_sq_d10_n_86 : STD_LOGIC;
  signal abs_real_sq_d10_n_87 : STD_LOGIC;
  signal abs_real_sq_d10_n_88 : STD_LOGIC;
  signal abs_real_sq_d10_n_89 : STD_LOGIC;
  signal abs_real_sq_d10_n_90 : STD_LOGIC;
  signal abs_real_sq_d10_n_91 : STD_LOGIC;
  signal abs_real_sq_d10_n_92 : STD_LOGIC;
  signal abs_real_sq_d10_n_93 : STD_LOGIC;
  signal abs_real_sq_d10_n_94 : STD_LOGIC;
  signal abs_real_sq_d10_n_95 : STD_LOGIC;
  signal abs_real_sq_d10_n_96 : STD_LOGIC;
  signal abs_real_sq_d10_n_97 : STD_LOGIC;
  signal abs_real_sq_d10_n_98 : STD_LOGIC;
  signal abs_real_sq_d10_n_99 : STD_LOGIC;
  signal abs_sq_value : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal \abs_sq_value[11]_i_6_n_0\ : STD_LOGIC;
  signal \abs_sq_value[11]_i_7_n_0\ : STD_LOGIC;
  signal \abs_sq_value[11]_i_8_n_0\ : STD_LOGIC;
  signal \abs_sq_value[11]_i_9_n_0\ : STD_LOGIC;
  signal \abs_sq_value[15]_i_6_n_0\ : STD_LOGIC;
  signal \abs_sq_value[15]_i_7_n_0\ : STD_LOGIC;
  signal \abs_sq_value[15]_i_8_n_0\ : STD_LOGIC;
  signal \abs_sq_value[15]_i_9_n_0\ : STD_LOGIC;
  signal \abs_sq_value[19]_i_6_n_0\ : STD_LOGIC;
  signal \abs_sq_value[19]_i_7_n_0\ : STD_LOGIC;
  signal \abs_sq_value[19]_i_8_n_0\ : STD_LOGIC;
  signal \abs_sq_value[19]_i_9_n_0\ : STD_LOGIC;
  signal \abs_sq_value[23]_i_6_n_0\ : STD_LOGIC;
  signal \abs_sq_value[23]_i_7_n_0\ : STD_LOGIC;
  signal \abs_sq_value[23]_i_8_n_0\ : STD_LOGIC;
  signal \abs_sq_value[23]_i_9_n_0\ : STD_LOGIC;
  signal \abs_sq_value[3]_i_6_n_0\ : STD_LOGIC;
  signal \abs_sq_value[3]_i_7_n_0\ : STD_LOGIC;
  signal \abs_sq_value[3]_i_8_n_0\ : STD_LOGIC;
  signal \abs_sq_value[3]_i_9_n_0\ : STD_LOGIC;
  signal \abs_sq_value[7]_i_6_n_0\ : STD_LOGIC;
  signal \abs_sq_value[7]_i_7_n_0\ : STD_LOGIC;
  signal \abs_sq_value[7]_i_8_n_0\ : STD_LOGIC;
  signal \abs_sq_value[7]_i_9_n_0\ : STD_LOGIC;
  signal \abs_sq_value_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \abs_sq_value_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \abs_sq_value_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \abs_sq_value_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \abs_sq_value_reg[11]_i_1_n_4\ : STD_LOGIC;
  signal \abs_sq_value_reg[11]_i_1_n_5\ : STD_LOGIC;
  signal \abs_sq_value_reg[11]_i_1_n_6\ : STD_LOGIC;
  signal \abs_sq_value_reg[11]_i_1_n_7\ : STD_LOGIC;
  signal \abs_sq_value_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \abs_sq_value_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \abs_sq_value_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \abs_sq_value_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \abs_sq_value_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \abs_sq_value_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \abs_sq_value_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \abs_sq_value_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \abs_sq_value_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \abs_sq_value_reg[19]_i_1_n_1\ : STD_LOGIC;
  signal \abs_sq_value_reg[19]_i_1_n_2\ : STD_LOGIC;
  signal \abs_sq_value_reg[19]_i_1_n_3\ : STD_LOGIC;
  signal \abs_sq_value_reg[19]_i_1_n_4\ : STD_LOGIC;
  signal \abs_sq_value_reg[19]_i_1_n_5\ : STD_LOGIC;
  signal \abs_sq_value_reg[19]_i_1_n_6\ : STD_LOGIC;
  signal \abs_sq_value_reg[19]_i_1_n_7\ : STD_LOGIC;
  signal \abs_sq_value_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \abs_sq_value_reg[23]_i_1_n_1\ : STD_LOGIC;
  signal \abs_sq_value_reg[23]_i_1_n_2\ : STD_LOGIC;
  signal \abs_sq_value_reg[23]_i_1_n_3\ : STD_LOGIC;
  signal \abs_sq_value_reg[23]_i_1_n_4\ : STD_LOGIC;
  signal \abs_sq_value_reg[23]_i_1_n_5\ : STD_LOGIC;
  signal \abs_sq_value_reg[23]_i_1_n_6\ : STD_LOGIC;
  signal \abs_sq_value_reg[23]_i_1_n_7\ : STD_LOGIC;
  signal \abs_sq_value_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \abs_sq_value_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \abs_sq_value_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \abs_sq_value_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \abs_sq_value_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \abs_sq_value_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \abs_sq_value_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \abs_sq_value_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \abs_sq_value_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \abs_sq_value_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \abs_sq_value_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \abs_sq_value_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \abs_sq_value_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \abs_sq_value_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \abs_sq_value_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \abs_sq_value_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \abs_sq_value_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal abs_valid_d0 : STD_LOGIC;
  signal abs_valid_d1 : STD_LOGIC;
  signal abs_valid_d2_reg_n_0 : STD_LOGIC;
  signal config_done : STD_LOGIC;
  signal config_done_i_1_n_0 : STD_LOGIC;
  signal config_ready : STD_LOGIC;
  signal config_valid : STD_LOGIC;
  signal config_valid_i_1_n_0 : STD_LOGIC;
  signal fft_in_ready : STD_LOGIC;
  signal fft_in_tlast : STD_LOGIC;
  signal fft_in_tvalid : STD_LOGIC;
  signal fft_out_tdata : STD_LOGIC_VECTOR ( 27 downto 0 );
  signal fft_out_tlast : STD_LOGIC;
  signal fft_out_tuser : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal fft_out_tvalid : STD_LOGIC;
  signal \^frame_count_reg[4]\ : STD_LOGIC;
  signal \^rst_n_0\ : STD_LOGIC;
  signal xk_im_out : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal xk_index_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xk_last_out : STD_LOGIC;
  signal xk_re_out : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal xk_valid_out : STD_LOGIC;
  signal NLW_abs_imag_sq_d10_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_abs_imag_sq_d10_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_abs_imag_sq_d10_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_abs_imag_sq_d10_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_abs_imag_sq_d10_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_abs_imag_sq_d10_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_abs_imag_sq_d10_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_abs_imag_sq_d10_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_abs_imag_sq_d10_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_abs_imag_sq_d10_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 24 );
  signal NLW_abs_imag_sq_d10_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_abs_real_sq_d10_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_abs_real_sq_d10_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_abs_real_sq_d10_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_abs_real_sq_d10_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_abs_real_sq_d10_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_abs_real_sq_d10_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_abs_real_sq_d10_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_abs_real_sq_d10_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_abs_real_sq_d10_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_abs_real_sq_d10_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 24 );
  signal NLW_abs_real_sq_d10_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_abs_sq_value_reg[24]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_abs_sq_value_reg[24]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_u_xfft_0_event_data_in_channel_halt_UNCONNECTED : STD_LOGIC;
  signal NLW_u_xfft_0_event_data_out_channel_halt_UNCONNECTED : STD_LOGIC;
  signal NLW_u_xfft_0_event_frame_started_UNCONNECTED : STD_LOGIC;
  signal NLW_u_xfft_0_event_status_channel_halt_UNCONNECTED : STD_LOGIC;
  signal NLW_u_xfft_0_event_tlast_missing_UNCONNECTED : STD_LOGIC;
  signal NLW_u_xfft_0_event_tlast_unexpected_UNCONNECTED : STD_LOGIC;
  signal NLW_u_xfft_0_m_axis_data_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 12 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of abs_imag_sq_d10 : label is "{SYNTH-12 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of abs_real_sq_d10 : label is "{SYNTH-12 {cell *THIS*}}";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of config_done_i_1 : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \frame_count[7]_i_1\ : label is "soft_lutpair23";
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of u_xfft_0 : label is "xfft_0,xfft_v9_1_13,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of u_xfft_0 : label is "yes";
  attribute x_core_info : string;
  attribute x_core_info of u_xfft_0 : label is "xfft_v9_1_13,Vivado 2024.2";
  attribute SOFT_HLUTNM of u_xfft_0_i_1 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of u_xfft_0_i_2 : label is "soft_lutpair22";
begin
  \frame_count_reg[4]\ <= \^frame_count_reg[4]\;
  rst_n_0 <= \^rst_n_0\;
\abs_im_d0_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => xk_im_out(0),
      Q => abs_im_d0(0)
    );
\abs_im_d0_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => xk_im_out(10),
      Q => abs_im_d0(10)
    );
\abs_im_d0_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => xk_im_out(11),
      Q => abs_im_d0(11)
    );
\abs_im_d0_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => xk_im_out(1),
      Q => abs_im_d0(1)
    );
\abs_im_d0_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => xk_im_out(2),
      Q => abs_im_d0(2)
    );
\abs_im_d0_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => xk_im_out(3),
      Q => abs_im_d0(3)
    );
\abs_im_d0_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => xk_im_out(4),
      Q => abs_im_d0(4)
    );
\abs_im_d0_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => xk_im_out(5),
      Q => abs_im_d0(5)
    );
\abs_im_d0_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => xk_im_out(6),
      Q => abs_im_d0(6)
    );
\abs_im_d0_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => xk_im_out(7),
      Q => abs_im_d0(7)
    );
\abs_im_d0_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => xk_im_out(8),
      Q => abs_im_d0(8)
    );
\abs_im_d0_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => xk_im_out(9),
      Q => abs_im_d0(9)
    );
abs_imag_sq_d10: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => abs_im_d0(11),
      A(28) => abs_im_d0(11),
      A(27) => abs_im_d0(11),
      A(26) => abs_im_d0(11),
      A(25) => abs_im_d0(11),
      A(24) => abs_im_d0(11),
      A(23) => abs_im_d0(11),
      A(22) => abs_im_d0(11),
      A(21) => abs_im_d0(11),
      A(20) => abs_im_d0(11),
      A(19) => abs_im_d0(11),
      A(18) => abs_im_d0(11),
      A(17) => abs_im_d0(11),
      A(16) => abs_im_d0(11),
      A(15) => abs_im_d0(11),
      A(14) => abs_im_d0(11),
      A(13) => abs_im_d0(11),
      A(12) => abs_im_d0(11),
      A(11 downto 0) => abs_im_d0(11 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_abs_imag_sq_d10_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => abs_im_d0(11),
      B(16) => abs_im_d0(11),
      B(15) => abs_im_d0(11),
      B(14) => abs_im_d0(11),
      B(13) => abs_im_d0(11),
      B(12) => abs_im_d0(11),
      B(11 downto 0) => abs_im_d0(11 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_abs_imag_sq_d10_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_abs_imag_sq_d10_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_abs_imag_sq_d10_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '1',
      CLK => clk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_abs_imag_sq_d10_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_abs_imag_sq_d10_OVERFLOW_UNCONNECTED,
      P(47 downto 24) => NLW_abs_imag_sq_d10_P_UNCONNECTED(47 downto 24),
      P(23) => abs_imag_sq_d10_n_82,
      P(22) => abs_imag_sq_d10_n_83,
      P(21) => abs_imag_sq_d10_n_84,
      P(20) => abs_imag_sq_d10_n_85,
      P(19) => abs_imag_sq_d10_n_86,
      P(18) => abs_imag_sq_d10_n_87,
      P(17) => abs_imag_sq_d10_n_88,
      P(16) => abs_imag_sq_d10_n_89,
      P(15) => abs_imag_sq_d10_n_90,
      P(14) => abs_imag_sq_d10_n_91,
      P(13) => abs_imag_sq_d10_n_92,
      P(12) => abs_imag_sq_d10_n_93,
      P(11) => abs_imag_sq_d10_n_94,
      P(10) => abs_imag_sq_d10_n_95,
      P(9) => abs_imag_sq_d10_n_96,
      P(8) => abs_imag_sq_d10_n_97,
      P(7) => abs_imag_sq_d10_n_98,
      P(6) => abs_imag_sq_d10_n_99,
      P(5) => abs_imag_sq_d10_n_100,
      P(4) => abs_imag_sq_d10_n_101,
      P(3) => abs_imag_sq_d10_n_102,
      P(2) => abs_imag_sq_d10_n_103,
      P(1) => abs_imag_sq_d10_n_104,
      P(0) => abs_imag_sq_d10_n_105,
      PATTERNBDETECT => NLW_abs_imag_sq_d10_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_abs_imag_sq_d10_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_abs_imag_sq_d10_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_abs_imag_sq_d10_UNDERFLOW_UNCONNECTED
    );
\abs_index_d0_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => xk_index_out(0),
      Q => abs_index_d0(0)
    );
\abs_index_d0_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => xk_index_out(1),
      Q => abs_index_d0(1)
    );
\abs_index_d0_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => xk_index_out(2),
      Q => abs_index_d0(2)
    );
\abs_index_d0_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => xk_index_out(3),
      Q => abs_index_d0(3)
    );
\abs_index_d0_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => xk_index_out(4),
      Q => abs_index_d0(4)
    );
\abs_index_d0_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => xk_index_out(5),
      Q => abs_index_d0(5)
    );
\abs_index_d0_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => xk_index_out(6),
      Q => abs_index_d0(6)
    );
\abs_index_d0_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => xk_index_out(7),
      Q => abs_index_d0(7)
    );
\abs_index_d1_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => abs_index_d0(0),
      Q => abs_index_d1(0)
    );
\abs_index_d1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => abs_index_d0(1),
      Q => abs_index_d1(1)
    );
\abs_index_d1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => abs_index_d0(2),
      Q => abs_index_d1(2)
    );
\abs_index_d1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => abs_index_d0(3),
      Q => abs_index_d1(3)
    );
\abs_index_d1_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => abs_index_d0(4),
      Q => abs_index_d1(4)
    );
\abs_index_d1_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => abs_index_d0(5),
      Q => abs_index_d1(5)
    );
\abs_index_d1_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => abs_index_d0(6),
      Q => abs_index_d1(6)
    );
\abs_index_d1_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => abs_index_d0(7),
      Q => abs_index_d1(7)
    );
\abs_index_d2_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => abs_index_d1(0),
      Q => \abs_index_d2_reg_n_0_[0]\
    );
\abs_index_d2_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => abs_index_d1(1),
      Q => \abs_index_d2_reg_n_0_[1]\
    );
\abs_index_d2_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => abs_index_d1(2),
      Q => \abs_index_d2_reg_n_0_[2]\
    );
\abs_index_d2_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => abs_index_d1(3),
      Q => \abs_index_d2_reg_n_0_[3]\
    );
\abs_index_d2_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => abs_index_d1(4),
      Q => \abs_index_d2_reg_n_0_[4]\
    );
\abs_index_d2_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => abs_index_d1(5),
      Q => \abs_index_d2_reg_n_0_[5]\
    );
\abs_index_d2_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => abs_index_d1(6),
      Q => \abs_index_d2_reg_n_0_[6]\
    );
\abs_index_d2_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => abs_index_d1(7),
      Q => \abs_index_d2_reg_n_0_[7]\
    );
abs_last_d0_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => xk_last_out,
      Q => abs_last_d0
    );
abs_last_d1_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => abs_last_d0,
      Q => abs_last_d1
    );
abs_last_d2_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => abs_last_d1,
      Q => abs_last_d2_reg_n_0
    );
\abs_re_d0_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => xk_re_out(0),
      Q => abs_re_d0(0)
    );
\abs_re_d0_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => xk_re_out(10),
      Q => abs_re_d0(10)
    );
\abs_re_d0_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => xk_re_out(11),
      Q => abs_re_d0(11)
    );
\abs_re_d0_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => xk_re_out(1),
      Q => abs_re_d0(1)
    );
\abs_re_d0_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => xk_re_out(2),
      Q => abs_re_d0(2)
    );
\abs_re_d0_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => xk_re_out(3),
      Q => abs_re_d0(3)
    );
\abs_re_d0_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => xk_re_out(4),
      Q => abs_re_d0(4)
    );
\abs_re_d0_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => xk_re_out(5),
      Q => abs_re_d0(5)
    );
\abs_re_d0_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => xk_re_out(6),
      Q => abs_re_d0(6)
    );
\abs_re_d0_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => xk_re_out(7),
      Q => abs_re_d0(7)
    );
\abs_re_d0_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => xk_re_out(8),
      Q => abs_re_d0(8)
    );
\abs_re_d0_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => xk_re_out(9),
      Q => abs_re_d0(9)
    );
abs_real_sq_d10: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => abs_re_d0(11),
      A(28) => abs_re_d0(11),
      A(27) => abs_re_d0(11),
      A(26) => abs_re_d0(11),
      A(25) => abs_re_d0(11),
      A(24) => abs_re_d0(11),
      A(23) => abs_re_d0(11),
      A(22) => abs_re_d0(11),
      A(21) => abs_re_d0(11),
      A(20) => abs_re_d0(11),
      A(19) => abs_re_d0(11),
      A(18) => abs_re_d0(11),
      A(17) => abs_re_d0(11),
      A(16) => abs_re_d0(11),
      A(15) => abs_re_d0(11),
      A(14) => abs_re_d0(11),
      A(13) => abs_re_d0(11),
      A(12) => abs_re_d0(11),
      A(11 downto 0) => abs_re_d0(11 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_abs_real_sq_d10_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => abs_re_d0(11),
      B(16) => abs_re_d0(11),
      B(15) => abs_re_d0(11),
      B(14) => abs_re_d0(11),
      B(13) => abs_re_d0(11),
      B(12) => abs_re_d0(11),
      B(11 downto 0) => abs_re_d0(11 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_abs_real_sq_d10_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_abs_real_sq_d10_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_abs_real_sq_d10_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '1',
      CLK => clk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_abs_real_sq_d10_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_abs_real_sq_d10_OVERFLOW_UNCONNECTED,
      P(47 downto 24) => NLW_abs_real_sq_d10_P_UNCONNECTED(47 downto 24),
      P(23) => abs_real_sq_d10_n_82,
      P(22) => abs_real_sq_d10_n_83,
      P(21) => abs_real_sq_d10_n_84,
      P(20) => abs_real_sq_d10_n_85,
      P(19) => abs_real_sq_d10_n_86,
      P(18) => abs_real_sq_d10_n_87,
      P(17) => abs_real_sq_d10_n_88,
      P(16) => abs_real_sq_d10_n_89,
      P(15) => abs_real_sq_d10_n_90,
      P(14) => abs_real_sq_d10_n_91,
      P(13) => abs_real_sq_d10_n_92,
      P(12) => abs_real_sq_d10_n_93,
      P(11) => abs_real_sq_d10_n_94,
      P(10) => abs_real_sq_d10_n_95,
      P(9) => abs_real_sq_d10_n_96,
      P(8) => abs_real_sq_d10_n_97,
      P(7) => abs_real_sq_d10_n_98,
      P(6) => abs_real_sq_d10_n_99,
      P(5) => abs_real_sq_d10_n_100,
      P(4) => abs_real_sq_d10_n_101,
      P(3) => abs_real_sq_d10_n_102,
      P(2) => abs_real_sq_d10_n_103,
      P(1) => abs_real_sq_d10_n_104,
      P(0) => abs_real_sq_d10_n_105,
      PATTERNBDETECT => NLW_abs_real_sq_d10_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_abs_real_sq_d10_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_abs_real_sq_d10_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_abs_real_sq_d10_UNDERFLOW_UNCONNECTED
    );
\abs_sq_value[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => abs_real_sq_d10_n_94,
      I1 => \abs_sq_value_reg[3]_0\,
      O => abs_real_sq_d1(11)
    );
\abs_sq_value[11]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => abs_real_sq_d10_n_95,
      I1 => \abs_sq_value_reg[3]_0\,
      O => abs_real_sq_d1(10)
    );
\abs_sq_value[11]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => abs_real_sq_d10_n_96,
      I1 => \abs_sq_value_reg[3]_0\,
      O => abs_real_sq_d1(9)
    );
\abs_sq_value[11]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => abs_real_sq_d10_n_97,
      I1 => \abs_sq_value_reg[3]_0\,
      O => abs_real_sq_d1(8)
    );
\abs_sq_value[11]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => abs_real_sq_d10_n_94,
      I1 => \abs_sq_value_reg[3]_0\,
      I2 => abs_imag_sq_d10_n_94,
      O => \abs_sq_value[11]_i_6_n_0\
    );
\abs_sq_value[11]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => abs_real_sq_d10_n_95,
      I1 => \abs_sq_value_reg[3]_0\,
      I2 => abs_imag_sq_d10_n_95,
      O => \abs_sq_value[11]_i_7_n_0\
    );
\abs_sq_value[11]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => abs_real_sq_d10_n_96,
      I1 => \abs_sq_value_reg[3]_0\,
      I2 => abs_imag_sq_d10_n_96,
      O => \abs_sq_value[11]_i_8_n_0\
    );
\abs_sq_value[11]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => abs_real_sq_d10_n_97,
      I1 => \abs_sq_value_reg[3]_0\,
      I2 => abs_imag_sq_d10_n_97,
      O => \abs_sq_value[11]_i_9_n_0\
    );
\abs_sq_value[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => abs_real_sq_d10_n_90,
      I1 => \abs_sq_value_reg[3]_0\,
      O => abs_real_sq_d1(15)
    );
\abs_sq_value[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => abs_real_sq_d10_n_91,
      I1 => \abs_sq_value_reg[3]_0\,
      O => abs_real_sq_d1(14)
    );
\abs_sq_value[15]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => abs_real_sq_d10_n_92,
      I1 => \abs_sq_value_reg[3]_0\,
      O => abs_real_sq_d1(13)
    );
\abs_sq_value[15]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => abs_real_sq_d10_n_93,
      I1 => \abs_sq_value_reg[3]_0\,
      O => abs_real_sq_d1(12)
    );
\abs_sq_value[15]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => abs_real_sq_d10_n_90,
      I1 => \abs_sq_value_reg[3]_0\,
      I2 => abs_imag_sq_d10_n_90,
      O => \abs_sq_value[15]_i_6_n_0\
    );
\abs_sq_value[15]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => abs_real_sq_d10_n_91,
      I1 => \abs_sq_value_reg[3]_0\,
      I2 => abs_imag_sq_d10_n_91,
      O => \abs_sq_value[15]_i_7_n_0\
    );
\abs_sq_value[15]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => abs_real_sq_d10_n_92,
      I1 => \abs_sq_value_reg[3]_0\,
      I2 => abs_imag_sq_d10_n_92,
      O => \abs_sq_value[15]_i_8_n_0\
    );
\abs_sq_value[15]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => abs_real_sq_d10_n_93,
      I1 => \abs_sq_value_reg[3]_0\,
      I2 => abs_imag_sq_d10_n_93,
      O => \abs_sq_value[15]_i_9_n_0\
    );
\abs_sq_value[19]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => abs_real_sq_d10_n_86,
      I1 => \abs_sq_value_reg[3]_0\,
      O => abs_real_sq_d1(19)
    );
\abs_sq_value[19]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => abs_real_sq_d10_n_87,
      I1 => \abs_sq_value_reg[3]_0\,
      O => abs_real_sq_d1(18)
    );
\abs_sq_value[19]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => abs_real_sq_d10_n_88,
      I1 => \abs_sq_value_reg[3]_0\,
      O => abs_real_sq_d1(17)
    );
\abs_sq_value[19]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => abs_real_sq_d10_n_89,
      I1 => \abs_sq_value_reg[3]_0\,
      O => abs_real_sq_d1(16)
    );
\abs_sq_value[19]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => abs_real_sq_d10_n_86,
      I1 => \abs_sq_value_reg[3]_0\,
      I2 => abs_imag_sq_d10_n_86,
      O => \abs_sq_value[19]_i_6_n_0\
    );
\abs_sq_value[19]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => abs_real_sq_d10_n_87,
      I1 => \abs_sq_value_reg[3]_0\,
      I2 => abs_imag_sq_d10_n_87,
      O => \abs_sq_value[19]_i_7_n_0\
    );
\abs_sq_value[19]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => abs_real_sq_d10_n_88,
      I1 => \abs_sq_value_reg[3]_0\,
      I2 => abs_imag_sq_d10_n_88,
      O => \abs_sq_value[19]_i_8_n_0\
    );
\abs_sq_value[19]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => abs_real_sq_d10_n_89,
      I1 => \abs_sq_value_reg[3]_0\,
      I2 => abs_imag_sq_d10_n_89,
      O => \abs_sq_value[19]_i_9_n_0\
    );
\abs_sq_value[23]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => abs_real_sq_d10_n_82,
      I1 => \abs_sq_value_reg[3]_0\,
      O => abs_real_sq_d1(23)
    );
\abs_sq_value[23]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => abs_real_sq_d10_n_83,
      I1 => \abs_sq_value_reg[3]_0\,
      O => abs_real_sq_d1(22)
    );
\abs_sq_value[23]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => abs_real_sq_d10_n_84,
      I1 => \abs_sq_value_reg[3]_0\,
      O => abs_real_sq_d1(21)
    );
\abs_sq_value[23]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => abs_real_sq_d10_n_85,
      I1 => \abs_sq_value_reg[3]_0\,
      O => abs_real_sq_d1(20)
    );
\abs_sq_value[23]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => abs_real_sq_d10_n_82,
      I1 => \abs_sq_value_reg[3]_0\,
      I2 => abs_imag_sq_d10_n_82,
      O => \abs_sq_value[23]_i_6_n_0\
    );
\abs_sq_value[23]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => abs_real_sq_d10_n_83,
      I1 => \abs_sq_value_reg[3]_0\,
      I2 => abs_imag_sq_d10_n_83,
      O => \abs_sq_value[23]_i_7_n_0\
    );
\abs_sq_value[23]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => abs_real_sq_d10_n_84,
      I1 => \abs_sq_value_reg[3]_0\,
      I2 => abs_imag_sq_d10_n_84,
      O => \abs_sq_value[23]_i_8_n_0\
    );
\abs_sq_value[23]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => abs_real_sq_d10_n_85,
      I1 => \abs_sq_value_reg[3]_0\,
      I2 => abs_imag_sq_d10_n_85,
      O => \abs_sq_value[23]_i_9_n_0\
    );
\abs_sq_value[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => abs_real_sq_d10_n_102,
      I1 => \abs_sq_value_reg[3]_0\,
      O => abs_real_sq_d1(3)
    );
\abs_sq_value[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => abs_real_sq_d10_n_103,
      I1 => \abs_sq_value_reg[3]_0\,
      O => abs_real_sq_d1(2)
    );
\abs_sq_value[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => abs_real_sq_d10_n_104,
      I1 => \abs_sq_value_reg[3]_0\,
      O => abs_real_sq_d1(1)
    );
\abs_sq_value[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => abs_real_sq_d10_n_105,
      I1 => \abs_sq_value_reg[3]_0\,
      O => abs_real_sq_d1(0)
    );
\abs_sq_value[3]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => abs_real_sq_d10_n_102,
      I1 => \abs_sq_value_reg[3]_0\,
      I2 => abs_imag_sq_d10_n_102,
      O => \abs_sq_value[3]_i_6_n_0\
    );
\abs_sq_value[3]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => abs_real_sq_d10_n_103,
      I1 => \abs_sq_value_reg[3]_0\,
      I2 => abs_imag_sq_d10_n_103,
      O => \abs_sq_value[3]_i_7_n_0\
    );
\abs_sq_value[3]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => abs_real_sq_d10_n_104,
      I1 => \abs_sq_value_reg[3]_0\,
      I2 => abs_imag_sq_d10_n_104,
      O => \abs_sq_value[3]_i_8_n_0\
    );
\abs_sq_value[3]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => abs_real_sq_d10_n_105,
      I1 => \abs_sq_value_reg[3]_0\,
      I2 => abs_imag_sq_d10_n_105,
      O => \abs_sq_value[3]_i_9_n_0\
    );
\abs_sq_value[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => abs_real_sq_d10_n_98,
      I1 => \abs_sq_value_reg[3]_0\,
      O => abs_real_sq_d1(7)
    );
\abs_sq_value[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => abs_real_sq_d10_n_99,
      I1 => \abs_sq_value_reg[3]_0\,
      O => abs_real_sq_d1(6)
    );
\abs_sq_value[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => abs_real_sq_d10_n_100,
      I1 => \abs_sq_value_reg[3]_0\,
      O => abs_real_sq_d1(5)
    );
\abs_sq_value[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => abs_real_sq_d10_n_101,
      I1 => \abs_sq_value_reg[3]_0\,
      O => abs_real_sq_d1(4)
    );
\abs_sq_value[7]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => abs_real_sq_d10_n_98,
      I1 => \abs_sq_value_reg[3]_0\,
      I2 => abs_imag_sq_d10_n_98,
      O => \abs_sq_value[7]_i_6_n_0\
    );
\abs_sq_value[7]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => abs_real_sq_d10_n_99,
      I1 => \abs_sq_value_reg[3]_0\,
      I2 => abs_imag_sq_d10_n_99,
      O => \abs_sq_value[7]_i_7_n_0\
    );
\abs_sq_value[7]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => abs_real_sq_d10_n_100,
      I1 => \abs_sq_value_reg[3]_0\,
      I2 => abs_imag_sq_d10_n_100,
      O => \abs_sq_value[7]_i_8_n_0\
    );
\abs_sq_value[7]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => abs_real_sq_d10_n_101,
      I1 => \abs_sq_value_reg[3]_0\,
      I2 => abs_imag_sq_d10_n_101,
      O => \abs_sq_value[7]_i_9_n_0\
    );
\abs_sq_value_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \abs_sq_value_reg[3]_i_1_n_7\,
      Q => abs_sq_value(0)
    );
\abs_sq_value_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \abs_sq_value_reg[11]_i_1_n_5\,
      Q => abs_sq_value(10)
    );
\abs_sq_value_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \abs_sq_value_reg[11]_i_1_n_4\,
      Q => abs_sq_value(11)
    );
\abs_sq_value_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \abs_sq_value_reg[7]_i_1_n_0\,
      CO(3) => \abs_sq_value_reg[11]_i_1_n_0\,
      CO(2) => \abs_sq_value_reg[11]_i_1_n_1\,
      CO(1) => \abs_sq_value_reg[11]_i_1_n_2\,
      CO(0) => \abs_sq_value_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => abs_real_sq_d1(11 downto 8),
      O(3) => \abs_sq_value_reg[11]_i_1_n_4\,
      O(2) => \abs_sq_value_reg[11]_i_1_n_5\,
      O(1) => \abs_sq_value_reg[11]_i_1_n_6\,
      O(0) => \abs_sq_value_reg[11]_i_1_n_7\,
      S(3) => \abs_sq_value[11]_i_6_n_0\,
      S(2) => \abs_sq_value[11]_i_7_n_0\,
      S(1) => \abs_sq_value[11]_i_8_n_0\,
      S(0) => \abs_sq_value[11]_i_9_n_0\
    );
\abs_sq_value_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \abs_sq_value_reg[15]_i_1_n_7\,
      Q => abs_sq_value(12)
    );
\abs_sq_value_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \abs_sq_value_reg[15]_i_1_n_6\,
      Q => abs_sq_value(13)
    );
\abs_sq_value_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \abs_sq_value_reg[15]_i_1_n_5\,
      Q => abs_sq_value(14)
    );
\abs_sq_value_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \abs_sq_value_reg[15]_i_1_n_4\,
      Q => abs_sq_value(15)
    );
\abs_sq_value_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \abs_sq_value_reg[11]_i_1_n_0\,
      CO(3) => \abs_sq_value_reg[15]_i_1_n_0\,
      CO(2) => \abs_sq_value_reg[15]_i_1_n_1\,
      CO(1) => \abs_sq_value_reg[15]_i_1_n_2\,
      CO(0) => \abs_sq_value_reg[15]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => abs_real_sq_d1(15 downto 12),
      O(3) => \abs_sq_value_reg[15]_i_1_n_4\,
      O(2) => \abs_sq_value_reg[15]_i_1_n_5\,
      O(1) => \abs_sq_value_reg[15]_i_1_n_6\,
      O(0) => \abs_sq_value_reg[15]_i_1_n_7\,
      S(3) => \abs_sq_value[15]_i_6_n_0\,
      S(2) => \abs_sq_value[15]_i_7_n_0\,
      S(1) => \abs_sq_value[15]_i_8_n_0\,
      S(0) => \abs_sq_value[15]_i_9_n_0\
    );
\abs_sq_value_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \abs_sq_value_reg[19]_i_1_n_7\,
      Q => abs_sq_value(16)
    );
\abs_sq_value_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \abs_sq_value_reg[19]_i_1_n_6\,
      Q => abs_sq_value(17)
    );
\abs_sq_value_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \abs_sq_value_reg[19]_i_1_n_5\,
      Q => abs_sq_value(18)
    );
\abs_sq_value_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \abs_sq_value_reg[19]_i_1_n_4\,
      Q => abs_sq_value(19)
    );
\abs_sq_value_reg[19]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \abs_sq_value_reg[15]_i_1_n_0\,
      CO(3) => \abs_sq_value_reg[19]_i_1_n_0\,
      CO(2) => \abs_sq_value_reg[19]_i_1_n_1\,
      CO(1) => \abs_sq_value_reg[19]_i_1_n_2\,
      CO(0) => \abs_sq_value_reg[19]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => abs_real_sq_d1(19 downto 16),
      O(3) => \abs_sq_value_reg[19]_i_1_n_4\,
      O(2) => \abs_sq_value_reg[19]_i_1_n_5\,
      O(1) => \abs_sq_value_reg[19]_i_1_n_6\,
      O(0) => \abs_sq_value_reg[19]_i_1_n_7\,
      S(3) => \abs_sq_value[19]_i_6_n_0\,
      S(2) => \abs_sq_value[19]_i_7_n_0\,
      S(1) => \abs_sq_value[19]_i_8_n_0\,
      S(0) => \abs_sq_value[19]_i_9_n_0\
    );
\abs_sq_value_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \abs_sq_value_reg[3]_i_1_n_6\,
      Q => abs_sq_value(1)
    );
\abs_sq_value_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \abs_sq_value_reg[23]_i_1_n_7\,
      Q => abs_sq_value(20)
    );
\abs_sq_value_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \abs_sq_value_reg[23]_i_1_n_6\,
      Q => abs_sq_value(21)
    );
\abs_sq_value_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \abs_sq_value_reg[23]_i_1_n_5\,
      Q => abs_sq_value(22)
    );
\abs_sq_value_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \abs_sq_value_reg[23]_i_1_n_4\,
      Q => abs_sq_value(23)
    );
\abs_sq_value_reg[23]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \abs_sq_value_reg[19]_i_1_n_0\,
      CO(3) => \abs_sq_value_reg[23]_i_1_n_0\,
      CO(2) => \abs_sq_value_reg[23]_i_1_n_1\,
      CO(1) => \abs_sq_value_reg[23]_i_1_n_2\,
      CO(0) => \abs_sq_value_reg[23]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => abs_real_sq_d1(23 downto 20),
      O(3) => \abs_sq_value_reg[23]_i_1_n_4\,
      O(2) => \abs_sq_value_reg[23]_i_1_n_5\,
      O(1) => \abs_sq_value_reg[23]_i_1_n_6\,
      O(0) => \abs_sq_value_reg[23]_i_1_n_7\,
      S(3) => \abs_sq_value[23]_i_6_n_0\,
      S(2) => \abs_sq_value[23]_i_7_n_0\,
      S(1) => \abs_sq_value[23]_i_8_n_0\,
      S(0) => \abs_sq_value[23]_i_9_n_0\
    );
\abs_sq_value_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \abs_sq_value_reg[24]_i_1_n_3\,
      Q => abs_sq_value(24)
    );
\abs_sq_value_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \abs_sq_value_reg[23]_i_1_n_0\,
      CO(3 downto 1) => \NLW_abs_sq_value_reg[24]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \abs_sq_value_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_abs_sq_value_reg[24]_i_1_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"0001"
    );
\abs_sq_value_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \abs_sq_value_reg[3]_i_1_n_5\,
      Q => abs_sq_value(2)
    );
\abs_sq_value_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \abs_sq_value_reg[3]_i_1_n_4\,
      Q => abs_sq_value(3)
    );
\abs_sq_value_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \abs_sq_value_reg[3]_i_1_n_0\,
      CO(2) => \abs_sq_value_reg[3]_i_1_n_1\,
      CO(1) => \abs_sq_value_reg[3]_i_1_n_2\,
      CO(0) => \abs_sq_value_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => abs_real_sq_d1(3 downto 0),
      O(3) => \abs_sq_value_reg[3]_i_1_n_4\,
      O(2) => \abs_sq_value_reg[3]_i_1_n_5\,
      O(1) => \abs_sq_value_reg[3]_i_1_n_6\,
      O(0) => \abs_sq_value_reg[3]_i_1_n_7\,
      S(3) => \abs_sq_value[3]_i_6_n_0\,
      S(2) => \abs_sq_value[3]_i_7_n_0\,
      S(1) => \abs_sq_value[3]_i_8_n_0\,
      S(0) => \abs_sq_value[3]_i_9_n_0\
    );
\abs_sq_value_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \abs_sq_value_reg[7]_i_1_n_7\,
      Q => abs_sq_value(4)
    );
\abs_sq_value_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \abs_sq_value_reg[7]_i_1_n_6\,
      Q => abs_sq_value(5)
    );
\abs_sq_value_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \abs_sq_value_reg[7]_i_1_n_5\,
      Q => abs_sq_value(6)
    );
\abs_sq_value_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \abs_sq_value_reg[7]_i_1_n_4\,
      Q => abs_sq_value(7)
    );
\abs_sq_value_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \abs_sq_value_reg[3]_i_1_n_0\,
      CO(3) => \abs_sq_value_reg[7]_i_1_n_0\,
      CO(2) => \abs_sq_value_reg[7]_i_1_n_1\,
      CO(1) => \abs_sq_value_reg[7]_i_1_n_2\,
      CO(0) => \abs_sq_value_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => abs_real_sq_d1(7 downto 4),
      O(3) => \abs_sq_value_reg[7]_i_1_n_4\,
      O(2) => \abs_sq_value_reg[7]_i_1_n_5\,
      O(1) => \abs_sq_value_reg[7]_i_1_n_6\,
      O(0) => \abs_sq_value_reg[7]_i_1_n_7\,
      S(3) => \abs_sq_value[7]_i_6_n_0\,
      S(2) => \abs_sq_value[7]_i_7_n_0\,
      S(1) => \abs_sq_value[7]_i_8_n_0\,
      S(0) => \abs_sq_value[7]_i_9_n_0\
    );
\abs_sq_value_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \abs_sq_value_reg[11]_i_1_n_7\,
      Q => abs_sq_value(8)
    );
\abs_sq_value_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \abs_sq_value_reg[11]_i_1_n_6\,
      Q => abs_sq_value(9)
    );
abs_valid_d0_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => xk_valid_out,
      Q => abs_valid_d0
    );
abs_valid_d1_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => abs_valid_d0,
      Q => abs_valid_d1
    );
abs_valid_d2_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => abs_valid_d1,
      Q => abs_valid_d2_reg_n_0
    );
config_done_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => config_ready,
      I1 => config_valid,
      I2 => config_done,
      O => config_done_i_1_n_0
    );
config_done_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => config_done_i_1_n_0,
      Q => config_done
    );
config_valid_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => config_ready,
      I1 => config_valid,
      O => config_valid_i_1_n_0
    );
config_valid_reg: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => config_valid_i_1_n_0,
      PRE => \^rst_n_0\,
      Q => config_valid
    );
\frame_count[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => config_done,
      I1 => fft_in_ready,
      I2 => m_axis_data_tvalid,
      O => E(0)
    );
u_peak_detector: entity work.system_fft_pl_ps_0_0_peak_detector
     port map (
      Q(24 downto 0) => abs_sq_value(24 downto 0),
      SR(0) => \^rst_n_0\,
      clk => clk,
      \max_index_reg[7]_0\(7) => \abs_index_d2_reg_n_0_[7]\,
      \max_index_reg[7]_0\(6) => \abs_index_d2_reg_n_0_[6]\,
      \max_index_reg[7]_0\(5) => \abs_index_d2_reg_n_0_[5]\,
      \max_index_reg[7]_0\(4) => \abs_index_d2_reg_n_0_[4]\,
      \max_index_reg[7]_0\(3) => \abs_index_d2_reg_n_0_[3]\,
      \max_index_reg[7]_0\(2) => \abs_index_d2_reg_n_0_[2]\,
      \max_index_reg[7]_0\(1) => \abs_index_d2_reg_n_0_[1]\,
      \max_index_reg[7]_0\(0) => \abs_index_d2_reg_n_0_[0]\,
      peak_index_dbg(7 downto 0) => peak_index_dbg(7 downto 0),
      peak_valid_dbg => peak_valid_dbg,
      \peak_value_reg[0]_0\ => abs_valid_d2_reg_n_0,
      \peak_value_reg[0]_1\ => abs_last_d2_reg_n_0,
      \peak_value_reg[24]_0\(24 downto 0) => \peak_value_reg[24]\(24 downto 0),
      rst_n => rst_n
    );
u_three_term: entity work.system_fft_pl_ps_0_0_three_term_part4
     port map (
      D(11 downto 0) => xk_im_out(11 downto 0),
      Q(7 downto 0) => xk_index_out(7 downto 0),
      SR(0) => \^rst_n_0\,
      clk => clk,
      m_axis_data_tdata(23 downto 12) => fft_out_tdata(27 downto 16),
      m_axis_data_tdata(11 downto 0) => fft_out_tdata(11 downto 0),
      m_axis_data_tlast => fft_out_tlast,
      m_axis_data_tuser(7 downto 0) => fft_out_tuser(7 downto 0),
      m_axis_data_tvalid => fft_out_tvalid,
      \round_w_return1__2_0\(11 downto 0) => xk_re_out(11 downto 0),
      rst_n => rst_n,
      xk_last_out => xk_last_out,
      xk_valid_out => xk_valid_out
    );
u_xfft_0: component system_fft_pl_ps_0_0_xfft_0
     port map (
      aclk => clk,
      aresetn => rst_n,
      event_data_in_channel_halt => NLW_u_xfft_0_event_data_in_channel_halt_UNCONNECTED,
      event_data_out_channel_halt => NLW_u_xfft_0_event_data_out_channel_halt_UNCONNECTED,
      event_frame_started => NLW_u_xfft_0_event_frame_started_UNCONNECTED,
      event_status_channel_halt => NLW_u_xfft_0_event_status_channel_halt_UNCONNECTED,
      event_tlast_missing => NLW_u_xfft_0_event_tlast_missing_UNCONNECTED,
      event_tlast_unexpected => NLW_u_xfft_0_event_tlast_unexpected_UNCONNECTED,
      m_axis_data_tdata(31 downto 28) => NLW_u_xfft_0_m_axis_data_tdata_UNCONNECTED(31 downto 28),
      m_axis_data_tdata(27 downto 16) => fft_out_tdata(27 downto 16),
      m_axis_data_tdata(15 downto 12) => NLW_u_xfft_0_m_axis_data_tdata_UNCONNECTED(15 downto 12),
      m_axis_data_tdata(11 downto 0) => fft_out_tdata(11 downto 0),
      m_axis_data_tlast => fft_out_tlast,
      m_axis_data_tready => '1',
      m_axis_data_tuser(7 downto 0) => fft_out_tuser(7 downto 0),
      m_axis_data_tvalid => fft_out_tvalid,
      s_axis_config_tdata(15 downto 0) => B"0000000101010101",
      s_axis_config_tready => config_ready,
      s_axis_config_tvalid => config_valid,
      s_axis_data_tdata(31) => m_axis_data_tdata(23),
      s_axis_data_tdata(30) => m_axis_data_tdata(23),
      s_axis_data_tdata(29) => m_axis_data_tdata(23),
      s_axis_data_tdata(28) => m_axis_data_tdata(23),
      s_axis_data_tdata(27 downto 15) => m_axis_data_tdata(23 downto 11),
      s_axis_data_tdata(14) => m_axis_data_tdata(11),
      s_axis_data_tdata(13) => m_axis_data_tdata(11),
      s_axis_data_tdata(12) => m_axis_data_tdata(11),
      s_axis_data_tdata(11 downto 0) => m_axis_data_tdata(11 downto 0),
      s_axis_data_tlast => fft_in_tlast,
      s_axis_data_tready => fft_in_ready,
      s_axis_data_tvalid => fft_in_tvalid
    );
u_xfft_0_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m_axis_data_tvalid,
      I1 => config_done,
      O => fft_in_tvalid
    );
u_xfft_0_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => config_done,
      I1 => Q(7),
      I2 => Q(6),
      I3 => \^frame_count_reg[4]\,
      O => fft_in_tlast
    );
u_xfft_0_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => Q(4),
      I1 => Q(2),
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(3),
      I5 => Q(5),
      O => \^frame_count_reg[4]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_fft_pl_ps_0_0_fft_pl_ps_top is
  port (
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    peak_index_dbg : out STD_LOGIC_VECTOR ( 7 downto 0 );
    peak_valid_dbg : out STD_LOGIC;
    dds_pinc_dbg : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ABS_W : integer;
  attribute ABS_W of system_fft_pl_ps_0_0_fft_pl_ps_top : entity is 25;
  attribute DDS_AXIS_W : integer;
  attribute DDS_AXIS_W of system_fft_pl_ps_0_0_fft_pl_ps_top : entity is 32;
  attribute DDS_LANE_W : integer;
  attribute DDS_LANE_W of system_fft_pl_ps_0_0_fft_pl_ps_top : entity is 16;
  attribute DDS_SAMPLE_W : integer;
  attribute DDS_SAMPLE_W of system_fft_pl_ps_0_0_fft_pl_ps_top : entity is 12;
  attribute DEFAULT_PINC : integer;
  attribute DEFAULT_PINC of system_fft_pl_ps_0_0_fft_pl_ps_top : entity is 214748365;
  attribute FFT_CONFIG_TDATA : string;
  attribute FFT_CONFIG_TDATA of system_fft_pl_ps_0_0_fft_pl_ps_top : entity is "16'b0000000101010101";
  attribute FFT_CONFIG_WIDTH : integer;
  attribute FFT_CONFIG_WIDTH of system_fft_pl_ps_0_0_fft_pl_ps_top : entity is 16;
  attribute FFT_W : integer;
  attribute FFT_W of system_fft_pl_ps_0_0_fft_pl_ps_top : entity is 12;
  attribute FRAME_LAST_INDEX : string;
  attribute FRAME_LAST_INDEX of system_fft_pl_ps_0_0_fft_pl_ps_top : entity is "8'b11111111";
  attribute IN_W : integer;
  attribute IN_W of system_fft_pl_ps_0_0_fft_pl_ps_top : entity is 16;
  attribute LOG2N : integer;
  attribute LOG2N of system_fft_pl_ps_0_0_fft_pl_ps_top : entity is 8;
  attribute N : integer;
  attribute N of system_fft_pl_ps_0_0_fft_pl_ps_top : entity is 256;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_fft_pl_ps_0_0_fft_pl_ps_top : entity is "fft_pl_ps_top";
end system_fft_pl_ps_0_0_fft_pl_ps_top;

architecture STRUCTURE of system_fft_pl_ps_0_0_fft_pl_ps_top is
  component system_fft_pl_ps_0_0_dds_compiler_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_config_tvalid : in STD_LOGIC;
    s_axis_config_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_data_tvalid : out STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_phase_tvalid : out STD_LOGIC;
    m_axis_phase_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component system_fft_pl_ps_0_0_dds_compiler_0;
  signal \<const0>\ : STD_LOGIC;
  signal \abs_sq_value_reg[23]_i_10_n_0\ : STD_LOGIC;
  signal dds_config_tdata : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal dds_config_tvalid : STD_LOGIC;
  signal \^dds_pinc_dbg\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal dds_pinc_wr_pulse : STD_LOGIC;
  signal dds_tdata : STD_LOGIC_VECTOR ( 27 downto 0 );
  signal dds_tvalid : STD_LOGIC;
  signal fft_accept : STD_LOGIC;
  signal \frame_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \frame_count[6]_i_2_n_0\ : STD_LOGIC;
  signal frame_count_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^peak_index_dbg\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^peak_valid_dbg\ : STD_LOGIC;
  signal peak_value : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal u_fft_freqwin_top_n_0 : STD_LOGIC;
  signal u_fft_freqwin_top_n_2 : STD_LOGIC;
  signal NLW_u_dds_compiler_0_m_axis_phase_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_u_dds_compiler_0_m_axis_data_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 12 );
  signal NLW_u_dds_compiler_0_m_axis_phase_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \frame_count[0]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \frame_count[1]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \frame_count[2]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \frame_count[3]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \frame_count[4]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \frame_count[6]_i_2\ : label is "soft_lutpair30";
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of u_dds_compiler_0 : label is "dds_compiler_0,dds_compiler_v6_0_26,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of u_dds_compiler_0 : label is "yes";
  attribute x_core_info : string;
  attribute x_core_info of u_dds_compiler_0 : label is "dds_compiler_v6_0_26,Vivado 2024.2";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET rst_n, FREQ_HZ 200000000";
  attribute X_INTERFACE_INFO of rst_n : signal is "xilinx.com:signal:reset:1.0 rst_n RST";
  attribute X_INTERFACE_PARAMETER of rst_n : signal is "POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute X_INTERFACE_INFO of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute X_INTERFACE_INFO of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute X_INTERFACE_INFO of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute X_INTERFACE_INFO of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute X_INTERFACE_INFO of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute X_INTERFACE_INFO of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute X_INTERFACE_INFO of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  attribute X_INTERFACE_INFO of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  attribute X_INTERFACE_INFO of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  attribute X_INTERFACE_INFO of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  attribute X_INTERFACE_INFO of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  attribute X_INTERFACE_PARAMETER of s_axi_awaddr : signal is "PROTOCOL AXI4LITE, DATA_WIDTH 32, ADDR_WIDTH 4, FREQ_HZ 200000000, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1";
  attribute X_INTERFACE_INFO of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  attribute X_INTERFACE_INFO of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute X_INTERFACE_INFO of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  attribute X_INTERFACE_INFO of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  attribute X_INTERFACE_INFO of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
begin
  dds_pinc_dbg(31 downto 0) <= \^dds_pinc_dbg\(31 downto 0);
  peak_index_dbg(7 downto 0) <= \^peak_index_dbg\(7 downto 0);
  peak_valid_dbg <= \^peak_valid_dbg\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\abs_sq_value_reg[23]_i_10\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => u_fft_freqwin_top_n_0,
      D => '1',
      Q => \abs_sq_value_reg[23]_i_10_n_0\
    );
\frame_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => frame_count_reg(0),
      O => p_0_in(0)
    );
\frame_count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => frame_count_reg(1),
      I1 => frame_count_reg(0),
      O => \frame_count[1]_i_1_n_0\
    );
\frame_count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => frame_count_reg(1),
      I1 => frame_count_reg(0),
      I2 => frame_count_reg(2),
      O => p_0_in(2)
    );
\frame_count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => frame_count_reg(2),
      I1 => frame_count_reg(0),
      I2 => frame_count_reg(1),
      I3 => frame_count_reg(3),
      O => p_0_in(3)
    );
\frame_count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => frame_count_reg(3),
      I1 => frame_count_reg(1),
      I2 => frame_count_reg(0),
      I3 => frame_count_reg(2),
      I4 => frame_count_reg(4),
      O => p_0_in(4)
    );
\frame_count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => frame_count_reg(4),
      I1 => frame_count_reg(2),
      I2 => frame_count_reg(0),
      I3 => frame_count_reg(1),
      I4 => frame_count_reg(3),
      I5 => frame_count_reg(5),
      O => p_0_in(5)
    );
\frame_count[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF08000000"
    )
        port map (
      I0 => frame_count_reg(5),
      I1 => frame_count_reg(3),
      I2 => \frame_count[6]_i_2_n_0\,
      I3 => frame_count_reg(2),
      I4 => frame_count_reg(4),
      I5 => frame_count_reg(6),
      O => p_0_in(6)
    );
\frame_count[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => frame_count_reg(0),
      I1 => frame_count_reg(1),
      O => \frame_count[6]_i_2_n_0\
    );
\frame_count[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => frame_count_reg(6),
      I1 => u_fft_freqwin_top_n_2,
      I2 => frame_count_reg(7),
      O => p_0_in(7)
    );
\frame_count_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => fft_accept,
      CLR => u_fft_freqwin_top_n_0,
      D => p_0_in(0),
      Q => frame_count_reg(0)
    );
\frame_count_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => fft_accept,
      CLR => u_fft_freqwin_top_n_0,
      D => \frame_count[1]_i_1_n_0\,
      Q => frame_count_reg(1)
    );
\frame_count_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => fft_accept,
      CLR => u_fft_freqwin_top_n_0,
      D => p_0_in(2),
      Q => frame_count_reg(2)
    );
\frame_count_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => fft_accept,
      CLR => u_fft_freqwin_top_n_0,
      D => p_0_in(3),
      Q => frame_count_reg(3)
    );
\frame_count_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => fft_accept,
      CLR => u_fft_freqwin_top_n_0,
      D => p_0_in(4),
      Q => frame_count_reg(4)
    );
\frame_count_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => fft_accept,
      CLR => u_fft_freqwin_top_n_0,
      D => p_0_in(5),
      Q => frame_count_reg(5)
    );
\frame_count_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => fft_accept,
      CLR => u_fft_freqwin_top_n_0,
      D => p_0_in(6),
      Q => frame_count_reg(6)
    );
\frame_count_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => fft_accept,
      CLR => u_fft_freqwin_top_n_0,
      D => p_0_in(7),
      Q => frame_count_reg(7)
    );
u_dds_compiler_0: component system_fft_pl_ps_0_0_dds_compiler_0
     port map (
      aclk => clk,
      aresetn => rst_n,
      m_axis_data_tdata(31 downto 28) => NLW_u_dds_compiler_0_m_axis_data_tdata_UNCONNECTED(31 downto 28),
      m_axis_data_tdata(27 downto 16) => dds_tdata(27 downto 16),
      m_axis_data_tdata(15 downto 12) => NLW_u_dds_compiler_0_m_axis_data_tdata_UNCONNECTED(15 downto 12),
      m_axis_data_tdata(11 downto 0) => dds_tdata(11 downto 0),
      m_axis_data_tvalid => dds_tvalid,
      m_axis_phase_tdata(31 downto 0) => NLW_u_dds_compiler_0_m_axis_phase_tdata_UNCONNECTED(31 downto 0),
      m_axis_phase_tvalid => NLW_u_dds_compiler_0_m_axis_phase_tvalid_UNCONNECTED,
      s_axis_config_tdata(31 downto 0) => dds_config_tdata(31 downto 0),
      s_axis_config_tvalid => dds_config_tvalid
    );
u_dds_config_driver: entity work.system_fft_pl_ps_0_0_dds_config_driver
     port map (
      E(0) => dds_pinc_wr_pulse,
      Q(31 downto 0) => dds_config_tdata(31 downto 0),
      clk => clk,
      config_pending_reg_0 => u_fft_freqwin_top_n_0,
      dds_pinc_dbg(31 downto 0) => \^dds_pinc_dbg\(31 downto 0),
      s_axis_config_tvalid => dds_config_tvalid
    );
u_fft_freqwin_top: entity work.system_fft_pl_ps_0_0_fft_freqwin_top_part4
     port map (
      E(0) => fft_accept,
      Q(7 downto 0) => frame_count_reg(7 downto 0),
      \abs_sq_value_reg[3]_0\ => \abs_sq_value_reg[23]_i_10_n_0\,
      clk => clk,
      \frame_count_reg[4]\ => u_fft_freqwin_top_n_2,
      m_axis_data_tdata(23 downto 12) => dds_tdata(27 downto 16),
      m_axis_data_tdata(11 downto 0) => dds_tdata(11 downto 0),
      m_axis_data_tvalid => dds_tvalid,
      peak_index_dbg(7 downto 0) => \^peak_index_dbg\(7 downto 0),
      peak_valid_dbg => \^peak_valid_dbg\,
      \peak_value_reg[24]\(24 downto 0) => peak_value(24 downto 0),
      rst_n => rst_n,
      rst_n_0 => u_fft_freqwin_top_n_0
    );
u_regs: entity work.system_fft_pl_ps_0_0_part4_axi_lite_regs
     port map (
      E(0) => dds_pinc_wr_pulse,
      SR(0) => u_fft_freqwin_top_n_0,
      clk => clk,
      dds_pinc_dbg(31 downto 0) => \^dds_pinc_dbg\(31 downto 0),
      peak_index_dbg(7 downto 0) => \^peak_index_dbg\(7 downto 0),
      peak_valid_dbg => \^peak_valid_dbg\,
      rst_n => rst_n,
      s_axi_araddr(3 downto 0) => s_axi_araddr(3 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(3 downto 0) => s_axi_awaddr(3 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bvalid_reg_0 => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      \s_axi_rdata_reg[24]_0\(24 downto 0) => peak_value(24 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rvalid_reg_0 => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_fft_pl_ps_0_0 is
  port (
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    peak_index_dbg : out STD_LOGIC_VECTOR ( 7 downto 0 );
    peak_valid_dbg : out STD_LOGIC;
    dds_pinc_dbg : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_fft_pl_ps_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_fft_pl_ps_0_0 : entity is "system_fft_pl_ps_0_0,fft_pl_ps_top,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of system_fft_pl_ps_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of system_fft_pl_ps_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of system_fft_pl_ps_0_0 : entity is "fft_pl_ps_top,Vivado 2024.2";
end system_fft_pl_ps_0_0;

architecture STRUCTURE of system_fft_pl_ps_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal NLW_inst_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute ABS_W : integer;
  attribute ABS_W of inst : label is 25;
  attribute DDS_AXIS_W : integer;
  attribute DDS_AXIS_W of inst : label is 32;
  attribute DDS_LANE_W : integer;
  attribute DDS_LANE_W of inst : label is 16;
  attribute DDS_SAMPLE_W : integer;
  attribute DDS_SAMPLE_W of inst : label is 12;
  attribute DEFAULT_PINC : integer;
  attribute DEFAULT_PINC of inst : label is 214748365;
  attribute FFT_CONFIG_TDATA : string;
  attribute FFT_CONFIG_TDATA of inst : label is "16'b0000000101010101";
  attribute FFT_CONFIG_WIDTH : integer;
  attribute FFT_CONFIG_WIDTH of inst : label is 16;
  attribute FFT_W : integer;
  attribute FFT_W of inst : label is 12;
  attribute FRAME_LAST_INDEX : string;
  attribute FRAME_LAST_INDEX of inst : label is "8'b11111111";
  attribute IN_W : integer;
  attribute IN_W of inst : label is 16;
  attribute LOG2N : integer;
  attribute LOG2N of inst : label is 8;
  attribute N : integer;
  attribute N of inst : label is 256;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET rst_n, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst_n : signal is "xilinx.com:signal:reset:1.0 rst_n RST";
  attribute X_INTERFACE_MODE of rst_n : signal is "slave";
  attribute X_INTERFACE_PARAMETER of rst_n : signal is "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute X_INTERFACE_INFO of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute X_INTERFACE_INFO of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute X_INTERFACE_INFO of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute X_INTERFACE_INFO of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute X_INTERFACE_INFO of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute X_INTERFACE_INFO of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute X_INTERFACE_INFO of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  attribute X_INTERFACE_INFO of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  attribute X_INTERFACE_INFO of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  attribute X_INTERFACE_INFO of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  attribute X_INTERFACE_INFO of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  attribute X_INTERFACE_MODE of s_axi_awaddr : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s_axi_awaddr : signal is "XIL_INTERFACENAME S_AXI, PROTOCOL AXI4LITE, DATA_WIDTH 32, ADDR_WIDTH 4, FREQ_HZ 200000000, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  attribute X_INTERFACE_INFO of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute X_INTERFACE_INFO of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  attribute X_INTERFACE_INFO of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  attribute X_INTERFACE_INFO of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
begin
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.system_fft_pl_ps_0_0_fft_pl_ps_top
     port map (
      clk => clk,
      dds_pinc_dbg(31 downto 0) => dds_pinc_dbg(31 downto 0),
      peak_index_dbg(7 downto 0) => peak_index_dbg(7 downto 0),
      peak_valid_dbg => peak_valid_dbg,
      rst_n => rst_n,
      s_axi_araddr(3 downto 0) => s_axi_araddr(3 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(3 downto 0) => s_axi_awaddr(3 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => NLW_inst_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => NLW_inst_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
