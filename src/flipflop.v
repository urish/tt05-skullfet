module skullfet_ff_sr(
  input wire set,
  input wire reset,
  output wire q,
  output wire q_bar
);

    skullfet_nand n1(q, set, q_bar);
    skullfet_nand n2(q_bar, reset, q);
    
endmodule