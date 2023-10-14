/*
Exercicio 3
Autor(es): Arthur Henrique de Oliveira Petroli
Data: 13-10-2023
*/

package ex3;

public abstract class Veiculo {
    String nome;
    
     public Veiculo(String nome) {
        this.nome = nome;
    }
    public abstract String limpa();
    public abstract String vidro();
    public abstract String ligar();
    public abstract String distancia();
    public abstract String manutencao();
    
}