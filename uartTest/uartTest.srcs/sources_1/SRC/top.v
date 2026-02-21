`timescale 1ns / 1ps

module top_uart_rx_tx (
    input  wire       clk,        // 125 MHz
    input  wire       reset,      // active-high
    input  wire       uart_rx,    // UART RX pin
    input  wire       btn,        // push button
    output wire       uart_tx,    // UART TX pin
    output reg  [3:0] led
);

    // =====================================================
    // Parameters
    // =====================================================
    localparam CLKS_PER_BIT = 11 ;    //1085;   // 125MHz / 115200
    //localparam TX_BYTE     = 32'hABCD1255;   // byte sent on button press
    
clkdiv nclk(

.clk(clk),
.reset(reset),
.outclk(newClk)

);

    reg recieved = 0 ;
    reg[31:0] TX_BYTE =  32'hABCD1255 ;

    // =====================================================
    // UART RX signals
    // =====================================================
    wire        rx_dv;
    wire [31:0]  rx_byte;

    // =====================================================
    // UART TX signals
    // =====================================================
    reg         tx_dv;
    wire        tx_active;
    wire        tx_done;

    // =====================================================
    // Button synchronizer & edge detect
    // =====================================================
    reg [1:0] btn_sync;
    reg       btn_prev;
  //  reg [95:0] rx_buffer ;
    
    always @(posedge newClk) begin
        btn_sync <= {btn_sync[0], btn};
        btn_prev <= btn_sync[1];
    end

    wire btn_pressed = btn_sync[1] & ~btn_prev;

    // =====================================================
    // UART RECEIVER
    // =====================================================
    receiver #(
        .CLKS_PER_BIT(CLKS_PER_BIT)
    ) uart_rx_inst (
        .i_Clock    (newClk),
        .i_Rx_Serial(uart_rx),
        .o_Rx_DV    (rx_dv),
        .o_Rx_Word  (rx_byte)
    );

    // =====================================================
    // UART TRANSMITTER
    // =====================================================
    transmitter #(
        .CLKS_PER_BIT(CLKS_PER_BIT)
    ) uart_tx_inst (
        .i_Clock    (newClk),
        .i_Tx_DV    (tx_dv),
        .i_Tx_Word (TX_BYTE),
        .o_Tx_Active(tx_active),
        .o_Tx_Serial(uart_tx),
        .o_Tx_Done  (tx_done)
    );

    // =====================================================
    // Control logic
    // =====================================================
    always @(posedge newClk) begin
        if (reset) begin
            led   <= 4'b0000;
            tx_dv <= 1'b0;
            recieved <= 0 ;
            TX_BYTE = 0 ;
        end
        else begin
            tx_dv <= 1'b0; // default
            // Show received byte
            if (rx_dv)
            begin
                 
               led <= rx_byte[23:20]; 
               TX_BYTE <= rx_byte ;
               recieved <= 1 ;
                
            end   


            // Send byte on button press
            if (btn_pressed && !tx_active && recieved)
            begin
            
                tx_dv <= 1'b1;
                recieved <= 0 ;
       
            end
        end
    end

endmodule
