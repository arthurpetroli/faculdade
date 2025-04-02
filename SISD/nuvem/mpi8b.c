//Map-Reduce: Comunicacao em grupo:
//Cada processo faz uma soma local (job) e invoca MPI_REDUCE.
//Cada vez que o processo invoca MPI_REDUCE, a soma final eh atualizada.
//O processo 0 (raiz) exibe a soma final
#include <stdio.h>
#include <mpi.h>
     
   int main(int argc, char **argv)
   {
      int result, num_procs, my_id;

      result = MPI_Init(&argc, &argv);

      result = MPI_Comm_rank(MPI_COMM_WORLD, &my_id);
      result = MPI_Comm_size(MPI_COMM_WORLD, &num_procs);

      printf("\nProcesso[%i/%i]", my_id, num_procs);
      int tag=1;              //tag (marcador) da mensagem enviada
      int copias=1;

      int TAMANHO=10;
      int dados_enviados[TAMANHO]; //dados que sao enviados
      for(int i=0;i<TAMANHO;i++)
	dados_enviados[i]=i;

      //Local: Soma o vetor localmente
      //int soma_local=0;
      
      //for(int i=0;i<TAMANHO;i++)
      //soma_local += dados_enviados[i];


      if(my_id==0){
	int dados_recebidos[TAMANHO];
	MPI_Status status;
	
	int final = 0;
	for(int i=0;i<num_procs;i++)
	  //Processo raiz: Recebe vetor e soma
	  MPI_Recv(dados_recebidos,
		   TAMANHO,
		   MPI_INT,
		   i, //origem
		   tag,
		   MPI_COMM_WORLD,
		   &status);

	for(int j=0;j<TAMANHO;j++)
	  final += dados_recebidos[j];		   

	printf("FINAL: %d", final);
      } else {
	printf("SEND:");
	//Demais processos: enviam o vetor para o processo raiz
	result = MPI_Send( dados_enviados,
			   TAMANHO,
			   MPI_INT,
			   0,//destino,
			   tag,
			   MPI_COMM_WORLD);
      }
      
      result = MPI_Finalize();
      return( result );
   }
