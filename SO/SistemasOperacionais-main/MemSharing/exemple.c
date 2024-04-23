#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>
#include <sys/ipc.h>
#include <sys/shm.h>

#define SHM_SIZE 1024

int main(int argc, char *argv[]) {
    key_t key;
    int shmid;
    char *data;
    int mode;

    if ((key = ftok("/sys", 'X')) == -1) {
        perror("ftok");
        exit(1);
    }

    if ((shmid = shmget(key, SHM_SIZE, 0644 | IPC_CREAT)) == -1) {
        perror("shmget");
        exit(1);
    }

    data = (char *)shmat(shmid, (void *)0, 0);
    if (data == (char *)(-1)) {
        perror("shmat");
        exit(1);
    }

    if (argc == 2) {
        printf("Escrevendo: \"%s\"\n", argv[1]);
        strncpy(data, argv[1], SHM_SIZE);
    } else
        printf("Conteúdo do seguimento: \"%s\"\n", data);

    if (shmdt(data) == -1) {
        perror("shmdt");
        exit(1);
    }

    if (argc > 1 && !strcmp(argv[1], "apagar")) {

        if (shmctl(shmid, IPC_RMID, NULL) == -1) {
            perror("shmctl");
            exit(1);
        }
        printf("Deletando seguimento...\n\n");
        exit(0);
    }

    return 0;
}
