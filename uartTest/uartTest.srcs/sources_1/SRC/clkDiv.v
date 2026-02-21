`timescale 1ns / 1ps
module clkdiv(
    input clk,
    input reset,
    output outclk
    );
    
parameter timer1limit = 50;// 1 Hz
reg [31:0] timer1count = 0;
reg state;

always@(posedge clk or posedge reset)
begin
    if(reset)
    begin
        timer1count <=0;
        state<=1;
    end
    else
    begin
        if(timer1count == timer1limit)
        begin
            state<=~state;
            timer1count <= 0;
        end    
        else
        begin
            timer1count = timer1count +1 ;
        end        
    end
end
    
assign outclk = state;
    
endmodule
