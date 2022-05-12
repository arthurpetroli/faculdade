/*
@file: ex8.c
@author: Arthur Petroli
@date: 10 Nov 21
@brief: Exercício 8 da aula 10

Utilizando a estrutura do laço for aninhado, crie um programa que exiba a tabuada de todos os números  de 1 a 10 no seguinte formato
*/

int main(){
  int x,x2;

  for(x = 1; x <= 10; x++) {
    for(x2 = 1; x2 <= 10; x2++) {
       printf("%i X %i = %i\n", x, x2, x*x2);
    }
    printf("\n\n");
  }

  return 0;

}