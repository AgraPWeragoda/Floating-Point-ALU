`timescale 1ns / 1ps

module encoder(
    
	input clk ,
    input encRst ,
    input enable ,
	input  [48:0] value,
	input[2:0] operation,
	output [5:0]  idx ,
	output[23:0] encMantissa ,
	output[8:0] encExp ,
	output doneEnc 
);

reg valid = 0 ;
reg[5:0] indx = 0;
reg [5:0] i = 0 ;
reg[2:0] state = 0 ; 
reg signed [8:0] regExp = 0 ;
reg[23:0] regMan  = 0 ;
reg regdoneEnc = 0;

always@(posedge clk or posedge encRst)
begin
if(encRst)
begin
    
    valid = 0 ;
    indx = 0 ;
    i = 0 ;
    regExp = 0 ;
    regMan = 0 ;
    state = 0 ;
    regdoneEnc = 0 ;
    
end
else begin

if(enable)
begin

    case(state)
        3'b000:
		
        begin
		
            for ( i=0 ; i < 49 ; i = i+1 )
            begin
            
                if(value[48-i] == 1'b1 && valid == 1'b0)
                begin
				
                    indx  = 48-i ;
                    valid = 1 ;
					state = 3'b001 ;
					
                end
				
            end
            
         end
         
         3'b001: begin
            
            case(operation)
            
                3'b010: // Multiplication
                begin
                    
                    regExp = indx - 46 ;
                    
                    if(indx >= 23)
                    begin
                        
                        regMan <= value >>(indx - 23) ;
                        
                    end
                    
                    else
                    begin
                        
                        regMan <= value<<(23-indx) ;    
                            
                    end
                    state <= 3'b111 ;
                end
                
            endcase
            
            
         end
         
         3'b111: begin
            
            regdoneEnc = 1 ;
            
         end
         
    endcase




end

	
end

end

assign doneEnc = regdoneEnc ;
assign encMantissa = regMan ;
assign encExp = regExp ;
assign idx = indx;
endmodule