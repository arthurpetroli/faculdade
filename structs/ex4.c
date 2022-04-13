/*
@file: ex4.c
@author: Arthur Petroli
@date: 10 march 22
@brief: ex4
*/
/*Faça um programa que controla o consumo de energia dos eletrodomésticos de uma casa e:

–Crie e leia 5 eletrodomésticos que contém nome (máximo 15 letras), potência (real, em kW) e tempo ativo por dia (real, em horas).

–Leia um tempo t (em dias), calcule e mostre o consumo total na casa e o consumo relativo de cada eletrodoméstico (consumo/consumo total) nesse período de tempo. Apresente este último dado em porcentagem.
*/
#include <stdio.h>
#include <stdlib.h>

/** introdução da estrutura eletrodomestico*/
typedef struct
{
    char nome[15];
    int potencia;
    int tempoAtivo;
}Eletro;

/** inicio do cidigo*/
int main(){

    int tempo;
    int consumoTotal;

/** chamando estrutura eletro1*/
    Eletro eletro_1;

/** nome do eletrodomestico1*/
    printf("Digite o nome do eletrodomestico:\n");
    fgets(eletro_1.nome,15,stdin);
    eletro_1.nome[strcspn(eletro_1.nome,"\n")]='\0';
    setbuf(stdin,NULL);

/** potencia do eletrodomestico1*/
    printf("Digite a potencia em KW:\n");
    scanf("%i",&eletro_1.potencia);

/** tempo de uso do eletrodomestico1*/
    printf("Digite o tempo ativo em horas:\n");
    scanf("%i",&eletro_1.tempoAtivo);
    setbuf(stdin,NULL);


/** chamando estrutura eletro2*/
    Eletro eletro_2;

/** nome do eletrodomestico2*/
    printf("Digite o nome do eletrodomestico:\n");
    fgets(eletro_2.nome,15,stdin);
    eletro_2.nome[strcspn(eletro_2.nome,"\n")]='\0';
    setbuf(stdin,NULL);

/** potencia do eletrodomestico2*/
    printf("Digite a potencia em KW:\n");
    scanf("%i",&eletro_2.potencia);

/** tempo de uso do eletrodomestico2*/
    printf("Digite o tempo ativo em horas:\n");
    scanf("%i",&eletro_2.tempoAtivo);
    setbuf(stdin,NULL);


/** chamando estrutura eletro3*/
    Eletro eletro_3;

/** nome do eletrodomestico3*/
    printf("Digite o nome do eletrodomestico:\n");
    fgets(eletro_3.nome,15,stdin);
    eletro_3.nome[strcspn(eletro_3.nome,"\n")]='\0';
    setbuf(stdin,NULL);

/** potencia do eletrodomestico3*/
    printf("Digite a potencia em KW:\n");
    scanf("%i",&eletro_3.potencia);

/** tempo de uso do eletrodomestico3*/
    printf("Digite o tempo ativo em horas:\n");
    scanf("%i",&eletro_3.tempoAtivo);
    setbuf(stdin,NULL);


/** chamando estrutura eletro4*/
    Eletro eletro_4;

/** nome do eletrodomestico4*/
    printf("Digite o nome do eletrodomestico:\n");
    fgets(eletro_4.nome,15,stdin);
    eletro_4.nome[strcspn(eletro_4.nome,"\n")]='\0';
    setbuf(stdin,NULL);

/** potencia do eletrodomestico4*/
    printf("Digite a potencia em KW:\n");
    scanf("%i",&eletro_4.potencia);

/** tempo de uso do eletrodomestico4*/
    printf("Digite o tempo ativo em horas:\n");
    scanf("%i",&eletro_4.tempoAtivo);
    setbuf(stdin,NULL);


/** chamando estrutura eletro5*/
    Eletro eletro_5;

/** nome do eletrodomestico5*/
    printf("Digite o nome do eletrodomestico:\n");
    fgets(eletro_5.nome,15,stdin);
    eletro_5.nome[strcspn(eletro_5.nome,"\n")]='\0';
    setbuf(stdin,NULL);

/** potencia do eletrodomestico5*/
    printf("Digite a potencia em KW:\n");
    scanf("%i",&eletro_5.potencia);

/** tempo de uso do eletrodomestico5*/
    printf("Digite o tempo ativo em horas:\n");
    scanf("%i",&eletro_5.tempoAtivo);
    setbuf(stdin,NULL);


/** retorno das informaçoes do eletrodomestico1*/
    printf("Nome do eletrodomestico: %s\n",eletro_1.nome);
    printf("Potencia utilizada: %i\n",eletro_1.potencia);
    printf("Tempo de uso: %i\n\n\n",eletro_1.tempoAtivo);

/** retorno das informaçoes do eletrodomestico2*/
    printf("Nome do eletrodomestico: %s\n",eletro_2.nome);
    printf("Potencia utilizada: %i\n",eletro_2.potencia);
    printf("Tempo de uso: %i\n\n\n",eletro_2.tempoAtivo);

/** retorno das informaçoes do eletrodomestico3*/
    printf("Nome do eletrodomestico: %s\n",eletro_3.nome);
    printf("Potencia utilizada: %i\n",eletro_3.potencia);
    printf("Tempo de uso: %i\n\n\n",eletro_3.tempoAtivo);

/** retorno das informaçoes do eletrodomestico4*/
    printf("Nome do eletrodomestico: %s\n",eletro_4.nome);
    printf("Potencia utilizada: %i\n",eletro_4.potencia);
    printf("Tempo de uso: %i\n\n\n",eletro_4.tempoAtivo);

/** retorno das informaçoes do eletrodomestico5*/
    printf("Nome do eletrodomestico: %s\n",eletro_5.nome);
    printf("Potencia utilizada: %i\n",eletro_5.potencia);
    printf("Tempo de uso: %i\n\n\n",eletro_5.tempoAtivo);

/** dias de utilizaçao dos eletrosdomesticos*/
    printf("Digite o tempo em dias de utilizacao dos eletrodomesticos :\n");
    scanf("%i",&tempo);

/** comsumo de todos eletrosdomesticos*/
    consumoTotal = tempo*(eletro_1.potencia*eletro_1.tempoAtivo + eletro_2.potencia*eletro_2.tempoAtivo + eletro_3.potencia*eletro_3.tempoAtivo + eletro_4.potencia*eletro_4.tempoAtivo + eletro_5.potencia*eletro_5.tempoAtivo);

/** retorno comsumo total*/
    printf("Comsumo total: %i\n",consumoTotal);

/** comsumo percentual de cada eletrodomestico*/
    printf("Consumo primreiro eletrodomestico: %.2f%%\n",(float) (1000*(eletro_1.potencia*eletro_1.tempoAtivo))/consumoTotal);
    printf("Consumo segundo eletrodomestico: %.2f%%\n",(float) (1000*(eletro_2.potencia*eletro_2.tempoAtivo))/consumoTotal);
    printf("Consumo terceiro eletrodomestico: %.2f%%\n",(float) (1000*(eletro_3.potencia*eletro_3.tempoAtivo))/consumoTotal);
    printf("Consumo quarto eletrodomestico: %.2f%%\n",(float) (1000*(eletro_4.potencia*eletro_4.tempoAtivo))/consumoTotal);
    printf("Consumo quinto eletrodomestico: %.2f%%\n",(float) (1000*(eletro_5.potencia*eletro_5.tempoAtivo))/consumoTotal);

/** fim do codigo*/
    return 0;

}