module ej4circuit (binaryNibbleIn, grayNibbleOut);

input [3:0] binaryNibbleIn;
output [3:0] grayNibbleOut ;

assign grayNibbleOut[3] = binaryNibbleIn[3];
assign grayNibbleOut[2] = binaryNibbleIn[3] ^ binaryNibbleIn[2];
assign grayNibbleOut[1] = binaryNibbleIn[2] ^ binaryNibbleIn[1];
assign grayNibbleOut[0] = binaryNibbleIn[1] ^ binaryNibbleIn[0];

endmodule