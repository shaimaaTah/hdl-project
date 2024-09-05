module fourBit_adder(input[3:0]a,b,input c,output [3:0]sum,output overFlow,carr);
wire [2:0]w;
Fa f1( a[0],b[0],c,w[0],sum[0]);  // call the module Fa for bit[0]

Fa f2( a[1],b[1],w[0],w[1] ,sum[1]);  // for bit [1]

Fa f3( a[2],b[2],w[1] ,w[2],sum[2]);   // for bit[2]

Fa f4( a[3],b[3],w[2],carr, sum[3]);  // for bit[3]

xor (overFlow,carr,w[2]);  // to find over flow

 //shaimaa dar taha
endmodule
  