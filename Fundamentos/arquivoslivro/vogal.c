#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int vogal(FILE *prog,char arquivo[20],int vogais){
    char c;

    prog = fopen(arquivo,"r");

    while ((c = fgetc(prog)) != EOF)
    {
        if (c == 'a' || c == 'e' || c == 'i' || c == 'o' || c == 'u')
        {
            vogais++;
        }  
    }
    fclose(prog);
    return vogais;
}