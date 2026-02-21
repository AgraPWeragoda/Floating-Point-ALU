`timescale 1ns / 1ps
module validator(

input[1:0] flagA ,
input[1:0] flagB ,
input clk ,
input reset,
input[2:0] operationValidation ,
input validatorEn ,
output finish ,
output[1:0] result 

    );

reg[1:0] validity = 0 ;
reg finished ;
    
always@(posedge validatorEn or posedge reset)
begin
if(reset)
begin
    validity = 0 ;
    finished = 0 ;
end

else
begin
    if(validatorEn)
    begin
    
        case(operationValidation)
        
        3'b001: // Addition
        begin
            if((flagA[1] ==0) && (flagB[1] == 0))
            begin
                validity <= 2'b01 ; // Valid Result
            end
            else
            begin
                validity <= 2'b10 ;
            end

        end
        
        3'b000: // Substraction
        begin
            if((flagA[1] ==0) && (flagB[1] == 0))
            begin
                validity <= 2'b01 ; // Valid Result
            end
            else
            begin
                validity <= 2'b10 ;
            end

        end
        
        
        
        3'b010:begin
        
            if((flagA ==0) && (flagB == 0))
            begin
                validity <= 2'b01 ; // Valid Result
            end
            
            else if((flagA == 2'b01) | (flagB == 2'b01))
            begin
                validity <= 2'b00 ;
            end
            else
            begin
                validity <= 2'b10 ;
            end                   

        end
        
        3'b011: // Division
        begin
            
            if((flagA ==0) && (flagB == 0))
            begin
                validity <= 2'b01 ; // Valid Result
            end
            
            else if((flagA != 0)&& (flagB != 0))
            begin
                validity <= 2'b10 ; // NaN
            end
            else if(flagA != 0)
            begin
                
                if(flagA == 2'b01)
                begin
                    validity <= 2'b00 ; // Value is Zero
                end
                
                else
                begin
                    validity <= 2'b10 ; // NaN 
                end
                
            end
            
            else if(flagB != 0)
            begin
                validity <= 2'b10 ;  //NaN
            end
            
            
            
        end
        
        endcase
      
      finished = 1 ;
      
    end
end

end

assign result = validity ;
assign finish = finished ;

endmodule
