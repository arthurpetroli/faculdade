/*
Exercicio 9
Autor(es): Arthur Henrique de Oliveira Petroli
Data: 30-08-2023
*/
package ex9;

public class EmpresaViagem2 extends EmpresaViagem{
	
	@Override
	public String getNome() {
		return nome;
	}
	@Override
	public void setNome(String nome) {
		super.setNome(nome);
	}
	@Override
	public String getProprietario() {
		return proprietario;
	}
	@Override
	public void setProprietario(String proprietario) {
		super.setProprietario(proprietario);
	}
	@Override
	public String getEndereco() {
		return endereco;
	}
	@Override
	public void setEndereco(String endereco) {
		super.setEndereco(endereco);
	}
	@Override
	public Float getVendasMensais() {
		return vendasMensais;
	}
	@Override
	public void setVendasMensais(Float vendasMensais) {
		super.setVendasMensais(vendasMensais);
	}
	@Override
	public Integer getQtdeMaxPassagens() {
		return qtdeMaxPassagens;
	}
	@Override
	public void setQtdeMaxPassagens(Integer qtdeMaxPassagens) {
		super.setQtdeMaxPassagens(qtdeMaxPassagens);
	}
	@Override
	public Integer getQtdeFuncionarios() {
		return qtdeFuncionarios;
	}
	@Override
	public void setQtdeFuncionarios(Integer qtdeFuncionarios) {
		super.setQtdeFuncionarios(qtdeFuncionarios);
	}
	
	public EmpresaViagem2(String nome, String proprietario, String endereco, Float vendasMensais,
			Integer qtdeMaxPassagens, Integer qtdeFuncionarios, Integer qtdePassageiros, String tipo) {
		super.setNome(nome);
		super.setProprietario(proprietario);
		super.setEndereco(endereco);
		super.setVendasMensais(vendasMensais);
		super.setQtdeMaxPassagens(qtdeMaxPassagens);
		super.setQtdeFuncionarios(qtdeFuncionarios);
		super.onibus.setQtdePassageiros(qtdePassageiros);
		super.onibus.setTipo(tipo);
	}
	@Override
	public String toString() {
		return "EmpresaViagem2 [nome=" + this.nome + ", proprietario=" + this.proprietario + ", endereco=" + this.endereco
				+ ", vendasMensais=" + this.vendasMensais + ", qtdeMaxPassagens=" + this.qtdeMaxPassagens + ", qtdeFuncionarios="
				+ this.qtdeFuncionarios + ", onibus passageiros=" + this.onibus.getQtdePassageiros() +  ", onibus tipo=" + this.onibus.getTipo()+"]";
	}
	
}
