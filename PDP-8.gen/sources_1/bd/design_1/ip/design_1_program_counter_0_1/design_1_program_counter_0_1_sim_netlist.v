// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Mon Nov 10 20:03:40 2025
// Host        : Tengu running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               f:/UNI_STUFF/FPGA/PDP-8/PDP-8.gen/sources_1/bd/design_1/ip/design_1_program_counter_0_1/design_1_program_counter_0_1_sim_netlist.v
// Design      : design_1_program_counter_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_program_counter_0_1,program_counter,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "program_counter,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module design_1_program_counter_0_1
   (clk,
    jump,
    pc_out);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  input [11:0]jump;
  output [11:0]pc_out;

  wire clk;
  wire [11:0]jump;
  wire [11:0]pc_out;

  design_1_program_counter_0_1_program_counter inst
       (.clk(clk),
        .jump(jump),
        .pc_out(pc_out));
endmodule

(* ORIG_REF_NAME = "program_counter" *) 
module design_1_program_counter_0_1_program_counter
   (pc_out,
    jump,
    clk);
  output [11:0]pc_out;
  input [11:0]jump;
  input clk;

  wire clk;
  wire \count[11]_i_2_n_0 ;
  wire \count[11]_i_3_n_0 ;
  wire \count[11]_i_4_n_0 ;
  wire \count[11]_i_5_n_0 ;
  wire \count[11]_i_6_n_0 ;
  wire \count[11]_i_7_n_0 ;
  wire \count[3]_i_2_n_0 ;
  wire \count[3]_i_3_n_0 ;
  wire \count[3]_i_4_n_0 ;
  wire \count[3]_i_5_n_0 ;
  wire \count[3]_i_6_n_0 ;
  wire \count[7]_i_2_n_0 ;
  wire \count[7]_i_3_n_0 ;
  wire \count[7]_i_4_n_0 ;
  wire \count[7]_i_5_n_0 ;
  wire \count_reg[11]_i_1_n_1 ;
  wire \count_reg[11]_i_1_n_2 ;
  wire \count_reg[11]_i_1_n_3 ;
  wire \count_reg[11]_i_1_n_4 ;
  wire \count_reg[11]_i_1_n_5 ;
  wire \count_reg[11]_i_1_n_6 ;
  wire \count_reg[11]_i_1_n_7 ;
  wire \count_reg[3]_i_1_n_0 ;
  wire \count_reg[3]_i_1_n_1 ;
  wire \count_reg[3]_i_1_n_2 ;
  wire \count_reg[3]_i_1_n_3 ;
  wire \count_reg[3]_i_1_n_4 ;
  wire \count_reg[3]_i_1_n_5 ;
  wire \count_reg[3]_i_1_n_6 ;
  wire \count_reg[3]_i_1_n_7 ;
  wire \count_reg[7]_i_1_n_0 ;
  wire \count_reg[7]_i_1_n_1 ;
  wire \count_reg[7]_i_1_n_2 ;
  wire \count_reg[7]_i_1_n_3 ;
  wire \count_reg[7]_i_1_n_4 ;
  wire \count_reg[7]_i_1_n_5 ;
  wire \count_reg[7]_i_1_n_6 ;
  wire \count_reg[7]_i_1_n_7 ;
  wire [11:0]jump;
  wire [11:0]pc_out;
  wire [3:3]\NLW_count_reg[11]_i_1_CO_UNCONNECTED ;

  LUT4 #(
    .INIT(16'hEA2A)) 
    \count[11]_i_2 
       (.I0(jump[11]),
        .I1(\count[11]_i_6_n_0 ),
        .I2(\count[11]_i_7_n_0 ),
        .I3(pc_out[11]),
        .O(\count[11]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \count[11]_i_3 
       (.I0(jump[10]),
        .I1(\count[11]_i_6_n_0 ),
        .I2(\count[11]_i_7_n_0 ),
        .I3(pc_out[10]),
        .O(\count[11]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \count[11]_i_4 
       (.I0(jump[9]),
        .I1(\count[11]_i_6_n_0 ),
        .I2(\count[11]_i_7_n_0 ),
        .I3(pc_out[9]),
        .O(\count[11]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \count[11]_i_5 
       (.I0(jump[8]),
        .I1(\count[11]_i_6_n_0 ),
        .I2(\count[11]_i_7_n_0 ),
        .I3(pc_out[8]),
        .O(\count[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \count[11]_i_6 
       (.I0(jump[5]),
        .I1(jump[3]),
        .I2(jump[4]),
        .I3(jump[0]),
        .I4(jump[1]),
        .I5(jump[2]),
        .O(\count[11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \count[11]_i_7 
       (.I0(jump[10]),
        .I1(jump[9]),
        .I2(jump[11]),
        .I3(jump[6]),
        .I4(jump[7]),
        .I5(jump[8]),
        .O(\count[11]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \count[3]_i_2 
       (.I0(jump[0]),
        .I1(\count[11]_i_6_n_0 ),
        .I2(\count[11]_i_7_n_0 ),
        .I3(pc_out[0]),
        .O(\count[3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \count[3]_i_3 
       (.I0(jump[3]),
        .I1(\count[11]_i_6_n_0 ),
        .I2(\count[11]_i_7_n_0 ),
        .I3(pc_out[3]),
        .O(\count[3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \count[3]_i_4 
       (.I0(jump[2]),
        .I1(\count[11]_i_6_n_0 ),
        .I2(\count[11]_i_7_n_0 ),
        .I3(pc_out[2]),
        .O(\count[3]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \count[3]_i_5 
       (.I0(jump[1]),
        .I1(\count[11]_i_6_n_0 ),
        .I2(\count[11]_i_7_n_0 ),
        .I3(pc_out[1]),
        .O(\count[3]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h5CCC)) 
    \count[3]_i_6 
       (.I0(pc_out[0]),
        .I1(jump[0]),
        .I2(\count[11]_i_7_n_0 ),
        .I3(\count[11]_i_6_n_0 ),
        .O(\count[3]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \count[7]_i_2 
       (.I0(jump[7]),
        .I1(\count[11]_i_6_n_0 ),
        .I2(\count[11]_i_7_n_0 ),
        .I3(pc_out[7]),
        .O(\count[7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \count[7]_i_3 
       (.I0(jump[6]),
        .I1(\count[11]_i_6_n_0 ),
        .I2(\count[11]_i_7_n_0 ),
        .I3(pc_out[6]),
        .O(\count[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \count[7]_i_4 
       (.I0(jump[5]),
        .I1(\count[11]_i_6_n_0 ),
        .I2(\count[11]_i_7_n_0 ),
        .I3(pc_out[5]),
        .O(\count[7]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \count[7]_i_5 
       (.I0(jump[4]),
        .I1(\count[11]_i_6_n_0 ),
        .I2(\count[11]_i_7_n_0 ),
        .I3(pc_out[4]),
        .O(\count[7]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[3]_i_1_n_7 ),
        .Q(pc_out[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[11]_i_1_n_5 ),
        .Q(pc_out[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[11]_i_1_n_4 ),
        .Q(pc_out[11]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[11]_i_1 
       (.CI(\count_reg[7]_i_1_n_0 ),
        .CO({\NLW_count_reg[11]_i_1_CO_UNCONNECTED [3],\count_reg[11]_i_1_n_1 ,\count_reg[11]_i_1_n_2 ,\count_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[11]_i_1_n_4 ,\count_reg[11]_i_1_n_5 ,\count_reg[11]_i_1_n_6 ,\count_reg[11]_i_1_n_7 }),
        .S({\count[11]_i_2_n_0 ,\count[11]_i_3_n_0 ,\count[11]_i_4_n_0 ,\count[11]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[3]_i_1_n_6 ),
        .Q(pc_out[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[3]_i_1_n_5 ),
        .Q(pc_out[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[3]_i_1_n_4 ),
        .Q(pc_out[3]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\count_reg[3]_i_1_n_0 ,\count_reg[3]_i_1_n_1 ,\count_reg[3]_i_1_n_2 ,\count_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\count[3]_i_2_n_0 }),
        .O({\count_reg[3]_i_1_n_4 ,\count_reg[3]_i_1_n_5 ,\count_reg[3]_i_1_n_6 ,\count_reg[3]_i_1_n_7 }),
        .S({\count[3]_i_3_n_0 ,\count[3]_i_4_n_0 ,\count[3]_i_5_n_0 ,\count[3]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[7]_i_1_n_7 ),
        .Q(pc_out[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[7]_i_1_n_6 ),
        .Q(pc_out[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[7]_i_1_n_5 ),
        .Q(pc_out[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[7]_i_1_n_4 ),
        .Q(pc_out[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[7]_i_1 
       (.CI(\count_reg[3]_i_1_n_0 ),
        .CO({\count_reg[7]_i_1_n_0 ,\count_reg[7]_i_1_n_1 ,\count_reg[7]_i_1_n_2 ,\count_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[7]_i_1_n_4 ,\count_reg[7]_i_1_n_5 ,\count_reg[7]_i_1_n_6 ,\count_reg[7]_i_1_n_7 }),
        .S({\count[7]_i_2_n_0 ,\count[7]_i_3_n_0 ,\count[7]_i_4_n_0 ,\count[7]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[11]_i_1_n_7 ),
        .Q(pc_out[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[11]_i_1_n_6 ),
        .Q(pc_out[9]),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
