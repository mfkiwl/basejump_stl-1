// bsg_level_shift_up_down_source
//
// This module represents a simple level shifter. In RTL, a level shifter
// is just a wire but when replaced with the hardened standard cell a level
// shifter is used to cross power domains. An up-down level shifter can
// transform a signal to a higher or lower voltage. A source level shifter
// is designed to be in the same power domain as the signals source.
//
// Should be swapped with the corresponding hard module in bsg_ip_cores/hard.
//
// Author: Scott Davidson
// Date:   4-4-17
//
module bsg_level_shift_up_down_source #(parameter width_p = "inv")
(
  input                      EN,
  input        [width_p-1:0] A,
  output logic [width_p-1:0] Y
);

  initial
    $display("%m - warning: using non-hard up/down source-side level shifter");

  // No logic for level shifter in RTL
  assign Y = A;

endmodule
