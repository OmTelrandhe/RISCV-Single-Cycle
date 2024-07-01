module control_alu_decoder(ALUop,op,funct3,funct7,ALUControl);
 

input [6:0]op, funct7;
input [2:0] funct3;
output [2:0] ALUControl;
input [1:0]ALUop;

wire [1:0] concatenation;  //when 2 one bit number gets concatenate the for two bit number

assign concatenation = {op,funct7};

assign ALUControl = (ALUop == 2'b00) ? 3'b000 :
                    (ALUop == 2'b01) ? 3'b001 :
                    ((ALUop == 2'b10) & (funct3 == 3'b010)) ? 3'b101 :
                    ((ALUop == 2'b10) & (funct3 == 3'b110)) ? 3'b011 :
                    ((ALUop == 2'b10) & (funct3 == 3'b111)) ? 3'b010 :
                    ((ALUop == 2'b10) & (funct3 == 3'b000) & (concatenation == 2'b11)) ? 3'b001 : 
                    ((ALUop == 2'b10) & (funct3 == 3'b000) & (concatenation != 2'b11)) ? 3'b000 : 3'b000;

 

  
endmodule