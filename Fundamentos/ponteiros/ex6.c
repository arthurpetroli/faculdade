/**
 * @file ex6.c
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

int main() {
int a = 3, *ponteiro1 = &a, **ponteiro2 = &ponteiro1, ***ponteiro3 = &ponteiro2;

printf("%i\n", (*ponteiro1 * 2));
printf("%i\n", (**ponteiro2 * 3));
printf("%i\n", (***ponteiro3 * 4));
}