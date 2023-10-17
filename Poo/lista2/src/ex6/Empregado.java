/*
Exercicio 6
Autor(es): Arthur Henrique de Oliveira Petroli
Data: 14-10-2023
*/

package ex6;

public abstract class Empregado {
    String nome;
    String sobrenome;
    float salarioBase;
    
    public Empregado(String nome, String sobrenome, float salarioBase){
        this.nome =nome;
        this.sobrenome = sobrenome;
        this.salarioBase = salarioBase;
    }
    
    public abstract float ganhos();
    public abstract void imprimir();
    
}