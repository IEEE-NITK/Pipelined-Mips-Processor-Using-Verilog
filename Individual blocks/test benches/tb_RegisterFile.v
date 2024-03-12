`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.02.2024 22:41:03
// Design Name: 
// Module Name: tb_RegisterFile
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


module tb_RegisterFile;
reg [4:0] ReadRegister1,ReadRegister2,WriteRegister;
reg reg_write,clk,rst;
reg [31:0] WriteData;
wire [31:0] ReadData1,ReadData2;

Register_File uut2(clk,ReadRegister1,ReadRegister2,reg_write,WriteRegister,WriteData,ReadData1,ReadData2,rst);

initial clk=0;
always #5
clk=~clk;

initial begin
reg_write=1'b0;ReadRegister1=5'b00100;ReadRegister2=5'b00101;WriteData=32'h0;WriteRegister=5'b11011;rst=1'b1;#10
reg_write=1'b0;ReadRegister1=5'b00100;ReadRegister2=5'b00101;WriteData=32'h0;WriteRegister=5'b11011;rst=1'b0;#10
reg_write=1'b0;ReadRegister1=5'b11000;ReadRegister2=5'b11011;WriteData=32'h0;WriteRegister=5'b11011;rst=1'b0;#10
reg_write=1'b1;ReadRegister1=5'b00100;ReadRegister2=5'b00101;WriteData=32'hffffffff;WriteRegister=5'b11011;rst=1'b0;#10
reg_write=1'b0;ReadRegister1=5'b11000;ReadRegister2=5'b11011;WriteData=32'hffffffff;WriteRegister=5'b11011;rst=1'b0;#10
$finish;
end
endmodule
