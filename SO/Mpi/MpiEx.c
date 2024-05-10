//1) Declare uma matrix 3x3 e utilize o protocolo MPI para transferir cada linha da matriz para um processo "trabalhador" diferente. Imprima em cada processo "trabalhador" a linha da matriz recebida.
#include <mpi.h>
#include <stdio.h>
#define GERENTE 0

int main(int argc , char **argv){
int i, id , size ,len , tag = 666;
char enviado[3][3] = {{1,2,3},{4,5,6},{7,8,9}},recebido[3];

MPI_Status stats; // Status da mensagem recebida
MPI_Init (&argc , &argv);
MPI_Comm_rank(MPI_COMM_WORLD , &id);
MPI_Comm_size(MPI_COMM_WORLD , &size); //size == número de processos

if (id == GERENTE) {
for (i = 1; i < size; ++i) {
    MPI_Recv (&recebido , 3 , MPI_CHAR , i, tag , MPI_COMM_WORLD , &stats);
    printf("Mensagem recebida do processo %d: %s \n\n", i, recebido);
}
} else {
    MPI_Send (enviado[id-1] , 3 , MPI_CHAR , id , tag , MPI_COMM_WORLD);
}
    MPI_Finalize();
return 0;
}

//2) Considerando o exercício anterior, para cada trabalhador, some 1 em cada elemento da linha da matriz recebida e mande de volta para o processo coordenador. Faça o processo coordenador imprimir a matriz resultante na tela.
#include <mpi.h>
#include <stdio.h>
#define GERENTE 0

int main(int argc , char **argv){
int i, id , size ,len , tag = 666;
char enviado[3][3] = {{1,2,3},{4,5,6},{7,8,9}},recebido[3];

MPI_Status stats; // Status da mensagem recebida
MPI_Init (&argc , &argv);
MPI_Comm_rank(MPI_COMM_WORLD , &id);
MPI_Comm_size(MPI_COMM_WORLD , &size); //size == número de processos

if (id == GERENTE) {
for (i = 1; i < size; ++i) {
    MPI_Recv (&recebido , 3 , MPI_CHAR , i, tag , MPI_COMM_WORLD , &stats);
    printf("Mensagem recebida do processo %d: %s \n\n", i, recebido);
    for(int j = 0; j < 3; j++){
        recebido[j]++;
    }
    MPI_Send (recebido , 3 , MPI_CHAR , i , tag , MPI_COMM_WORLD);
}
} else {
    MPI_Send (enviado[id-1] , 3 , MPI_CHAR , id , tag , MPI_COMM_WORLD);
    MPI_Recv (&recebido , 3 , MPI_CHAR , GERENTE, tag , MPI_COMM_WORLD , &stats);
}
    MPI_Finalize();
return 0;
}

/*3) Declare duas matrizes 3x3 e utilize o protocolo MPI para dividir a carga de trabalho para realizar a soma dos seus elementos. Faça cada trabalhador deverá somar apenas uma das linhas de uma matriz pela outra e mandar o resultado para o processo coordenador. O processo coordenador deve imprimir a matriz resultante na tela.
*/
#include <mpi.h>
#include <stdio.h>
#define GERENTE 0

int main(int argc , char **argv){
int i, id , size ,len , tag = 666;
char enviado1[3][3] = {{1,2,3},{4,5,6},{7,8,9}},enviado2[3][3] = {{9,8,7},{6,5,4},{3,2,1}},recebido[3];

MPI_Status stats; // Status da mensagem recebida
MPI_Init (&argc , &argv);
MPI_Comm_rank(MPI_COMM_WORLD , &id);
MPI_Comm_size(MPI_COMM_WORLD , &size); //size == número de processos

if (id == GERENTE) {
for (i = 1; i < size; ++i) {
    MPI_Recv (&recebido , 3 , MPI_CHAR , i, tag , MPI_COMM_WORLD , &stats);
    printf("Mensagem recebida do processo %d: %s \n\n", i, recebido);
}
} else {
    for(int j = 0; j < 3; j++){
        recebido[j] = enviado1[id-1][j] + enviado2[id-1][j];
    }
    MPI_Send (recebido , 3 , MPI_CHAR , GERENTE , tag , MPI_COMM_WORLD);
}
    MPI_Finalize();
return 0;
}

