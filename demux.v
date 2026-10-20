module demux(

output [3:0] local_library,
output [3:0] firedepartment,
output [3:0] school,
output [3:0] ribshack,
input [3:0] In,
input [1:0] Sel,
input Enable

);

assign local_library = (Enable && Sel == 2'b00 ? In : 4'b0000); // Drive Y1 if Sel == 0
assign firedepartment = (Enable && Sel == 2'b01 ? In : 4'b0000);
assign school = (Enable && Sel == 2'b10 ? In : 4'b0000);
assign ribshack = (Enable && Sel == 2'b11 ? In : 4'b0000); // Drive Y2 if Sel == 1
    

endmodule
