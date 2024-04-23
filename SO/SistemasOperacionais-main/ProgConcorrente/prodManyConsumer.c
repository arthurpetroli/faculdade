#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <sys/types.h>
#include <sys/ipc.h>
#include <sys/shm.h>
#include <sys/wait.h>

#include <pthread.h>

#define SHM_SIZE 1024

const int REP = 5;
char dado;
key_t key;
int shmid, flagsid;
char *data;

int counter;
pthread_t p;
pthread_t c;
pthread_t c2;
pthread_t c3;

pthread_mutex_t mut;

void *producer()
{
    printf("Producer was born!\n");

    int in = 0;

    while (1)
    {

        while (counter == 5);

        pthread_mutex_lock(&mut);

        data[in] = (char)in + 0x61;
        printf("Stored... %c \n", data[in]);

        counter++;
        // Fim da regiao critica

        pthread_mutex_unlock(&mut);
        in = ++in % 5;
    }
}

void *consumer()
{
    printf("Consumer was born!\n");

    int in = 0;

    while (1)
    {

        while (counter == 0);

        pthread_mutex_lock(&mut);

        dado = data[in];

        data[in] = ' ';

        if (counter > 0) printf("Thread 1 Consumed... %c e Counter %d\n", dado, counter);

        counter--;
        
        pthread_mutex_unlock(&mut);

        in = ++in % 5;
    }
}

void *consumer2()
{
    printf("Consumer was born!\n");

    int in = 0;

    while (1)
    {

        while (counter == 0);

        pthread_mutex_lock(&mut);

        dado = data[in];

        data[in] = ' ';

        if (counter > 0) printf("Thread 2 Consumed... %c e Counter %d\n", dado, counter);

        counter--;
        
        pthread_mutex_unlock(&mut);

        in = ++in % 5;
    }
}

void *consumer3()
{
    printf("Consumer was born!\n");

    int in = 0;

    while (1)
    {

        while (counter == 0);

        pthread_mutex_lock(&mut);

        dado = data[in];

        data[in] = ' ';

        if (counter > 0) printf("Thread 3 Consumed... %c e Counter %d\n", dado, counter);

        counter--;
        
        pthread_mutex_unlock(&mut);

        in = ++in % 5;
    }
}

int main()
{
    counter = 0;

    printf("The Producer x Consumer Problem\n");
    int status;

    data = (malloc(5 * sizeof(char))); //     1

    pthread_create(&p, NULL, producer, NULL);
    pthread_create(&c, NULL, consumer, NULL);
    pthread_create(&c2, NULL, consumer2, NULL);
    pthread_create(&c3, NULL, consumer3, NULL);

    pthread_join(p, NULL);
    pthread_join(c, NULL);
    pthread_join(c2, NULL);
    pthread_join(c3, NULL);

    return 0;
}