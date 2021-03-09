%{
    //código C

%}
    //Definições Gramaticais
    //Leitura e escrita
LEITURA "<<leia"
ESCRITA ">>escreva"

DESCARTAR [\r\n\t":"|";"|","|"("|")"] 
NUM [0-9]+
LETRAS [a-zA-Z]+
VARIAVEL {LETRAS}{LETRAS}*{NUM}*
STRING \"[a-zA-Z0-9]*.*\"
INTEIRO {NUM}+
REAL {NUM}+("."){NUM}+
EXPON {NUM}ˆ{NUM}
TIPO "inteiro"|"float"|"string"|"boleano"

    //Operadores Aritméticos
OP "+"|"-"|"*"|"/"
ARIT ">"|"<"|">="|"<="|"<>"|"=="

    //atribuicao
RECEBE "="
COMMENT #{LETRAS}*{NUM}*

    //condicional

IF "@se"
ELSE "@se nao"

FOR @"for"
WHILE @"while"

INVALIDO .

%%

    //Seção de tokens
"start_begin():"   {   //código C
            printf ("Início do Programa:\n");
        }

"THATS_ALL_FOLKS"   {   //código C
            printf ("Fim do Programa:\n");
        }


{DESCARTAR} {

            printf ("");
}

{TIPO}   {
            printf ("Declaração: %s\n",yytext);
        }
        

{VARIAVEL} {
            printf ("Variável: %s\n",yytext);
        }

{STRING} {
            printf ("String: %s\n",yytext);
        }

" "   {   //código C
            printf ("");
        }

{OP}   {
            printf ("Operação: %s\n",yytext);
        }
        
{ARIT}   {
            printf ("Aritmético: %s\n",yytext);
        }

{RECEBE}   {
            printf ("Atribuição: %s\n",yytext);
        }

{LEITURA}   {
            printf ("Entrada: %s\n",yytext);
        }

{ESCRITA}   {
            printf ("Saída: %s\n",yytext);
        }

{NUM}   {
            printf ("Número: %s\n",yytext);
        }

{REAL} {
            printf ("Float: %s\n",yytext);
        }

{EXPON} {
            printf ("Exponencial: %s\n",yytext);
        }
{FOR} {
            printf ("Estrutura de repetição: %s\n",yytext);
        }

{IF} {
            printf ("Estrutura condicional: %s\n",yytext);
        }

{ELSE} {
            printf ("Estrutura condicional: %s\n",yytext);
        }

{WHILE} {
            printf ("Estrutura de repetição: %s\n",yytext);
        }

{COMMENT} {
            printf ("Comentário: %s\n",yytext);
        }

{INVALIDO} {
            printf ("Inválido: %s\n",yytext);
        }

%%

int yywrap(){ return 1;}
//código C
int main(){
    
    yyin = fopen("prog1.di","r");
    yylex();
    fclose (yyin);

    return 0;
}