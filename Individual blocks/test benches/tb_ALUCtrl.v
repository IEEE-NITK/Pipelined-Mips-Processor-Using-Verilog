`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.02.2024 12:24:37
// Design Name: 
// Module Name: tb_ALUCtrl
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


module tb_ALUCtrl();
reg clk,rst;
reg [5:0] func;
reg [1:0] ALUOp;
wire [3:0] Operation;

ALU_Ctrl dut(clk,func,ALUOp,Operation,rst);

initial clk=0;
always #5
clk=~clk;

initial begin
rst=1'b1;func=6'b001010;ALUOp=2'b00;#10
rst=1'b0;func=6'b000100;ALUOp=2'b10;#10 //addition
rst=1'b0;func=6'b001101;ALUOp=2'b10;#10 //subtraction
rst=1'b0;func=6'b001100;ALUOp=2'b00;#10 // AND
rst=1'b0;func=6'b001000;ALUOp=2'b10;#10 // XOR
rst=1'b0;func=6'b001111;ALUOp=2'b10;#10 //lsl
rst=1'b0;func=6'b001010;ALUOp=2'b00;#10 //AND
$finish;
end
endmodule
