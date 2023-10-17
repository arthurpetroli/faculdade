/*
Exercicio 2
Autor(es): Arthur Henrique de Oliveira Petroli
Data: 13-10-2023
*/

package ex2;

public abstract class Veiculo implements IVeiculo {
    private String nome; 

    public Veiculo(String nome){
        this.nome = nome;
    }

    public String getNome() {
        return nome;
    }
}