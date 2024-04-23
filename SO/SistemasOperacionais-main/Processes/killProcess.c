// 2) Quando o pai de um processo morre o filho continua existindo?
#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>

int main() {
    int pid = fork();
    int status;
    if (pid < 0) {
        printf("Erro na chamada fork\n");
    } else if (pid == 0) {
        printf("Filho  pid %d \n", getpid());
        while(1);
        exit(5);
    } else {
        printf("Pai pid %d \n", getpid());
        wait(&status);
        if (WIFEXITED(status)) {
            printf("O programa rodou normalmente com o código %d \n", WEXITSTATUS(status));
        } if (WIFSIGNALED(status)) {
            printf("O programa foi morto por um kill %d \n", WTERMSIG(status));
        }
        printf("Pai rodou filho que terminou com status %d \n",status);
    }
    return 0;
}