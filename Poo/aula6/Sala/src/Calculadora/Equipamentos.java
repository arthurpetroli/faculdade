package Calculadora;

public class Equipamentos {
    private String nome;
    private String COR;

    public Equipamentos(String nome){
           this.nome = nome;
    }

    public String toString(){
          return "O nome do Equipamentos eh: " + this.nome;
   }
   public String getNome(){
           return this.nome;
   }
}
