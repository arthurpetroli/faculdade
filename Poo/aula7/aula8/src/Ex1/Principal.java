package Ex1;

import java.util.ArrayList;

public class Principal {
	
	public Principal() {
		ArrayList<Empregado> listaPagamento = new ArrayList<>();
		Empregado joao = new Chefe(1000.0f);
		Empregado maria = new Balconista(500.0f);
		Empregado antonio = new Estagiario(200.0f);
		
		listaPagamento.add(joao);
		listaPagamento.add(maria);
		listaPagamento.add(antonio);
		
		for ( Empregado empregado : listaPagamento) {
			System.out.println(empregado);
		}
	}
	
	public static void main(String []args) {
		new Principal();
	}
}
