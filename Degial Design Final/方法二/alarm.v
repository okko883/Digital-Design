{\rtf1\ansi\ansicpg950\deff0\nouicompat\deflang1033\deflangfe1028{\fonttbl{\f0\froman\fprq2\fcharset0 Times New Roman;}{\f1\froman\fprq2\fcharset136 \'b7\'73\'b2\'d3\'a9\'fa\'c5\'e9;}{\f2\fnil\fcharset136 \'b7\'73\'b2\'d3\'a9\'fa\'c5\'e9;}}
{\*\generator Riched20 10.0.10240}\viewkind4\uc1 
\pard\nowidctlpar\qj\kerning2\f0\fs21 module alarm(clk,person,reset,spk);\par
\tab output spk;\par
\tab input clk,reset;\par
\tab input[3:0] person;\par
\tab reg enable;//\f1\'a8\'cf\'af\'e0\'b3\'f8\'c4\'b5\'ab\'48\'b8\'b9\'aa\'ba\'bf\'e9\'a5\'58\f0\par
\tab parameter FALSE=1'b0,TRUE=1'b1;\par
\tab assign spk=clk&enable;//enable\f1\'ac\'b0\f0 TURE\f1\'a1\'41\'bf\'e9\'a5\'58\'b3\'f8\'c4\'b5\'ab\'48\'b8\'b9\f0\par
\tab always @(person or reset )\par
\tab\tab if(reset)\par
\tab\tab\tab enable=FALSE;\par
\tab\tab else if(person>4'b0110)//\f1\'b6\'57\'b8\'fc\'aa\'f9\'ad\'ad\'b3\'5d\'ac\'b0\f0 6\f1\'a4\'48\'a1\'41\f0\par
\tab\tab\tab enable=TRUE;//\f1\'a4\'6a\'a9\'f3\f0 6\f1\'a4\'48\'a1\'41\'a8\'cf\'af\'e0\'b3\'f8\'c4\'b5\f0\par
\tab\tab else\par
\tab\tab\tab enable=FALSE;\par

\pard\sa200\sl276\slmult1 endmodule\kerning0\f2\fs22\lang1028\par
}
 