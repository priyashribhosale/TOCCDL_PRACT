%{
#include <stdio.h>
#include<string.h>
%}

%%
[ \t\n]+ ;
"int"|"float"|"char"|"if"|"else"|"while"|"for"|"return"|"void" {printf("%s --> Keyword\n",yytext);}
[a-zA-Z_][a-zA-Z0-9_]* { printf("%s --> Identifier\n", yytext); }
[0-9]+\.[0-9]+ { printf("%s --> Float constant\n", yytext); }
[0-9]+ { printf("%s --> Interger constant\n", yytext); }
\'[^'\n]\' {printf("%s --> Character Constant\n", yytext); }
"+"|"-"|"*"|"/"|"="|"%" { printf("%s --> Opretator\n", yytext); }
"("|")"|";"|","|"{"|"}" { printf("%s --> special symbol\n", yytext); }
. { printf("%s --> unknown\n",yytext);}
%%
int main()
{
printf("enter a statement:\n");
yylex();
return 0;
}

int yywarp()
{
return 1;
}

