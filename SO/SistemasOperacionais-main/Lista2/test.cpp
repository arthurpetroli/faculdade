#include <iostream>
#include "thread.h"
#include "mutex.h"

#define NUM_THREADS 5

using namespace std;

int saldo = 1000;
Mutex mutex;

int AtualizaSaldo(int n)
{

    mutex.lock();
    int meu_saldo = saldo; //lendo saldo
    int novo_saldo = meu_saldo + n*100; // processo de atualização
    saldo = novo_saldo; //atualização

    mutex.unlock();
    cout << "Novo saldo = " << novo_saldo << endl;
    return novo_saldo;
}

int main()
{
    Thread * threads[NUM_THREADS];
    int c;

    for (int i = 0; i < NUM_THREADS; i++)
    {
        threads[i] = new Thread(&AtualizaSaldo, i);
    }

    for (int i = 0; i < NUM_THREADS; i++)
    {
        threads[i]->join(&c);
        printf("%d\n", c);
    }



    cout << "Saldo final é " << saldo << "." << endl;
}