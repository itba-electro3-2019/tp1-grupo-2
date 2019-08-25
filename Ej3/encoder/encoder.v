module encoder(in,out);
input [3:0] in;
output [1:0] out;

wire [3:0] in;
reg [1:0] out;

always @ (in)
begin
    case(in)
    0000 : assign out = 2'bx;
    4'b0001 : assign out = 0;
    4'b0010 : assign out = 1;
    4'b0100 : assign out = 2;
    4'b1000 : assign out = 3;
    default assign out = 2'bZZ;
    endcase
end
endmodule
