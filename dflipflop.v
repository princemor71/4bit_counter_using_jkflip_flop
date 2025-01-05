`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.01.2025 23:49:12
// Design Name: 
// Module Name: dflipflop
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




module dflipflop(j,k,q,qn,clk);
//input d,clk;
//output q,qn;
//reg q,qn;
//initial
//begin q=1;qn=0 ; end
//always @(posedge clk)
//begin
//case ({d})
//1'b0: begin q=0;qn=1; end
//1'b1: begin q=1; qn=0; end 
//endcase
//end
input j,k, clk;
output q,qn;
reg q,qn;
initial
begin q=1;qn=0;end
always @(posedge clk)
case({j,k})
2'b00:begin q=1;qn=0; end
2'b01: begin q=0; qn=1; end
2'b10 : begin q=1 ; qn=0; end 
2'b11 : begin q=~q; qn=~qn ; end 
endcase 

endmodule

module jkflip (j,k,q,qn,clk);
output [3:0]q,qn;
input j,k,clk;
wire [3:0]q;

dflipflop l0(q[0],qn[0],j,k,clk);
dflipflop l1(q[1],qn[1],j,k,clk);
dflipflop l2(q[2],qn[2],j,k,clk);
dflipflop l3(q[3],qn[3],j,k,clk);
endmodule
