package Calculadora;

public class Calculadora extends Equipamentos {
    private String MARCA;
    public Calculadora(String nome, String MARCA){
                 super(nome);
                 this.MARCA = MARCA;
    }
     public Calculadora(String nome, String COR){
                 super(nome, COR);
    }

    
    public String toString(){
         return getNome() + " COR: " + this.COR + " MARCA: "+ this.MARCA;

    }

}

