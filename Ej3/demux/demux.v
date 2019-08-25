module demux(in,out,sel);
input in;
input [1:0] sel;
output [3:0] out;

wire in;
wire [1:0] sel;
reg [3:0] out;

always @ (in or sel)
begin
    if (in==1)
        case(sel)
        00 : assign out = 1;
        2'b01 : assign out = 2;
        2'b10 : assign out = 4;
        2'b11 : assign out = 8;
        endcase
    else
        assign out = 0;
    end

endmodule
