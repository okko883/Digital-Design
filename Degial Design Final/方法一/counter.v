{\rtf1\ansi\ansicpg950\deff0\nouicompat\deflang1033\deflangfe1028{\fonttbl{\f0\fnil\fcharset0 Calibri;}{\f1\fnil\fcharset136 \'b7\'73\'b2\'d3\'a9\'fa\'c5\'e9;}}
{\*\generator Riched20 10.0.10240}\viewkind4\uc1 
\pard\nowidctlpar\sl360\slmult1\qj\kerning2\f0\fs24\lang1024 module counter(ok_count, clk, consignal);\tab //\f1\lang1028 Timer\f0\lang1024\par
input ok_count, clk;\par
output consignal;\par
reg consignal;\par
integer count;\par
always@(posedge clk) begin\tab\tab //change to "posedge"\par
\tab if(!ok_count) begin\par
      \tab\tab consignal<=0;\par
      \tab\tab count<=6;\par
      \tab end else begin\par
           \tab    if(count>1) begin\par
                \tab consignal<=0;\par
          \tab\tab count<=count-1;\par
               end else \par
               \tab consignal<=1;\par
            end\par
end\par

\pard\sa200\sl276\slmult1 endmodule\kerning0\fs22\lang1028\par
}
 