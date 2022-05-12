/**
 * @file ponteiros7.c
 * @author Arthur Henrique de Oliveira Petroli (arthurpetroli@gmail.com)
 * @brief Elabore uma função que receba duas strings como parâmetros e verifique se a segunda string ocorre dentro da primeira. Use aritmética de ponteiros para acessar os caracteres das strings.
 * @version 0.1
 * @date 2022-05-12
 * 
 * @copyright Copyright (c) 2022
 * 
*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void comparar(char palavra1[20], char palavra2[20], char *ptr1, char *ptr2){
    ptr1 = &palavra1;
    ptr2 = &palavra2;

    if (strstr(*ptr1, *ptr2) != NULL)
    {
        printf("A segunda palavra esta presenta na primeira!!");
    }else
    {
        printf("Nao contem a outra palavra!!");
    }
    
    
}

int main(){
    char palavra1[20], palavra2[20];
    char *ptr1, *ptr2;

    printf("Digite a primeira string:");
    setbuf(stdin, NULL);
    fgets(palavra1, 20, stdin);
    palavra1[strcspn(palavra1, "\n")] = '\0';

    printf("Digite a segunda string:");
    setbuf(stdin, NULL);
    fgets(palavra2, 20, stdin);
    palavra2[strcspn(palavra2, "\n")] = '\0';

    comparar(palavra1,palavra2,ptr1,ptr2);
}