module operators();
reg [3:0] x,y;

initial begin 
x = 4'b0101;
y = 4'b010z; //4'b01xz;
end 


always @(*) begin   
if (x) begin 
if (x ==? y)
    $display("x ==? y works");

else if (x!=?y) 
    begin
        $display(" x !=? y works ");
        x = 4'bxxx0;
    end 

else
    $display("None of them worked");
end 
else 
    x = 4'b0;
end 
endmodule 


module op2();
int x,y,z;
logic [3:0] aa,bb;
initial begin 
x=1;
y =2;
z=3;
x+=y; //x = 3
$display ("%d",x);
x+=(y+=z);
$display ("%d %d",y,x);
--x; //pre decrement x
$display ("%d",x);
//-----------------------------------------start
x=1;
y=0;
y=x++ + ++x;
$display ("%d %d",x,y);
x=1;
y=0;
y= ++x + ++x;
$display ("%d %d",x,y);

//------------------------------------------end 
x=1;
y=2;
z=3;
x=y++; //post x=2,y=3;
$display ("%d %d",y,x);
x=++y;
$display ("%d %d",y,x);
x=y--; //post x=4,y=3
$display ("%d %d",y,x);
x=--y; //predecrement 
$display ("%d %d",y,x);
aa=4'b0101;
bb=4'b01xz;

if (aa==bb) //x
	$display ("Yes aa=%b bb=%b are equal",aa,bb);
else 
	$display ("if didnt work");
if (aa === bb)  //false 
	$display ("np aa=%b bb=%b are not equal",aa,bb);
else 
	$display ("if didnt work");
if (aa ==? bb) //true
	$display ("True");
else 
	$display ("if didnt work");
if (aa !=? bb) //false 
	$display ("false");
else 
	$display ("if didnt work");
if (aa ==? 4'b01??)//true 
	$display ("True");
else 
	$display ("if didnt work");
aa=4'b010z;
bb=4'b0101;
/* if ( aa ==? bb) true/false/undeterministic*/
end 
endmodule

