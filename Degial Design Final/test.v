{\rtf1\ansi\ansicpg950\deff0\nouicompat\deflang1033\deflangfe1028{\fonttbl{\f0\fnil\fcharset136 \'b7\'73\'b2\'d3\'a9\'fa\'c5\'e9;}}
{\*\generator Riched20 10.0.10240}\viewkind4\uc1 
\pard\f0\fs22\lang1028 'timescale 1ns/1ns\par
module stimulus;\par
wire [1:0] door;\par
wire [3:0] led;\par
wire ud, alarm, up, down;\par
reg clk, full, stop, close, clr;\par
reg up1, up2, up3;\par
reg down2, down3, down4;\par
reg k1, k2, k3, k4;\par
reg g1, g2, g3, g4;\par
\par
elevator E(\par
   door, \par
   led, \par
   ud, \par
   alarm, \par
   up, down, \par
   clk, \par
   full, \par
   stop, \par
   close, \par
   clr, \par
   up1, up2, up3, \par
   down2, down3, down4, \par
   k1, k2, k3, k4, \par
   g1, g2, g3, g4\par
);\par
\par
  initial begin\par
    $fsdbDumpfile("elevator.fsdb");\par
    $fsdbDumpvars;\par
    $monitor($time,\par
        " CLK=%b up1,up2,up3=%b%b%b d2d3d4=%b%b%b\kerning2\fs21\lang1033  ||up=%b down=%b door=%b led=%b" ,\kerning0\fs22\lang1028\par
        clk, up1, up2, up3, d2, d3, d4, up, down, door, led);\par
  end\par
  initial begin\par
\tab #0 clk = 1'b0; full=1'b0; stop=1'b0; close=1'b0; clr=1'b0;\par
\tab #50\par
\tab #50\par
\tab #50 \par
\tab\par
  end\par
  always #50 clk = ~clk;\par

\pard\sa200\sl276\slmult1 endmodule\par
\par
}
 