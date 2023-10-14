/*
Exercicio 6
Autor(es): Arthur Henrique de Oliveira Petroli
Data: 14-10-2023
*/

package ex6;

public class Comissionado extends Empregado{
    private float taxaComissao;

    public Comissionado(String nome, String sobrenome, int salarioBase, float taxaComissao) {
        super(nome, sobrenome, salarioBase);
        this.taxaComissao = taxaComissao;
    }
    
    public float ganhos(){
        return salarioBase + (taxaComissao/100) * salarioBase;
    }

    public void imprimir(){
     System.out.println("Nome: " + nome + " " + sobrenome);
     System.out.println("Salário base: " + salarioBase);
     System.out.println("Taxa de comissão: " + taxaComissao);   
    }
}		