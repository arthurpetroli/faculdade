/*
@file: ex3.c
@author: Arthur Petroli
@date: 10 march 22
@brief: ex3
*/
/*Construa uma estrutura aluno com nome, curso e 4 notas, média e situação. Leia as informações nome, curso e notas do teclado, calcule a média e armazene a situação do aluno:

media ≥ 7 → Aprovado;
3 ≤ media < 7 → Exame;
media < 3 → Reprovado;
*/
#include <stdio.h>
#include <stdlib.h>

/** introdução da estrutura aluno*/
typedef struct
{
    char nome[10];
    char curso[20];
    float notas[4];
    float media;
    char situacao[10];
}Aluno;

/** inicio do cidigo*/
int main(){

/** chamando estrutura aluno1*/
    Aluno aluno_1;
    
/** nome do aluno*/
    printf("Digite o nome do aluno:\n");
    fgets(aluno_1.nome,10,stdin);
    aluno_1.nome[strcspn(aluno_1.nome,"\n")]='\0';
    setbuf(stdin,NULL);

/** nome do curso*/
    printf("Digite o nome curso:\n");
    fgets(aluno_1.curso,20,stdin);
    aluno_1.curso[strcspn(aluno_1.curso,"\n")]='\0';
    setbuf(stdin,NULL);

/** notal do aluno*/
    for (size_t i = 0; i < 4; i++)
    {
        printf("Digite a nota do aluno %i:\n",i+1);
        scanf("%f",&aluno_1.notas[i]);
    }
    
/** media do aluno*/
    aluno_1.media = (aluno_1.notas[0] + aluno_1.notas[1] + aluno_1.notas[2] + aluno_1.notas[3])/4;


/** if e else para saber a situaçao do aluno*/
    if ( aluno_1.media >= 7)
    {
         strcpy(aluno_1.situacao, "Aprovado");
    }

    else if( aluno_1.media >= 3 && aluno_1.media < 7 )
    {
        strcpy(aluno_1.situacao, "Exame");
    }

    else if( aluno_1.media >= 3 && aluno_1.media < 7 )
    {
        strcpy(aluno_1.situacao, "Reprovado");
    }
     
/** retorno das informaçoes captadas*/
    printf("Nome do aluno: %s\n",aluno_1.nome);
    printf("Nome do curso: %s\n",aluno_1.curso);
    for (size_t i = 0; i < 4; i++)
    {
        printf("Nota%i do aluno: %.2f\n",i,aluno_1.notas[i]);
    }
    printf("Media do aluno: %.2f\n",aluno_1.media);
    printf("Situacao do aluno: %s\n",aluno_1.situacao);

/** final do codigo*/
    return 0;
    
}