/*
@file: ex3.c
@author: Arthur Petroli
@date: 20 march 22
@brief: ex3
*/
/* Escreva um procedimento que recebe por parâmetro as 3 notas de um
aluno e uma letra. Se a letra for A, o procedimento calcula a média
aritmética das notas do aluno, se for P, a sua média ponderada (pesos: 5, 3
e 2) e se for S, a soma das notas. O valor calculado também deve ser
retornado e exibido na função main
*/

/** determinação das bibliotecas */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

/** funçao onde pode calcular media aritmetica, media ponderada e soma*/
float media(int nota1, int nota2, int nota3, char letra){

    float resposta;

    if (letra == 'A'){
        resposta = (nota1+nota2+nota3)/3;
    }

    else if(letra == 'P'){
        resposta = (5*nota1 + 3*nota2 + 2*nota3)/10;
    }

    else if(letra == 'S'){
        resposta = nota1 + nota2 + nota3;
    }

    return resposta;
}

int main(){

    float resultado;

    int nota1,nota2,nota3;
    char letra;

/** informaçoes fornecidas pelo cliente */  
    printf("Digite a nota1 ");
    scanf("%i",&nota1);
    printf("Digite a nota2 ");
    scanf("%i",&nota2);
    printf("Digite a nota3 ");
    scanf("%i",&nota3);
    setbuf(stdin,NULL);

    printf("Digite A para media aritmetica P para media ponderada e S para soma");
    scanf("%c",&letra);

/** chamando a funçao*/
    resultado = media(nota1, nota2, nota3, letra);

    
    printf("%.2f",resultado);

    return 0;
    
}