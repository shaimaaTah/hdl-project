module OrGate(input[3:0]a,b,output [3:0] Or);
// take 2 number with 4 bit and oring them 
or(Or[0],a[0],b[0]);
or(Or[1],a[1],b[1]);
or(Or[2],a[2],b[2]);
or(Or[3],a[3],b[3]);
// shaimaa dar taha
endmodule
