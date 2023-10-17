/*
Exercicio 6
Autor(es): Arthur Henrique de Oliveira Petroli
Data: 14-10-2023
*/

package ex6;

public class Bonificado extends Assalariado {
    private float bonificacao;

    public Bonificado(String nome, String sobrenome, float salarioBase, float bonificacao, float salarioSemanal) {
        super(nome, sobrenome, salarioBase, salarioSemanal);
        this.bonificacao = bonificacao;
    }

    public float ganhos() {
       return super.ganhos() + bonificacao;
    }

    public void imprimir() {
       super.imprimir();
       System.out.println("Bonificação: " + bonificacao);
    }
}