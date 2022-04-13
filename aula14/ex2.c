/*
@file: ex2.c
@author: Arthur Petroli
@date: 22 Nov 21
@brief: Exercício 2 da aula 14

Elabore uma função que receba por parâmetro o sexo (char) e a altura de uma pessoa (real), calcule e retorne seu peso ideal. Para isso, utilize as fórmulas a seguir:

Para homens: (72.7*altura) - 58
Para mulheres: (62.1*altura) – 44.7
*/

#include <stdlib.h>
#include <stdio.h>



float sexoalt(char sexo, float altura){

    if(sexo == 'F'){
        return("%.2f\n",(62.1*altura) - 44.7);
    }else{
        return("%.2f\n",(72.7*altura) - 58);
    }

    return;

}


int main(){

    char sexo;
    float altura;

    printf("Comeco funcao! \n");

    printf("Qual seu sexo(F/M)? \n");
    scanf("%c", &sexo);
    printf("Qual sua altura? \n");
    scanf("%f", &altura);

    float resultado = sexoalt(sexo,altura);

    printf("%.2f \n",resultado);

    printf("Final funcao! \n");
   
    return 0;
}