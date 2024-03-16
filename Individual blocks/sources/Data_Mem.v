`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.02.2024 02:17:25
// Design Name: 
// Module Name: Data_Mem
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


module Data_Mem(clk,Address,WriteData,MemRead,MemWrite,ReadData);
input [31:0] Address,WriteData;
input MemRead,MemWrite,clk;
output reg [31:0] ReadData;
reg [31:0] rdata;
reg [31:0] wdata;
reg [31:0] DM [255:0];
integer i;

initial begin
for(i=0;i<256;i=i+1) 
    begin
        DM[i]=i;
    end
end

always@(MemRead or MemWrite or Address) begin
    if(MemWrite && ~MemRead) 
        DM[(Address-268439552)>>2] = wdata; //assuming DM start from 0x10001000
    else if(MemRead && ~MemWrite)
        rdata = DM[(Address-268439552)>>2];
    else
        rdata=32'h0;
end        

always@(posedge clk) begin
        wdata<=WriteData;
        ReadData<=rdata;
     end
     
endmodule
