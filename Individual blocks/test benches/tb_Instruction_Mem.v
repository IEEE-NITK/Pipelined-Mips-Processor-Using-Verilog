`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.02.2024 01:37:41
// Design Name: 
// Module Name: tb_Instruction_Mem
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


module tb_Instruction_Mem();
reg [31:0] ReadAddress;
reg clk,rst;
wire [31:0] Instruction;

Instruction_Mem uut5(clk,ReadAddress,Instruction,rst);

initial clk=0;
always #5
clk=~clk;

initial begin
ReadAddress=32'h00400000;rst=1'b1;#10
ReadAddress=32'h00400004;rst=1'b0;#10
ReadAddress=32'h00400008;rst=1'b0;#10
ReadAddress=32'h0040000c;rst=1'b0;#10
ReadAddress=32'h00400010;rst=1'b0;#10
ReadAddress=32'h00400014;rst=1'b1;#10
ReadAddress=32'h00400018;rst=1'b0;#10
ReadAddress=32'h0040001c;rst=1'b0;#10
$finish;
end
endmodule
