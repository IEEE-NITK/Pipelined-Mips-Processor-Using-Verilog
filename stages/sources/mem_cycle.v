`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.03.2024 19:29:39
// Design Name: 
// Module Name: mem_cycle
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


module mem_cycle(clk,Address,WriteData,MemRead,MemWrite,ReadData,ALUres_out,des_Reg,zero,Branch,des_reg_out,PCSrc);
input clk,MemRead,MemWrite,Branch;
input [31:0] ALUres_out,WriteData;
input [4:0] des_Reg;
input zero;

output [31:0] ReadData,Address;
output [4:0] des_reg_out;
output PCSrc;

wire MemRead, MemWrite, Branch;

assign  Address = ALUres_out;
assign des_reg_out = des_Reg;


and (PCSrc, Branch, zero);
Data_Mem memory(clk,Address,WriteData,MemRead,MemWrite,ReadData);

endmodule
