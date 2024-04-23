#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <signal.h>
#include <unistd.h>
#include <sys/wait.h>

char **getCommand(char *input)
{
    char **command = malloc(16 * sizeof(char *));
    char *separator = " "; // space separator
    char *parsed;          // string parsed
    int index = 0;

    parsed = strtok(input, separator);
    while (parsed != NULL)
    {
        command[index] = parsed;
        index++;
        parsed = strtok(NULL, separator);
    }
    command[index] = NULL;
    return command;
}

int cd(char *path) {
    return chdir(path);
}

int main(int argc, char *argv[]) {
    char **command;
    char *input = (char*) calloc(32, sizeof(char));
    int pid;
    while (1) {
        printf("MyShell:~ ");
        fgets(input, 32, stdin);
        input[strcspn(input, "\n")] = '\0';
        setbuf(stdin, NULL);
        command = getCommand(input);
        if (!command[0]) {
            free(command);
            continue;
        }
        if (strcmp(command[0], "cd") == 0) {
            if (cd(command[1]) < 0) {
                perror(command[1]);
            }
            continue;
        }

        pid = fork();
        if (pid == 0) {
            if (execvp(command[0], command) < 0) {
                perror(command[0]);
                exit(1);
            }
        } else if (pid < -1) {
            printf("Process error\n");
        } else {
            waitpid(pid, NULL, WUNTRACED);
        }
        if (strcmp(command[0], "help") == 0) {
            printf("ls: Lista todos os arquivos do diretório\n\nps: mostra uma série de informações sobre os processos\n\ncd: Acessa uma determinada pasta (diretório)\n\nmkdir: Cria um diretório\n\nrm: Remove um arquivo/diretório\n\ncat: mostra o conteúdo de um arquivo\n\nIpconfig: mostra informações do dispositivo de redes e ip\n");
        }
        if (strcmp(command[0], "exit") == 0)
        {
            free(input);
            free(command);
            exit(0);
        }
    }

    return 0;
}
