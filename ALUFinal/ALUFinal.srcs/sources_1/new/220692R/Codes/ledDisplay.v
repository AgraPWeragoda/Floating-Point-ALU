`timescale 1ns / 1ps

module ledDisplay(

input clk ,
input rst ,
input[31:0] number ,
input[3:0] bits ,
input[3:0] ctrl ,
output[3:0] led

    );
    
reg [3:0] count = 0;
reg stopCount = 0;
reg[31:0] regNumber = 0;
reg control = 1 ;
reg[5:0] idx = 0 ;

// Registers to store the previous state of buttons (for edge detection)
reg prev_ctrl2 ;
reg prev_ctrl1 ;
reg prev_ctrl0 ;


always @(posedge clk or posedge rst)
 begin
        if (rst) 
        begin
            
            regNumber = 0 ;
            count <= 0;
            control <= 1 ;
            stopCount <= 0 ;
            prev_ctrl2 <= 0 ;
            prev_ctrl1 <= 0 ;
            prev_ctrl0 <= 0 ;
            idx  <= 0 ;
            
        end
        else 
        begin
            // 1. Edge Detection: Update previous states
            prev_ctrl2 <= ctrl[2];
//            prev_ctrl1 <= ctrl[1];
            prev_ctrl0 <= ctrl[0] ;

            // 2. Stop Logic (Detect rising edge of ctrl[3])
            // If ctrl[3] is HIGH now, but was LOW before, that's a posedge
//            if (ctrl[1] && !prev_ctrl1) begin
            
//                stopCount <= 1;
                
                
//            end
            
            if(ctrl[0] && !prev_ctrl0)begin
            
                control <= ~control ;
                regNumber <= number ;
                count <= 0 ;
                
            end
            

          
            if(control)
            begin
     
                if (!stopCount) begin
                    // Detect rising edge of ctrl[2] to increment
                    if (ctrl[2] && !prev_ctrl2) begin
                        if (count < 15)
                            count <= count + 1;
                        else
                            count <= 0;
                    end
                end
            end
            else
            begin
                
                idx = bits << 2 ;
                count  = regNumber >> idx ;
                
            end
            
        end
 end

    // Assign internal register to output
   assign led = count ;

endmodule
