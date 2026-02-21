module fpMul(

input clk,
input[23:0] manA,
input[23:0] manB,
input[7:0] expA,
input[7:0] expB,
input reset,
input enable,

output[48:0] C,
output doneMul

);

reg[48:0] temp = 0;
reg[4:0] count = 0;
reg[9:0] expSum = 0;
reg doneCalc = 0;
reg[48:0] finVal = 0;
reg[24:0] regA = 0;
reg[2:0] state = 0 ;
reg[7:0] flag  = 0 ;

always@(posedge clk or posedge reset)
begin
	if(reset)
	begin
	
		count = 0 ;
		doneCalc = 0 ;
		expSum = 0 ;
		finVal = 0 ;
		regA = 0 ; 
		state = 3'b000 ;
		flag = 0 ;
		
	end
	
	else
	begin
    
    if(enable)
    begin
    
    case(state)
       3'b000:begin
        
         regA = manA ;
         temp = manB ;
         state = 3'b001 ;
         
       end
       
       3'b001: begin
                                 			
                if (count <= 23)
                begin
                
                    if (temp[0])
                    begin
                    
                    if(flag == 0)
                    begin
                    
                        flag <= count ;
                        
                    end
                    
                        temp = temp + (regA << 24) ;
                        temp = temp >> 1 ;
                        count = count + 1 ;
                    end
                    
                    else
                    begin
                        temp = temp >> 1 ;
                        count = count + 1 ;
                    end
                    
                end
                
                else
                begin
                
                    state <= 3'b111 ;
                    finVal <= temp;
                    
                end
                    
            end
           
           3'b111:begin
            
            doneCalc = 1 ;
            
           end          
 
       
       
    endcase
    end	
 end
end

assign C = finVal ;
assign doneMul = doneCalc ; 

endmodule