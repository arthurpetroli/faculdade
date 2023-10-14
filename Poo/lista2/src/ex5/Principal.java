/*
Exercicio 5
Autor(es): Arthur Henrique de Oliveira Petroli
Data: 13-10-2023
*/

package ex5;

import java.util.ArrayList;
import java.util.List;

public class Principal {
	public class Onibus extends Veiculo{
		private Integer qtdePassageiros;
		private String tipo;
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
		
	}
	
	public abstract class Veiculo implements IVeiculo {
	    private String nome; 

	    public Veiculo(String nome){
	        this.nome = nome;
	    }

	    public String getNome() {
	        return nome;
	    }
	}
	
	public interface IVeiculo {
	    public abstract String emitirPassagem();
	    public abstract String calcularPagamento(Integer dist);
	    public abstract String calcularTempoViagem(Integer x1, Integer y1, Integer x2, Integer y2);
	}
	
	public class Barco extends Veiculo{
		private Integer qtdeCadeiras;
	    private Integer qtdeMesas;
	    private Integer taxa2 = 2000;
	    
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
			return "A taxa é R$:" + taxa2;
		}

		@Override
		public String calcularPagamento(Integer dist) {
			return "O valor do pagamento é R$:" + ((200*dist)+taxa2);
		}

		@Override
		public String calcularTempoViagem(Integer x1, Integer y1, Integer x2, Integer y2) {
			Integer x = x2-x1;
			Integer y = y2-y1;
			return "O tempo de viagem é: " + (20*Math.sqrt((Math.pow(x,2)+ Math.pow(y,2))));
		}
	}
	
	public interface IMoeda {
	    public abstract void formaPagamento();
	}
	
	public class BitCoin implements IMoeda{
	    @Override
	    public void formaPagamento(){
	        System.out.println("Pagando em BitCoin");
	    }
	}
	
	public class Euro implements IMoeda{
	    @Override
	    public void formaPagamento() {
	        System.out.println("Pagando em Euro");
	    }
	}
	
	public class Real implements IMoeda {
	    @Override
	    public void formaPagamento() {
	        System.out.println("Pagando em Real");   
	    }
	    
	}
	
	public Principal(){
        
    	Barco barco1 = new Barco("Barco1",2,4);
        Onibus onibus1 = new Onibus("Onibus1","Curto",4);
        Barco barco2 = new Barco("Barco2",4,6);
        Onibus onibus2 = new Onibus("Onibus2","Longo",6);
        
        List <Veiculo>lista = new ArrayList<>();
        lista.add(barco1);
        lista.add(onibus1);
        lista.add(barco2);
        lista.add(onibus2);
        
        System.out.println("Passagem de Onibus");
        System.out.println(onibus1.emitirPassagem());
        System.out.println(onibus1.calcularPagamento(50));
        System.out.println(onibus1.calcularTempoViagem(4,2,6,3));
        
        System.out.println("\nPassagem de Barco");
        System.out.println(barco1.emitirPassagem());
        System.out.println(barco1.calcularPagamento(60));
        System.out.println(barco1.calcularTempoViagem(8,4,9,6));
        
        
        IMoeda[] formasDePagamento = new IMoeda[3];
        formasDePagamento[0] = new BitCoin();
        formasDePagamento[1] = new Euro();
        formasDePagamento[2] = new Real();

        for (IMoeda formaDePagamento : formasDePagamento) {
            formaDePagamento.formaPagamento();
        }
    }
    public static void main(String[] args) {
        new Principal();        
    }

	
}
