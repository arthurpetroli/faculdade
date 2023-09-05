package Calculadora;

public class Equipamentos {

    public String COR;
    private Float TAMANHO;

    

       public Equipamentos(String COR, Float TAMANHO){
                this.COR = COR;
                this.TAMANHO = TAMANHO;
       }

   public Float getTamanho(){
         return this.TAMANHO;
   }

}

