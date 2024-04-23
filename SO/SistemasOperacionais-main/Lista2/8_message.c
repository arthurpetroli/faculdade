#include <unistd.h>
#include <fcntl.h>
#include <stdio.h>
char *message = "This is a message!!!" ;

/*
a) Qual o valor impresso no console? Justifique o resultado.
    5 e depois 10, pois criamos um filho e verificamos se ele é diferente de 0, todo processo criado a partir de um fork tem pid != 0 e seu pai é = 0
b) Como vocẽ resolveria o problema para imprimir o resultado correto? Por que você escolheu essa solução?
    Coloquei o if sendo (fork() == 0)

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