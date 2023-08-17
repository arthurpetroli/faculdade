package src;
public class Calculadora {
    //////Atributos
    private int campoUm;
    private int campoDois;
    private int operacao;
    private String cor;
    private String marca;
    private float tamanho;

    //////Métodos

    //Campo um
    public void setCampoUm(int campoUm) {
        this.campoUm = campoUm;
    }
    public int getCampoUm() {
        return this.campoUm;
    }

    //Campo dois
    public void setCampoDois(int campoDois) {
        this.campoDois = campoDois;
    }
    public int getCampoDois() {
        return this.campoDois;
    }

    //Operacao
    public int getOperacao() {
        return this.operacao;
    }
    public void setOperacao(int operacao) {
        this.operacao = operacao;
    }

    //Cor
    public String getCor() {
        return this.cor;
    }
    public void setCor(String cor) {
        this.cor = cor;
    }

    //Marca
    public String getMarca() {
        return this.marca;
    }
    public void setMarca(String marca) {
        this.marca = marca;
    }

    //Tamanho
    public float getTamanho() {
        return this.tamanho;
    }
    public void setTamanho(float tamanho) {
        this.tamanho = tamanho;
    }


    @Override
    public String toString() {
        return "Calculadora: operacao = " + operacao + ", cor = "
                + cor + ", marca = " + marca + ", tamanho = " + tamanho;
    }

    public int somar() {
        return this.campoUm + this.campoDois;
    }

    public int subtrair() {
        return this.campoUm - this.campoDois;
    }

    public int multiplicar() {
        return this.campoUm * this.campoDois;
    }

    public Float dividir() {
        return (float) (this.campoUm / this.campoDois);
    }
}