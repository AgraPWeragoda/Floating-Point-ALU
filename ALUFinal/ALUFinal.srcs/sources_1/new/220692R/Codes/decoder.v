`timescale 1ns / 1ps

module decoder(

input[31:0] buff,
input clk,
input rst,
input en,
output valid ,
output[1:0] busy ,
output[24:0] mantissa ,
output[7:0] exponent ,
output[1:0] flag  // Flag is 00 for normal , 01 for 0 , 11 for infinity and finally 10 for NaN

    );
    
reg[7:0] exp = 0 ;
reg[23:0] regMan = 0 ;
reg sign = 0 ;
reg[1:0] zero = 0  ;
reg state = 0 ;
reg regValid = 0;

always@(buff or rst or en)
begin
    if(rst)
    begin
    
        exp = 0 ;
        regMan = 0 ;
        sign = 0 ;
        state = 0 ;                 // For IDLE state -> 0 , 1 otherwise
        regValid = 0 ;              // 1 for valid output and 0 otherwise
        zero = 0 ;
        
    end
    else
    begin
        if(en)
        begin

            sign = buff[31] ;
            exp = buff[30:23] ;
            regMan = buff[22:0] ;
            state = 1 ;
          //  regValid = 0 ;
            
            ///////////////////// Processing Mantissa and Exponent //////////////////////
            if(exp == 0)
            begin
                if(regMan == 0) // This is the zero in floating point
                begin
                    zero = 1 ;  // Represents zero
                end
                else
                begin
                    exp = 1 ; // Represents Denormalized Numbers
                end         
            end
            else
            begin
                if(exp == 255)
                begin
                    if(regMan == 0)
                    begin
                        zero = 2'b11 ; // Represents Infinity
                    end
                    else              
                    begin
                        zero = 2'b10 ; // Represents NaN
                    end
                end
                else
                begin
                    regMan = (1<<23) + regMan ; // Adds the additional 1 
                end
            end
            regValid = 1 ;
            state = 0 ;
        end    
        else
        begin
            state = 0 ;
        end
    end
end

assign mantissa = regMan ;
assign flag = zero ;
assign busy = state ;
assign valid = regValid ;
assign exponent = exp ;

endmodule
