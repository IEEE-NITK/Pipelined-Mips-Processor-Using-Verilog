`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.03.2024 17:12:37
// Design Name: 
// Module Name: tb_execute
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


module tb_execute;

reg RegWrite,ALUSrc,MemWrite,MemToReg,MemRead,Branch,Jump,RegDst;
reg [31:0] PC,WriteData,ReadData1,ReadData2,signext;
reg [4:0] rd;
reg [1:0] ALUOp;

wire [31:0] ALUres,Addresult;
wire [4:0] des_Register;
wire zero;

execute_cycle ex(RegWrite,ALUSrc,MemWrite,ALUOp,MemToReg,MemRead,Branch,Jump,RegDst,PC,WriteData,
                    des_Register,ALUres,zero,signext,Addresult,ReadData1,ReadData2,rd);

initial begin
RegWrite=1'b1;ALUSrc=1'b0;MemWrite=1'b0;MemToReg=1'b0;MemRead=1'b0;Branch=1'b0;Jump=1'b0;RegDst=1'b1;ALUOp=2'b10;
PC=32'ha;WriteData=32'habcdef;ReadData1=32'h5;ReadData2=32'hffffffff;signext=32'hffff8014;rd=5'b01000;#10

RegWrite=1'b1;ALUSrc=1'b1;MemWrite=1'b0;MemToReg=1'b1;MemRead=1'b1;Branch=1'b0;Jump=1'b0;RegDst=1'b0;ALUOp=2'b00;
PC=32'hb;WriteData=32'habcdef;ReadData1=32'h5;ReadData2=32'hffffffff;signext=32'h00007152;rd=5'b01001;#10

RegWrite=1'b0;ALUSrc=1'b1;MemWrite=1'b1;MemToReg=1'b0;MemRead=1'b0;Branch=1'b0;Jump=1'b0;RegDst=1'b0;ALUOp=2'b00;
PC=32'hc;WriteData=32'habcdef;ReadData1=32'h5;ReadData2=32'hffffffff;signext=32'h00001234;rd=5'b01010;#10

RegWrite=1'b0;ALUSrc=1'b0;MemWrite=1'b0;MemToReg=1'b0;MemRead=1'b0;Branch=1'b1;Jump=1'b0;RegDst=1'b0;ALUOp=2'b01;
PC=32'hd;WriteData=32'habcdef;ReadData1=32'h5;ReadData2=32'hffffffff;signext=32'h0;rd=5'b01100;#10

RegWrite=1'b0;ALUSrc=1'b0;MemWrite=1'b0;MemToReg=1'b0;MemRead=1'b0;Branch=1'b0;Jump=1'b1;RegDst=1'b0;ALUOp=2'b00;
PC=32'he;WriteData=32'habcdef;ReadData1=32'h5;ReadData2=32'hffffffff;signext=32'h0;rd=5'b01111;#10

$finish;
end
endmodule
