%{
/* definitions */
#include <math.h>
%}

%%

[ \t] ; { return(SPACE);}
[0-9]	{
		yylval.ival=atoi(yytext);
		return(GRADE);
	}
L	{ return(LAB); }
Q	{ return(QUIZ); }
R	{ return(READ); }
T	{ return(TOTAL); }
"\n" 	{ return(NEWLINE); }
exit	{ return(EXIT); }

