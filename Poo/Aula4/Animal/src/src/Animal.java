package src;

public class Animal {
private String nome;
private String cor;
private Float tamanho;

public String getCor() {
	 return this.cor;
}
public Float getTamanho() {
	 return this.tamanho;
}
public String getNome() {
	 return this.nome;
}
public Animal() {
	this.nome = "Sergio";
	this.cor = "Verde";
	this.tamanho = 12.4f;
}
public Animal(String nome,String cor,Float tamanho) {
	this.nome = nome;
	this.cor = cor;
	this.tamanho = tamanho;
}
@Override
public String toString() {
	return "Animal [nome=" + nome + ", cor=" + cor + ", tamanho=" + tamanho + "]";
}

}
