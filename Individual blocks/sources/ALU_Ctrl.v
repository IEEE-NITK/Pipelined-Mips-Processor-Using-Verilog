`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.02.2024 11:08:06
// Design Name: 
// Module Name: ALU_Ctrl
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


module ALU_Ctrl(func,ALUOp,Operation);
input [5:0] func;
input [1:0] ALUOp;
output [3:0] Operation;
reg [3:0] pseudoOp;

always@(func or ALUOp) begin
    pseudoOp[0] = (func[3] | func[0]) & ALUOp[1];
    pseudoOp[1] = (~ALUOp[1]) | (~func[2]);
    pseudoOp[2] = ALUOp[0] | (ALUOp[1] & func[1]);
    pseudoOp[3] = 1'b0;
end

assign Operation = pseudoOp;

endmodule
