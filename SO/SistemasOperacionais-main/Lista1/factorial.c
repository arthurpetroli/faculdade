#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/wait.h>

int main() {
    int n = 5;
    int resultado = 1;
    int status;
    for (int i = 1; i <= 5; i++) {
        int pid = fork();
        if (pid == 0) {
            exit(i);
        } else {
            wait(&status);
            if (WIFEXITED(status)) {
                int aux = WEXITSTATUS(status);
                resultado = resultado * aux;
            }
        }
    }
    printf("Fatoria %d\n", resultado);
    return 0;
}