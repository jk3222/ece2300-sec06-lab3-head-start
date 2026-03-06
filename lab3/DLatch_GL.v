//========================================================================
// DLatch_GL
//========================================================================

`ifndef DLATCH_GL_V
`define DLATCH_GL_V

`include "ece2300/ece2300-misc.v"

// verilator lint_off UNOPTFLAT

module DLatch_GL
(
  (* keep=1 *) input  wire clk,
  (* keep=1 *) input  wire d,
  (* keep=1 *) output wire q
);

  //''' ACTIVITY '''''''''''''''''''''''''''''''''''''''''''''''''''''''''
  // Implement a D Latch using explicit gate-level modeling
  //>'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

  wire s, r, w;
  wire d_n;
  not (d_n, d);

  and (s, d, clk);
  and (r, d_n, clk);
  nor  (q, r, w);
  nor  (w, s, q);


endmodule

// verilator lint_on UNOPTFLAT

`endif /* DLATCH_GL_V */
