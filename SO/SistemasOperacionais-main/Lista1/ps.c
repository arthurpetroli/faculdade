/**
 * 3) Crie um processo para printar na tela uma lista de processos em execução no sistema.
DICA: usar o programa ps
*/
#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <sys/wait.h>

int main() {
    char msg[2];
    int pid;
    while (1)
    {
        write(1, "shell$ ", 7);
        read(0, msg, 2);

        /*
            fgets(msg, 64, stdin);
            msg[strcspn(msg, "\n")] = '\0';
            setbuf(stdin, NULL);
        */

        pid = fork();
        if (pid == 0) {
            char *argv[] = {"ps", NULL};
            execvp(msg, argv);
        } else {
            wait(NULL);
        }
    }
    return 0;
}