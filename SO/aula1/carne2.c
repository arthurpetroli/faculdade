/*Excrever um programa C que cria uma árvore de 3 processos, onde o processo A faz um fork() criando um processo B, o processo B, por sua vez, faz um fork() criando um processo C. Cada processo deve exibir uma mensagem "Eu sou o processo XXX, filho de YYY", onde XXX e YYY são PIDs de processos. Utilizar wait() para garantir que o processo C imprima sua resposta antes do B, e que o processo B imprima sua resposta antes do A. Utilizar sleep() (man 3 sleep) para haver um intervalo de 1 segundo entre cada mensagem impressa.
O status passado como parâmetro à função wait(&status) é, na verdade, o mecanismo de retorno de resultado do wait/waitpid. Ao retornar, esta variável contém informações sobre o resultado da execução do processo filho. Por exemplo, se um processo terminou normalmente (i.e., chamou exit), o comando WIFEXITED(status) retorna true. Este comando retorna false se o processo foi abortado (e.g., segmentation fault) ou morto (e.g., kill). Investigue no manual do wait no Linux (man wait) o funcionamento do comando WEXITSTATUS(status), e use-o para modificar o exercício anterior para calcular o 5!, sendo que cada processo pode executar apenas uma
*/
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>

int main() {
    int pidA, pidB, pidC;
    int status;

    pidA = getpid();

    pidB = fork();
    if (pidB == 0) {
        pidC = fork();
        if (pidC == 0) {
            sleep(1);
            printf("Eu sou o processo %d, filho de %d\n", getpid(), getppid());
            exit(5*4);
        } else {
            wait(&status);
            sleep(1);
            printf("Eu sou o processo %d, filho de %d\n", getpid(), getppid());
            exit(WEXITSTATUS(status * 3));
        }
    } else {
        wait(&status);
        sleep(1);
        printf("Eu sou o processo %d, filho de %d\n", getpid(), getppid());
        printf("O fatorial de 5 é %d\n",  WEXITSTATUS(status * 2));
    }

    return 0;
}

