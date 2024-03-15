`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.03.2024 12:51:04
// Design Name: 
// Module Name: PC
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


module PC(clk,rst,PC,PC_Next);

input clk,rst;
input [31:0] PC_Next;
output reg [31:0] PC;

always@(posedge clk) begin
if(rst==1'b1) PC <= 32'h0;
else PC <= PC_Next;
end

endmodule
