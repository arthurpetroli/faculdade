#include <unistd.h>
#include <fcntl.h>
#include <stdio.h>
#include <sys/wait.h>
char *message = "This is a message!!!" ;

/*
a) Qual o valor impresso no console? Justifique o resultado.
    5 e depois 10, pois criamos um filho e verificamos se ele é diferente de 0, todo processo criado a partir de um fork tem pid != 0 e seu pai é = 0

b) Como vocẽ resolveria o problema para imprimir o resultado correto? Por que você escolheu essa solução?
    Para imprimir o resultado corretofoi usado wait() no processo pai para esperar que o processo filho termine antes de imprimir o valor de var.

d) Quais seriam as abordagens possíveis na sua opinião? (cite ao menos as vistas em aula).
    Podemos usar semáforos, mutex, ou até mesmo a função wait para esperar o processo filho terminar.

c) Implemente a abordagem escolhida.
    
*/

int main()
{
    int var = 0;
    int status;

    if (fork() != 0) { /* I am the parent */
        wait(&status); /* Wait for child to finish */
        var += 5;
        printf("%d\n", var);
    }
    else { /*Child code */
        var +=10;
        printf("%d\n", var);
    }

    return 0;
}
