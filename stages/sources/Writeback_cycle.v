`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.03.2024 18:52:04
// Design Name: 
// Module Name: Writeback_cycle
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


module Writeback_cycle(RegWrite,WriteData,MemToReg,ReadData,ALUres,des_reg);
input RegWrite,MemToReg;
input [31:0] ReadData,ALUres;
input [4:0] des_reg;
output [31:0] WriteData;

mux2_1 wbmux(ALUres,ReadData,MemToReg,WriteData);
endmodule
