package EX2;
import java.util.ArrayList;
public class Principal {
	public abstract class Roupa implements IRoupa {
		private String nome;
		private String tamanho;
		private double preco;
		public Roupa(String nome, String tamanho, double preco) {
			this.nome = nome;
			this.tamanho = tamanho;
			this.preco = preco;
		}
		public String getTamanho() {
			return this.tamanho;
		}
		public Double getPreco() {
			return this.preco;
		}
	}
	public class SubRoupa1 extends Roupa {
		public SubRoupa1(String nome, String tamanho, Double preco) {
			super(nome, tamanho, preco);
		}
		public void m1() {
		}
		public void m2() {
		}
	}
	public class SubRoupa2 extends Roupa {
		public SubRoupa2(String nome, String tamanho, Double preco) {
			super(nome, tamanho, preco);
		}
		public void m1() {
		}
		public void m2() {
		}
	}
	public class SubRoupa3 extends Roupa {
		public SubRoupa3(String nome, String tamanho, Double preco) {
			super(nome, tamanho, preco);
		}
		public void m1() {
		}
		public void m2() {
		}
	}
	public class SubRoupa4 extends Roupa {
		public SubRoupa4(String nome, String tamanho, Double preco) {
			super(nome, tamanho, preco);
		}
		public void m1() {
		}
		public void m2() {
		}
	}
	public interface IRoupa {
		public void m1();
		public void m2();
	}
	public class Cliente {
		private ArrayList<Roupa> lista = new ArrayList<>();
		public Cliente(ArrayList<Roupa> lista) {
			this.lista = lista;
		}
		public double getTotal(String tamanho) {
			double total = 0;
			for (Roupa roupa : lista)
				if (roupa.getTamanho().equals(tamanho))
					total += roupa.getPreco();
			return total;
		}
	}
	
	public Principal() {
		ArrayList<Roupa> listaRoupas = new ArrayList<>();
		listaRoupas.add(new SubRoupa1("calca", "M", 10.0));
		listaRoupas.add(new SubRoupa2("calca", "M", 10.0));
		listaRoupas.add(new SubRoupa3("calca", "M", 10.0));
		listaRoupas.add(new SubRoupa4("calca", "M", 10.0));
		Cliente cliente = new Cliente(listaRoupas);
		
		IRoupa objeto = new IRoupa() {
			public void m1() {
			}
			public void m2() {
			}
		};
	}
	public static void main(String[] args) {
		new Principal();
	}
}

