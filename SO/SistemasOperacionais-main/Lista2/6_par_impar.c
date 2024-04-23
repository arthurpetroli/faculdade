#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <semaphore.h>

sem_t sem;

int main() {
    sem_init(&sem, 0, 1);
    if (fork() != 0) { /* I am the parent */
        int i;
        for(i = 0; i < 10; i = i+2){
            sem_wait(&sem);
            printf("Processo pai %d \n", i);
            sleep(1);
            sem_post(&sem);
        }
    }
    else { /*Child code */
        int i;
            for(i = 1; i < 10; i = i+2){
                sem_wait(&sem);
                printf("Processo filho %d \n", i);
                sleep(1);
                sem_post(&sem);
            }
        }
        exit(0);

}

