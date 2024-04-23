#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int main() {
    int pp[2], pp2[2], pp3[2];
    pipe(pp);
    pipe(pp2);
    pipe(pp3);

    char buffer[64];

    int pid = fork();
    if (pid == 0) {
        pid = fork();
        if (pid == 0)
        {
            pid = fork();
            if (pid == 0) {
                write(pp3[1], "Mensagem 3\n", 12);
            } else {
                read(pp3[0], buffer, 64);
                printf("%s", buffer);
                write(pp2[1], "Mensagem 2\n", 12);
            }
        } else {
            read(pp2[0], buffer, 64);
            printf("%s", buffer);
            write(pp[1], "Mensagem 1\n", 12);
        }
    } else {
        read(pp[0], buffer, 64);
        printf("%s", buffer);
    }


    return 0;
}