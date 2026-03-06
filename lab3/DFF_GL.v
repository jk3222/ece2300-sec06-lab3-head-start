//========================================================================
// DFF_GL
//========================================================================

`ifndef DFF_GL_V
`define DFF_GL_V

`include "ece2300/ece2300-misc.v"
`include "lab3/DLatch_GL.v"

module DFF_GL
(
  input  wire clk,
  input  wire d,
  output wire q
);

  wire n1;
  wire clk_n;

  not (clk_n, clk);

  DLatch_GL leader
  (
    .clk  (clk_n),
    .d    (d),
    .q    (n1)
  );

  DLatch_GL follower
  (
    .clk  (clk),
    .d    (n1),
    .q    (q)
  );

endmodule

`endif /* DFF_GL_V */
