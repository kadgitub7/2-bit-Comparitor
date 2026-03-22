`timescale 1ns / 1ps

module twoBitDecoder(
    input A,
    input B,
    output Aless,
    output Aequal,
    output Agreater
    );
    
    wire A1,A0,B1,B0;
    
    assign {A1,A0} = A;
    assign {B1,B0} = B;
    
    assign Aless = ~A1 & B1 | ~A1& ~A0&B0 | B1&B0& ~A0;
    assign Aequal = (A1~^B1) & (A0~^B0);
    assign Agreater = A1& ~B1 | A0& ~B1& ~B0 | A1&A0& ~B0;
    
endmodule
