/**
 * @file ex5.c
 * @author Arthur Henrique de Oliveira Petroli (arthurpetroli@gmail.com)
 * @brief 5) Faça um programa que leia números positivos e os converta em binário. Cada número binário deverá ser salvo em uma linha de um arquivo texto. O programa termina quando o usuário digitar um número negativo.
 * @version 0.1
 * @date 2022-06-07
 * 
 * @copyright Copyright (c) 2022
 * 
*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(){
    int numero[100];
    int binario[7];
    int i,quoc,resto,aux;
    FILE *prog;
    
    do
    {
        printf("Digite um numero: ");
        scanf("%i",&numero[i]);
        
        if (numero < 0)
        {
            return 0;
        }

        for (aux = 7; aux >= 0; aux--) {
        if (numero % 2 == 0) {
            binario[aux] = 0;
            numero = numero / 2;
        }
        else {
            binario[aux] = 1;
            numero = numero / 2;
        }
        }

        prog = fopen("d.txt","w");

        for (aux = 0; aux <= 7; aux++) {
        fprintf (prog, "%i", binario);
        }
        strcpy(prog,"\n");
        
        
        i++;

    }while (numero > 0);
}