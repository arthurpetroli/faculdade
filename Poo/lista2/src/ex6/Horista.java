/*
Exercicio 6
Autor(es): Arthur Henrique de Oliveira Petroli
Data: 14-10-2023
*/

package ex6;

public class Horista extends Empregado{
    private int horas;

    public Horista(String nome, String sobrenome, float salarioBase, int horas) {
        super(nome, sobrenome, salarioBase);
        this.horas = horas;
    }
    
    public float ganhos(){
        return salarioBase * horas;
    }
  
    public void imprimir(){
     System.out.println("Nome: " + nome + " " + sobrenome);
     System.out.println("Salário base: " + salarioBase);
     System.out.println("Horas trabalhadas: " + horas);    
    }
}