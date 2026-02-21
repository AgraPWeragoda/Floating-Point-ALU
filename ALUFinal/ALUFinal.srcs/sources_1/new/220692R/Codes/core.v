`timescale 1ns / 1ps

module core(

input clk,
input reset_btn,
input enable,
input[2:0] switches ,
input[2:0] toggleSwitches ,
output[3:0] leds 

    );


// -- Main Clock -- //
clkdiv nclk(

.clk(clk),
.reset(reset),
.outclk(newClk)

);



reg[31:0] valA = 0 ;
reg[31:0] valB = 0 ;    
reg[2:0] oper = 0 ;
reg[31:0] value ;
reg enALU = 0 ;
reg start = 0 ;
reg[3:0] regLed = 0 ; 
reg completedreg = 0 ;
wire[1:0] flagALU ;
wire IDLE ;
wire[31:0] outVal ;


ALU dut(

.A(valA),
.B(valB),
.operation(oper),
.en(enALU),
.clk(newClk),
.reset(reset),
.flag(flagALU),
.busy(IDLE),
.C(outVal)

);


ledDisplay myDisplay(

.clk(newClk),
.rst(reset),
.number(value),
.bits(switches),
.ctrl(toggleSwitches),
.led(leds)

);


always@(posedge newClk or posedge reset)

begin
if(reset)
begin

    valA = 0 ;
    valB = 0 ;
    oper = 0 ;
    enALU = 0 ;
    start = 0 ;
    completedreg = 0 ;
    value = 0 ;
    regLed = 0 ;
    
end
else
begin

if(enable)
begin
    if(~start)
    begin
        
        regLed[0] = 1 ;
        enALU = 1 ;
        valA = 32'b01000110000100001000000000000000 ;
        valB = 32'b01000111011001001011000001001101 ;//
        oper = 3'b000;
        start = 1 ;
        
    end
    else
    begin
    
    if(IDLE == 1)
    begin
    
        if(flagALU == 2'b01)
        begin
        
            regLed[1] = 1 ;
            completedreg = 1 ;
            value = outVal ;
           
        end
        
        else
        begin
            completedreg = 1 ;
            value = {16{flagALU}} ;
        end
    
    end

        
    end
end
end
end

reg [1:0] reset_sync;

always @(posedge clk) begin

    reset_sync <= {reset_sync[0], reset_btn};
end

wire reset = reset_sync[1];
//assign completed = completedreg ;
//assign leds = regLed ;

endmodule
