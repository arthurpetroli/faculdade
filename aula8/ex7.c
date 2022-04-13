/*
@file: ex.7
@author: Arthur Petroli
@date: 14 Out 21
@brief: Exercício 7 da aula 8
*/

#include <stdio.h>
#include <stdlib.h>

int main() {
int I, R;
while(I > 0) {
    scanf("%i", &I);
    if(I <= 0) {printf("Zero ou Número negativo dectado! Programa finalizado."); break;}
    R = pow(I, 2);
    printf("%i\n", R);
}
return 0;
}