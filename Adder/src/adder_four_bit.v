module adder_four_bit(
output sum1,
output sum2,
output sum3,
output sum4,
output cout, 

input cin,
input clk1,
input clk2,
input clk3,
input clk4);

wire c1,c2,c3,c4;

full_3 ad0( .a(clk1), .b(clk2),.cin(cin), .s(sum1), .cout(c1));
full_3 ad1( .a(clk3), .b(clk4),.cin(c1), .s(sum2), .cout(c2));
full_3 ad2( .a(clk1), .b(clk2),.cin(c2), .s(sum3), .cout(c3));
full_3 ad3( .a(clk3), .b(clk4),.cin(c3), .s(sum4), .cout(c4));
assign cout= c4;
endmodule