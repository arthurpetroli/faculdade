/*
Exercicio 8
Autor(es): Arthur Henrique de Oliveira Petroli
Data: 30-08-2023
*/
package ex8;

public class Computador {
	
	private Data data = new Data();
	
	private String nome;
	
	public String getNome() {
		return nome;
	}
	public Computador setNome(String nome) {
		this.nome = nome;
		return this;
	}
	
	private String marca;
	
	public String getMarca() {
		return marca;
	}
	
	public Computador setMarca(String marca) {
		this.marca = marca;
		return this;
	}
	public void setData(Integer dia,Integer mes,Integer ano) {
		this.data.setDia(dia);
		this.data.setMes(mes);
		this.data.setAno(ano);
	}
	public Data getData() {
		return data;
	}
	
	public Computador(String nome, String marca,Data data) {
		this.nome= nome;
		this.marca= marca;
		this.data= data;
	}
	
	@Override
	public String toString() {
		return "Computador [nome=" + this.nome + ", marca=" + this.marca + ", dia=" + this.data.getDia() +", mes=" + this.data.getMes()+ ", ano=" + this.data.getAno()+ "]";
	}
	public Computador() {
		
	}
	
}
