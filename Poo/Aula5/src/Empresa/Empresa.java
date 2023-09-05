package Empresa;

public class Empresa {
    private String Local;
    private Float Lucro;
    private String Cnpj;
    

       public Empresa (String Local, Float Lucro){
                this.Local = Local;
                this.Lucro = Lucro;
       }
       
       public Empresa (String Local, Float Lucro,String Cnpj){
           this.Local = Local;
           this.Lucro = Lucro;
           this.Cnpj = Cnpj;
       }

   public Float getLucro(){
         return this.Lucro;
   }
   public String getLocal(){
       return this.Local;
   }
   public String getCnpj(){
	   return this.Cnpj;
   }
}
