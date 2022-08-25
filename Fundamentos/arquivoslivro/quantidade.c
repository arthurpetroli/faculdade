#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int palavra(FILE *prog,int quant,char arquivo[20]){
    char c;

    prog = fopen(arquivo,"r");

    while ((c = fgetc(prog)) != EOF)
    {
        if (c == '\n')
        {
            quant++;
        }
        if (c == ' ')
        {
            quant++;
        }
        
    }

    fclose(prog);

    return quant;
    
}