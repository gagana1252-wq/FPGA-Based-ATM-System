module atm_system (
 input clk,
 input rst,
 input card_inserted,
 input [3:0] entered_pin,
 input [7:0] withdrawal_amt,
 input [7:0] deposit_amt,

 output reg [7:0] balance,
 output reg pin_valid,
 output reg transaction_valid,
 output reg card_accepted
);

reg [3:0] stored_pin = 4'b1010;
reg [7:0] account_balance = 8'd100;
reg card_detected;

always @(posedge clk or posedge rst) begin

 if (rst) begin
  balance <= 8'd100;
  pin_valid <= 0;
  transaction_valid <= 0;
  card_accepted <= 0;
  card_detected <= 0;
 end

 else begin

  if (card_inserted) begin
   card_accepted <= 1;
   card_detected <= 1;
  end

  if (card_detected) begin
   if (entered_pin == stored_pin)
    pin_valid <= 1;
   else
    pin_valid <= 0;
  end

  if (card_detected && pin_valid) begin

   if (withdrawal_amt > 0 && withdrawal_amt <= account_balance) begin
    account_balance <= account_balance - withdrawal_amt;
    transaction_valid <= 1;
   end

   else if (withdrawal_amt > account_balance) begin
    transaction_valid <= 0;
   end

   else if (deposit_amt > 0) begin
    account_balance <= account_balance + deposit_amt;
    transaction_valid <= 1;
   end

   balance <= account_balance;

  end

 end

end

endmodule
