`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.03.2024 19:17:38
// Design Name: 
// Module Name: tb_writeback
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


module tb_writeback;
reg RegWrite,MemToReg;
reg [31:0] ReadData,ALUres;
reg [4:0] des_reg;

wire [31:0] WriteData;

Writeback_cycle writeback(RegWrite,WriteData,MemToReg,ReadData,ALUres,des_reg);

initial begin
RegWrite=1'b0;MemToReg=1'b0;ReadData=32'h4;ALUres=32'h8;des_reg=5'b0;#10
RegWrite=1'b1;MemToReg=1'b1;ReadData=32'h3;ALUres=32'h9;des_reg=5'b01110;#10
RegWrite=1'b1;MemToReg=1'b0;ReadData=32'h2;ALUres=32'h7;des_reg=5'b01111;#10
RegWrite=1'b0;MemToReg=1'b1;ReadData=32'h1;ALUres=32'h6;des_reg=5'b11111;#10
RegWrite=1'b1;MemToReg=1'b1;ReadData=32'h19;ALUres=32'h5;des_reg=5'b00100;#10
$finish;
end
endmodule
