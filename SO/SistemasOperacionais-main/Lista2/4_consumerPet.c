#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <sys/types.h>
#include <sys/ipc.h>
#include <sys/shm.h>
#include <sys/wait.h>

#define SHM_SIZE 1024
#define N 5

int shmid, shmid2;
int *counter;
char *buf;

int in = 0;
int out = 0;

int turn;
int flag[2];

void peterson_lock(int self) {
    int other = 1 - self;
    flag[self] = 1;
    turn = other;
    while (flag[other] && turn == other);
}

void peterson_unlock(int self) {
    flag[self] = 0;
}

void producer() {
    printf("Producer was born!\n");

    while (1) {
        peterson_lock(0); // Locking for the producer
        while (*counter == N) ;
        
        buf[in] = (char) in + 0x61;
        printf("Stored... %c \n", buf[in]);
        
        in = ++in % N;
        (*counter)++;
        peterson_unlock(0); // Unlocking for the producer
    }
}

void consumer() {
    printf("Consumer was born!\n");

    while (1) {
        peterson_lock(1); // Locking for the consumer
        while (*counter == 0) ;
        
        char dado = buf[out];
        printf("Consumed... %c \n", dado);
        
        out = ++out % N;
        (*counter)--;
        peterson_unlock(1); // Unlocking for the consumer
    }
}

int main() {
    printf("The Producer x Consumer Problem\n");

    key_t key = ftok("/home", 'A');
    shmid = shmget(key, SHM_SIZE, 0644 | IPC_CREAT);
    counter = shmat(shmid, (void *)0, 0);

    key_t key2 = ftok("/home/downloads", 'B');
    shmid2 = shmget(key2, SHM_SIZE, 0644 | IPC_CREAT);
    buf = shmat(shmid2, (void *)0, 0);

    *counter = 0;

    int pid = fork();

    if(pid == 0){
        producer();       
    } else {
        consumer();
    }

    shmdt(counter);
    shmctl(shmid, IPC_RMID, NULL);

    shmdt(buf);
    shmctl(shmid2, IPC_RMID, NULL);

    return 0;
}
