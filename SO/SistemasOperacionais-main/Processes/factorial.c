/*
Excrever um programa C que cria uma árvore de 3 processos, onde o processo A faz um fork() criando um processo B, o processo B, por sua vez, faz um fork() criando um processo C. Cada processo deve exibir uma mensagem "Eu sou o processo XXX, filho de YYY", onde XXX e YYY são PIDs de processos. Utilizar wait() para garantir que o processo C imprima sua resposta antes do B, e que o processo B imprima sua resposta antes do A. Utilizar sleep() (man 3 sleep) para haver um intervalo de 1 segundo entre cada mensagem impressa.
*/

// #include <stdlib.h>
// #include <stdio.h>
// #include <unistd.h>
// #include <sys/wait.h>

// int main() {
//     int pid = fork();
//     int number = 5;
//     int WEXITSTATUS(5);
//     if (pid < 0)
//     {
//         printf("Erro na criacao do processo\n");
//     } else if (pid == 0) {
//         sleep(1);
//         number = number * 2;
//         printf("%d\n", number);
//         pid = fork();
//         if (pid == 0)
//         {
//             sleep(1);
//             number = number * 3;
//             printf("%d\n", number);
//             pid = fork();
//             sleep(1);
//             if (pid == 0) {
//                 sleep(1);
//                 number = number * 4;
//                 printf("%d\n", number);
//             }
//         }
//     } else {
//         number = number * 1;
//         printf("%d\n", number);
//         wait(NULL);
//     }

//     return 0;
// }

#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <sys/wait.h>

int main() {
  int pids[4];
  int status;
  int resultado = 1;

  // Cria um processo filho para cada multiplicação.
  for (int i = 1; i <= 4; i++) {
    pids[i - 1] = fork();
    if (pids[i - 1] == 0) {
      // O processo filho executa uma multiplicação.
      int n = i;
      exit(n);
    }
  }

  // Espera que todos os processos filhos terminem.
  for (int i = 0; i < 4; i++) {
    wait(&status);
  }

  // Obtém o código de saída de cada processo filho.
  for (int i = 0; i < 4; i++) {
    resultado *= WEXITSTATUS(status);
  }

  // Imprime o resultado.
  printf("5! = %d\n", resultado);

  return 0;
}