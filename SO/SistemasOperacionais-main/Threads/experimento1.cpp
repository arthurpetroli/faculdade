#include <iostream>
#include "thread.h"
#include "mutex.h"
 
#define NUM_THREADS 5
 
using namespace std;
 
int saldo = 1000; // Variavel compartilhada pelas threads
Mutex mutex;  

int AtualizaSaldo(int n)
{
    // Comeco da zona critica
    mutex.lock(); // Bloqueia zona critica

    /*
        int meu_saldo = saldo; //lendo saldo
        int novo_saldo = meu_saldo + n*100; // processo de atualização
        saldo = novo_saldo; //atualização
    */
    saldo += n*100;
 
    mutex.unlock(); // Libera zona critica

    cout << "Novo saldo = " << saldo << endl;

    return 0;
}
 
int main()
{
    Thread * threads[NUM_THREADS];
    for (int i = 0; i < 5; i++) {
        threads[i] = new Thread(&AtualizaSaldo, i); // Instanciou objeto da thread, passa a funcao AtualizaSaldo para o objeto e o indice
        threads[i]->join(NULL);
    }

    cout << "Saldo final é " << saldo << "." << endl;

    return 0;
}

