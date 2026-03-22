`timescale 1ns / 1ps

module twoBitDecoder_tb();
    
    reg[1:0] A,B;
    wire Aless,Aequal,Agreater;
    
    twoBitDecoder uut(A,B,Aless,Aequal,Agreater);
    
    integer i;
    
    initial begin
        for(i=0;i<16;i=i+1)begin
            {A,B} = i;
            #10 $display("A = %b, B = %b, Aless = %b, Aequal = %b, Agreater = %b", A,B,Aless,Aequal,Agreater);
        end
    end
        
endmodule
