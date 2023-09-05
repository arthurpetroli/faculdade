/*
Exercicio 4
Autor(es): Arthur Henrique de Oliveira Petroli
Data: 29-08-2023
*/
package ex4;

public class Onibus {
	
	private Integer qtdePassageiros = 0;
	
	public Integer getQtdePassageiros() {
		return qtdePassageiros;
	}
	
	public void setQtdePassageiros(Integer qtdePassageiros) {
		this.qtdePassageiros = qtdePassageiros;
	}
	
	private String tipo = "";
	
	public String getTipo() {
		return tipo;
	}
	
	public void setTipo(String tipo) {
		this.tipo = tipo;
	}
	
	public Onibus(Integer qtdePassageiros, String tipo) {
		this.qtdePassageiros = qtdePassageiros;
		this.tipo = tipo;
	}

	public Onibus() {
		
	}
}
