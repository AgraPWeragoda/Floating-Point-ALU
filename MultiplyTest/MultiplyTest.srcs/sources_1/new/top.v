`timescale 1ns / 1ps

module top(

input clk ,
input reset,
input en ,
output done 

    );


reg mulEnable ;
reg[23:0] A ;
reg[23:0] B ;
reg[2:0] state ;
reg regDone ;
reg[48:0] finalValue ;
wire[48:0] mulOutput ;

fpMul dut(

.clk(clk),
.manA(A),
.manB(B),
.expA(),
.expB(),
.reset(reset),
.enable(mulEnable),
.C(mulOutput),
.doneMul(mulFinished)

);

//// ---- Encoder Parameters --- ////

reg encEn = 0 ;
reg[48:0] encValue = 0 ;
wire[7:0] indx ;
wire[23:0] encMan ;
wire[8:0] encExp ;
wire encFinished ;

encoder enc(

.clk(clk),
.encRst(reset),
.enable(encEn) ,
.value(finalValue),
.operation(operation),
.idx(indx),
.encMantissa(encMan),
.encExp(encExp),
.doneEnc(encFinished)

);



always@(posedge clk or posedge reset)
begin
    if(reset)
    begin
    
        mulEnable = 0 ;
        A  = 0;
        B  = 0;
        state  = 0;
        regDone = 0 ;
        finalValue = 0 ;    
        
    end
    
    else
    begin
        if(en)
        begin
            case(state)
            
                3'b000:begin
                
                    mulEnable = 1 ;
                    A = 24'hABC789 ;
                    B = 24'h781223 ;
                    state = 3'b001 ;
                    
                end
                
                3'b001:begin
                
                    if(mulFinished)
                    begin
                    
                        
                        finalValue = mulOutput ;
                        encEn = 1 ; 
                        state = 3'b010 ;                       
                        
                    end
                
                end       
                
                3'b010:begin
                
                    if(encFinished)
                    begin    
                      
                      regDone = 1 ;
                         
                           
                    end           
                                
               end                  
                
            endcase
            
        end
    end
    
end

assign done = regDone ;

endmodule
