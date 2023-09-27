package Bicicleta;

import java.util.ArrayList;
import java.util.List;
public class Principal {
//Polimorfismo com interfaces
	public interface Bicicleta {
		public abstract void cadastrar();
	}
	
	public class MontainBike implements Bicicleta {
		float tamanho;
		float preco;
		public void cadastrar() {
			this.tamanho = 5.72f;
			this.preco = 7000f;
			System.out.println( this.tamanho );
			System.out.println( this.preco );
			return ;
		}
	}
	public class Speed implements Bicicleta {		
		float tamanho;
		float preco;
		public void cadastrar() {
			this.tamanho = 7.42f;
			this.preco = 5000f;
			System.out.println( this.tamanho );
			System.out.println( this.preco );
			return ;
		}	
	}
	public class Ergonomica implements Bicicleta {		
		float tamanho;
		float preco;
		public void cadastrar() {
			this.tamanho = 3.68f;
			this.preco = 3000f;
			System.out.println( this.tamanho );
			System.out.println( this.preco );
			return ;
		}		
	}
	
	public Principal() {
		
		List<Bicicleta> lista = new ArrayList<>();
		
		Bicicleta bicicleta = new MontainBike();
		lista.add(bicicleta);
		
		bicicleta = new Speed();
		lista.add(bicicleta);
		
		bicicleta = new Ergonomica();
		lista.add(bicicleta);
		
		for( Bicicleta i : lista) {
			i.cadastrar();
		}
	
	}	
	
	public static void main(String [] args) {
		new Principal();
	}
	
}