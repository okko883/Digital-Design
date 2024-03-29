{\rtf1\ansi\ansicpg950\deff0\nouicompat\deflang1033\deflangfe1028{\fonttbl{\f0\fnil\fcharset0 Calibri;}}
{\*\generator Riched20 10.0.10240}\viewkind4\uc1 
\pard\nowidctlpar\sl360\slmult1\qj\kerning2\f0\fs24\lang1024 module current_floor( up_Floor, down_Floor, rst, cur_Floor );\par
\tab input up_Floor, down_Floor, rst;\par
\tab output [2:0] cur_Floor;\par
\tab reg [2:0] cur_Floor;\par
\tab reg floor_clk;\par
\tab always @ (rst or up_Floor or down_Floor) begin\par
\tab\tab if(rst)\par
\tab\tab\tab floor_clk=0;\par
\tab\tab else begin\par
\tab\tab    if(up_Floor || down_Floor)\par
\tab\tab\tab floor_clk=1;\par
\tab\tab    else\par
\tab\tab\tab floor_clk=0;\par
\tab\tab end\par
\tab end\par
\tab always@(posedge floor_clk or posedge rst) begin\par
\tab\tab if(rst==1)\par
\tab\tab\tab cur_Floor=3'b001;\par
\tab\tab else if(up_Floor==1)\par
\tab\tab\tab cur_Floor=cur_Floor+1;\par
\tab\tab else if(red_Floor==1)\par
\tab\tab\tab cur_Floor=cur_Floor-1;\par
\tab\tab else\par
\tab\tab\tab cur_Floor=cur_Floor;\par
\tab end\par

\pard\sa200\sl276\slmult1 endmodule\kerning0\fs22\lang1028\par
}
 