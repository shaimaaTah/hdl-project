module AndGate(input [3:0]a,b,output [3:0]And);
//and gate for every bit in a with every bit in b 

and(And[0],a[0],b[0]);
and(And[1],a[1],b[1]);
and(And[2],a[2],b[2]);
and(And[3],a[3],b[3]);
//shaimaa Dar taha
endmodule 