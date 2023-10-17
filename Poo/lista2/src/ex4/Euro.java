/*
Exercicio 4
Autor(es): Arthur Henrique de Oliveira Petroli
Data: 13-10-2023
*/

package ex4;

public class Euro implements IMoeda{
    @Override
    public void formaPagamento() {
        System.out.println("Pagando em Euro");
    }
}