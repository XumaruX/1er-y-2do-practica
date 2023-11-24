%{
#include <stdio.h>
%}

%option noyywrap noinput nounput noyylineno

%%
xxa+bb+|\n { printf("Cadena valida: %s\n", yytext); }
. { printf("Cadena invalida: %s\n", yytext); }

%%

int main() {
        yylex();
        return 0;
}