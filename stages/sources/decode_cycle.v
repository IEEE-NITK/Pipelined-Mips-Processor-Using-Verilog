`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.03.2024 17:43:50
// Design Name: 
// Module Name: decode_cycle
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


module decode_cycle(clk,rst,exten_out,Instruction,RegWrite,ALUSrc,MemWrite,ALUOp,MemToReg,MemRead,Branch,Jump,RegDst,
ReadRegister1,ReadRegister2,WriteRegister,WriteData,ReadData1,ReadData2);

input clk,rst;
input [31:0] Instruction,WriteData;

output [4:0] WriteRegister;
output [31:0] exten_out,ReadData1,ReadData2,ReadRegister1,ReadRegister2;
output RegWrite,ALUSrc,MemWrite,MemToReg,MemRead,Branch,Jump,RegDst;
output [1:0] ALUOp;

//internal wires declaration
wire [5:0] opcode;
wire [4:0] rs, rt, rd,wreg;
wire [15:0] address;

// declaration of the above values
assign rs = Instruction[25:21];
assign rt = Instruction[20:16];
assign rd = Instruction[15:11];
assign opcode = Instruction[31:26];
assign address = Instruction[15:0];

control_unit  control(opcode,RegWrite,ALUSrc,MemWrite,ALUOp,MemToReg,MemRead,Branch,Jump,RegDst);
mux reg_mux(rt,rd,RegDst,wreg);
Register_File regfile(clk,rs,rt,RegWrite,WriteRegister,WriteData,ReadData1,ReadData2,rst);
sign_extender signext(address,exten_out);

assign WriteRegister = wreg;
assign ReadRegister1 = rs;
assign ReadRegister2 = rt;

endmodule
