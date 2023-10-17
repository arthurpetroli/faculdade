/*
Exercicio 7
Autor(es): Arthur Henrique de Oliveira Petroli
Data: 14-10-2023
*/

package ex7;

public class Principal {

    public static void main(String[] args) {
        IOperacoes soma = new Soma() {} ;
        IOperacoes subtracao = new Subtracao() {};
        IOperacoes multiplicacao = new Multiplicacao() {};
        IOperacoes divisao = new Divisao() {};
        
        soma.setOperando1(15);
        soma.setOperando2(30);
        System.out.println("Resultado da " + soma.getNomeOp() + " eh " + soma.getResultado());
        System.out.println("Quantidade de instancias da soma: " + soma.getQuantidadeInstancias() + "\n");
        
        subtracao.setOperando1(15);
        subtracao.setOperando2(30);
        System.out.println("Resultado da " + subtracao.getNomeOp() + " eh " + subtracao.getResultado());
        System.out.println("Quantidade de instancias da sub: " + subtracao.getQuantidadeInstancias() + "\n");
        
        multiplicacao.setOperando1(10);
        multiplicacao.setOperando2(10);
        System.out.println("Resultado da " + multiplicacao.getNomeOp() + " eh " + multiplicacao.getResultado());
        System.out.println("Quantidade de instancias da mult: " + multiplicacao.getQuantidadeInstancias() + "\n");
        
        divisao.setOperando1(10);
        divisao.setOperando2(10);
        System.out.println("Resultado da " + divisao.getNomeOp() + " eh " + divisao.getResultado());
        System.out.println("Quantidade de instancias da mult: " + divisao.getQuantidadeInstancias() + "\n");
        
    }
    
}
