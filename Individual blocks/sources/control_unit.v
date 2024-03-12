`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.03.2024 17:58:42
// Design Name: 
// Module Name: control_unit
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


module control_unit(Op,RegWrite,ALUSrc,MemWrite,ALUOp,MemToReg,MemRead,Branch,Jump,RegDst);
input [5:0]Op;
output reg RegWrite,ALUSrc,MemWrite,MemToReg,MemRead,Branch,Jump,RegDst;
output reg [1:0] ALUOp;

always@(Op) begin
    RegWrite <= 1'b0;
    case(Op)
        6'b000000:
            begin   RegDst <= 1'b1;
                    ALUSrc <= 1'b0;
                    MemWrite <= 1'b0;
                    ALUOp <= 2'b10;
                    MemToReg <= 1'b0;
                    MemRead <= 1'b0;
                    Branch <= 1'b0;
                    Jump <= 1'b0;
                    RegWrite <= 1'b1;
            end
         6'b100011:
            begin   RegDst <= 1'b0;
                    ALUSrc <= 1'b1;
                    MemWrite <= 1'b0;
                    ALUOp <= 2'b00;
                    MemToReg <= 1'b1;
                    MemRead <= 1'b1;
                    Branch <= 1'b0;
                    Jump <= 1'b0;
                    RegWrite <= 1'b1;
            end
         6'b101011:
            begin   RegDst <= 1'b0;
                    ALUSrc <= 1'b1;
                    MemWrite <= 1'b1;
                    ALUOp <= 2'b00;
                    MemToReg <= 1'b0;
                    MemRead <= 1'b0;
                    Branch <= 1'b0;
                    Jump <= 1'b0;
                    RegWrite <= 1'b0;
            end
         6'b000100:
            begin   RegDst <= 1'b0;
                    ALUSrc <= 1'b0;
                    MemWrite <= 1'b0;
                    ALUOp <= 2'b01;
                    MemToReg <= 1'b0;
                    MemRead <= 1'b0;
                    Branch <= 1'b1;
                    Jump <= 1'b0;
                    RegWrite <= 1'b0;
            end
         6'b000010:
            begin   RegDst <= 1'b0;
                    ALUSrc <= 1'b0;
                    MemWrite <= 1'b0;
                    ALUOp <= 2'b00;
                    MemToReg <= 1'b0;
                    MemRead <= 1'b0;
                    Branch <= 1'b0;
                    Jump <= 1'b1;
                    RegWrite <= 1'b0;
            end
         default:
            begin   RegDst <= 1'b0;
                    ALUSrc <= 1'b0;
                    MemWrite <= 1'b0;
                    ALUOp <= 2'b00;
                    MemToReg <= 1'b0;
                    MemRead <= 1'b0;
                    Branch <= 1'b0;
                    Jump <= 1'b0;
                    RegWrite <= 1'b0;
            end
    endcase
end
endmodule
