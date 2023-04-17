NUM [0-9]+
FLOAT {NUM}\.{NUM}
%%

{NUM} printf("found number\n");
{FLOAT} printf("found a float\n");
. printf("found a bad char\n");

%%

int yywrap(){
    return 0;
}
int main() {
    yylex();
    return 0;
}