`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.02.2024 13:19:05
// Design Name: 
// Module Name: ALU
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


module ALU(number1,number2,Operation,result,Z_flag);
input [31:0] number1,number2;
input [3:0] Operation;

output [31:0] result;
output  Z_flag;

reg [31:0] ans;

always@(number1 or number2 or Operation) begin
case(Operation)
    4'b0000: ans <= number1 & number2;  //BITWISE AND
    4'b0001: ans <= number1 | number2;  //BITWISE OR
    4'b0010: ans <= number1 + number2; //addition
    //4'b0011: ans = number1 ^ number2;  //Bitwise EOR
    //4'b0100: ans = number1 || number2; //
    //4'b0101: ans = number2<<1;       //left shift by 1
    4'b0110: ans <= number1 - number2;  //subtraction
    4'b0111: begin
                if(number1 < number2) ans <= 32'h1;
                else ans <= 32'h0;  //Set less than
             end

    default: ans = 32'h0;
endcase
end

assign result = ans;
assign Z_flag = (ans==0)?1'b1:1'b0;

endmodule
