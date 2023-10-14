/*
Exercicio 4
Autor(es): Arthur Henrique de Oliveira Petroli
Data: 13-10-2023
*/

package ex4;

public abstract class Veiculo implements IVeiculo {
    private String nome; 

    public Veiculo(String nome){
        this.nome = nome;
    }

    public String getNome() {
        return nome;
    }
}