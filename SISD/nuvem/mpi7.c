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
      int soma_local=0;
      
      for(int i=0;i<TAMANHO;i++)
	soma_local += dados_enviados[i];
      
      //Todos os processos fazem REDUCE. Os processos que invocam REDUCE guardam 'final' parcial
      int final=0;
      MPI_Reduce(&soma_local, &final,
		 copias,
		 MPI_INT,
		 MPI_SUM,
		 0, //raiz. Apenas o processo 'raiz' exibe o resultado final
		 MPI_COMM_WORLD);

      
      printf("\nProcesso[%i/%i]: Soma local: %d\n", my_id, num_procs, soma_local);


      //Apenas o processo 'raiz'
      if(my_id==0){ //Raiz
		   
	printf("\nFINAL: Processo[%i/%i]: Soma final: %i\n", my_id, num_procs, final);
	
      }
      
      result = MPI_Finalize();
      return( result );
   }
