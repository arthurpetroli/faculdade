// 3) Os processos compartilham arquivos?
#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>

int main() {
    int pid = fork();
    char line[100];
    if (pid == 0)
    {
        FILE *file = fopen("Processes/file.txt", "r+");
        printf("Child process\n");
        fgets(line, 100, file);
        printf("Line: %s\n", line);
        fputs(" Hello Child process ", file);
        fclose(file);
    } else {
        FILE *file = fopen("Processes/file.txt", "r+");
        printf("Parent process\n");
        fgets(line, 100, file);
        printf("Line: %s\n", line);
        fputs(" Hello Parent process", file);
        fclose(file);
    }
    return 0;
}