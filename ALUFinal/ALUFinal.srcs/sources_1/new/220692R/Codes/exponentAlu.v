module exponentAlu(

input[23:0] ManA,
input[23:0] ManB,
input clk ,
input [7:0] expA ,
input [7:0] expB ,
input SignA ,
input SignB ,
input reset,
input en, 
input op,          // 1 for addition 0 for substraction
output done,
output[8:0] maxExp,
output[31:0] fout,
output signOut

);

// Required Registers
reg signed [8:0]  diff ;
reg signed [8:0]  exp1 ;			
reg signed [8:0]  exp2 ;
reg signed [24:0] man1 ;
reg signed [24:0] man2 ;
reg [24:0] mantissSum ;
reg signed [8:0] expMax ;
reg signed [25:0] add ;
wire signed[5:0] shiftWire ;
wire [25:0] addWire ;
reg signed [5:0] shift ;
reg sign;
reg [31:0] finout;
reg opfin = 0;
reg enabled;



always@(*)
begin
	
	if (reset)
	begin
	
	   	exp1 = 0 ;
	    exp2 = 0 ;
        man1 = 0 ;		// Taking the actual mantissa
        man2 = 0 ;		
        diff = 0 ;
        expMax = 0;
        mantissSum = 0;
        sign = 0 ;
        finout = 0 ;
        opfin = 0;
        
	end
	else
	if(en)
	begin
	// Assign values to the required registers
	exp1 = {0,expA} ;
	exp2 = {0,expB} ;
	opfin = 0;
	diff = exp1 - exp2 ; //+ 9'b000000001 ;
	
	if(diff >= 0)
	begin
		if(diff >= 24)
		begin
			man2 = 23'b0 ;
		end
		else
		begin
			man2 = ManB>>diff ;
		end
		expMax = expA ;
		man1 = ManA ;
	end
	else begin
//		diff = ~diff + 1'b1 ;
		if(diff >= 24)
		begin
			man1 = 23'b0 ;
		end
		else
		begin
			man1 = ManA>>((~diff )+ 1) ;
		end
		expMax = expB ;
		man2 = ManB ;
	end
		
	// Making the 2's complement if the signs bits are negative
	man1 = (SignA == 0) ? man1 : ~man1 + 1'b1 ;
	//man2 = (SignB == 0 && op == 1) ? man2 : ~man2 + 1'b1 ;  
	if(op)
	begin
	   if(SignB == 1)
	   begin
	       man2 = ~man2 + 1'b1 ; 
	   end
	end
	else
	begin
	   if(SignB == 0)
	   begin
	       man2 = ~man2 + 1'b1 ;
	   end
	end
	
	// Addition
	add = man1 + man2  ;
	sign =  add[25] ;
	add = (add[25] == 0) ? add : ~add + 1'b1 ;
	mantissSum = add ;
		
	//finout = mantissSum ;
	opfin = 1'b1 ;

	end
end



assign fout = add[24:0] ;
assign signOut = sign ;
assign done = opfin;
assign maxExp = expMax ;

endmodule