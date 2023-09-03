/*
Exercicio 9
Autor(es): Arthur Henrique de Oliveira Petroli
Data: 30-08-2023
*/
package ex9;

public class Onibus {
	
	protected Integer qtdePassageiros = 0;
	
	public Integer getQtdePassageiros() {
		return qtdePassageiros;
	}
	
	public void setQtdePassageiros(Integer qtdePassageiros) {
		this.qtdePassageiros = qtdePassageiros;
	}
	
	protected String tipo = "";
	
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
