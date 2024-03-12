`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.03.2024 14:11:16
// Design Name: 
// Module Name: tb_fetch
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


module tb_fetch;
reg clk,rst,PC_sel_Mux;
reg [31:0] PCT;
wire [31:0] InstrD,PC,PC_Next;

fetch dut(clk,rst,PC_sel_Mux,PCT,InstrD,PC,PC_Next);

initial 
clk = 0;
always #5
clk=~clk;

initial begin
rst=1'b1;PC_sel_Mux=1'b1;PCT=32'h0;#10
rst=1'b0;PC_sel_Mux=1'b0;PCT=32'h0;#10
rst=1'b0;PC_sel_Mux=1'b0;PCT=32'h10;#10
rst=1'b0;PC_sel_Mux=1'b0;PCT=32'h0;#10
rst=1'b0;PC_sel_Mux=1'b1;PCT=32'h0;#10
$finish;
end
endmodule
