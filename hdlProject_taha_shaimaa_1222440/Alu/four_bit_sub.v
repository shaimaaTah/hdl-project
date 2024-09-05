module four_bit_sub(input[3:0]a,b,input borrow,output[3:0]sub ,output overFlow,borrowout);
wire [2:0]m;
wire[3:0]nb;
not g1(nb[0],b[0]);
not g2(nb[1],b[1]);
not g3(nb[2],b[2]);
not g4(nb[3],b[3]);


Fa s1( a[0],nb[0],borrow,m[0], sub[0]); // for subtraction  bit [0]
Fa s2( a[1],nb[1],m[0],m[1],sub[1]);  // for subtraction  bit [1]
Fa s3( a[2],nb[2],m[1],m[2],sub[2]);  // for subtraction  bit [2]
Fa s4( a[3],nb[3],m[2],borrowout,sub[3]);  // for subtraction  bit [3]

xor (overFlow,borrowout,m[2]);   // to fined over flow its importent when subtract signed number 

// shaimaa Dar taha
endmodule
