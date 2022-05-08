/**
 * @file ex5.c
 * @author Arthur Petroli
 * @brief Elabora uma função que receba duas strings como parâmetros e verifique se a segunda string está dentro da primeira. Para isso, utilize apenas aritmética de ponteiros.
 * @version 0.1
 * @date 2022-05-06
 * 
 * @copyright Copyright (c) 2022
 * 
*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void funcao(char string1[20], char string2[20]) {
    char comparacao[20];
    for (size_t i = 0; i < strlen(string1); i++)
    {
        if(string1[i] == string2[0]) {
            for (size_t j = 0; j < strlen(string2); j++)
            {
                //comparacao[j] = string1[i + j];
                *(comparacao+j) = string1[i+j];
            }
            if(!strcasecmp(comparacao, string2)) {
                printf("Uma string contem na outra!\n");
                break;
            }
        }
    }
}

int main() {
char string1[20];
strcat(string1, "Apucarana");
char string2[20];

fgets(string2, 20, stdin);
string2[strcspn(string2, "\n")] = '\0';

funcao(string1, string2);
}