/*
@file: ex9.c
@author: Arthur Petroli
@date: 10 Nov 21
@brief: Exercício 9 da aula 10

Desenvolva um programa que receba um numero tamanho e exiba um quadrado de tamanho tamanho utilizando o carácter  #
*/

int main(){
  int x = 0,numero = 0,x2 = 0;
  printf("Digite um numero:");
  scanf("%i", &numero);
  for(x = 1; x <= numero; x++) {
    for(x2 = 1; x2 <= numero; x2++) {
        printf("# ");
    }
    printf("\n");
  }

  return 0;

}