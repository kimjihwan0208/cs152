/*
Phase 1 lexical analyzer for MINI-L language
Written by Ji Hwan Kim
*/

%{
  int currPos = 1, currLine = 1;
}%

DIGIT [0-9]
""   {printf("\n"); currPos += yyleng;}

%%
"function"    {printf("FUNCTION\n"); currPos += yyleng;}
"beginparams" {printf("BEGIN_PARAMS\n"); currPos += yyleng;}
"endparams" {printf("END_PARAMS\n"); currPos += yyleng;}
"beginlocals"   {printf("BEGIN_LOCALS\n"); currPos += yyleng;}
"endlocals"   {printf("END_LOCALS\n"); currPos += yyleng;}
"beginbody"   {printf("BEGIN_BODY\n"); currPos += yyleng;}
"endbody"   {printf("END_BODY\n"); currPos += yyleng;}
""   {printf("\n"); currPos += yyleng;}
""   {printf("\n"); currPos += yyleng;}
""   {printf("\n"); currPos += yyleng;}
""   {printf("\n"); currPos += yyleng;}
""   {printf("\n"); currPos += yyleng;}
""   {printf("\n"); currPos += yyleng;}
""   {printf("\n"); currPos += yyleng;}
""   {printf("\n"); currPos += yyleng;}
""   {printf("\n"); currPos += yyleng;}
""   {printf("\n"); currPos += yyleng;}
""   {printf("\n"); currPos += yyleng;}
""   {printf("\n"); currPos += yyleng;}
""   {printf("\n"); currPos += yyleng;}
""   {printf("\n"); currPos += yyleng;}
""   {printf("\n"); currPos += yyleng;}
""   {printf("\n"); currPos += yyleng;}
""   {printf("\n"); currPos += yyleng;}
""   {printf("\n"); currPos += yyleng;}
""   {printf("\n"); currPos += yyleng;}


endlocals END_LOCALS
beginbody BEGIN_BODY
endbody END_BODY
integer INTEGER
array ARRAY

- SUB
+ ADD
* MULT
/ DIV
% MOD

==  EQ
<>  NEQ
< LT
> GT
<=  LTE
>=  GTE

identifier (e.g., "aardvark", "BIG_PENGUIN", "fLaMInGo_17", "ot73r")  IDENT XXXX [where XXXX is the identifier itself]
number (e.g., "17", "101", "90210", "0", "8675309") NUMBER XXXX [where XXXX is the number itself]

; SEMICOLON
: COLON
, COMMA
( L_PAREN
) R_PAREN
[ L_SQUARE_BRACKET
] R_SQUARE_BRACKET
:=  ASSIGN

"-"   {printf("MINUS\n"); currPos += yyleng; numOperators++;}
"+"   {printf("PLUS\n"); currPos += yyleng; numOperators++;}
"*"            {printf("MULT\n"); currPos += yyleng; numOperators++;}
"/"            {printf("DIV\n"); currPos += yyleng; numOperators++;}
"="            {printf("EQUAL\n"); currPos += yyleng; numEquals++;}
"("            {printf("L_PAREN\n"); currPos += yyleng; numParens++;}
")"            {printf("R_PAREN\n"); currPos += yyleng; numParens++;}



%%


