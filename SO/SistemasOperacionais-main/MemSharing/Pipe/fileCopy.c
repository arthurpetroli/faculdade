#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>

int main(int *argc, char *argv[]) {
    int pp[2];
    pipe(pp);
    FILE *arq = fopen(argv[1], "r");
    char aux[64];
    char buffer[64];
    fgets(aux, 64, arq);
    printf("%s\n", aux);
    write(pp[1], aux, 64);

    int pid = fork();
    if (pid == 0) {
        read(pp[0], buffer, 64);
        printf("%s\n", buffer);

        FILE *arq2 = fopen(argv[2], "w");
        fputs(buffer, arq2);
        fclose(arq2);
    }
    fclose(arq);
    return 0;
}