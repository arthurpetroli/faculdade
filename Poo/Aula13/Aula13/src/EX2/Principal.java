package EX2;

public class Principal {
	public class MEV
	 extends Exception {
		
		public MEV(String m) {
			super(m);
		}
		
	}
	
	
	public class ME
	 extends RuntimeException {
		
		public ME(String m) {
			super(m); //Envia a mensagem
			 //para a superclasse
		}		
	}
	
	public void multiplicar() throws MEV {
		
		int a=10;
		int b=0;
		int c;
		
		if (b==0)
			throw new MEV("B=0");

	}
	
	public void dividir(){		
		int a=10;
		int b=0;
		int c;
		
		
			if(b==0)
				throw new ME("Divisao por Zero");
			c = a/b;
	}
	
	public Principal() {
		
		try {
			multiplicar();
		} catch(MEV e) {
			System.out.println(e.getMessage());
		}
		
	}	
	
	public static void main(String [] args) {
		new Principal();
	}
	
}
