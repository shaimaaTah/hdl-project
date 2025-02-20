module AluBihaviral(input [3:0]a,b,input [2:0]opp,input cin ,output reg [3:0]result ,output reg overFlow,carrout);

wire [3:0]add,sub,andBitwize,orBitwize ;  //for the result 
wire carr1,carr2,overflow1,overflow2;   // for carry and over flow 


fourBit_adder  k1(a,b,cin,add,overflow1,carr1);
four_bit_sub k2(a,b,cin,sub,overflow2,carr2);
OrGate  k3(a,b, orBitwize);
AndGate  k4(a,b,andBitwize);

// always @(a,b,opp,cin)
always @(*)
begin 
if (opp==3'b000)  result =add;
else if (opp==3'b001)  result=sub ;
else if (opp==3'b010) result= andBitwize;
else if (opp==3'b011)  result=orBitwize ;
else  result =4'bz;
// end of result 
if (opp==3'b000) carrout=carr1;
else if (opp==3'b001) carrout=carr2;
else  carrout=1'bz;
//end of carry
if (opp==3'b000) overFlow=overflow1;
else if (opp==3'b001) overFlow=overflow2;
else  overFlow=1'bz;
end
endmodule 
