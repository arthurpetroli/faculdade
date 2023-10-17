/*
Exercicio 1
Autor(es): Arthur Henrique de Oliveira Petroli
Data: 13-10-2023
*/

package ex1;

public class Barco extends Veiculo{
	private Integer qtdeCadeiras;
    private Integer qtdeMesas;
    
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
}
