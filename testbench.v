module SumatorScazator_tb;
reg [7:0]in_1_tb,in_2_tb;
reg sub_tb;
wire [7:0]s_mod_tb;
wire cout_tb;

SumatorScazator rezultat(
.in_1(in_1_tb),
.in_2(in_2_tb),
.sub(sub_tb),
.s_mod(s_mod_tb),
.Cout(cout_tb)
);
initial begin
$monitor("Time: %d in_1=%b in_2=%b sub=%b s_mod=%b cout=%b",$time,in_1_tb,in_2_tb,sub_tb,s_mod_tb,cout_tb);
end

initial begin
sub_tb=0;
in_1_tb=0;
in_2_tb=0;
#1
sub_tb=0;
in_1_tb=8'b00000111; //5
in_2_tb=8'b00111000; //56
#1
sub_tb=1;
in_1_tb=8'b00111000; //56
in_2_tb=8'b00000111; //7
#1
sub_tb=1;
in_1_tb=8'b00000010; //2
in_2_tb=8'b00000011; //3
#1
sub_tb=1;
in_1_tb=8'b00001100;//12
in_2_tb=8'b00001100;//12

#1
sub_tb=1;
in_1_tb=8'b10101010;//170
in_2_tb=8'b01010101;//85

#1
sub_tb=1;
in_1_tb=8'b00001111;//15
in_2_tb=8'b00001100;//12

#1
sub_tb=0;
in_1_tb=8'b10101010;//170
in_2_tb=8'b01010101;//85

#1
sub_tb=0;
in_1_tb=8'b00110011;//51
in_2_tb=8'b11000011;//195

#1
sub_tb=1;
in_1_tb=8'b00111100;//60
in_2_tb=8'b00111111;//63

end
endmodule