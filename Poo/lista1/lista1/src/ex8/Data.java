/*
Exercicio 8
Autor(es): Arthur Henrique de Oliveira Petroli
Data: 30-08-2023
*/
package ex8;

public class Data {
	private Integer dia;
	private Integer mes;
	public int getDia() {
		return dia;
	}
	public void setDia(Integer dia) {
		this.dia = dia;
	}
	public Integer getMes() {
		return mes;
	}
	public void setMes(Integer mes) {
		this.mes = mes;
	}
	private Integer ano;
	public Integer getAno() {
		return ano;
	}
	public void setAno(Integer ano) {
		this.ano = ano;
	}
	public Data(Integer dia, Integer mes, Integer ano) {
		this.dia=dia;
		this.mes=mes;
		this.ano=ano;
	}
	public Data() {
		
	}
}
