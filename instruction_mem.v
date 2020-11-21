module imem (
	a,
	rd
);
	input wire [31:0] a;
	output wire [31:0] rd;
	reg [31:0] RAM [63:0];
	initial $readmemh("memfile.dat", RAM);	//00000000
	assign rd = RAM[a[31:2]];
endmodule

