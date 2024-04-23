`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.02.2024 00:05:36
// Design Name: 
// Module Name: tb_Data_Mem
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


module tb_Data_Mem();
reg clk,rst,MemRead,MemWrite;
reg [31:0] WriteData,Address;
wire [31:0] ReadData;

Data_Mem uut(clk,Address,WriteData,MemRead,MemWrite,ReadData,rst);

initial clk=0;
always #5 
clk=~clk;

initial begin 
rst=1'b1;MemRead=1'b1;MemWrite=1'b0;WriteData=32'h00abcdef;Address=32'h0;#10
rst=1'b0;MemRead=1'b1;MemWrite=1'b0;WriteData=32'h00abcdef;Address=32'h10001004;#10
rst=1'b0;MemRead=1'b0;MemWrite=1'b1;WriteData=32'h00abcdef;Address=32'h1000101C;#10
rst=1'b0;MemRead=1'b1;MemWrite=1'b0;WriteData=32'h00abcdef;Address=32'h1000101C;#10
rst=1'b0;MemRead=1'b1;MemWrite=1'b1;WriteData=32'h00abcdef;Address=32'h10001010;#10
rst=1'b0;MemRead=1'b1;MemWrite=1'b0;WriteData=32'h00abcdef;Address=32'h10001010;#10
$finish;
end
endmodule
