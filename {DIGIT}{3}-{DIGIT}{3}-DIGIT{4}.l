%{
#include <stdio.h>
%}

DIGIT [0-9]

%%
{DIGIT}{3}-{DIGIT}{3}-DIGIT{4}|\n { printf("Numero valido"); }
. { }
%%

int main() {
        yylex();
        return 0;
}