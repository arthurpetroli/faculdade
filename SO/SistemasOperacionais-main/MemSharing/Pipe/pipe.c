#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int main() {
    int pp[2];
    pipe(pp);
    int pid = fork();
    char buffer[64];
    if (pid == 0) {
        write(pp[1], "Salve\n", 7);
    } else {
        read(pp[0], buffer, 64);
        printf("Buffer recebido foi: %s\n", buffer);
    }

    return 0;
}