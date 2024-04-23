#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int main() {
    // Fork create a child process
    // If we made fork multiple times, we will have fork^2 processes that means 2^n processes
    int pid = fork();
    printf("Hello fork: %d\n", pid);
    if (pid == 0) {
        printf("Hello child process\n%d\n", getpid());
    } else {
        printf("Hello parent process\n%d\n", getpid());
    }
    printf("\n");
    return 0;
}