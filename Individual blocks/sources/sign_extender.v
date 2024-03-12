`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.01.2024 00:44:02
// Design Name: 
// Module Name: sign_extender
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


module sign_extender(number,out);
input [15:0]number;
output reg [31:0] out;


always@(number) begin
  if(number[15]==1'b1) out<={16'h0xffff,number};
  else out<={16'h0,number};
end

endmodule
