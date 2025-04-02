//NOT WORKING. IT IS BETTER TO USE MPI_REDUCE instead. 
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
      //int dados_enviados[TAMANHO]; //dados que sao enviados
      int dados_enviados=123;
      
      //for(int i=0;i<TAMANHO;i++)
      //dados_enviados[i]=i; //Preenche o vetor
      
      //int destino=0;          //ID do processo destino
      //int copias=sizeof(vetor)/sizeof(int);           //quantidade de mensagens enviadas
      
      if(my_id!=0){
	//Envia para a raiz
	//for(int i=0;i<num_procs;i++){
	  result = MPI_Send( &dados_enviados,
			     1,
			     MPI_INT,
			     0, //destino
			     tag,
			     MPI_COMM_WORLD);
	  printf("SEND: Processo[%i/%i]: Destino ->[0]\n", my_id, num_procs);
	  //}
      } else {
	//Raiz
	int dados_recebidos;
	MPI_Status status;
	for(int i=0;i<num_procs;i++){
	  printf("%d",i);
	  result = MPI_Recv( &dados_recebidos, 
			   1,
			   MPI_INT,
			   i,  //estou recebendo vetor do processo ID 
			   tag,
			   MPI_COMM_WORLD, &status);
	}
	//for(int i=0;i<TAMANHO;i++)
	  printf("\nRECEIVE: Processo[%i/%i]: DadosRecebidos[%i]\n", my_id, num_procs, dados_recebidos);
      }
      
      result = MPI_Finalize();
      return( result );
   }
