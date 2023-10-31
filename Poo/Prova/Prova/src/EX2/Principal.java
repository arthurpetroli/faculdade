package EX2;

import java.util.ArrayList;
import java.util.List;

public class Principal {
	public abstract class Roupa {
		public abstract String nome();
	    public abstract String tamanho();  
	    public abstract Double preco();  

	}
	
	public class SubclasseRoupa1 extends Roupa {

	    private String nome;
	    private String tamanho;
	    private Double preco;

	    public SubclasseRoupa1( String nome, String tamanho, Double preco){
	           this.nome = nome;
	           this.tamanho = tamanho;
	           this.preco = preco;
	           
	    }
		@Override
		public String nome() {
			
			return this.nome;
		}

		@Override
		public String tamanho() {
			
			return this.tamanho;
		}

		@Override
		public Double preco() {
			
			return this.preco;
		}
	    
	}
	
	public class SubclasseRoupa2 extends Roupa {

	    private String nome;
	    private String tamanho;
	    private Double preco;

	    public SubclasseRoupa2( String nome, String tamanho, Double preco){
	           this.nome = nome;
	           this.tamanho = tamanho;
	           this.preco = preco;
	           
	    }
		@Override
		public String nome() {
			
			return this.nome;
		}

		@Override
		public String tamanho() {
			
			return this.tamanho;
		}

		@Override
		public Double preco() {
			
			return this.preco;
		}
	    
	}
	
	public class SubclasseRoupa3 extends Roupa {

	    private String nome;
	    private String tamanho;
	    private Double preco;

	    public SubclasseRoupa3( String nome, String tamanho, Double preco){
	           this.nome = nome;
	           this.tamanho = tamanho;
	           this.preco = preco;
	           
	    }
		@Override
		public String nome() {
			
			return this.nome;
		}

		@Override
		public String tamanho() {
			
			return this.tamanho;
		}

		@Override
		public Double preco() {
			
			return this.preco;
		}
	    
	}
	
	public class SubclasseRoupa4 extends Roupa {

	    private String nome;
	    private String tamanho;
	    private Double preco;

	    public SubclasseRoupa4( String nome, String tamanho, Double preco){
	           this.nome = nome;
	           this.tamanho = tamanho;
	           this.preco = preco;
	           
	    }
		@Override
		public String nome() {
			
			return this.nome;
		}

		@Override
		public String tamanho() {
			
			return this.tamanho;
		}

		@Override
		public Double preco() {
			
			return this.preco;
		}
	    
	}
	
	
	
	public static void main(String[] args) {
		List<Roupa> lista = new ArrayList<>();
		SubclasseRoupa1 sub1 = new SubclasseRoupa1("calça", "1,69", 10d);
		SubclasseRoupa2 sub2 = new SubclasseRoupa2("jaqueta", "1,70", 12d);
		SubclasseRoupa3 sub3 = new SubclasseRoupa3("camisa", "1,75", 13d);
		SubclasseRoupa4 sub4 = new SubclasseRoupa4("bone", "1,84", 15d);
        lista.add(sub1);
        lista.add(sub2);
        lista.add(sub3);
        lista.add(sub4);
        
        Roupa cliente = new Roupa("jaqueta", "1,70", 12d);
    }
}
