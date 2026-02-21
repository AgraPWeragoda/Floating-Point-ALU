module divider(
 
 input[24:0] A,
 input[24:0] B,
 input reset,
 input clk,
 input en,
 output [74:0] C,
 output done ,
 output[7:0] first ,  // The exponent of the resultisng number after mantissa is considered
 //Mantissa as the output 
 output[8:0] exponent ,
 output[23:0] mantissa
 
 );
 
 reg enabled ; // 1 enalbed otherwise 0 
 reg finish;
 reg [7:0] count = 0 ;
 reg[74:0] q = 0 ;
 reg [24:0] r = 0 ;
 reg[24:0] r_next = 0 ;
 reg [24:0] neg ;
 reg[74:0] value ;
 reg[6:0] flag = 0 ;
 reg[7:0] firstReg = 0 ;
 reg signed [8:0] exp =0 ;
 reg [23:0] man = 0;
 reg[2:0] state = 0;
 reg[7:0] shift = 0 ;
 // First reset then enable, if not enabled first should reset befor enable
 
 always@(posedge clk or posedge reset)
 begin
 if(reset)
 begin
 // Take the all the registers into intial state
     finish <= 0;
     r_next <= 0; 
     count <= 0 ;
     q <= 0 ;
     r <= 0 ;
     neg <= 0 ;
     value <= 0 ;
     flag <= 0 ;
     firstReg <= 0 ;
     exp <= 0 ;
     man <= 0 ;
     state <= 0 ;
     shift <= 0 ;
     
 end
 else
 begin

    if(en)
	
    begin
	
	case(state)
	
	3'b000: begin
	
 		q <= ({A,50'b0}) ;
    	neg <= (~B) + 1 ;    
		state <= 3'b001 ;
		
	end
	
	3'b001: begin
	
		if(count < 75) // Iterate the 8 bit integer unsigned division
		begin
		
            r = (r << 1) + q[74];
            r = r + neg;
           
            
			if(r[24] == 1)
			begin
			
				q <= (q<<1) ;
				count <= count + 1 ;
				r <= r + B ;
				
			end
			else
			begin
				if(flag == 0)
				begin       
				
					flag <= count ;
					firstReg = 74 - count ;
					shift = firstReg - 23 ;
					
				end
				
				q <= (q<<1) + 1 ;
				count <= count + 1 ;
				
			end
		end
		
		else
		begin
			
			state <= 3'b011 ;	
				
		end
	end
	
	3'b011: begin
	
	    finish <= 1'b1 ;
        exp <= firstReg - 50 ;
        man <= q >> shift ;
	
		
	end
		
	endcase

end



 end
 
end

assign C = q ;
assign done = finish ;
assign first = firstReg ;
assign mantissa = man ;
assign exponent = exp ;

endmodule
