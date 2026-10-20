
module top(
    input [15:0] sw,
    input btnL, btnU, btnD, btnR, btnC,
    output [15:0] led
);

    wire [1:0] mux_sel;
    wire [1:0] demux_sel;
    wire [3:0] mux_data;

    assign mux_sel = {btnU, btnL};
    assign demux_sel = {btnR, btnD};

mux MUX (
    .CEO(sw[3:0]),
    .You(sw[7:4]),
    .Fred(sw[11:8]),
    .Jill(sw[15:12]),
    .Sel(mux_sel),
    .Enable(btnC),
    .Y(mux_data)
);

demux DEMUX (
    .local_library(led[3:0]),
    .firedepartment(led[7:4]),
    .school(led[11:8]),
    .ribshack(led[15:12]),
    .In(mux_data),
    .Sel(demux_sel),
    .Enable(btnC)
);

endmodule
