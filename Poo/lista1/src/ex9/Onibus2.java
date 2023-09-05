/*
Exercicio 9
Autor(es): Arthur Henrique de Oliveira Petroli
Data: 30-08-2023
*/
package ex9;


public class Onibus2 extends Onibus{
	@Override
	public Integer getQtdePassageiros() {
		return qtdePassageiros;
	}
	@Override
	public void setQtdePassageiros(Integer qtdePassageiros) {
		super.setQtdePassageiros(qtdePassageiros);
	}
	@Override
	public String getTipo() {
		return tipo;
	}
	@Override
	public void setTipo(String tipo) {
		super.setTipo(tipo);
	}
	
	public Onibus2() {
		
	}
	public Onibus2(Integer qtdePassageiros, String tipo) {
		super.setQtdePassageiros(qtdePassageiros);
		super.setTipo(tipo);
	}
}
