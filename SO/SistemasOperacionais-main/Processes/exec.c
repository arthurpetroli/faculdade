#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int main() {
    char *args[] = {"./ctrlc", NULL};
    // exec é uma família de funções que substituem o processo atual por um novo processo
    // exec + v/l = v: vetor de argumentos, l: lista de argumentos
    // execv/l + p = p: procura o arquivo no PATH
    execvp(args[0], args);

    return 0;
}