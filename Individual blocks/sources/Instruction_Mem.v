`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.01.2024 19:18:43
// Design Name: 
// Module Name: Instruction_Mem
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
module Instruction_Mem(Readaddress,Instruction,rst);
input rst;
input [31:0] Readaddress;
output  [31:0] Instruction;
reg [31:0] IM [15:0];

//initial begin
//     $readmemh("memfile.hex",IM);
//end
initial begin
IM[0] = 32'h00000000;
IM[1] = 32'h00500293;
IM[2] = 32'h00300313;
IM[3] = 32'h006283B3;
IM[4] = 32'h00002403;
IM[5] = 32'h00100493;
IM[6] = 32'h00940533;
end
assign Instruction = (rst==1'b1) ? (32'h00000000): IM[(Readaddress)/4];
endmodule
