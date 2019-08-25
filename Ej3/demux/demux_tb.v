`include "demux.v"

module demux_tb();
reg in;
reg [1:0] sel;
wire [3:0] out;

demux d1(in,out,sel);

initial
begin
    $monitor("in = %b, sel = %b, out = %b", in, sel, out);
    sel = 1;
    in = 0;
    #1 in = 0;
    #1 sel = 1;
    #1 in = 1;
    #1 in = 0;
    #1 sel = 3;
    #1 in = 0;
    #1 sel = 3;
    #1 in = 0;
end
endmodule