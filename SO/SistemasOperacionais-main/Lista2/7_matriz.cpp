#include <stdio.h>
#include <pthread.h>
#include <semaphore.h>
#include <unistd.h>

#include "thread.h"
#include "semaphore.h"


/*
Threads independentes, não geram inconsistência no resultado final,
no entanto os cout's parecem fora de ordem
*/


/* number of matrix columns and rows */
#define M 5
#define N 10

sem_t sem;
int matrix[N][M];
pthread_t threads[N];
int sum_total;

pthread_mutex_t t;

/* thread function; it sums the values of the matrix in the row */
int SumValues(int i)
{
    pthread_mutex_lock(&t);

    int n = (long) i; /* number of row */
    int total = 0; /* the total of the values in the row */
    int j;
    for (j = 0; j < M; j++)          /* sum values in the "n" row */
        total += matrix[n][j];

    printf("The total in row %d is %d  \n", n, total);

    pthread_mutex_unlock(&t);

    /* terminate a thread and return a total in the row */
    pthread_exit((void **)total);
    return total;
}

int main(int argc, char *argv[])
{
    sum_total = 0;
    int i=1, j;
    int total = 0; /* the total of the values in the matrix */


     /* initialize the matrix */
    for (i = 0; i < N; i++)
        for (j = 0; j < M; j++)
            matrix[i][j] = i * M + j;

    /* create threads */
    /* COLOQUE SEU CÓDIGO PARA CRIAR AS THREADS AQUI! */
    //1. Criar N threads, uma para somar os valores de cada linha.
    Thread *threads[N];
    for (i = 0; i < N; i++)
    {
        threads[i] = new Thread(&SumValues, i);
    }


    /* wait for terminate a threads */
    /* COLOQUE SEU CÓDIGO PARA PEGAR O SOMATÓRIO DE LINHAS E TOTALIZAR A SOMA DA MATRIZ AQUI! */
    //2. Receber o resultado do somatório de cada linha e gerar o somatório total da matriz.
    for (i = 0; i < N; i++)
    {
        threads[i]->join(&sum_total);
        total += sum_total;
    }

     printf("The total values in the matrix is %d \n", total);


    return 0;
}