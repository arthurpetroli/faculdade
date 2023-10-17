/*
Exercicio 1
Autor(es): Arthur Henrique de Oliveira Petroli
Data: 13-10-2023
*/

package ex1;

public class Onibus extends Veiculo{
	private Integer qtdePassageiros;
	private String tipo;
	
	public Onibus(String nome, String tipo, Integer qtdePassageiros){
		super(nome);
		this.tipo = tipo;
		this.qtdePassageiros = qtdePassageiros;
	}

	public Integer getQtdePassageiros() {
		return qtdePassageiros;
	}

	public void setQtdePassageiros(Integer qtdePassageiros) {
		this.qtdePassageiros = qtdePassageiros;
	}

	public String getTipo() {
		return tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}
	
	
}
