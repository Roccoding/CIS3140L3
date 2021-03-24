%{



#include <stdio.h>

int yylex(); 
int yyerror(const char *p) { cerr << "Error!" << endl; }

int l=0;
int q=0;
int r=0;
int total=0;

%}

%token<ival> GRADE
%token LAB
%token TOTAL
%token SPACE
%token NEWLINE
%token EXIT


%error-verbose

%%

line: NEWLINE
  | labs NEWLINE {printf("labs=%i", l);}
  | tots NEWLINE {printf("TOTAL = %i", total);}
  | EXIT NEWLINE {printf("exiting"); exit(0);}
;

labs: LAB
  | GRADE SPACE GRADE { $$ = $1 + $3; }
;

%%



void yyerror(char *s) {
    fprintf(stderr, "%s\n", s);
}

int main(void) 
{
    yyparse();
}
