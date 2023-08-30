package src;
//Calculadora eh Subclasse da
// Superclasse Equipamento
public class Sapo extends Animal{
	public Sapo(String nome,String cor,Float tamanho) {
		super(nome,cor,tamanho);
		System.out.println(toString());
		
	}
	public Sapo() {
		System.out.println(toString());
	}
	public static void main(String [] args) {
		new Sapo();
		new Sapo("Jorge","Preto",18.3f);
	}
	
}
