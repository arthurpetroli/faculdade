/*
Exercicio 6
Autor(es): Arthur Henrique de Oliveira Petroli
Data: 14-10-2023
*/

package ex6;

public class Assalariado extends Empregado {
    private float salarioSemanal;
    
    public Assalariado(String nome, String sobrenome, float salarioBase,  float salarioSemanal){
       super(nome, sobrenome, salarioBase);
       this.salarioSemanal = salarioSemanal;
       
    }
    
    public float ganhos(){
        return salarioSemanal;
    }

    public void imprimir(){
    System.out.println("Nome: " + nome + " " + sobrenome);
    System.out.println("Salário semanal: " + salarioSemanal);    
    }

}