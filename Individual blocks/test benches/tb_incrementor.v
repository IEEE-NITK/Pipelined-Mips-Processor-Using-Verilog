`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.01.2024 00:06:29
// Design Name: 
// Module Name: tb_incrementor
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


module tb_incrementor;
reg [31:0] in1;
wire [31:0]out;

incrementor uut(in1,out);

initial begin
in1=32'h0;#10
in1=32'h4;#10
$finish;
end
endmodule
