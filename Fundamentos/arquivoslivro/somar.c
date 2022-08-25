#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#define max 3

int somar(int numero[max],long int soma){
    for (size_t i = 0; i < max; i++)
    {
        soma += numero[i];
    }

    return soma;
    
}