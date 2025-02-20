module AluDataflow(output [3:0]Result,output overflow,Carry,input[3:0]a,b,input cin,input[2:0]opp);
wire [3:0]add,sub,andBitwize,orBitwize ;  //for the result 
wire carr1,carr2,overflow1,overflow2;   // for carry and over flow 


fourBit_adder  k1(a,b,cin,add,overflow1,carr1);

four_bit_sub k2(a,b,cin,sub,overflow2,carr2);

OrGate  k3(a,b, orBitwize);

AndGate  k4(a,b,andBitwize);

assign Result =(opp==3'b000)?add:   // to assign the result for the ALU depends on opp code 
(opp==3'b001)?sub:
(opp==3'b010)?andBitwize:
(opp==3'b011)?orBitwize:
 3'bz;   // dont care if op =4,5,6,7

assign overflow =(opp==3'b000)?overflow1:   // to assign the over flow for the subetraction and addition only 
(opp==3'b001)?overflow2:
3'bz;// dont care if opp 2,3,4,5,6,7

assign Carry =(opp==3'b000)?carr1:// to assign the carry for the subetraction and addition only 
(opp==3'b001)?carr2:
3'bz; // dont care 
// shaimaa dar taha
endmodule 
