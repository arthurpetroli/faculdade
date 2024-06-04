#include <unistd.h>
#include <fcntl.h>
#include <stdio.h>
char *message = "This is a message!!!" ;

/*
a) Qual o valor impresso no console? Justifique o resultado.
    5 e depois 10, pois criamos um filho e verificamos se ele é diferente de 0, todo processo criado a partir de um fork tem pid != 0 e seu pai é = 0
b) Como vocẽ resolveria o problema para imprimir o resultado correto? Por que você escolheu essa solução?
    Coloquei o if sendo (fork() == 0) para que o filho seja o que executa o código, e o else para o pai.

*/

int main()
{

      int var = 0;


       if (fork() == 0) { /* I am the parent */
              var += 5;
        }

       else { /*Child code */
              var +=10;
       }

      printf("%d\n",var);
}


/*
d) Quais seriam as abordagens possíveis na sua opinião? (cite ao menos as vistas em aula).
    Podemos usar semáforos, mutex, ou até mesmo a função wait para esperar o processo filho terminar.

c) Implemente a abordagem escolhida.
    Coloquei um wait(NULL) para esperar o processo filho terminar.

*/
#include <unistd.h>
#include <fcntl.h>
#include <stdio.h>
#include <sys/wait.h>


char *message = "This is a message!!!";

int main()
{

    int var = 0;



    if (fork() == 0) { /* I am the child */
        var += 5;
    } else { /* I am the parent */
        wait(NULL); // Wait for the child process to finish
        var += 10;
    }

    printf("%d\n", var);

    return 0;
}


