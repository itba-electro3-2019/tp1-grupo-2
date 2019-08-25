`include "encoder.v"

module encoder_tb();
reg [3:0] in;
wire [1:0] out;

encoder a1(in,out);

initial
begin
    $monitor("in = %b, out = %b", in, out);
    in = 0;
    #1 in = 4'b0001;
    #1 in = 4'b0010;
    #1 in = 4'b0100;
    #1 in = 4'b1000;
    #1 in = 4'b1011;
end
endmodule
