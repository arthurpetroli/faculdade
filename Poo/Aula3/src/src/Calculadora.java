package src;
//Modificadores de acesso (restringe o acesso)
//public: todas as classes tem acesso
//private: classes não tem acesso.
//package-private:  acesso apenas pelas classes no mesmo package (diretorio)
public class Calculadora {
   //private String COR = "BRANCA";  //Atributos
	private String COR = ""; 
   //private String TAMANHO = "123.4f"; //Atributos
    private String TAMANHO = "";
   //public String NOME = "SAMSUNG";
    public String NOME = "";
   //String MODELO = "123";   //package-private
    String MODELO = "";   //package-private

   //Metodos assessores
   public String getCOR(){   return this.COR;  }
   
   //Metodo mutador
   public void setCOR(String COR) { this.COR = COR;}
   
   public void setNOME(String NOME) { this.NOME = NOME;}
   
   public void setTAMANHO(String TAMANHO) { this.TAMANHO = TAMANHO;}
   
   public void setMODELO(String MODELO) { this.MODELO = MODELO;}

   private String getTAMANHO(){  return this.TAMANHO; }
   String getNOME(){  return this.NOME; }  //package-private

@Override
public String toString() {
	return "Calculadora [COR=" + this.COR + ", TAMANHO=" + this.TAMANHO + ", NOME=" + this.NOME + ", MODELO=" + this.MODELO + "]";
}
   
}
