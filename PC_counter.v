module PC_counter(PC_NEXT,PC,rst,clk);

input [31:0] PC_NEXT;
input clk,rst;

output reg [31:0] PC;    //as PC is the output of register so we have to declare it, if we notdeclare it will consider wire as default

always @(posedge clk)
begin
  
  if(rst == 1'b0)
  begin
  PC <= 32'h00000000;
  end
  else 
  begin
  PC <= PC_NEXT;
  end
end

endmodule