`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.01.2024 00:31:53
// Design Name: 
// Module Name: tb_left_shifter
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


module tb_left_shifter;
reg en;
reg [31:0]number;
wire [31:0]out;

left_shifter uut(en,number,out);
initial begin
en=1'b0;number=32'b0;#10
en=1'b1;number=32'b00000000000000000000000000000011;#10
en=1'b1;number=32'b01010101010101010101010101010101;#10
en=1'b0;number=32'b0;#10
$finish;
end
endmodule
