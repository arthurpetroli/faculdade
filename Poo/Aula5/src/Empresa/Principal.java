package Empresa;	

public class Principal {


	 public Principal() {
		 
		 Transportadora transportadora = new Transportadora("Apucarana", 863.7f );
		 Transportadora transportadora2 = new Transportadora("Apucarana", 863.7f,"543.534.565-21" );
		 System.out.println( transportadora.getLocal() );
		 System.out.println( transportadora.getLucro() );
		 System.out.println( transportadora2.getCnpj() );
	 }
	
	
   public static void main(String [] args) {
  	 new Principal();
   }
}
