`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.01.2024 19:36:09
// Design Name: 
// Module Name: tb_mux
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


module tb_mux;
reg [31:0] in0,in1;
wire [31:0] out;
reg sel;
mux2_1 uut(in0,in1,sel,out);
initial begin
in0=32'b1;in1=32'b0;sel=1'b0;#5
in0=32'b1;in1=32'b0;sel=1'b1;#5
in0=32'b11010000101111111111111111111111;in1=32'b0;sel=1'b0;#5
$finish;
end
endmodule
