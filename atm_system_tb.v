`timescale 1ns / 1ps

module atm_system_tb;

reg clk;
reg rst;
reg card_inserted;
reg [3:0] entered_pin;
reg [7:0] withdrawal_amt;
reg [7:0] deposit_amt;

wire [7:0] balance;
wire pin_valid;
wire transaction_valid;
wire card_accepted;

atm_system uut (
 .clk(clk),
 .rst(rst),
 .card_inserted(card_inserted),
 .entered_pin(entered_pin),
 .withdrawal_amt(withdrawal_amt),
 .deposit_amt(deposit_amt),
 .balance(balance),
 .pin_valid(pin_valid),
 .transaction_valid(transaction_valid),
 .card_accepted(card_accepted)
);

always #5 clk = ~clk;

initial begin

 clk = 0;
 rst = 0;
 card_inserted = 0;
 entered_pin = 4'b0000;
 withdrawal_amt = 0;
 deposit_amt = 0;

 rst = 1; #10;
 rst = 0; #10;

 card_inserted = 1; #10;
 entered_pin = 4'b1010;
 #20;
 card_inserted = 0;

 deposit_amt = 8'd50;
 #10;
 deposit_amt = 0;

 withdrawal_amt = 8'd30;
 #10;
 withdrawal_amt = 0;

 card_inserted = 1;
 entered_pin = 4'b0000;
 #10;
 card_inserted = 0;
 #20;

 card_inserted = 1;
 entered_pin = 4'b1010;
 withdrawal_amt = 8'd200;
 #10;
 withdrawal_amt = 0;

 deposit_amt = 8'd100;
 #10;
 deposit_amt = 0;

 $finish;

end

initial begin
 $monitor("Time=%0t | Card=%b | PIN=%b | Balance=%d | PIN Valid=%b | Transaction=%b | Card Accepted=%b",
 $time, card_inserted, entered_pin, balance, pin_valid, transaction_valid, card_accepted);
end

endmodule
