`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.03.2024 02:15:15
// Design Name: 
// Module Name: tb_decode_cycle
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


module tb_decode_cycle;
reg clk,rst;
reg [31:0] Instruction,WriteData;

wire [4:0] WriteRegister;
wire [31:0] exten_out,ReadData1,ReadData2,ReadRegister1,ReadRegister2;
wire RegWrite,ALUSrc,MemWrite,MemToReg,MemRead,Branch,Jump,RegDst;
wire [1:0] ALUOp;


decode_cycle decode(clk,rst,exten_out,Instruction,RegWrite,ALUSrc,MemWrite,ALUOp,MemToReg,MemRead,Branch,Jump,RegDst,
ReadRegister1,ReadRegister2,WriteRegister,WriteData,ReadData1,ReadData2);

initial clk=0;
always #5 clk=~clk;

initial begin
rst=1'b1;Instruction=32'h0;WriteData=32'h0;#10
rst=1'b0;Instruction=32'hafff0000;WriteData=32'h0;#10
rst=1'b0;Instruction=32'h13ff0000;WriteData=32'h0;#10
rst=1'b0;Instruction=32'h0bff0000;WriteData=32'h0;#10
rst=1'b0;Instruction=32'h00023800;WriteData=32'habcdef;#10
rst=1'b0;Instruction=32'h08070000;WriteData=32'h0;#10
//rst=1'b1;Instruction=32'h0;WriteData=32'h0;#10
$finish;
end
endmodule
