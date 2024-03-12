`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.03.2024 23:21:12
// Design Name: 
// Module Name: execute_cycle
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module execute_cycle(RegWrite,ALUSrc,MemWrite,ALUOp,MemToReg,MemRead,Branch,Jump,RegDst,PC,WriteData,
                    des_Register,ALUres,zero,signext,Addresult,ReadData1,ReadData2,rd);
                    
input RegWrite,ALUSrc,MemWrite,MemToReg,MemRead,Branch,Jump,RegDst;
input [31:0] PC,WriteData,ReadData1,ReadData2,signext;
input [4:0] rd;
input [1:0] ALUOp;

output [31:0] ALUres,Addresult;
output [4:0]des_Register;
output zero;

wire [31:0] mux_out,shift_left_out;
wire [5:0] func_1;
wire [4:0] terget_reg;
wire [3:0] aluctrl;

assign func_1 = signext[5:0];
assign target_reg = signext[15:11];

mux2_1 op2mux(ReadData2,signext,ALUSrc,mux_out);
mux regmux(target_reg,rd,RegDst,des_Register);
ALU_Ctrl alucontrol(func_1,ALUOp,Operation);
left_shifter shiftleft(signext,shift_left_out);
adder add1(PC,signext,Addresult);
ALU alu(ReadData1,mux_out,Operation,ALUres,zero);


endmodule
