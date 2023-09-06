package Sala;

public class Principal {
	private Campus campus;
	public Principal() {
		Estudante joao = new Estudante();
		joao.imprimir();
	
		Estudante maria = new Estudante("Maria");
		maria.imprimir();	
	}
	
	
	public static void main(String [] args) {
		new Principal();
	}
}
