%{
    // definition section. within this section except definition must be enclosed between
    // %{ your_code %}
    #include<stdio.h> 

%}

%%
                // rules sequence does matter.Keep this in mind.
[\t]+           {printf("\n %s \t White Spaces",yytext);}

[a-zA-Z]+       {printf("\n %s \t is a Alphabetic word", yytext);}

[0-9]+          {printf("\n %s \t is a number", yytext);}

[A-Za-z0-9]+    {printf("\n %s \t is a Alphanumeric word", yytext);}



%%

int yywrap(void) // scans the whole input file. returns zero if succeded.
{
    return 0;
}

int main()
{
    yylex();  
    return 0;
}