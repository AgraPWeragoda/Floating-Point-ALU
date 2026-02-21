`timescale 1ns / 1ps


module normalizer(

input clk ,
input reset ,
input[2:0] operation ,
input [7:0] expA ,
input [7:0] expB ,
input sA ,
input sB ,
input signed [8:0] excessExp ,
input[48:0] mantissa ,
input en ,
output[1:0] flags ,
output[31:0] value ,
output doneNorm ,
output[4:0] outexceptionFlags 

    );
    
reg[2:0] state = 0;
reg signed [8:0] diffExp = 0 ;
reg flagInf = 0 ;
reg flagZero = 0; 
reg[7:0] exp = 0 ;
reg s ;
reg [31:0] finalValue = 0 ;
reg[22:0] regMan =0 ;
reg flagNan ;
reg[1:0] regFlag ;
reg finish ;
reg[8:0] shift = 0  ;
reg guard =0;
reg round =0 ; 
reg sticky = 0 ;
// Bit 4: Invalid Operation (NaN)
// Bit 3: Division by Zero
// Bit 2: Overflow
// Bit 1: Underflow
// Bit 0: Inexact (Precision lost)
reg [4:0] exceptionFlags =0 ;
reg [22:0] temp_man = 0;
reg [7:0]  temp_exp = 0;

//// ---- Encoder Parameters --- ////

reg encEn = 0 ;
reg[48:0] encValue = 0 ;
wire[7:0] indx ;
wire[23:0] encMan ;
wire[8:0] encExp ;
wire encFinished ;
reg[23:0] regmantissa ;

encoder enc(

.clk(clk),
.encRst(reset),
.enable(encEn) ,
.value(mantissa),
.operation(operation),
.idx(indx),
.encMantissa(encMan),
.encExp(encExp),
.doneEnc(encFinished),
.inexact(encInexact) 


);




always@(posedge clk or posedge reset)

begin

if(reset)
begin
    // Take the nescesary registers to initial mode
    state <= 0 ;
    diffExp <= 0 ;
    flagInf <= 0 ;
    flagZero <= 0 ;
    exp <= 0 ;
    s <= 0 ;
    finalValue <= 0 ;
    regMan = 0 ;
    flagNan = 0 ;
    regFlag = 0 ;
    finish = 0 ;
    shift = 0 ;
    encEn = 0 ;
    regmantissa = 0 ;
    exceptionFlags =0 ;
    guard =0 ;
    round = 0 ; 
    sticky = 0 ;
    temp_man = 0 ;
    temp_exp = 0 ;
end  

else
begin

if(en)
begin

    case(state)
    
    3'b000:begin
        
        
        case(operation)
        
            3'b001: // Additon
            begin
                encEn <= 1 ;
                state <= 3'b001 ;
            end     
            
            3'b000: // Additon
            begin
                encEn <= 1 ;
                state <= 3'b001 ;
            end            
        
            3'b011: // Division
            begin
            
                 diffExp = expA - expB + excessExp ;
                 state = 3'b010 ;
                 regmantissa  = mantissa ;
                 
            end
            
            3'b010: //Multiplicatin
            begin
                
                encEn <= 1 ;
                state <= 3'b001;              
                
            end
            
        endcase
        
    end
    
    3'b001:begin
    
    if(encFinished)
    begin
    exceptionFlags[0] = encInexact ;
    
    case(operation)
        
        3'b001:begin 
        
        diffExp = excessExp + encExp - 127  ;     
        regmantissa = encMan ; 
        state = 3'b010 ;  
        
        end
        
        3'b000:begin 
        
        diffExp = excessExp + encExp - 127  ;     
        regmantissa = encMan ; 
        state = 3'b010 ;  
        
        end
               
        
        3'b010: begin
            // Multiplication 
            diffExp = expA + expB - 254 + encExp ;
            regmantissa = encMan ;
            state = 3'b010 ;
        end
    endcase
    
    
    end
        
    end
    
    3'b010: begin
                    
    
                if(diffExp >= 128)
                begin
                    if((diffExp == 128) && (regmantissa[22:0] == 0))
                    begin
                    //Infinity
                        regFlag <= 2'b11;  
                        exceptionFlags[2] <= 1;
                        exp <= 9'h1ff ;
                        state <= 3'b111;                      
                    end
                    else
                    begin
                        // for Nan
                        exceptionFlags[4] <= 1 ;
                        regFlag = 2'b10 ;
                        state <= 3'b111 ;
                    end

                end
                else if(diffExp > -127)
                begin
                
                    sticky = encInexact; // -- new
                    guard = regmantissa[0]; // -- new
                    
                    regFlag <= 2'b01; 
                    
    
                    temp_exp = diffExp + 127;
                    temp_man = regmantissa[22:0]; 
                    
                    if ( guard && (round || sticky || temp_man[0]) ) 
                    begin
                        temp_man = temp_man + 1; 

                        if (temp_man == 0) begin
                            temp_exp = temp_exp + 1;
                            
                            // Check if Exponent Increment caused Overflow to Infinity
                            if (temp_exp == 255) begin
                                regFlag <= 2'b11;       // Infinity
                                exceptionFlags[2] <= 1; // Overflow
                                exceptionFlags[0] <= 1; // Inexact
                                temp_man = 0;
                            end
                        end
                    end
                    
                
                    exp <= temp_exp;
                    regMan <= temp_man;
                    state <= 3'b111;
                    
                end
                else if(diffExp <= -127)
                begin
                    if(mantissa[22:0] == 0)
                    begin
                        regFlag <= 0;
                        regMan<= 0;
                        state <= 3'b111 ;
                        if(encInexact)
                        begin
                            exceptionFlags[1]<=1 ;
                        end
                    end
                    else
                    begin
                    // Denormalized Numbers
                        exceptionFlags[1]<=1 ;
                        shift = (-126) - diffExp ;
                        exp <= 0 ;
                        regMan <= regmantissa >> shift ;
                        regFlag <= 2'b01 ; 
                        state <= 3'b111 ;                                           
                    end                    
                end
    end

    3'b111:
    begin
       
            s = sA ^ sB ;
            finalValue = {s,exp,regMan} ;
            finish = 1 ;
   
    end
    
    endcase    
end
end

end

assign value = finalValue ;
assign flags = regFlag ;
assign doneNorm = finish ;
assign outexceptionFlags = exceptionFlags ;

endmodule
