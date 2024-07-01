module Data_memory(A,WD,clk,rst,WE,RD);

//input [31:0] A,WD;
//input clk,WE;
//
//output [31:0] RD;
//reg [31:0] Data_Mem [1023:0];
//
////read
//assign RD = (WE == 1'b0) ? Data_Mem[A] : 32'h00000000; 
////write
//always@(posedge clk) begin
//   
//   if (WE)
//    begin
//    Data_Mem[A] <= WD;
//   end
//	end
    input clk,rst,WE;
    input [31:0]A,WD;
    output [31:0]RD;

    reg [31:0] mem [1023:0];

    always @ (posedge clk)
    begin
        if(WE)
            mem[A] <= WD;
    end

    assign RD = (~rst) ? 32'd0 : mem[A];

    initial begin
        mem[28] = 32'h00000020;
        
    end

endmodule