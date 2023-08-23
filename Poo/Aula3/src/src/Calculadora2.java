package src;

public class Calculadora2 {

    private String COR;
    private Float TAMANHO;

    //padrao
    public Calculadora2(){
         this.COR = "BRANCA";
         this.TAMANHO = 123.4f;
    }

    public Calculadora2(String COR){
          this.COR = COR;
          this.TAMANHO = 123.4f;  //padrao
   }

   public Calculadora2(String COR, Float TAMANHO){
          this.COR = COR;
          this.TAMANHO = TAMANHO;
   }

   public String toString(){
                 return  "\nCOR:  " + this.COR + 
                              "\nTAMANHO: " + this.TAMANHO;
    }

}

