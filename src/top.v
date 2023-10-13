`default_nettype none

/* verilator lint_off UNUSED */

module tt_um_urish_skullfet (
	input  wire [7:0] ui_in,	// Dedicated inputs
	output wire [7:0] uo_out,	// Dedicated outputs
	input  wire [7:0] uio_in,	// IOs: Input path
	output wire [7:0] uio_out,	// IOs: Output path
	output wire [7:0] uio_oe,	// IOs: Enable path (active high: 0=input, 1=output)
	input  wire       ena,
	input  wire       clk,
	input  wire       rst_n
);

  assign uo_out = { 6'b0, nand1_out, inv1_out };
  assign uio_out = '0;
  assign uio_oe = '0;

	wire inv1_out;
	wire nand1_out;
	
	skullfet_inverter inv1(
		.A(ui_in[0]),
		.Y(inv1_out)
	);

	skullfet_nand nand1(
		.A(ui_in[0]),
		.B(ui_in[1]),
		.Y(nand1_out)
	);

endmodule
