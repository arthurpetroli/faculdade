package Sala;

public class Estudante {
	private String nome;
	public void imprimir() {
		System.out.println(this.nome);
	}
	public void imprimir(Integer x) {
		if(nome.length()<=x) {
			System.out.println("VALIDO");
		}
		else {
			System.out.println("INVALIDO");
		}
	}
	
	public Estudante(){
		this.nome = "Joao";
	}
	
	public Estudante(String nome) {
		this.nome = nome;
	}
}
