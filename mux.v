module mux(
    input [3:0] CEO,
    input [3:0] You,
    input [3:0] Jill,
    input [3:0] Fred,
    input [1:0] Sel,
    input Enable,
    output [3:0] Y
);
    assign Y = (Sel == 2'b00 ? CEO :
                Sel == 2'b01 ? You :
                Sel == 2'b10 ? Jill : Fred) & {4{Enable}};
   
endmodule
