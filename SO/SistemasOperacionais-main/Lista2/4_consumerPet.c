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

int flags[4] = {0}; // 0: Produtor ocupado, 1: Consumidor ocupado, 2: Produtor pronto, 3: Consumidor pronto

void producer() {
    printf("Produtor nasceu!\n");

    while (1) {
        flags[0] = 1; // Produtor ocupado
        while (flags[1] && flags[3] == 1)
            ; // Espera até que o consumidor esteja pronto

        while (*counter == N)
            ; // Espera até que haja espaço no buffer

        buf[in] = (char)in + 0x61;
        printf("Armazenado... %c \n", buf[in]);

        in = (in + 1) % N;
        (*counter)++;

        flags[3] = 1; // Produtor está pronto

        flags[0] = 0; // Produtor não está mais ocupado
    }
}

void consumer() {
    printf("Consumidor nasceu!\n");

    while (1) {
        flags[1] = 1; // Consumidor ocupado
        while (flags[0] && flags[3] == 0)
            ; // Espera até que o produtor esteja pronto

        while (*counter == 0)
            ; // Espera até que haja itens no buffer

        char dado = buf[out];
        buf[out] = ' ';
        printf("Consumido... %c \n", dado);

        out = (out + 1) % N;
        (*counter)--;

        flags[3] = 0; // Consumidor está pronto

        flags[1] = 0; // Consumidor não está mais ocupado
    }
}

int main() {
    printf("O Problema do Produtor x Consumidor\n");

    key_t key = ftok("/home", 'A');
    shmid = shmget(key, SHM_SIZE, 0644 | IPC_CREAT);
    counter = shmat(shmid, (void *)0, 0);

    key_t key2 = ftok("/home/downloads", 'B');
    shmid2 = shmget(key2, SHM_SIZE, 0644 | IPC_CREAT);
    buf = shmat(shmid2, (void *)0, 0);

    *counter = 0;

    int pid = fork();

    if (pid == 0) {
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


/*Este código cria um produtor e um consumidor que compartilham um buffer usando memória compartilhada. 
O produtor produz dados e os armazena no buffer, enquanto o consumidor retira esses dados do buffer e os consome.
Os produtores e consumidores são sincronizados usando flags para garantir que eles estejam prontos para produzir ou consumir antes de prosseguir.
*/