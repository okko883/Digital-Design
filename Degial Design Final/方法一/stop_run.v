{\rtf1\ansi\ansicpg950\deff0\nouicompat\deflang1033\deflangfe1028{\fonttbl{\f0\fnil\fcharset0 Calibri;}}
{\*\generator Riched20 10.0.10240}\viewkind4\uc1 
\pard\nowidctlpar\sl360\slmult1\qj\kerning2\f0\fs24 module up_down (rst,up_d,out_state_dir);\par
\tab input rst, up_d;\par
\tab output out_state_dir;\par
\tab reg out_state_dir;\par
\tab always @(rst or up_d) begin\par
\tab\tab if(rst==1||up_d==1)\tab\par
\tab\tab\tab out_state_dir=1;\par
\tab\tab else \par
\tab\tab\tab out_state_dir=0;\par
\tab end\par

\pard\sa200\sl276\slmult1 endmodule\kerning0\fs22\lang1028\par
}
 