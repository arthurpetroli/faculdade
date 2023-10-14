/*
Exercicio 3
Autor(es): Arthur Henrique de Oliveira Petroli
Data: 13-10-2023
*/

package ex3;

public class Onibus extends Veiculo implements IVeiculo{
	private Integer qtdePassageiros;
	private String tipo;
	private EmpresaViagem empresa;
	private Integer taxa = 5;
	
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

	public String emitirPassagem() {
		return "A taxa é R$:" + taxa;
	}

	public String calcularPagamento(Integer dist) {
		return "O valor do pagamento é R$:" + ((50*dist)+taxa);
	}


	public String calcularTempoViagem(Integer x1, Integer y1, Integer x2, Integer y2) {
		Integer x = x2-x1;
		Integer y = y2-y1;
		return "O tempo de viagem é: " + (50*Math.sqrt((Math.pow(x,2)+ Math.pow(y,2))));
	}

	@Override
	public String limpa() {
		return "Limpando o veiculo...";
	}

	@Override
	public String vidro() {
		return "Concertando o vidro do veiculo...";
	}

	@Override
	public String ligar() {
		return "Ligando o veiculo...";
	}

	@Override
	public String distancia() {
		return "Calculando km rodado do veiculo...";
	}

	@Override
	public String manutencao() {
		return "Fazendo manutenção do veiculo...";
	}

	
	
}
