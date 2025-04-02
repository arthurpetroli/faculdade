#include <stdio.h>
#include <mpi.h>

int main(int argc, char **argv) 
{
  int result, num_procs, my_id;
  
  result = MPI_Init(&argc, &argv);

  // Exibe o nome do processador
    char nome[MPI_MAX_PROCESSOR_NAME];
    int tamanho;
    MPI_Get_processor_name(nome, &tamanho);

    result = MPI_Comm_rank(MPI_COMM_WORLD, &my_id);
    result = MPI_Comm_size(MPI_COMM_WORLD, &num_procs);

    printf("Processo [%i/%i] no processador %s\n", 
	   my_id, num_procs, nome);
    
    result = MPI_Finalize();
    return( result );
}
