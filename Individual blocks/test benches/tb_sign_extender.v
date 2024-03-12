`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.01.2024 01:00:19
// Design Name: 
// Module Name: tb_sign_extender
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


module tb_sign_extender;
reg [15:0]number;
reg en;
wire [31:0]out;
sign_extender uut(en,number,out);

initial begin
en=1'b0;number=16'b0;#10
en=1'b1;number=16'h0x0123;#10
en=1'b1;number=16'h0xabcd;#10
en=1'b0;number=16'b1111111111111111;#10
en=1'b1;number=16'b0000000101011100;#10
en=1'b1;number=16'b0111010101010001;#10
en=1'b1;number=16'b1111111111111111;#10
$finish;
end
endmodule
