/*
Exercicio 1
Autor(es): Arthur Henrique de Oliveira Petroli
Data: 29-08-2023
*/
package ex1;

public class EmpresaViagem {
	
	private Onibus onibus = new Onibus();
	
	private String nome = "";
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	
	private String proprietario = "";
	public String getProprietario() {
		return proprietario;
	}
	public void setProprietario(String proprietario) {
		this.proprietario = proprietario;
	}
	
	private String endereco = "";
	public String getEndereco() {
		return endereco;
	}
	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}
	
	private Float vendasMensais = 0f;
	public Float getVendasMensais() {
		return vendasMensais;
	}
	public void setVendasMensais(Float vendasMensais) {
		this.vendasMensais = vendasMensais;
	}
	
	private Integer qtdeMaxPassagens = 0;
	public Integer getQtdeMaxPassagens() {
		return qtdeMaxPassagens;
	}
	public void setQtdeMaxPassagens(Integer qtdeMaxPassagens) {
		this.qtdeMaxPassagens = qtdeMaxPassagens;
	}
	
	private Integer qtdeFuncionarios = 0;
	public Integer getQtdeFuncionarios() {
		return qtdeFuncionarios;
	}
	public void setQtdeFuncionarios(Integer qtdeFuncionarios) {
		this.qtdeFuncionarios = qtdeFuncionarios;
	}
	
	public EmpresaViagem(){
		
	}
	
	public EmpresaViagem(String nome, String proprietario, String endereco, Float vendasMensais,
			Integer qtdeMaxPassagens, Integer qtdeFuncionarios) {
		this.nome = nome;
		this.proprietario = proprietario;
		this.endereco = endereco;
		this.vendasMensais = vendasMensais;
		this.qtdeMaxPassagens = qtdeMaxPassagens;
		this.qtdeFuncionarios = qtdeFuncionarios;
		this.onibus = onibus;
	}
	
}

