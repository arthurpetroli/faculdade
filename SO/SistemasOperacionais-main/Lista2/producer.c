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
int *flags;
pthread_mutex_t mutex;
pthread_cond_t cond;

void *producer(void *arg) {
    printf("Producer was born!\n");

    for (int i = 0; i < REP; i++) {
        pthread_mutex_lock(&mutex);

        while (flags[1] && (flags[3] == 1)) {
            pthread_cond_wait(&cond, &mutex);
        }

        data[i] = (char)i + 0x61;
        printf("Stored... %c \n", data[i]);

        flags[3] = 1;
        flags[0] = 0;

        pthread_cond_signal(&cond);
        pthread_mutex_unlock(&mutex);
    }

    return NULL;
}

int main() {
    printf("The Producer x Consumer Problem\n");
    int status;

    key = ftok("/home", 'A');                      //  Segmento
    shmid = shmget(key, 1024, 0644 | IPC_CREAT);   //
    data = (malloc(5 * sizeof(char)));             //     1
    data = shmat(shmid, (void *)0, 0);             //

    // Peterson
    key = ftok("/home/downloads", 'B');            //  Segmento
    flagsid = shmget(key, 1024, 0644 | IPC_CREAT); //
    flags = (malloc(3 * sizeof(int)));             //     2
    flags = shmat(flagsid, (void *)0, 0);          //

    flags[0] = 1;
    flags[1] = 0;
    flags[3] = 0;

    pthread_t producerThread;

    pthread_mutex_init(&mutex, NULL);
    pthread_cond_init(&cond, NULL);

    pthread_create(&producerThread, NULL, producer, NULL);

    pthread_join(producerThread, NULL);

    pthread_mutex_destroy(&mutex);
    pthread_cond_destroy(&cond);

    shmdt(data);                              //segmento 3
    shmctl(shmid, IPC_RMID, NULL);            //

    shmdt(flags);                             //segmento 4
    shmctl(flagsid, IPC_RMID, NULL);          //

    return 0;
}
