#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(int argc, char *argv[])
{
    FILE *arqENT = NULL;
    FILE *arqSAI = NULL;
    int cont=1;
    char c;

    arqENT = fopen(argv[1],"r");

    arqSAI = fopen(argv[2],"w");

    while ((c = fgetc(arqENT))!= EOF)
    {
        if (c == 'a')
        {
            fputc('*',arqSAI);
        }else if (c == 'e' || c == 'i' || c == 'o' || c == 'u')
        {
            fputc('+',arqSAI);
        }else
        {
            fputc(c,arqSAI);
        }

        if (c == '\n')
        {
            cont++;
        }
        
    }

    fclose(arqENT);

    printf("Quantidades de linha do arquivo de saida: %i", cont);

    fclose(arqSAI);

    return 0;
    
}