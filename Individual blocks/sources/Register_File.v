`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.02.2024 20:08:41
// Design Name: 
// Module Name: Register_File
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


module Register_File(clk,ReadRegister1,ReadRegister2,reg_write,WriteRegister,WriteData,ReadData1,ReadData2,rst);
input [4:0] ReadRegister1,ReadRegister2,WriteRegister;
input reg_write,clk;
input [31:0] WriteData;
input rst;
output [31:0] ReadData1,ReadData2;
reg [31:0] rd1,rd2;

reg [31:0] regfile [31:0];
integer i;

initial begin
      for (i=1; i<32; i=i+1)   
	begin
         regfile[i]=i;
	end
end

always @(posedge clk or reg_write)
  begin
	if (reg_write) 
	 	regfile[WriteRegister] <= WriteData;
    regfile[0]<=0;
  end

always@(posedge clk or posedge rst) begin
if(rst) begin 
            rd1<=32'h0;
            rd2=32'h0; 
        end
else  begin
        rd1<=regfile[ReadRegister1];
        rd2<=regfile[ReadRegister2];
      end
end

assign ReadData1 = rd1;
assign ReadData2 = rd2;

endmodule
