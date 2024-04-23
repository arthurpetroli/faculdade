// 1) Processos no linux compartilham dados?
#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>

int main() {
    int pid = fork();
    int counter;
    if (pid == 0) {
        printf("Counter at if: %d (pid %d and fork %d)\n", counter, getpid(), pid);
    } else {
        fork();
        printf("Counter at else: %d (pid %d and fork %d)\n", counter, getpid(), pid);
    }
    printf("Counter outside: %d (pid %d and fork %d)\n", counter, getpid(), pid);
    return 0;
}