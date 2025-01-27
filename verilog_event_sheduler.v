module event_sheduler;

reg [2:0] a,b,c,d,e;

initial

begin

a=3'b001;
b=3'b010;
$write("a=%0b,b=%0b", a,b,$time);
$write("c=%0b,d=%0b,e=%0b",c,d,e,$time);
$display("\n a=%0b,b=%0b",a,b,$time);
$display("c=%0b,d=%0b,e=%0b",c,d,e,$time);
#10;
c=3'b011;
d<=3'b100;
$strobe("a=%0b,b=%0b,c=%0b,d=%0b,e=%0b",a,b,c,d,e,$time);
$monitor("a=%0b,b=%0b,c=%0b,d=%0b,e=%0b",a,b,c,d,e,$time);
#10;
e=3'b101;
end

endmodule