module sign_ext (In,Imm_ext,ImmSrc);



input [31:0]In;
    input ImmSrc;
    output [31:0]Imm_ext;

    assign Imm_ext = (ImmSrc == 1'b1) ? ({{20{In[31]}},In[31:25],In[11:7]}):
                                        {{20{In[31]}},In[31:20]};
endmodule