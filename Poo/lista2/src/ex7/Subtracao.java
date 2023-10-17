/*
Exercicio 7
Autor(es): Arthur Henrique de Oliveira Petroli
Data: 14-10-2023
*/

package ex7;

public abstract class Subtracao implements IOperacoes {
    private float op1;
    private float op2;
    private static int quantidadeInstancias;
   
    
    public Subtracao(){
        quantidadeInstancias = quantidadeInstancias + 1;
    }
    

    public void setOperando1(float op1){
         this.op1 = op1;
    }
   
    public void setOperando2(float op2){
         this.op2 = op2;
    }

    public float getResultado(){
        return op1 - op2;
    }

    public String getNomeOp(){
        return "Subtracao";
    }
   
    public int getQuantidadeInstancias(){
        return quantidadeInstancias;
    }
    
    

}
