#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/wait.h>

int main() {
    int status;
    int numero = 5;
    int resultado = 1;
    for (int i = 1; i <= numero; i++) {
        int pid = fork();
        if (pid == 0) {
            printf("pos %d\n", i);
            exit(i);
        } else {
            wait(&status);
            int aux = WEXITSTATUS(status);
            printf("%d * %d\n", resultado, aux);
            resultado = resultado * aux;
        }
    }
    printf("%d\n", resultado);
    return 0;
}