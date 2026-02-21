`timescale 1ns / 1ps
// This will perform the given as , A OPERATION B


module ALU(

input[31:0] A ,
input[31:0] B ,
input [2:0] operation ,
input en ,
input clk ,
input reset ,
output[1:0] flag ,
output busy ,
output[31:0] C,
output[4:0] exceptions  

    );
    
reg jstRst = 0 ; //'\\\\\
// Just after reset command 
reg[2:0] state = 0 ;
reg regbusy = 0 ;
reg[31:0] value = 0 ;
reg[1:0] outflag ; 
reg [8:0] expDiv ;

// -- For Number A -- //
reg decArst = 0 ;
reg decAEn = 0 ;
reg[7:0] expA = 0 ;
reg[23:0] manA = 0 ;
reg readA = 0;
wire decAValid ;
wire[1:0] decABusy ;
wire[23:0] decAMan ;
wire[8:0] decAexp ;
wire[1:0] decAFlag ;


// -- For Number B -- //
reg decBrst = 0 ;
reg decBEn = 0 ;
reg[7:0] expB = 0 ;
reg[23:0] manB = 0 ;
reg readB = 0 ;
wire decBValid ;
wire[1:0] decBBusy ;
wire[23:0] decBMan ;
wire[8:0] decBexp ;
wire[1:0] decBFlag ;

// -- Decoder for A -- //
decoder decA(

.buff(A),
.clk(clk),
.rst(reset),
.en(decAEn),
.valid(decAValid),
.busy(decABusy),
.mantissa(decAMan),
.exponent(decAexp),
.flag(decAFlag)

);

// -- Decoder for B -- //
decoder decB(

.buff(B),
.clk(clk),
.rst(reset),
.en(decBEn),
.valid(decBValid),
.busy(decBBusy),
.mantissa(decBMan),
.exponent(decBexp),
.flag(decBFlag)

);   

// -- Divider Implementation -- //

reg[24:0] divA = 0;
reg[24:0] divB = 0;
reg[48:0] regMan = 0;
reg finished = 0 ;
wire[74:0] c ;
wire dividerFin ;
reg divRst = 0 ;
reg divEn = 0 ;
wire[7:0] firstOne ;
wire[8:0] exponentWire ;
wire[23:0] manWire ;


// -- Normalizer Implmentation -- //

reg resetNorm = 0;
reg[8:0] excessExps = 0 ;
reg enNorm = 0 ;
wire[2:0] flagNorm  ;
wire finishNorm  ;
wire[31:0] finalValue ;
reg signA = 0 ;
reg signB = 0 ;
wire[4:0] exception ;
reg[4:0] regExcpt = 0  ;

normalizer myNorm(

.clk(clk),
.reset(resetNorm),
.operation(operation),
.expA(expA),
.expB(expB),
.sA(signA),
.sB(signB),
.excessExp(excessExps),
.mantissa(regMan),
.en(enNorm),
.flags(flagNorm),
.value(finalValue),
.doneNorm(finishNorm),
.outexceptionFlags(exception)

);


 divider dut(
 
 .A(divA),
 .B(divB),
 .reset(divRst),
 .clk(clk),
 .en(divEn),
 .C(c),
 .done(dividerFin),
 .first(firstOne),
 .mantissa(manWire),
 .exponent(exponentWire)
 
 );
 
 

 // -- Validator Initiation -- //
 
 reg validatorEnable = 0;
 wire[1:0] validity ;
 
 
 validator myValidator(

.flagA(decAFlag) ,
.flagB(decBFlag) ,
.clk(clk) ,
.reset(reset),
.operationValidation(operation) ,
.validatorEn(validatorEnable) ,
.finish(finishValCheck),
.result(validity) 

 );
 
 // ---- Multiplier --------- //
 
reg mulEnable ;
//reg[23:0] A ;
//reg[23:0] B ;
//reg[2:0] state ;
//reg regDone ;
//reg[48:0] finalValue ;
wire[48:0] mulOutput ;
 
 
fpMul multiplier(

.clk(clk),
.manA(manA),
.manB(manB),
.expA(),
.expB(),
.reset(reset),
.enable(mulEnable),
.C(mulOutput),
.doneMul(mulFinished)

);

// --- Adder  / Substractor --- ///


reg enableA = 0 ;
reg operationA = 0 ;
wire[31:0] sum;
wire sign ;
wire finishWireA;
wire[8:0] expa ;

exponentAlu myALU(

.ManA(manA),
.ManB(manB),
.expA(expA),
.expB(expB),
.SignA(A[31]),
.SignB(B[31]),
.reset(reset),
.en(enableA), 
.done(finishWireA),
.op(operationA),
.fout(sum),
.signOut(sign),
.clk(clk),
.maxExp(expa)

);
    



always@(posedge clk or posedge reset)
begin

if(reset)
begin

    decAEn = 0 ;
    decBEn = 0 ;
    state = 0 ;
    manA = 0 ;
    expA = 0 ;
    manB = 0 ;
    expB = 0 ;
    regbusy = 0 ;
    outflag = 0 ;
    readA = 0 ;
    readB = 0 ;
    value = 0 ;
    resetNorm = 1;
    excessExps = 0 ;
    enNorm = 0 ;
    regMan = 0 ;
    validatorEnable = 0 ;
    divRst = 0 ;
    divEn = 0 ;
    mulEnable = 0 ;
    operationA = 0 ;
    enableA = 0 ;
    signA = 0 ;
    signB = 0 ;
    regExcpt = 0 ;

    
end
else
begin
    
    if(en)
    begin
    
    resetNorm = 0 ;
    
    case(state)
        // Decode Stage
        3'b000:
         begin
                
             decAEn = 1 ;
             decBEn = 1 ;
             state = 3'b001 ;
             regbusy = 0 ;
             value = 0 ;
                     
        end
        
        // Waiting for results of the decoder
        3'b001: begin
            
            if(decAValid & ~readA)
            begin
                expA = decAexp ;
                manA = decAMan ;
                readA = 1 ;
            end
            
            if(decBValid & ~readB)
            begin
                expB = decBexp ;
                manB = decBMan ;      
                readB = 1 ;          
            end
            
            if(readA & readB)
            begin
                state = 3'b011;
                validatorEnable = 1 ;
            end            
        end
        
        // Operation Stage
        3'b011: begin
        
            case(operation)
            
            3'b001:begin // Addition
                if(validity == 1 && finishValCheck == 1)
                begin
                
                enableA = 1 ;
                operationA = 1 ;
                state = 3'b101 ; // In Operation ongoing stage
                
                end
                
                else if(finishValCheck == 1)
                begin
                    state = 3'b111 ;
                end
   
            end
            
            3'b000:begin // Substraction
            
                if(validity == 1 && finishValCheck == 1)
                begin
                
                enableA = 1 ;
                operationA = 0 ;
                state = 3'b101 ; // In Operation ongoing stage
                
                end
                
                else if(finishValCheck == 1)
                begin
                    state = 3'b111 ;
                end
   
            end
            
            
            3'b010: //Multiplication
            begin
                if(validity == 1 && finishValCheck == 1)
                begin
                
                mulEnable = 1 ;         
                state = 3'b101 ; // In Operation ongoing stage
                
                end
                
                else if(finishValCheck == 1)
                begin
                    state = 3'b111 ;
                end
   
            end
            3'b011:begin // Division
            
                if(validity == 1 && finishValCheck == 1)
                begin
                
                divA <= manA ;
                divB <= manB ;
                divRst = 1 ; 
                divEn = 1 ;           
                state = 3'b101 ; // In Operation ongoing stage
                        
                end
                
                else if(finishValCheck == 1)
                begin
                    state = 3'b111 ;
                end
   
       
            end                 

           
            endcase
        end
        
        3'b101:
        begin
            case(operation)
            3'b001:begin // Addition
            
            if(finishWireA)
            begin
            
                regMan = sum ;
                if(~sign)
                begin
                    signA = 0 ;
                    signB = 0 ;
                end
                else
                begin
                    signA = 0 ;
                    signB = 1 ;
                end
                excessExps = expa ;
                resetNorm = 1 ;
                state = 3'b110 ;
                
            end        
            end
           3'b000: begin // Substraction
            
            if(finishWireA)
            begin
            
                regMan = sum ;
                if(~sign)
                begin
                    signA = 0 ;
                    signB = 0 ;
                end
                else
                begin
                    signA = 0 ;
                    signB = 1 ;
                end
                excessExps = expa ;
                resetNorm = 1 ;
                state = 3'b110 ;
                
            end        
                       
            
            end
            
            3'b010: begin
                if(mulFinished)
                begin
                
                    regMan <= mulOutput ;
                    signA <= A[31] ;
                    signB <= B[31] ;
                    resetNorm <= 1 ;
                    state = 3'b110 ; 
                    
                end
            end            
            
            3'b011:begin // Divison 
                
                divRst  = 0 ;
                if(dividerFin)
                begin
                
                    regMan <= manWire ;
                    excessExps <= exponentWire ;
                    signA = A[31] ;
                    signB = B[31] ;                    
                    resetNorm <= 1 ;
                    state = 3'b110 ;
                    
                end
                
            end
            endcase
        end
        
        3'b110: // Nomrmalizing input state
        begin
            
            resetNorm <= 0 ;
            enNorm <= 1 ;         
            state <= 3'b100 ;
            
        end
        3'b100: // Waiting for Normalizer output
        begin
            
            if(finishNorm)
            begin
                
                value <= finalValue ;
                state <= 3'b111 ;
                
            end
         
                
        end
        
        
        
        3'b111:begin
        // Final State
        regbusy = 1 ;
        
        if (validity == 2'b01)
        begin
            outflag = flagNorm ;
            regExcpt = exception ;
        end
        else
        begin
              outflag = validity ; 
              if(validity ==2'b10)
              begin
                regExcpt = 5'b10000 ;
              end    
        end
        
        
        
        end
        
    endcase
    end
    
end
end  

assign busy = regbusy ;
assign C = value ;
assign flag = outflag ;
assign exceptions =regExcpt ;
 
endmodule
