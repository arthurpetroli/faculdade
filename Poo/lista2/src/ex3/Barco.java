/*
Exercicio 3
Autor(es): Arthur Henrique de Oliveira Petroli
Data: 13-10-2023
*/

package ex3;

public class Barco extends Veiculo implements IVeiculo{
	private Integer qtdeCadeiras;
    private Integer qtdeMesas;
    private EmpresaViagem empresa;
    private Integer taxa = 2000;
    
    public Barco (String nome, Integer qtdeCadeiras, Integer qtdeMesas){
    	super(nome);
        this.qtdeCadeiras = qtdeCadeiras;
        this.qtdeMesas = qtdeMesas;
    }

    public int getQtdeCadeiras() {
        return qtdeCadeiras;
    }

    public void setQtdeCadeiras(int qtdeCadeiras) {
        this.qtdeCadeiras = qtdeCadeiras;
    }

    public int getQtdeMesas() {
        return qtdeMesas;
    }

    public void setQtdeMesas(int qtdeMesas) {
        this.qtdeMesas = qtdeMesas;
    }

	@Override
	public String emitirPassagem() {
		return "A taxa é R$:" + taxa;
	}

	@Override
	public String calcularPagamento(Integer dist) {
		return "O valor do pagamento é R$:" + ((200*dist)+taxa);
	}

	@Override
	public String calcularTempoViagem(Integer x1, Integer y1, Integer x2, Integer y2) {
		Integer x = x2-x1;
		Integer y = y2-y1;
		return "O tempo de viagem é: " + (20*Math.sqrt((Math.pow(x,2)+ Math.pow(y,2))));
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
