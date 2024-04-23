#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <wait.h>

int main() {
    int id = fork();
    int n = 0;
    if (id == 0)
    {
        n = 1;
    } else {
        wait(NULL); // Stop the execution ultil the child process finish
        n = 5;
    }
    for (int i = 0; i <= n + 5; i++)
    {
        printf("%d ", i);
    }
    printf("\n");
    return 0;
}