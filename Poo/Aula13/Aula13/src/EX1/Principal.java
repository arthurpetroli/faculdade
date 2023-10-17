package EX1;

public class Principal {
	public class ME
	 extends ArithmeticException {
		
		public ME(String m) {
			super(m); //Envia a mensagem
			 //para a superclasse
		}
		
	}
	
	public void dividir(){		
		int a=10;
		int b=0;
		int c;
		
		try {
			if(b==0)
				throw new ME("Divisao por Zero não existe bobao");
			c = a/b;
			
		} catch(ME e) {
			System.out.println(e.getMessage());
		}
	}
	
	public Principal() {
	
		dividir();
		
	}	
	
	public static void main(String [] args) {
		new Principal();
	}
	
}

