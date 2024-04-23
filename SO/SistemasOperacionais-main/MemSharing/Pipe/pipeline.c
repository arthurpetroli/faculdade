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

    if (pid > 0) {
        printf("Processo P1 %d\n", pid);
        read(pp3[0], buffer, 64);
        printf("Buffer recebido foi: %s no P1\n", buffer);
    } else if (pid == 0) {
        pid = fork();
        printf("Processo P2 %d\n", pid);
        if (pid > 0)
        {
            read(pp2[0], buffer, 64);
            printf("Buffer recebido foi: %s no P2\n", buffer);    
            write(pp3[1], buffer, 7);
        }
        if (pid == 0) {
            pid = fork();
            printf("Processo P3 %d\n", pid);
            if (pid > 0)
            {
                read(pp[0], buffer, 64);
                printf("Buffer recebido foi: %s no P3\n", buffer);    
                write(pp2[1], buffer, 7);
            }
            if (pid == 0) {
                printf("Processo P4 %d\n", pid);
                write(pp[1], "Salve", 7);
            }
        }
    } else {
        printf("Erro");
    }  

    return 0;
}