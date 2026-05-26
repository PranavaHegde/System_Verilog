module ex1;

parameter SIZE=64;
reg [SIZE-1:0] data;

initial begin 
  data = '0;
  $display ("%b",data);
  data = 'z;
  $display ("%b",data);
  data = 'x;
  $display ("%b",data);
  data = '1;  //'10;
  $display ("%b",data);
end 
endmodule  
 ///////////////////// Just to show that how data specification works differently from verilog
