package src;

public class Equipamento {
private String nome;
private String cor;
private Float tamanho;

public String getCor() {
	 return this.cor;
}

public Float getTamanho() {
	 return this.tamanho;
}

public Equipamento(String nome,String cor,Float tamanho) {
	 this.nome = nome;
	 this.cor = cor;
	 this.tamanho = tamanho;
}
public String getNome() {
	 return this.nome;
}
public Equipamento() {
	this.nome = "hp";
	this.cor = "vermelho";
	this.tamanho = 444.4f;
}

public Equipamento(String nome) {
	 this.nome = nome;
}
}

