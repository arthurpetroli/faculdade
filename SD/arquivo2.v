//Conversor BCD para Display de 7 Segmentos
module bcd_7seg (entra,sai);
input [0:3] entra;
output reg [0:7] sai; //ponto decimal
always @(entra) begin

case (entra)
//I--a--I
//f b
//I--g--I
//e c
//I--d--I
4'b0000: sai<=8'b11111100;
4'b0001: sai<=8'b01100000;
4'b0010: sai<=8'b11011010;
4'b0011: sai<=8'b11110010;
4'b0100: sai<=8'b01100110;
4'b0101: sai<=8'b10110110;
4'b0110: sai<=8'b10111110;
4'b0111: sai<=8'b11100000;
4'b1000: sai<=8'b11111110;
4'b1001: sai<=8'b11110110;
default: sai<=8'b00000000;
endcase
end
endmodule