//Contador 4 bits com carry
module Cont4b (clk,rst,carry,saida);
input clk,rst;
output reg carry;
output reg [0:3] saida;
always @(negedge clk )
begin
if (rst)
begin
saida <= (saida>=4'b1001) ? 4'b0 : saida+4'b1;
carry <= (saida==4'b1001) ? 4'b1 : 4'b0;
end
else
begin
saida <= 0;
carry <= 0;
end
end
endmodule
