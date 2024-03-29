{\rtf1\ansi\ansicpg950\deff0\nouicompat\deflang1033\deflangfe1028{\fonttbl{\f0\fnil\fcharset136 \'b7\'73\'b2\'d3\'a9\'fa\'c5\'e9;}}
{\*\generator Riched20 10.0.10240}\viewkind4\uc1 
\pard\f0\fs22\lang1028 module stimulus;\par
  parameter cyc = 10;\par
  parameter delay = 2;\par
  //\'c5\'dc\'bc\'c6\par
  reg clk, rst_n;\par

\pard\nowidctlpar\qj   \kerning2\fs21\lang1033 reg [3:0]  PosOut;\par
   reg DoorFlag;\par
   reg [1:0] UpDnFlag;\par
   reg [6:0] LiftState;\par

\pard    reg F1Up, F2Up, F3Up, F2Dn, F3Dn, F4Dn, F1Stop, F2Stop, F3Stop, F4Stop;\par
\kerning0\fs22\lang1028\par
  //\'a9\'49\'a5\'73\'b9\'71\'b1\'e8\'a5\'bb\'c5\'e9  \par
  \kerning2\fs21\lang1033 StateShift elevator(\par
\tab PosOut, \par
\tab DoorFlag, \par
\tab UpDnFlag, \par
\tab LiftState, \par
\tab clk, \par
\tab\kerning0\fs22\lang1028 rst_n\kerning2\fs21\lang1033 , \par
\tab F1Up, \par
\tab F2Up, \par
\tab F3Up, \par
\tab F2Dn, \par
\tab F3Dn, \par
\tab F4Dn, \par
\tab F1Stop, \par
\tab F2Stop, \par
\tab F3Stop, \par
\tab F4Stop\par
   ); \par
\kerning0\fs22\lang1028\par
  always #(cyc/2) clk = ~clk;\par
\par
  initial begin\par
    $fsdbDumpfile("elevator.fsdb");\par
    $fsdbDumpvars;\par
    $monitor($time,\par
        " CLK=%b RST_N=%b ,\kerning2\fs21\lang1033 F1Up=%b, F2Up=%b, F3Up=%b, F2Dn=%b, F3Dn=%b, F4Dn=%b, UpDnFlag=%b, PosOut=%b, DoorFlag=%b " ,\kerning0\fs22\lang1028\par
        clk, rst_n, \kerning2\fs21\lang1033 F1Up, F2Up, F3Up, F2Dn, F3Dn, F4Dn, UpDnFlag, PosOut, DoorFlag\kerning0\fs22\lang1028 );\par
  end\par
\par
  initial begin\par
    clk = 1;\par
    rst_n = 1;\par
    \par
\par
    #(cyc);\par
    #(delay) rst_n = 0;\par
    #(cyc*4) rst_n = 1;\par
    #(cyc*2);\par
\par
    // 1st pattern\tab 1up, 3down\tab\par
    #(cyc)\tab //delay at reset\par
      \kerning2\fs21\lang1033 F1Up = 1;F2Up = 0;F3Up = 0;F2Dn = 0;F3Dn = 1;F4Dn = 0;F1Stop = 1;F2Stop = 0;F3Stop = 1; \tab F4Stop = 0;\kerning0\fs22\lang1028\par
\par
    #(cyc)\par
    @(posedge (\kerning2\fs21\lang1033 DoorFlag==0 && LiftState==7'b0000001\kerning0\fs22\lang1028 ));\par
    \par
    #(cyc*8);\par
    $finish;\par
\tab\tab\par
  end\par
endmodule\par
\par

\pard\sa200\sl276\slmult1\par
}
 