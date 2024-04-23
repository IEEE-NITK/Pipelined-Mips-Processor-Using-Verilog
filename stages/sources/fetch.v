`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.03.2024 12:36:51
// Design Name: 
// Module Name: fetch
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


module fetch(clk,rst,PC_sel_Mux,PCT,InstrD,PC,PC_Next);
input clk,rst,PC_sel_Mux;
input [31:0] PCT;
output reg [31:0] InstrD=32'h0,PC=32'h0,PC_Next=32'h0;

    // Declaring internal wires
wire [31:0] PC_F, PCF, PCPlus4F;
wire [31:0] InstrF;

    // Declaration of Register
reg [31:0] InstrF_reg;
reg [31:0] PCF_reg, PCPlus4F_reg;


mux2_1 PCmux(PCPlus4F,PCT,PC_sel_Mux,PC_F);

PC program_counter(clk,rst,PCF,PC_F);

Instruction_Mem insmem(PCF,InstrF,rst);

incrementor addPC(PCF,PCPlus4F);

always@(posedge clk or rst) begin
if(rst)
    begin
        InstrF_reg <= 32'h00000000;
        PCF_reg <= 32'h00000000;
        PCPlus4F_reg <= 32'h00000000;
    end
else 
    begin
        InstrD <= InstrF;
        PC <= PCF;
        PC_Next <= PCPlus4F;
    end
end

endmodule
