/*
@file: ex7.c
@author: Arthur Petroli
@date: 10 Nov 21
@brief: Exercício 7 da aula 10

Faça um programa que mostre n elementos da sequência de Fibonacci.
O valor de n é passado para o programa.
O primeiro termo é 0, e o segundo termo é 1, os demais devem seguir a fórmula tn = tn-1 + tn-2
*/

int main(){

  int x = 0, y = 1, soma, z = 0, numero;

    printf("Digite um numero: ");
    scanf("%d", &numero);
    printf("\nSerie de Fibonacci:\n\n");
    printf("%d\n", y);

    for(; z < numero; z++) {
        soma = x + y;
        x = y;
        y = soma;
        printf("%d\n", soma);
    }

  return 0;

}