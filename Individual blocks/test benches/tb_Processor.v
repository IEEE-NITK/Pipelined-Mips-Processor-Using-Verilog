`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.02.2024 19:24:55
// Design Name: 
// Module Name: tb_Processor
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


module tb_Processor;
reg clk,reset;



Processor dut(clk,reset);

initial clk=0;
always #5
clk=~clk;

initial begin
reset=1'b1;#10
reset=1'b0;
#1000
$finish;
end

initial begin
    $dumpfile("tb_Processor.vcd");
    $dumpvars(0,tb_Processor);
end

endmodule