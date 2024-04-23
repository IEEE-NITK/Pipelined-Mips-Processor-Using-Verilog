`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.03.2024 15:21:22
// Design Name: 
// Module Name: tb_adder
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


module tb_adder;
reg [31:0] number1,number2;

wire [31:0] res;

adder add1(number1,number2,res);

initial begin
number1=32'h65654540;number2=32'h80000001;#10
number1=32'h80000000;number2=32'h80000000;#10
number1=32'h80000000;number2=32'h00000007;#10
$finish;
end
endmodule
