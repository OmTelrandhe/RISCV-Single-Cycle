// module instruction_memory(A,rst,RD);

// input [31:0] A;
// input rst;

// output [31:0] RD;

// //creation of memory
// reg [31:0] Mem [1023:0];      //a register of name Mem, so there are 102 such register and each register has size 32 bits



// assign RD = (rst == 1'b0) ? 32'h00000000 : Mem[A[31:2]];  //memory me Ath location pe pada hua data RD pe out karna hai
// // the rst functionalityis active low functionality for rst 0 output 0;

// initial begin
// Mem[0] = 32'bFFC4A303;
// end





module instruction_memory(A,rst,RD);

input [31:0] A;
input rst;

output [31:0] RD;

//creation of memory
reg [31:0] Mem [1023:0];      //a register of name Mem, so there are 102 such register and each register has size 32 bits

assign RD = (rst == 1'b0) ? {32{1'b0}} : Mem[A[31:2]];

  initial begin
    // $readmemh("memfile.hex",Mem);
    Mem[0]=32'h0064A423;
  end
endmodule 