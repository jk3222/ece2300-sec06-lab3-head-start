//========================================================================
// Mux2_1b_GL
//========================================================================

`ifndef MUX2_1B_GL
`define MUX2_1B_GL

`include "ece2300/ece2300-misc.v"

module Mux2_1b_GL
(
  (* keep=1 *) input  in0,
  (* keep=1 *) input  in1,
  (* keep=1 *) input  sel,
  (* keep=1 *) output out
);

  // internal wires for selecting the correct input based on sel
  wire w0, w1, n_sel;

  // gates to select the input based on sel
  not( n_sel, sel );
  and( w1, n_sel, in0 );
  and( w0, sel, in1 );
  or( out, w1, w0 );
  
endmodule

`endif /* MUX2_1B_GL */

