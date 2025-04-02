#include <stdio.h>
#include <mpi.h>
     
   int main(int argc, char **argv)
   {
      int result, num_procs, my_id;

      result = MPI_Init(&argc, &argv);

      result = MPI_Comm_rank(MPI_COMM_WORLD, &my_id);
      result = MPI_Comm_size(MPI_COMM_WORLD, &num_procs);

      printf("Processo[%i/%i]\n", my_id, num_procs);
      int tag=1;              //tag (marcador) da mensagem enviada
      int dados_enviados=123; //dados que sao enviados
      int destino=3;          //ID do processo destino
      int copias=1;           //quantidade de mensagens enviadas
      
      if(my_id==0){
	result = MPI_Send( &dados_enviados,
			   copias,
			   MPI_INT,
			   destino,
			   tag,
			   MPI_COMM_WORLD);
	printf("SEND: Processo[%i/%i]: DadosEnviados[%i]\n", my_id, num_procs, dados_enviados);
      }
      int dados_recebidos=-1;
      MPI_Status status;
      if(my_id==3){
	result = MPI_Recv( &dados_recebidos,
			   copias,
			   MPI_INT,
			   MPI_ANY_SOURCE,
			   MPI_ANY_TAG,
			   MPI_COMM_WORLD, &status);
	printf("\nRECEIVE: Processo[%i/%i]: DadosRecebidos[%i]\n", my_id, num_procs, dados_recebidos);
      }
      
      result = MPI_Finalize();
      return( result );
   }
