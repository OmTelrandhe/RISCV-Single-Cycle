module Single_Cycle_Top_Tb ();
 
reg clk=1'b1,rst;

single_cycle_top single_cycle_top(
    .clk(clk),
    .rst(rst)
);

initial begin
   $dumpfile("Single Cycle.vcd");
   $dumpvars(0);
end

always
begin
   clk = ~clk;
   #50;
end

initial
begin
   rst = 1'b0;
   #100;

   rst =1'b1;
   #300;
   $finish;
end  
endmodule