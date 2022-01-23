module SumatorScazator(
input[7:0]in_1,in_2,
input sub,
output [7:0]s_mod,
output Cout
);


wire w7,w6,w5,w4,w3,w2,w1,w0;
assign w0=sub^in_2[0];
assign w1=sub^in_2[1];
assign w2=sub^in_2[2];
assign w3=sub^in_2[3];
assign w4=sub^in_2[4];
assign w5=sub^in_2[5];
assign w6=sub^in_2[6];
assign w7=sub^in_2[7];
wire [8:1]Cin;

fac a(
.a(in_1[0]),
.b(w0),
.cin(sub),
.s(s_mod[0]),
.cout(Cin[1]));

fac b(
.a(in_1[1]),
.b(w1),
.cin(Cin[1]),
.s(s_mod[1]),
.cout(Cin[2]));

fac c(
.a(in_1[2]),
.b(w2),
.cin(Cin[2]),
.s(s_mod[2]),
.cout(Cin[3]));

fac d(
.a(in_1[3]),
.b(w3),
.cin(Cin[3]),
.s(s_mod[3]),
.cout(Cin[4]));

fac e(
.a(in_1[4]),
.b(w4),
.cin(Cin[4]),
.s(s_mod[4]),
.cout(Cin[5]));

fac f(
.a(in_1[5]),
.b(w5),
.cin(Cin[5]),
.s(s_mod[5]),
.cout(Cin[6]));

fac g(
.a(in_1[6]),
.b(w6),
.cin(Cin[6]),
.s(s_mod[6]),
.cout(Cin[7]));

fac h(
.a(in_1[7]),
.b(w7),
.cin(Cin[7]),
.s(s_mod[7]),
.cout(Cin[8]));
assign Cout=Cin[8];
endmodule
