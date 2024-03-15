`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.02.2024 18:59:54
// Design Name: 
// Module Name: Processor
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


module Processor(clk,reset);

input clk,reset;

wire zero,RegWrite,ALUSrc,MemWrite,MemToReg,MemRead,Branch,Jump,RegDst,PCSrc;
wire [31:0] PC,PC_Next;
wire [31:0] exten_out,ReadData1,ReadData2,ReadRegister1,ReadRegister2,ALUres,ALUres_out,ReadData,Addresult,WriteData;
wire [1:0] ALUOp;

wire [31:0] InstrD,PCT_new;
wire [4:0] WriteRegister,rd;

//fetching the instruction
fetch fetching(clk,reset,PCSrc,PCT_new,InstrD,PC,PC_Next);

// decoding unit
decode_cycle decoding(clk,reset,exten_out,InstrD,RegWrite,ALUSrc,MemWrite,ALUOp,MemToReg,MemRead,Branch,Jump,RegDst,
ReadRegister1,ReadRegister2,WriteRegister,WriteData,ReadData1,ReadData2);

assign rd = InstrD[15:11];
assign PCSrc = Jump;
//execute cycle
execute_cycle execution(RegWrite,ALUSrc,MemWrite,ALUOp,MemToReg,MemRead,Branch,Jump,RegDst,PC,WriteData,
                    WriteRegister,ALUres,zero,exten_out,Addresult,ReadData1,ReadData2,rd,PCT_new);

// mem cycle
mem_cycle memory(clk,ALUres,WriteData,MemRead,MemWrite,ReadData,ALUres_out,WriteRegister,zero,Branch,WriteRegister);

//writeback cycle
Writeback_cycle writeback(RegWrite,WriteData,MemToReg,ReadData,ALUres,WriteRegister);

endmodule