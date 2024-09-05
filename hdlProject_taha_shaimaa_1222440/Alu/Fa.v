module Fa(input a, b, c, output cout, sum);
wire w1, w2, w3;
// w1: reseve a and b
// w2:reseve a xor b
//w3: reseve w2 and c
// sum=(a xor b)xor c
// cout= (a and b)+(a xor b)and c
and (w1, a, b);
xor (w2, a, b);
and (w3, w2, c);
xor (sum, w2, c);
or (cout, w1, w3);
endmodule
//shaimaa dar taha