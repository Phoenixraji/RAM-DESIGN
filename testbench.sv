`timescale 1ns/1ps

module RAM_tb;
    reg clk;
    reg we;
    reg [3:0] addr;
    reg [7:0] din;
    wire [7:0] dout;

    RAM uut (
        .clk(clk),
        .we(we),
        .addr(addr),
        .din(din),
        .dout(dout)
    );

    // Clock generation
    always #5 clk = ~clk;

    initial begin
        // Enable waveform dumping
        $dumpfile("dump.vcd");
        $dumpvars(0, RAM_tb);

        $display("Time | WE | Addr | Din  | Dout");
        $display("-------------------------------");

        clk = 0; we = 0; addr = 0; din = 0;

        #10 we = 1; addr = 4'd3; din = 8'hAA;
        #10 we = 1; addr = 4'd5; din = 8'h55;

        #10 we = 0; addr = 4'd3;
        #10 $display("%g |  %b |  %d   |  %h  |  %h", $time, we, addr, din, dout);

        #10 we = 0; addr = 4'd5;
        #10 $display("%g |  %b |  %d   |  %h  |  %h", $time, we, addr, din, dout);

        $finish;
    end
endmodule
