`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.03.2024 15:58:12
// Design Name: 
// Module Name: tb_mem
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


module tb_mem;
reg clk,MemRead,MemWrite,Branch;
reg [31:0] ALUres_out,WriteData;
reg [4:0] des_Reg;
reg zero;

wire [31:0] ReadData,Address;
wire [4:0] des_reg_out;
wire PCSrc;

mem_cycle DataMemory(clk,Address,WriteData,MemRead,MemWrite,ReadData,ALUres_out,des_Reg,zero,Branch,des_reg_out,PCSrc); 
endmodule
