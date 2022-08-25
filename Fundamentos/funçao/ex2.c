/*
@file: ex2.c
@author: Arthur Petroli
@date: 20 march 22
@brief: ex2
*/
/* Elabore uma função que receba por parâmetro o sexo (caractere) e a
altura de uma pessoa (real), calcule e retorne seu peso ideal. Para isso,
utilize as fórmulas a seguir.
 Para homens: (72.7 * altura) - 58
 Para mulheres: (62.1 * altura) - 44.7
*/

/** determinação das bibliotecas */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

/** funçao pesoideal onde calcula o peso ideal do cliente conforme o sexo */
float pesoIdeal(char sexo, float altura){

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

/** pede ao cliente sexo e altura */
    printf("Qual seu sexo(F/M)? \n");
    scanf("%c", &sexo);
    printf("Qual sua altura? \n");
    scanf("%f", &altura);

/** chama funçao */
    float resultado = pesoIdeal(sexo,altura);

    printf("%.2f \n",resultado);

    printf("Final funcao! \n");
   
    return 0;
}