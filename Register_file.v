module Reg_file(A1,A2,A3,WD3,WE3,clk,rst,RD1,RD2);

input [4:0] A1,A2,A3;
input [31:0] WD3;
input clk,rst,WE3;

output [31:0] RD1,RD2;

//creation temparary memory
reg [31:0] Registers [31:0]; 
always @(posedge clk) begin
    begin
    if (WE3)
      Registers[A3] <= WD3;
    end
    end

//read functionality (rst is active low)
 assign RD1 = (rst==1'b0) ? 32'd0 : Registers[A1];
    assign RD2 = (rst==1'b0) ? 32'd0 : Registers[A2];

    initial begin
        Registers[9] = 32'h00000020;
        Registers[6] = 32'h00000040;
    end
endmodule