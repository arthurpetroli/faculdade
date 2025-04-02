//Comunicacao em grupo: processo 0 envia vetor para N processos
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
      int TAMANHO=10;         //tamanho do vetor, o mesmo que 'sizeof(vetor)/sizeof(int)' 
      int dados_enviados[TAMANHO]; //dados que sao enviados

      for(int i=0;i<TAMANHO;i++)
	dados_enviados[i]=i; //Preenche o vetor
      
      //int destino=0;          //ID do processo destino
      //int copias=sizeof(vetor)/sizeof(int);           //quantidade de mensagens enviadas
      
      if(my_id==0){
	//Envia para os outros processos o vetor
	for(int i=0;i<num_procs;i++){
	  result = MPI_Send( dados_enviados,
			     TAMANHO,
			     MPI_INT,
			     //destino,
			     i,
			     tag,
			     MPI_COMM_WORLD);
	  printf("SEND: Processo[%i/%i]: Destino ->[%i]\n", my_id, num_procs, i);
	}
      } else {
	int dados_recebidos[TAMANHO];
	MPI_Status status;
	result = MPI_Recv( dados_recebidos, 
			   TAMANHO,
			   MPI_INT,
			   0,  //estou recebendo vetor do processo ID 0 (zero)
			   tag,
			   MPI_COMM_WORLD, &status);
	for(int i=0;i<TAMANHO;i++)
	  printf("\nRECEIVE: Processo[%i/%i]: DadosRecebidos[%i]\n", my_id, num_procs, dados_recebidos[i]);
      }
      
      result = MPI_Finalize();
      return( result );
   }
