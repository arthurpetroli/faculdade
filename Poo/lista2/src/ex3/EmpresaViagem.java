/*
Exercicio 3
Autor(es): Arthur Henrique de Oliveira Petroli
Data: 13-10-2023
*/

package ex3;

import java.util.ArrayList;
import java.util.List;

public class EmpresaViagem {
    private String nome;
    private String prop;
    private String endereco;
    private float vendasMensais;
    private int qtdeMaxPaes;
    private int qtdeFuncionarios;
    List<Onibus> onibus = new ArrayList<>();
    List<Barco> barco = new ArrayList<>();
    
    public EmpresaViagem(String nome, String prop, String endereco, float vendasMensais, int qtdeMaxPaes, int qtdeFuncionarios) {
        this.nome = nome;
        this.prop = prop;
        this.endereco = endereco;
        this.vendasMensais = vendasMensais;
        this.qtdeMaxPaes = qtdeMaxPaes;
        this.qtdeFuncionarios = qtdeFuncionarios;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getDono() {
        return prop;
    }

    public void setDono(String prop) {
        this.prop = prop;
    }

    public String getEndereco() {
        return endereco;
    }

    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }

    public float getVendasMensais() {
        return vendasMensais;
    }

    public void setVendasMensais(float vendasMensais) {
        this.vendasMensais = vendasMensais;
    }

    public int getQtdeMaxPaes() {
        return qtdeMaxPaes;
    }

    public void setQtdeMaxPaes(int qtdeMaxPaes) {
        this.qtdeMaxPaes = qtdeMaxPaes;
    }

    public int getQtdeFuncionarios() {
        return qtdeFuncionarios;
    }

    public void setQtdeFuncionarios(int qtdeFuncionarios) {
        this.qtdeFuncionarios = qtdeFuncionarios;
    }

    public List<Onibus> getCozinha() {
        return onibus;
    }

    public void setCozinha(List<Onibus> onibus) {
        this.onibus = onibus;
    }

    public List<Barco> getRestaurante() {
        return barco;
    }

    public void setRestaurante(List<Barco> barco) {
        this.barco = barco;
    }  
}