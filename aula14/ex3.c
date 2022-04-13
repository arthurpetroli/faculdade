/*
@file: ex3.c
@author: Arthur Petroli
@date: 22 Nov 21
@brief: Exercício 3 da aula 14

Escreva um procedimento que recebe por parâmetro as 3 notas de um aluno e uma letra. Se a letra for A, o procedimento calcula a média aritmética das notas do aluno, se for P,
a sua média ponderada (pesos: 5, 3 e 2) e se for S, a soma das notas. O valor calculado também deve ser retornado e exibido na função main.
*/

#include <stdlib.h>
#include <stdio.h>

float notas(float nota1, float nota2, float nota3, char letra){

    if(letra == 'A'){
        return("%.2f\n",(nota1+nota2+nota3)/3);
    }
    else if(letra == 'P'){
        return("%.2f\n", (5*nota1+3*nota2+2*nota3)/10);
    }

    return;

}

int main(){

    char letra;
    float nota1,nota2,nota3;

    printf("Comeco funcao! \n");

    printf("Digite nota1: \n");
    scanf("%f", &nota1);
    printf("Digite nota2: \n");
    scanf("%f", &nota2);
    printf("Digite nota3: \n");
    scanf("%f", &nota3);

    setbuf(stdin,NULL);

    printf("Digite uma letra? \n");
    scanf("%c", &letra);

    float resultado = notas(nota1,nota2,nota3,letra);

    printf("%.2f \n",resultado);

    printf("Final funcao! \n");
   
    return 0;
}